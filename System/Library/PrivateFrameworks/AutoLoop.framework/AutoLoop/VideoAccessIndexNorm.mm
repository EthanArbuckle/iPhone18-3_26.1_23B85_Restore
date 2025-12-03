@interface VideoAccessIndexNorm
- (id)initFromFile:(id)file pixelFormat:(unsigned int)format normalizer:(void *)normalizer;
- (int)getFrameAtIndex:(unsigned int)index pixBuf:(__CVBuffer *)buf;
@end

@implementation VideoAccessIndexNorm

- (id)initFromFile:(id)file pixelFormat:(unsigned int)format normalizer:(void *)normalizer
{
  self->mNormalizer = normalizer;
  v6.receiver = self;
  v6.super_class = VideoAccessIndexNorm;
  return [(VideoAccessIndex *)&v6 initFromFile:file pixelFormat:*&format frameTimes:normalizer + 8];
}

- (int)getFrameAtIndex:(unsigned int)index pixBuf:(__CVBuffer *)buf
{
  v6 = (*(*self->mNormalizer + 16))(self->mNormalizer, *&index);
  v8.receiver = self;
  v8.super_class = VideoAccessIndexNorm;
  return [(VideoAccessIndex *)&v8 getFrameAtIndex:v6 pixBuf:buf];
}

@end