@interface PFHistoryAnalyzerDefaultObjectState
- (PFHistoryAnalyzerDefaultObjectState)initWithOriginalChange:(id)a3;
- (id)description;
- (void)dealloc;
- (void)updateWithChange:(id)a3;
@end

@implementation PFHistoryAnalyzerDefaultObjectState

- (PFHistoryAnalyzerDefaultObjectState)initWithOriginalChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = PFHistoryAnalyzerDefaultObjectState;
  v4 = [(PFHistoryAnalyzerDefaultObjectState *)&v7 init];
  if (v4)
  {
    v4->_analyzedObjectID = [a3 changedObjectID];
    v4->_originalTransactionNumber = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(a3, "transaction"), "transactionNumber")}];
    v5 = [a3 changeType];
    v4->_originalChangeType = v5;
    v4->_finalChangeType = v5;
    v4->_finalTransactionNumber = v4->_originalTransactionNumber;
    v4->_tombstone = [a3 tombstone];
    v4->_finalChangeAuthor = [objc_msgSend(a3 "transaction")];
    v4->_estimatedSizeInBytes = malloc_size(v4);
    if ([(NSString *)v4->_finalChangeAuthor length])
    {
      v4->_estimatedSizeInBytes += malloc_size(v4->_finalChangeAuthor);
    }
  }

  return v4;
}

- (void)dealloc
{
  self->_originalTransactionNumber = 0;

  self->_tombstone = 0;
  self->_finalChangeAuthor = 0;
  v3.receiver = self;
  v3.super_class = PFHistoryAnalyzerDefaultObjectState;
  [(PFHistoryAnalyzerDefaultObjectState *)&v3 dealloc];
}

- (void)updateWithChange:(id)a3
{
  self->_finalTransactionNumber = [MEMORY[0x1E696AD98] numberWithLongLong:{objc_msgSend(objc_msgSend(a3, "transaction"), "transactionNumber")}];
  self->_finalChangeType = [a3 changeType];

  self->_tombstone = [a3 tombstone];
  if ([(NSString *)self->_finalChangeAuthor length])
  {
    self->_estimatedSizeInBytes -= malloc_size(self->_finalChangeAuthor);
  }

  v5 = [objc_msgSend(a3 "transaction")];
  self->_finalChangeAuthor = v5;
  if ([(NSString *)v5 length])
  {
    self->_estimatedSizeInBytes += malloc_size(self->_finalChangeAuthor);
  }
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v7.receiver = self;
  v7.super_class = PFHistoryAnalyzerDefaultObjectState;
  v4 = [MEMORY[0x1E696AD60] stringWithString:{-[PFHistoryAnalyzerDefaultObjectState description](&v7, sel_description)}];
  [v4 appendFormat:@" (%@, %@:%@ -> %@:%@, %@)", self->_analyzedObjectID, self->_originalTransactionNumber, +[NSPersistentHistoryChange stringForChangeType:](NSPersistentHistoryChange, "stringForChangeType:", self->_originalChangeType), self->_finalTransactionNumber, +[NSPersistentHistoryChange stringForChangeType:](NSPersistentHistoryChange, "stringForChangeType:", self->_finalChangeType), self->_finalChangeAuthor];
  v5 = v4;
  objc_autoreleasePoolPop(v3);
  return v4;
}

@end