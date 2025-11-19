@interface MobileCalWindow
- (CGSize)mainContentSize;
- (MobileCalWindow)init;
@end

@implementation MobileCalWindow

- (MobileCalWindow)init
{
  v6.receiver = self;
  v6.super_class = MobileCalWindow;
  v2 = [(MobileCalWindow *)&v6 init];
  if (v2)
  {
    v7[0] = objc_opt_class();
    v7[1] = objc_opt_class();
    v3 = [NSArray arrayWithObjects:v7 count:2];
    v4 = [(MobileCalWindow *)v2 registerForTraitChanges:v3 withHandler:&stru_100211390];
  }

  return v2;
}

- (CGSize)mainContentSize
{
  [(MobileCalWindow *)self bounds];
  v4 = v3;
  v6 = v5;
  v7 = [(MobileCalWindow *)self rootViewController];
  v8 = [v7 conformsToProtocol:&OBJC_PROTOCOL___CalRootViewController];

  if (v8)
  {
    v9 = [(MobileCalWindow *)self rootViewController];
    [v9 mainContentSize];
    v11 = v10;
    v13 = v12;

    if (v11 != CGSizeZero.width || v13 != CGSizeZero.height)
    {
      v6 = v13;
      v4 = v11;
    }
  }

  v14 = v4;
  v15 = v6;
  result.height = v15;
  result.width = v14;
  return result;
}

@end