@interface ODRPreallocatedFile
- (void)dealloc;
@end

@implementation ODRPreallocatedFile

- (void)dealloc
{
  fileDescriptor = self->_fileDescriptor;
  if (fileDescriptor)
  {
    close(fileDescriptor);
    self->_fileDescriptor = 0;
  }

  v4.receiver = self;
  v4.super_class = ODRPreallocatedFile;
  [(ODRPreallocatedFile *)&v4 dealloc];
}

@end