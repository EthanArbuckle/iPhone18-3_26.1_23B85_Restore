@interface PersonalNicknameAvatarProvider
- (_TtC11MobilePhone30PersonalNicknameAvatarProvider)init;
- (void)generateAvatarImageOfSize:(CGSize)a3 imageHandler:(id)a4;
@end

@implementation PersonalNicknameAvatarProvider

- (_TtC11MobilePhone30PersonalNicknameAvatarProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)generateAvatarImageOfSize:(CGSize)a3 imageHandler:(id)a4
{
  height = a3.height;
  width = a3.width;
  v7 = _Block_copy(a4);
  _Block_copy(v7);
  v8 = self;
  specialized PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(v8, v7, width, height);
  _Block_release(v7);
  _Block_release(v7);
}

@end