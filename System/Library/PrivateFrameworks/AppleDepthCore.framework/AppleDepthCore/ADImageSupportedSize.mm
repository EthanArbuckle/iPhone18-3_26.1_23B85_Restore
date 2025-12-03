@interface ADImageSupportedSize
+ (id)createWithSize:(CGSize)size layout:(unint64_t)layout customStrides:(id)strides;
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

+ (id)createWithSize:(CGSize)size layout:(unint64_t)layout customStrides:(id)strides
{
  height = size.height;
  width = size.width;
  stridesCopy = strides;
  v9 = objc_opt_new();
  v9[3] = width;
  v9[4] = height;
  v10 = *(v9 + 2);
  *(v9 + 1) = layout;
  *(v9 + 2) = stridesCopy;

  return v9;
}

@end