@interface SCATSwitchesControllerSwiftUI
- (SCATSwitchesControllerSwiftUI)initWithNibName:(id)name bundle:(id)bundle;
- (id)makeController;
@end

@implementation SCATSwitchesControllerSwiftUI

- (id)makeController
{
  sub_19B334();
  type metadata accessor for SCATSwitchesView(0);
  sub_15E180(&qword_2B8358, type metadata accessor for SCATSwitchesView);
  v2 = sub_19B344();

  return v2;
}

- (SCATSwitchesControllerSwiftUI)initWithNibName:(id)name bundle:(id)bundle
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
  return SwitchesController.init(nibName:bundle:)(v5, v7, bundle);
}

@end