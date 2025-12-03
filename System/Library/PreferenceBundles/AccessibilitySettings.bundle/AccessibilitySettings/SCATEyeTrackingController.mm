@interface SCATEyeTrackingController
- (SCATEyeTrackingController)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation SCATEyeTrackingController

- (id)makeController
{
  sub_19B334();
  type metadata accessor for SCATEyeTrackingView(0);
  sub_192250(&qword_2B9CF0, type metadata accessor for SCATEyeTrackingView);
  v2 = sub_19B344();

  return v2;
}

- (SCATEyeTrackingController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_19BFE4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return EyeTrackingController.init(nibName:bundle:)(v5, v7, bundle);
}

@end