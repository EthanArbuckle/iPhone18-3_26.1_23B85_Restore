@interface _MTL4Archive
- (BOOL)loadFromURL:(id)l error:(id *)error;
- (_MTL4Archive)initWithDevice:(id)device;
- (id)newArchiveArrayReplyForPipelineWithName:(id)name;
@end

@implementation _MTL4Archive

- (_MTL4Archive)initWithDevice:(id)device
{
  v6.receiver = self;
  v6.super_class = _MTL4Archive;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  if (v4)
  {
    v4->_device = device;
    operator new();
  }

  return 0;
}

- (id)newArchiveArrayReplyForPipelineWithName:(id)name
{
  ptr = self->_archiveReader.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(__p, [name UTF8String]);
  v4 = MTL4ArchiveImpl::newArchiveArrayReplyForPipelineName(ptr, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (BOOL)loadFromURL:(id)l error:(id *)error
{
  if (l && [l isFileURL] && (objc_msgSend(l, "checkResourceIsReachableAndReturnError:", error) & 1) != 0)
  {
    ptr = self->_archiveReader.__ptr_;

    return MTL4ArchiveImpl::loadFromURL(ptr, l, error);
  }

  else
  {
    if (error)
    {
      *error = errorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
    }

    return 0;
  }
}

@end