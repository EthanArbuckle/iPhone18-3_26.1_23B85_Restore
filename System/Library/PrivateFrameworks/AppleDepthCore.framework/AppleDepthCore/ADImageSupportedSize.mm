@interface ADImageSupportedSize
+ (id)createWithSize:(CGSize)a3 layout:(unint64_t)a4 customStrides:(id)a5;
- (CGSize)size;
@end

@implementation ADImageSupportedSize

- (CGSize)size
{
  width = self->_size.width;
  height = self->_size.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)createWithSize:(CGSize)a3 layout:(unint64_t)a4 customStrides:(id)a5
{
  height = a3.height;
  width = a3.width;
  v8 = a5;
  v9 = objc_opt_new();
  v9[3] = width;
  v9[4] = height;
  v10 = *(v9 + 2);
  *(v9 + 1) = a4;
  *(v9 + 2) = v8;

  return v9;
}

@end