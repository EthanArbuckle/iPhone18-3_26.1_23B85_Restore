@interface UISDeviceContext
+ (id)clb_contextForDisplayStyle:(int64_t)style;
@end

@implementation UISDeviceContext

+ (id)clb_contextForDisplayStyle:(int64_t)style
{
  BSDispatchQueueAssertMain();
  v4 = +[UISMutableDeviceContext defaultContext];
  if (style == 1)
  {
    if (sub_1000227C0() == 2)
    {
      [v4 setDeviceInfoValue:&off_100318F70 forKey:UISDeviceContextHomeButtonTypeKey];
      [v4 setDeviceInfoValue:&off_100318F88 forKey:UISDeviceContextDeviceCornerRadiusKey];
      goto LABEL_8;
    }

    v7 = sub_100006370();
    v6 = sub_1000222D4(v7);
  }

  else
  {
    if (style)
    {
      goto LABEL_8;
    }

    v5 = sub_100015CE4();
    v6 = sub_1000222D4(v5);
  }

  v8 = [NSNumber numberWithDouble:v6];
  [v4 setDeviceInfoValue:v8 forKey:UISDeviceContextDeviceCornerRadiusKey];

LABEL_8:

  return v4;
}

@end