@interface ICSBannerTransitionAnimation
+ (void)performBannerToFullScreenCrossFadeAnimationWithView:(id)view;
@end

@implementation ICSBannerTransitionAnimation

+ (void)performBannerToFullScreenCrossFadeAnimationWithView:(id)view
{
  viewCopy = view;
  sub_100205874(viewCopy);
}

@end