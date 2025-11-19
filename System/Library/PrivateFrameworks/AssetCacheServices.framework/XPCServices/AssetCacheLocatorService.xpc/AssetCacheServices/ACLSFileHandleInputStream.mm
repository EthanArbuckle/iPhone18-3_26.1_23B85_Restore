@interface ACLSFileHandleInputStream
- (ACLSFileHandleInputStream)initWithFileHandle:(id)a3 fileOffset:(int64_t)a4 length:(int64_t)a5;
- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4;
- (unint64_t)streamStatus;
@end

@implementation ACLSFileHandleInputStream

- (ACLSFileHandleInputStream)initWithFileHandle:(id)a3 fileOffset:(int64_t)a4 length:(int64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ACLSFileHandleInputStream;
  v10 = [(ACLSFileHandleInputStream *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileHandle, a3);
    v11->_fileOffset = a4;
    v11->_fileEndOffset = a5 + a4;
    v11->_status = 0;
  }

  return v11;
}

- (unint64_t)streamStatus
{
  if (self->_status == 6)
  {
    return 6;
  }

  if ([(ACLSFileHandleInputStream *)self hasBytesAvailable])
  {
    return self->_status;
  }

  result = 5;
  self->_status = 5;
  return result;
}

- (int64_t)read:(char *)a3 maxLength:(unint64_t)a4
{
  if (self->_fileEndOffset - self->_fileOffset >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = self->_fileEndOffset - self->_fileOffset;
  }

  result = pread([(NSFileHandle *)self->_fileHandle fileDescriptor], a3, v5, self->_fileOffset);
  if (result >= 1)
  {
    self->_fileOffset += result;
  }

  return result;
}

@end