@interface NWURLSessionMultipartBoundaryRecognizer
- (void)dealloc;
@end

@implementation NWURLSessionMultipartBoundaryRecognizer

- (void)dealloc
{
  if (self)
  {
    pattern = self->_pattern;
    if (pattern)
    {
      free(pattern);
      self->_pattern = 0;
    }

    rollbackBuffer = self->_rollbackBuffer;
    if (rollbackBuffer)
    {
      free(rollbackBuffer);
      self->_rollbackBuffer = 0;
    }
  }

  v5.receiver = self;
  v5.super_class = NWURLSessionMultipartBoundaryRecognizer;
  [(NWURLSessionMultipartBoundaryRecognizer *)&v5 dealloc];
}

@end