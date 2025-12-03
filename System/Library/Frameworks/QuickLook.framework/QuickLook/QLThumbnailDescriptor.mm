@interface QLThumbnailDescriptor
+ (id)descriptorWithSize:(CGSize)size scaleFactor:(double)factor;
- (CGSize)size;
@end

@implementation QLThumbnailDescriptor

+ (id)descriptorWithSize:(CGSize)size scaleFactor:(double)factor
{
  height = size.height;
  width = size.width;
  v7 = objc_alloc_init(self);
  v8 = v7;
  if (v7)
  {
    [v7 setSize:{width, height}];
    [v8 setScaleFactor:factor];
  }

  return v8;
}

- (CGSize)size
{
  objc_copyStruct(v4, &self->_size, 16, 1, 0);
  v2 = *v4;
  v3 = *&v4[1];
  result.height = v3;
  result.width = v2;
  return result;
}

@end