@interface _PipelineLibrarySerializer
- (_PipelineLibrarySerializer)init;
- (void)dealloc;
@end

@implementation _PipelineLibrarySerializer

- (_PipelineLibrarySerializer)init
{
  v3.receiver = self;
  v3.super_class = _PipelineLibrarySerializer;
  if ([(_PipelineLibrarySerializer *)&v3 init])
  {
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  binarySerializer = self->_binarySerializer;
  if (binarySerializer)
  {
    (*(*binarySerializer + 88))(binarySerializer, a2);
  }

  v4.receiver = self;
  v4.super_class = _PipelineLibrarySerializer;
  [(_PipelineLibrarySerializer *)&v4 dealloc];
}

@end