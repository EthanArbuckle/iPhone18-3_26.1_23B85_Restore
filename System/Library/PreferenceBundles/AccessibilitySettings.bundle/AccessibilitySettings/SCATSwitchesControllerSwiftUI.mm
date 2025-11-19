@interface SCATSwitchesControllerSwiftUI
- (SCATSwitchesControllerSwiftUI)initWithNibName:(id)a3 bundle:(id)a4;
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

- (SCATSwitchesControllerSwiftUI)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_19BFE4();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return SwitchesController.init(nibName:bundle:)(v5, v7, a4);
}

@end