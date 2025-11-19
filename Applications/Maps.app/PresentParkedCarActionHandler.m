@interface PresentParkedCarActionHandler
+ (void)performAction:(id)a3 inContext:(id)a4;
@end

@implementation PresentParkedCarActionHandler

+ (void)performAction:(id)a3 inContext:(id)a4
{
  v5 = a3;
  v6 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v5;
    v8 = [v6 chrome];
    v9 = +[ParkedCarManager sharedManager];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100610010;
    v12[3] = &unk_101623F10;
    v13 = v6;
    v14 = v8;
    v15 = v7;
    v10 = v7;
    v11 = v8;
    [v9 fetchParkedCar:v12];
  }
}

@end