@interface FMSendLocationAlertViewController
- (_TtC6FindMy33FMSendLocationAlertViewController)initWithCoder:(id)a3;
- (void)actionWithSender:(id)a3;
@end

@implementation FMSendLocationAlertViewController

- (void)actionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100538A14();
}

- (_TtC6FindMy33FMSendLocationAlertViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMSendLocationAlertViewController();
  v4 = a3;
  v5 = [(FMRecipientsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end