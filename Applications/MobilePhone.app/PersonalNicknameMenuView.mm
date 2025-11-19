@interface PersonalNicknameMenuView
+ (BOOL)meCardSharingEnabled;
- (_TtC11MobilePhone24PersonalNicknameMenuView)initWithFrame:(CGRect)a3;
- (void)didTapWithSender:(id)a3;
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

- (void)didTapWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized PersonalNicknameMenuView.didTap(sender:)();
}

- (_TtC11MobilePhone24PersonalNicknameMenuView)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end