@interface DisplayModalAlert
- (_TtC17ContinuityDisplay17DisplayModalAlert)initWithNibName:(id)name bundle:(id)bundle;
- (void)_disconnectPressedWithSender:(id)sender;
- (void)loadView;
@end

@implementation DisplayModalAlert

- (void)loadView
{
  selfCopy = self;
  sub_10001E54C();
}

- (void)_disconnectPressedWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_10001EF50();
}

- (_TtC17ContinuityDisplay17DisplayModalAlert)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_100057A50();
  }

  bundleCopy = bundle;
  sub_10001F010();
}

@end