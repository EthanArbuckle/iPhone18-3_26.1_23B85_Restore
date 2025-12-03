@interface PersonalNicknameMenuView
+ (BOOL)meCardSharingEnabled;
- (_TtC11MobilePhone24PersonalNicknameMenuView)initWithFrame:(CGRect)frame;
- (void)didTapWithSender:(id)sender;
@end

@implementation PersonalNicknameMenuView

+ (BOOL)meCardSharingEnabled
{
  if (one-time initialization token for nicknamesDefaults != -1)
  {
    swift_once();
  }

  isa = nicknamesDefaults.value.super.isa;
  if (!nicknamesDefaults.value.super.isa)
  {
    return 0;
  }

  v3 = String._bridgeToObjectiveC()();
  v4 = [(objc_class *)isa BOOLForKey:v3];

  return v4;
}

- (void)didTapWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  specialized PersonalNicknameMenuView.didTap(sender:)();
}

- (_TtC11MobilePhone24PersonalNicknameMenuView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end