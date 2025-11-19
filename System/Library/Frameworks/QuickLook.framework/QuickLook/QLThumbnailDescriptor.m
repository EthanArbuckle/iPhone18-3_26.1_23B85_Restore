@interface QLThumbnailDescriptor
+ (id)descriptorWithSize:(CGSize)a3 scaleFactor:(double)a4;
- (CGSize)size;
@end

@implementation QLThumbnailDescriptor

+ (id)descriptorWithSize:(CGSize)a3 scaleFactor:(double)a4
{
  height = a3.height;
  width = a3.width;
  v7 = objc_alloc_init(a1);
  v8 = v7;
  if (v7)
  {
    [v7 setSize:{width, height}];
    [v8 setScaleFactor:a4];
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