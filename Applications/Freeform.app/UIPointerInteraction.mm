@interface UIPointerInteraction
+ (id)crl_toolbarPointerStyleProvider;
+ (id)p_roundedRectProviderWithCornerRadius:(double)radius width:(double)width heightBlock:(id)block;
+ (id)p_roundedRectProviderWithSize:(CGSize)size cornerRadius:(double)radius;
@end

@implementation UIPointerInteraction

+ (id)crl_toolbarPointerStyleProvider
{
  [self crl_toolbarRoundedRectWidth];
  v4 = v3;
  [self crl_toolbarRoundedRectHeight];
  v6 = v5;
  [self crl_toolbarRoundedRectCornerRadius];

  return [self p_roundedRectProviderWithSize:v4 cornerRadius:{v6, v7}];
}

+ (id)p_roundedRectProviderWithSize:(CGSize)size cornerRadius:(double)radius
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033C2B8;
  v6[3] = &unk_101857118;
  sizeCopy = size;
  v4 = [self p_roundedRectProviderWithCornerRadius:v6 width:radius heightBlock:size.width];

  return v4;
}

+ (id)p_roundedRectProviderWithCornerRadius:(double)radius width:(double)width heightBlock:(id)block
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10033C378;
  v10[3] = &unk_101857140;
  blockCopy = block;
  widthCopy = width;
  radiusCopy = radius;
  v7 = blockCopy;
  v8 = objc_retainBlock(v10);

  return v8;
}

@end