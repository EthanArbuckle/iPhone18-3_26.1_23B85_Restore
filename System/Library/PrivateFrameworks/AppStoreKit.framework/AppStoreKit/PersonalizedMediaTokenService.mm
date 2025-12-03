@interface PersonalizedMediaTokenService
- (_TtC11AppStoreKit29PersonalizedMediaTokenService)init;
- (id)fetchMediaToken;
- (void)accountsDidChange;
@end

@implementation PersonalizedMediaTokenService

- (void)accountsDidChange
{
  selfCopy = self;
  sub_1E1982DB8();
}

- (id)fetchMediaToken
{
  fetchMediaToken = [*(&self->super.isa + OBJC_IVAR____TtC11AppStoreKit29PersonalizedMediaTokenService_tokenService) fetchMediaToken];

  return fetchMediaToken;
}

- (_TtC11AppStoreKit29PersonalizedMediaTokenService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end