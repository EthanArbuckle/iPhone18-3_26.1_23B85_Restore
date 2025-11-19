@interface VideoAccessIndexNorm
- (id)initFromFile:(id)a3 pixelFormat:(unsigned int)a4 normalizer:(void *)a5;
- (int)getFrameAtIndex:(unsigned int)a3 pixBuf:(__CVBuffer *)a4;
@end

@implementation VideoAccessIndexNorm

- (id)initFromFile:(id)a3 pixelFormat:(unsigned int)a4 normalizer:(void *)a5
{
  self->mNormalizer = a5;
  v6.receiver = self;
  v6.super_class = VideoAccessIndexNorm;
  return [(VideoAccessIndex *)&v6 initFromFile:a3 pixelFormat:*&a4 frameTimes:a5 + 8];
}

- (int)getFrameAtIndex:(unsigned int)a3 pixBuf:(__CVBuffer *)a4
{
  v6 = (*(*self->mNormalizer + 16))(self->mNormalizer, *&a3);
  v8.receiver = self;
  v8.super_class = VideoAccessIndexNorm;
  return [(VideoAccessIndex *)&v8 getFrameAtIndex:v6 pixBuf:a4];
}

@end