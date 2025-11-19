@interface SuggestedRouteSystemApertureViewController
- (BNPresentableContext)presentableContext;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation SuggestedRouteSystemApertureViewController

- (void)loadView
{
  v3 = self;
  v2 = sub_100022CC0();
  [(SuggestedRouteSystemApertureViewController *)v3 setView:v2];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_100022E6C();
}

- (BNPresentableContext)presentableContext
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

@end