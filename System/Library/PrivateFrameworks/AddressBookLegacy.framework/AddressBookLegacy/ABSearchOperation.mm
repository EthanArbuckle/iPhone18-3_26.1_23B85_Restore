@interface ABSearchOperation
+ (id)personPredicateWithNameLike:(id)a3 inSource:(void *)a4 includeSourceInResults:(BOOL)a5 includePhotosInResults:(BOOL)a6 addressBook:(void *)a7;
- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4;
- (void)_mainThread_tellDelegateSearchFoundMatch:(void *)a3;
- (void)cancel;
- (void)dealloc;
- (void)internalSearchAddressBook;
- (void)main;
- (void)setAddressBook:(void *)a3;
- (void)setDelegate:(id)a3;
- (void)setInternalSearchAddressBook:(void *)a3;
- (void)setProgressBlock:(id)a3;
@end

@implementation ABSearchOperation

- (void)dealloc
{
  addressBook = self->_addressBook;
  if (addressBook)
  {
    CFRelease(addressBook);
  }

  internalSearchAddressBook = self->_internalSearchAddressBook;
  if (internalSearchAddressBook)
  {
    CFRelease(internalSearchAddressBook);
  }

  v5.receiver = self;
  v5.super_class = ABSearchOperation;
  [(ABSearchOperation *)&v5 dealloc];
}

- (void)setDelegate:(id)a3
{
  if (a3)
  {
    [(ABSearchOperation *)self setProgressBlock:0];
  }

  self->_delegate = a3;
}

- (void)setProgressBlock:(id)a3
{
  if (a3)
  {
    [(ABSearchOperation *)self setDelegate:0];
  }

  progressBlock = self->_progressBlock;
  if (progressBlock != a3)
  {

    self->_progressBlock = [a3 copy];
    self->_progressBlockThread = [MEMORY[0x1E696AF00] currentThread];
  }
}

- (void)setAddressBook:(void *)a3
{
  addressBook = self->_addressBook;
  if (addressBook != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      addressBook = self->_addressBook;
    }

    if (addressBook)
    {
      CFRelease(addressBook);
    }

    self->_addressBook = a3;
  }
}

- (void)internalSearchAddressBook
{
  if (!self->_internalSearchAddressBook && [(ABSearchOperation *)self addressBook])
  {
    v4 = ABAddressBookCopyDatabaseDirectory([(ABSearchOperation *)self addressBook]);
    if (v4)
    {
      v5 = v4;
      self->_internalSearchAddressBook = ABAddressBookCreateWithDatabaseDirectory(v4);
      CFRelease(v5);
    }

    else
    {
      self->_internalSearchAddressBook = CFRetain(self->_addressBook);
    }
  }

  return self->_internalSearchAddressBook;
}

- (void)setInternalSearchAddressBook:(void *)a3
{
  internalSearchAddressBook = self->_internalSearchAddressBook;
  if (internalSearchAddressBook != a3)
  {
    if (a3)
    {
      CFRetain(a3);
      internalSearchAddressBook = self->_internalSearchAddressBook;
    }

    if (internalSearchAddressBook)
    {
      CFRelease(internalSearchAddressBook);
    }

    self->_internalSearchAddressBook = a3;
  }
}

- (void)cancel
{
  v5.receiver = self;
  v5.super_class = ABSearchOperation;
  [(ABSearchOperation *)&v5 cancel];
  if ([(ABSearchOperation *)self internalSearchAddressBook])
  {
    [(ABSearchOperation *)self internalSearchAddressBook];
    CPRecordStoreGetDatabase();
    v3 = CPSqliteDatabaseConnectionForReading();
    if (v3)
    {
      v4 = *(v3 + 8);
      if (v4)
      {
        sqlite3_interrupt(v4);
      }
    }
  }
}

