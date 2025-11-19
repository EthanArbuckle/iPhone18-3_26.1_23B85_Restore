@interface _MTL4Archive
- (BOOL)loadFromURL:(id)a3 error:(id *)a4;
- (_MTL4Archive)initWithDevice:(id)a3;
- (id)newArchiveArrayReplyForPipelineWithName:(id)a3;
@end

@implementation _MTL4Archive

- (_MTL4Archive)initWithDevice:(id)a3
{
  v6.receiver = self;
  v6.super_class = _MTL4Archive;
  v4 = [(_MTLObjectWithLabel *)&v6 init];
  if (v4)
  {
    v4->_device = a3;
    operator new();
  }

  return 0;
}

- (id)newArchiveArrayReplyForPipelineWithName:(id)a3
{
  ptr = self->_archiveReader.__ptr_;
  std::string::basic_string[abi:ne200100]<0>(__p, [a3 UTF8String]);
  v4 = MTL4ArchiveImpl::newArchiveArrayReplyForPipelineName(ptr, __p);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

- (BOOL)loadFromURL:(id)a3 error:(id *)a4
{
  if (a3 && [a3 isFileURL] && (objc_msgSend(a3, "checkResourceIsReachableAndReturnError:", a4) & 1) != 0)
  {
    ptr = self->_archiveReader.__ptr_;

    return MTL4ArchiveImpl::loadFromURL(ptr, a3, a4);
  }

  else
  {
    if (a4)
    {
      *a4 = errorWithMessage(&cfstr_InvalidUrl.isa, MTLBinaryArchiveErrorInvalidFile);
    }

    return 0;
  }
}

@end