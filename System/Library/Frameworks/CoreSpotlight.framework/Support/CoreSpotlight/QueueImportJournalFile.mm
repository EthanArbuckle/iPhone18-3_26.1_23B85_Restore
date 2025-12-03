@interface QueueImportJournalFile
- (QueueImportJournalFile)initWithType:(int)type partialPath:(const char *)path andSerialNumber:(unint64_t)number;
@end

@implementation QueueImportJournalFile

- (QueueImportJournalFile)initWithType:(int)type partialPath:(const char *)path andSerialNumber:(unint64_t)number
{
  v11.receiver = self;
  v11.super_class = QueueImportJournalFile;
  v8 = [(QueueImportJournalFile *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_type = type;
    strlcpy(v8->_partialPath, path, 0x400uLL);
    v9->_serialNumber = number;
  }

  return v9;
}

@end