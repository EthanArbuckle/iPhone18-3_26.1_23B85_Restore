@interface _FPCopyFileStatus
- (_FPCopyFileStatus)init;
- (void)beginCopyingFile:(id)file state:(_copyfile_state *)state;
- (void)finishCopyingFile:(id)file state:(_copyfile_state *)state;
- (void)updateCopyingFile:(id)file state:(_copyfile_state *)state;
@end

@implementation _FPCopyFileStatus

- (_FPCopyFileStatus)init
{
  v6.receiver = self;
  v6.super_class = _FPCopyFileStatus;
  v2 = [(_FPCopyFileStatus *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    lastBytesCopiedByFile = v2->_lastBytesCopiedByFile;
    v2->_lastBytesCopiedByFile = v3;

    *&v2->_shouldCopyAppleDouble = 1;
  }

  return v2;
}

- (void)beginCopyingFile:(id)file state:(_copyfile_state *)state
{
  fileCopy = file;
  copyfile_state_set(state, 6u, copyfile_status_cb);
  copyfile_state_set(state, 7u, self);
  [(_FPCopyFileStatus *)self updateCopyingFile:fileCopy state:state];
}

- (void)updateCopyingFile:(id)file state:(_copyfile_state *)state
{
  fileCopy = file;
  v7 = [(NSMutableDictionary *)self->_lastBytesCopiedByFile objectForKey:fileCopy];
  unsignedLongLongValue = [v7 unsignedLongLongValue];

  dst = 0;
  copyfile_state_get(state, 8u, &dst);
  if (unsignedLongLongValue != dst)
  {
    completedUnitCount = [(NSProgress *)self->_progress completedUnitCount];
    [(NSProgress *)self->_progress setCompletedUnitCount:completedUnitCount - unsignedLongLongValue + dst];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:dst];
    [(NSMutableDictionary *)self->_lastBytesCopiedByFile setObject:v10 forKeyedSubscript:fileCopy];
  }
}

- (void)finishCopyingFile:(id)file state:(_copyfile_state *)state
{
  fileCopy = file;
  [(_FPCopyFileStatus *)self updateCopyingFile:fileCopy state:state];
  [(NSMutableDictionary *)self->_lastBytesCopiedByFile removeObjectForKey:fileCopy];
}

@end