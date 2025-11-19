@interface UITraitCollection
+ (id)tui_allAPITraits;
- (UIScrollView)tui_feedProxyScrollView;
@end

@implementation UITraitCollection

+ (id)tui_allAPITraits
{
  v4[0] = objc_opt_class();
  v4[1] = objc_opt_class();
  v4[2] = objc_opt_class();
  v4[3] = objc_opt_class();
  v4[4] = objc_opt_class();
  v4[5] = objc_opt_class();
  v4[6] = objc_opt_class();
  v4[7] = objc_opt_class();
  v4[8] = objc_opt_class();
  v4[9] = objc_opt_class();
  v4[10] = objc_opt_class();
  v4[11] = objc_opt_class();
  v4[12] = objc_opt_class();
  v4[13] = objc_opt_class();
  v2 = [NSArray arrayWithObjects:v4 count:14];

  return v2;
}

- (UIScrollView)tui_feedProxyScrollView
{
  sub_194800();
  v3 = self;
  sub_19C668();
  if (v6)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  return Strong;
}

@end