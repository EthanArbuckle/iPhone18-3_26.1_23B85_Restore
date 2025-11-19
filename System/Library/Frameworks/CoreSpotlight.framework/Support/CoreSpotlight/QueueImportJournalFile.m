@interface QueueImportJournalFile
- (QueueImportJournalFile)initWithType:(int)a3 partialPath:(const char *)a4 andSerialNumber:(unint64_t)a5;
@end

@implementation QueueImportJournalFile

- (QueueImportJournalFile)initWithType:(int)a3 partialPath:(const char *)a4 andSerialNumber:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = QueueImportJournalFile;
  v8 = [(QueueImportJournalFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = a3;
    strlcpy(v8->_partialPath, a4, 0x400uLL);
    v9->_serialNumber = a5;
  }

  return v9;
}

@end