@interface ABSearchOperation
+ (id)personPredicateWithNameLike:(id)like inSource:(void *)source includeSourceInResults:(BOOL)results includePhotosInResults:(BOOL)inResults addressBook:(void *)book;
- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record;
- (void)_mainThread_tellDelegateSearchFoundMatch:(void *)match;
- (void)cancel;
- (void)dealloc;
- (void)internalSearchAddressBook;
- (void)main;
- (void)setAddressBook:(void *)book;
- (void)setDelegate:(id)delegate;
- (void)setInternalSearchAddressBook:(void *)book;
- (void)setProgressBlock:(id)block;
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

- (void)setDelegate:(id)delegate
{
  if (delegate)
  {
    [(ABSearchOperation *)self setProgressBlock:0];
  }

  self->_delegate = delegate;
}

- (void)setProgressBlock:(id)block
{
  if (block)
  {
    [(ABSearchOperation *)self setDelegate:0];
  }

  progressBlock = self->_progressBlock;
  if (progressBlock != block)
  {

    self->_progressBlock = [block copy];
    self->_progressBlockThread = [MEMORY[0x1E696AF00] currentThread];
  }
}

- (void)setAddressBook:(void *)book
{
  addressBook = self->_addressBook;
  if (addressBook != book)
  {
    if (book)
    {
      CFRetain(book);
      addressBook = self->_addressBook;
    }

    if (addressBook)
    {
      CFRelease(addressBook);
    }

    self->_addressBook = book;
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

- (void)setInternalSearchAddressBook:(void *)book
{
  internalSearchAddressBook = self->_internalSearchAddressBook;
  if (internalSearchAddressBook != book)
  {
    if (book)
    {
      CFRetain(book);
      internalSearchAddressBook = self->_internalSearchAddressBook;
    }

    if (internalSearchAddressBook)
    {
      CFRelease(internalSearchAddressBook);
    }

    self->_internalSearchAddressBook = book;
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
        mainThreadScheduler = [MEMORY[0x1E6996818] mainThreadScheduler];
        v5[0] = MEMORY[0x1E69E9820];
        v5[1] = 3221225472;
        v5[2] = __25__ABSearchOperation_main__block_invoke;
        v5[3] = &unk_1E7CCCD60;
        v5[4] = self;
        [mainThreadScheduler performBlock:v5];
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

- (void)_mainThread_tellDelegateSearchFoundMatch:(void *)match
{
  if (([(ABSearchOperation *)self isCancelled]& 1) == 0)
  {
    RecordID = ABRecordGetRecordID(match);
    PersonWithRecordID = match;
    if (RecordID != -1)
    {
      v7 = RecordID;
      ABAddressBookAddRecord([(ABSearchOperation *)self addressBook], match, 0);
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
        progressBlock = [(ABSearchOperation *)self progressBlock];
        progressBlock[2](progressBlock, self, v8, 1);
      }
    }
  }

  if (match)
  {

    CFRelease(match);
  }
}

- (BOOL)predicateShouldContinue:(id)continue afterFindingRecord:(void *)record
{
  internalSearchAddressBook = [(ABSearchOperation *)self internalSearchAddressBook];
  addressBook = [(ABSearchOperation *)self addressBook];
  if (internalSearchAddressBook == addressBook)
  {
    v8 = CFRetain(record);
  }

  else
  {
    v8 = ABPersonCopy(record);
  }

  v9 = v8;
  if (([(ABSearchOperation *)self isCancelled]& 1) != 0)
  {
    CFRelease(v9);
  }

  else
  {
    isMainThread = [MEMORY[0x1E696AF00] isMainThread];
    if (internalSearchAddressBook == addressBook || isMainThread)
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

+ (id)personPredicateWithNameLike:(id)like inSource:(void *)source includeSourceInResults:(BOOL)results includePhotosInResults:(BOOL)inResults addressBook:(void *)book
{
  inResultsCopy = inResults;
  resultsCopy = results;
  if (source)
  {
    v11 = [MEMORY[0x1E695DEC8] arrayWithObject:source];
  }

  else
  {
    v11 = 0;
  }

  return [ABPredicate personPredicateWithNameLike:like groups:0 sources:v11 includeSourceInResults:resultsCopy includePhotosInResults:inResultsCopy addressBook:book];
}

@end