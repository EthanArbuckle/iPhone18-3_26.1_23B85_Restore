@interface PersonalNicknameAvatarProvider
- (_TtC11MobilePhone30PersonalNicknameAvatarProvider)init;
- (void)generateAvatarImageOfSize:(CGSize)size imageHandler:(id)handler;
@end

@implementation PersonalNicknameAvatarProvider

- (_TtC11MobilePhone30PersonalNicknameAvatarProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)generateAvatarImageOfSize:(CGSize)size imageHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v7 = _Block_copy(handler);
  _Block_copy(v7);
  selfCopy = self;
  specialized PersonalNicknameAvatarProvider.generateAvatarImage(of:imageHandler:)(selfCopy, v7, width, height);
  _Block_release(v7);
  _Block_release(v7);
}

@end