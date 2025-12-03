@interface HSTContactFrameMetadataAccessor
- (SurfaceSize)surfaceSize;
- (void)setSurfaceSize:(SurfaceSize)size;
@end

@implementation HSTContactFrameMetadataAccessor

- (SurfaceSize)surfaceSize
{
  p_metadata = &self->frame->metadata;
  v4 = 0;
  if (!p_metadata->surfaceSize.__engaged_)
  {
    p_metadata = &v4;
  }

  return p_metadata->surfaceSize.var0.__val_;
}

- (void)setSurfaceSize:(SurfaceSize)size
{
  p_metadata = &self->frame->metadata;
  if (!self->frame->metadata.surfaceSize.__engaged_)
  {
    self->frame->metadata.surfaceSize.__engaged_ = 1;
  }

  p_metadata->surfaceSize.var0.__val_ = size;
}

@end