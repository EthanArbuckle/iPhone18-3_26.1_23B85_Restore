@interface FMAddFriendViewController
- (_TtC6FindMy25FMAddFriendViewController)initWithCoder:(id)a3;
- (void)actionWithSender:(id)a3;
- (void)cancelActionWithSender:(id)a3;
@end

@implementation FMAddFriendViewController

- (void)cancelActionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100436C70();
}

- (void)actionWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_100437888();
}

- (_TtC6FindMy25FMAddFriendViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAddFriendViewController();
  v4 = a3;
  v5 = [(FMRecipientsViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end