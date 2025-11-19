@interface AXTeachableLongFormViewController
- (AXTeachableLongFormViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)didReceiveNotification:(id)a3;
@end

@implementation AXTeachableLongFormViewController

- (void)didReceiveNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  AXTeachableLongFormViewController.didReceive(_:)(v4);
}

- (AXTeachableLongFormViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_1000030B8();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return AXTeachableLongFormViewController.init(nibName:bundle:)(v5, v7, a4);
}

@end