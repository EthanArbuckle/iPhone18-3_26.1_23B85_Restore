@interface GroupSessionBannerViewController
- (BNPresentableContext)presentableContext;
- (UIEdgeInsets)bannerContentOutsets;
- (void)loadView;
@end

@implementation GroupSessionBannerViewController

- (void)loadView
{
  selfCopy = self;
  v2 = sub_10001D7F8();
  [(GroupSessionBannerViewController *)selfCopy setView:v2];
}

- (UIEdgeInsets)bannerContentOutsets
{
  selfCopy = self;
  v3 = sub_10001D7F8();
  [v3 shadowOutsets];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v12 = v5;
  v13 = v7;
  v14 = v9;
  v15 = v11;
  result.right = v15;
  result.bottom = v14;
  result.left = v13;
  result.top = v12;
  return result;
}

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end