@interface MDLTextureSampler
- (MDLTextureSampler)init;
@end

@implementation MDLTextureSampler

- (MDLTextureSampler)init
{
  v7.receiver = self;
  v7.super_class = MDLTextureSampler;
  v2 = [(MDLTextureSampler *)&v7 init];
  v3 = v2;
  if (v2)
  {
    *&v2->mappingChannel = xmmword_239F9B930;
    v4 = objc_alloc_init(MDLTransform);
    transform = v3->transform;
    v3->transform = v4;
  }

  return v3;
}

@end