- (void)main
{
  if (([(ABSearchOperation *)self isCancelled]& 1) == 0)
  {
    [ABPredicate searchPeopleWithPredicate:[(ABSearchOperation *)self predicate] sortOrder:[(ABSearchOperation *)self sortOrdering] inAddressBook:[(ABSearchOperation *)self internalSearchAddressBook] withDelegate:self];
    if (([(ABSearchOperation *)self isCancelled]& 1) == 0)
    {
      if ([(ABSearchOperation *)self delegate])
      {
        v3 = [MEMORY[0x1E6996818] mainThreadScheduler];
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __25__ABSearchOperation_main__block_invoke;
        v5[3] = &unk_1E7CCCD60;
        v5[4] = self;
        [v3 performBlock:v5];
      }

      else
      {
        v4 = *([(ABSearchOperation *)self progressBlock]+ 16);

        v4();
      }
    }
  }
}

uint64_t __25__ABSearchOperation_main__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = *(a1 + 32);

  return [v2 searchOperation:v3 didFindMatches:0 moreComing:0];
}

- (void)_mainThread_tellDelegateSearchFoundMatch:(void *)a3
{
  if (([(ABSearchOperation *)self isCancelled]& 1) == 0)
  {
    RecordID = ABRecordGetRecordID(a3);
    PersonWithRecordID = a3;
    if (RecordID != -1)
    {
      v7 = RecordID;
      ABAddressBookAddRecord([(ABSearchOperation *)self addressBook], a3, 0);
      PersonWithRecordID = ABAddressBookGetPersonWithRecordID([(ABSearchOperation *)self addressBook], v7);
    }

    if (PersonWithRecordID)
    {
      v8 = [MEMORY[0x1E695DEC8] arrayWithObject:?];
      if ([(ABSearchOperation *)self delegate])
      {
        [(ABSearchOperationDelegate *)[(ABSearchOperation *)self delegate] searchOperation:self didFindMatches:v8 moreComing:1];
      }

      else if ([(ABSearchOperation *)self progressBlock])
      {
        v9 = [(ABSearchOperation *)self progressBlock];
        v9[2](v9, self, v8, 1);
      }
    }
  }

  if (a3)
  {

    CFRelease(a3);
  }
}

- (BOOL)predicateShouldContinue:(id)a3 afterFindingRecord:(void *)a4
{
  v6 = [(ABSearchOperation *)self internalSearchAddressBook];
  v7 = [(ABSearchOperation *)self addressBook];
  if (v6 == v7)
  {
    v8 = CFRetain(a4);
  }

  else
  {
    v8 = ABPersonCopy(a4);
  }

  v9 = v8;
  if (([(ABSearchOperation *)self isCancelled]& 1) != 0)
  {
    CFRelease(v9);
  }

  else
  {
    v10 = [MEMORY[0x1E696AF00] isMainThread];
    if (v6 == v7 || v10)
    {
      [(ABSearchOperation *)self _mainThread_tellDelegateSearchFoundMatch:v9];
    }

    else
    {
      progressBlockThread = self->_progressBlockThread;
      if (progressBlockThread)
      {
        -[ABSearchOperation performSelector:onThread:withObject:waitUntilDone:modes:](self, "performSelector:onThread:withObject:waitUntilDone:modes:", sel__mainThread_tellDelegateSearchFoundMatch_, progressBlockThread, v9, 1, [MEMORY[0x1E695DEC8] arrayWithObject:kABSearchOperationRunloopMode]);
      }

      else
      {
        [(ABSearchOperation *)self performSelectorOnMainThread:sel__mainThread_tellDelegateSearchFoundMatch_ withObject:v9 waitUntilDone:0];
      }
    }
  }

  return [(ABSearchOperation *)self isCancelled]^ 1;
}

+ (id)personPredicateWithNameLike:(id)a3 inSource:(void *)a4 includeSourceInResults:(BOOL)a5 includePhotosInResults:(BOOL)a6 addressBook:(void *)a7
{
  v8 = a6;
  v9 = a5;
  if (a4)
  {
    v11 = [MEMORY[0x1E695DEC8] arrayWithObject:a4];
  }

  else
  {
    v11 = 0;
  }

  return [ABPredicate personPredicateWithNameLike:a3 groups:0 sources:v11 includeSourceInResults:v9 includePhotosInResults:v8 addressBook:a7];
}

@end