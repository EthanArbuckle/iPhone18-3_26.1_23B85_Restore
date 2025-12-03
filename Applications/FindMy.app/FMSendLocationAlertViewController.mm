@interface FMSendLocationAlertViewController
- (_TtC6FindMy33FMSendLocationAlertViewController)initWithCoder:(id)coder;
- (void)actionWithSender:(id)sender;
@end

@implementation FMSendLocationAlertViewController

- (void)actionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100538A14();
}

- (_TtC6FindMy33FMSendLocationAlertViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSendLocationAlertViewController();
  coderCopy = coder;
  v5 = [(FMRecipientsViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end