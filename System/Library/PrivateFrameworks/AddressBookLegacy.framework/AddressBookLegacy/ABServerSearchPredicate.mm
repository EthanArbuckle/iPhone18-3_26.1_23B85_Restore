@interface ABServerSearchPredicate
- (ABServerSearchPredicate)initWithSearchString:(id)a3 source:(void *)a4 account:(id)a5 includeSourceInResults:(BOOL)a6 includePhotosInResults:(BOOL)a7;
- (DADConnection)connection;
- (int)_errorForDAStatusCode:(int64_t)a3;
- (void)_searchQueryIsDone;
- (void)dealloc;
- (void)runPredicate;
- (void)runPredicateWithDelegate:(id)a3;
- (void)searchQuery:(id)a3 finishedWithError:(id)a4;
- (void)searchQuery:(id)a3 returnedResults:(id)a4;
- (void)setConnection:(id)a3;
- (void)setSource:(void *)a3;
@end

@implementation ABServerSearchPredicate

- (ABServerSearchPredicate)initWithSearchString:(id)a3 source:(void *)a4 account:(id)a5 includeSourceInResults:(BOOL)a6 includePhotosInResults:(BOOL)a7
{
  v7 = a7;
  v8 = a6;
  v15.receiver = self;
  v15.super_class = ABServerSearchPredicate;
  v12 = [(ABPredicate *)&v15 init];
  v13 = v12;
  if (v12)
  {
    [(ABServerSearchPredicate *)v12 setSearchString:a3];
    [(ABServerSearchPredicate *)v13 setSource:a4];
    [(ABServerSearchPredicate *)v13 setAccountIdentifier:a5];
    [(ABServerSearchPredicate *)v13 setIncludeSourceInResults:v8];
    [(ABServerSearchPredicate *)v13 setIncludePhotosInResults:v7];
  }

  return v13;
}

- (void)dealloc
{
  source = self->_source;
  if (source)
  {
    CFRelease(source);
  }

  v4.receiver = self;
  v4.super_class = ABServerSearchPredicate;
  [(ABPredicate *)&v4 dealloc];
}

- (void)setSource:(void *)a3
{
  source = self->_source;
  if (source != a3)
  {
    if (source)
    {
      CFRelease(source);
    }

    self->_source = CFRetain(a3);
  }
}

- (void)setConnection:(id)a3
{
  connection = self->_connection;
  if (connection != a3)
  {

    self->_connection = a3;
  }
}

- (DADConnection)connection
{
  result = self->_connection;
  if (!result)
  {
    result = [MEMORY[0x1E69998A8] sharedConnection];
    self->_connection = result;
  }

  return result;
}

- (void)runPredicate
{
  if (![(ABServerSearchPredicate *)self delegate]|| [(ABPredicateDelegate *)[(ABServerSearchPredicate *)self delegate] predicateShouldContinue:self])
  {
    if ([(ABServerSearchPredicate *)self source])
    {
      v3 = [(ABServerSearchPredicate *)self source];
      v4 = ABRecordCopyValue(v3, kABSourceExternalIdentifierProperty);
      v5 = [(ABServerSearchPredicate *)self source];
      v6 = ABRecordCopyValue(v5, kABSourceExternalModificationTagProperty);
    }

    else
    {
      v6 = 0;
      v4 = 0;
    }

    self->_doneLock = [objc_alloc(MEMORY[0x1E696AB38]) initWithCondition:0];
    self->_searchQuery = [MEMORY[0x1E69998A0] contactsSearchQueryWithSearchString:-[ABServerSearchPredicate searchString](self searchBase:"searchString") searchScope:v4 consumer:{v6, self}];
    [(DAContactsSearchQuery *)self->_searchQuery setIncludePhotos:[(ABServerSearchPredicate *)self includePhotosInResults]];
    if ([(DADConnection *)[(ABServerSearchPredicate *)self connection] performServerContactsSearch:self->_searchQuery forAccountWithID:[(ABServerSearchPredicate *)self accountIdentifier]])
    {
      [(NSConditionLock *)self->_doneLock lockWhenCondition:1];
      [(NSConditionLock *)self->_doneLock unlock];
    }

    else
    {
      self->_error = [(ABServerSearchPredicate *)self _errorForDAStatusCode:0];
    }
  }
}

- (void)runPredicateWithDelegate:(id)a3
{
  [(ABServerSearchPredicate *)self setDelegate:a3];

  [(ABServerSearchPredicate *)self runPredicate];
}

- (int)_errorForDAStatusCode:(int64_t)a3
{
  if (a3)
  {
    v3 = -2;
  }

  else
  {
    v3 = -1;
  }

  if (a3 == 2)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (void)_searchQueryIsDone
{
  if (![(NSConditionLock *)self->_doneLock condition])
  {
    [(NSConditionLock *)self->_doneLock lockWhenCondition:0];
    doneLock = self->_doneLock;

    [(NSConditionLock *)doneLock unlockWithCondition:1];
  }
}

- (void)searchQuery:(id)a3 returnedResults:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  objc_sync_enter(self);
  if (!self->_searchResults)
  {
    self->_searchResults = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(a4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([(ABServerSearchPredicate *)self includeSourceInResults])
        {
          source = self->_source;
        }

        else
        {
          source = 0;
        }

        v11 = [v9 newAddressBookRecordWithSource:source];
        if (v11)
        {
          [(NSMutableArray *)self->_searchResults addObject:v11];
          CFRelease(v11);
          if ([(ABServerSearchPredicate *)self delegate])
          {
            if (([(ABPredicateDelegate *)[(ABServerSearchPredicate *)self delegate] predicateShouldContinue:self afterFindingRecord:v11]& 1) == 0)
            {
              [(DADConnection *)[(ABServerSearchPredicate *)self connection] cancelServerContactsSearch:self->_searchQuery];
              [(ABServerSearchPredicate *)self _searchQueryIsDone];
              goto LABEL_18;
            }
          }
        }
      }

      v6 = [a4 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_18:
  objc_sync_exit(self);
}

- (void)searchQuery:(id)a3 finishedWithError:(id)a4
{
  if (a4)
  {
    v5 = [a4 code];
  }

  else
  {
    v5 = 2;
  }

  objc_sync_enter(self);
  self->_error = [(ABServerSearchPredicate *)self _errorForDAStatusCode:v5];
  [(ABServerSearchPredicate *)self _searchQueryIsDone];

  objc_sync_exit(self);
}

@end