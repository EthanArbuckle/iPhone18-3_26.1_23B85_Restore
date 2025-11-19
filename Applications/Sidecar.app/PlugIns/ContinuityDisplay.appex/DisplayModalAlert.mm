@interface DisplayModalAlert
- (_TtC17ContinuityDisplay17DisplayModalAlert)initWithNibName:(id)a3 bundle:(id)a4;
- (void)_disconnectPressedWithSender:(id)a3;
- (void)loadView;
@end

@implementation DisplayModalAlert

- (void)loadView
{
  v2 = self;
  sub_10001E54C();
}

- (void)_disconnectPressedWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10001EF50();
}

- (_TtC17ContinuityDisplay17DisplayModalAlert)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_100057A50();
  }

  v5 = a4;
  sub_10001F010();
}

@end