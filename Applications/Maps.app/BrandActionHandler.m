@interface BrandActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation BrandActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v6 chrome];
    v9 = [v8 currentTraits];

    [v9 setSource:1];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100B0A84C;
    v10[3] = &unk_101638170;
    v11 = v6;
    [v7 resolveBrandPOIsWithTraits:v9 completion:v10];
  }
}

@end