@interface ACLSFileHandleInputStream
- (ACLSFileHandleInputStream)initWithFileHandle:(id)handle fileOffset:(int64_t)offset length:(int64_t)length;
- (int64_t)read:(char *)read maxLength:(unint64_t)length;
- (unint64_t)streamStatus;
@end

@implementation ACLSFileHandleInputStream

- (ACLSFileHandleInputStream)initWithFileHandle:(id)handle fileOffset:(int64_t)offset length:(int64_t)length
{
  handleCopy = handle;
  v13.receiver = self;
  v13.super_class = ACLSFileHandleInputStream;
  v10 = [(ACLSFileHandleInputStream *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_fileHandle, handle);
    v11->_fileOffset = offset;
    v11->_fileEndOffset = length + offset;
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

- (int64_t)read:(char *)read maxLength:(unint64_t)length
{
  if (self->_fileEndOffset - self->_fileOffset >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = self->_fileEndOffset - self->_fileOffset;
  }

  result = pread([(NSFileHandle *)self->_fileHandle fileDescriptor], read, lengthCopy, self->_fileOffset);
  if (result >= 1)
  {
    self->_fileOffset += result;
  }

  return result;
}

@end