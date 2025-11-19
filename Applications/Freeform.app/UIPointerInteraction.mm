@interface UIPointerInteraction
+ (id)crl_toolbarPointerStyleProvider;
+ (id)p_roundedRectProviderWithCornerRadius:(double)a3 width:(double)a4 heightBlock:(id)a5;
+ (id)p_roundedRectProviderWithSize:(CGSize)a3 cornerRadius:(double)a4;
@end

@implementation UIPointerInteraction

+ (id)crl_toolbarPointerStyleProvider
{
  [a1 crl_toolbarRoundedRectWidth];
  v4 = v3;
  [a1 crl_toolbarRoundedRectHeight];
  v6 = v5;
  [a1 crl_toolbarRoundedRectCornerRadius];

  return [a1 p_roundedRectProviderWithSize:v4 cornerRadius:{v6, v7}];
}

+ (id)p_roundedRectProviderWithSize:(CGSize)a3 cornerRadius:(double)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10033C2B8;
  v6[3] = &unk_101857118;
  v7 = a3;
  v4 = [a1 p_roundedRectProviderWithCornerRadius:v6 width:a4 heightBlock:a3.width];

  return v4;
}

+ (id)p_roundedRectProviderWithCornerRadius:(double)a3 width:(double)a4 heightBlock:(id)a5
{
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10033C378;
  v10[3] = &unk_101857140;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v7 = v11;
  v8 = objc_retainBlock(v10);

  return v8;
}

@end