@interface ReverseGeocodeActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation ReverseGeocodeActionHandler

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
    v10[2] = sub_100745960;
    v10[3] = &unk_10165D2D8;
    v11 = v6;
    [v7 resolveMapItemWithTraits:v9 completion:v10];
  }
}

@end