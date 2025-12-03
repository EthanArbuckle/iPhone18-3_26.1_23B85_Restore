@interface LocationAuthorization
- (_TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization)init;
- (void)locationManagerDidChangeAuthorization:(id)authorization;
@end

@implementation LocationAuthorization

- (void)locationManagerDidChangeAuthorization:(id)authorization
{
  authorizationCopy = authorization;
  selfCopy = self;
  sub_100193F4C(authorizationCopy);
}

- (_TtC8SOSBuddyP33_EA0A6DD3813AFCA28C36541F1A14F10521LocationAuthorization)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end