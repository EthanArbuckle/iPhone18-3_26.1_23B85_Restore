@interface FMAddFriendViewController
- (_TtC6FindMy25FMAddFriendViewController)initWithCoder:(id)coder;
- (void)actionWithSender:(id)sender;
- (void)cancelActionWithSender:(id)sender;
@end

@implementation FMAddFriendViewController

- (void)cancelActionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100436C70();
}

- (void)actionWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_100437888();
}

- (_TtC6FindMy25FMAddFriendViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for FMAddFriendViewController();
  coderCopy = coder;
  v5 = [(FMRecipientsViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end