@interface _FPCopyFileStatus
- (_FPCopyFileStatus)init;
- (void)beginCopyingFile:(id)a3 state:(_copyfile_state *)a4;
- (void)finishCopyingFile:(id)a3 state:(_copyfile_state *)a4;
- (void)updateCopyingFile:(id)a3 state:(_copyfile_state *)a4;
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

- (void)beginCopyingFile:(id)a3 state:(_copyfile_state *)a4
{
  v6 = a3;
  copyfile_state_set(a4, 6u, copyfile_status_cb);
  copyfile_state_set(a4, 7u, self);
  [(_FPCopyFileStatus *)self updateCopyingFile:v6 state:a4];
}

- (void)updateCopyingFile:(id)a3 state:(_copyfile_state *)a4
{
  v6 = a3;
  v7 = [(NSMutableDictionary *)self->_lastBytesCopiedByFile objectForKey:v6];
  v8 = [v7 unsignedLongLongValue];

  dst = 0;
  copyfile_state_get(a4, 8u, &dst);
  if (v8 != dst)
  {
    v9 = [(NSProgress *)self->_progress completedUnitCount];
    [(NSProgress *)self->_progress setCompletedUnitCount:v9 - v8 + dst];
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:dst];
    [(NSMutableDictionary *)self->_lastBytesCopiedByFile setObject:v10 forKeyedSubscript:v6];
  }
}

- (void)finishCopyingFile:(id)a3 state:(_copyfile_state *)a4
{
  v6 = a3;
  [(_FPCopyFileStatus *)self updateCopyingFile:v6 state:a4];
  [(NSMutableDictionary *)self->_lastBytesCopiedByFile removeObjectForKey:v6];
}

@end