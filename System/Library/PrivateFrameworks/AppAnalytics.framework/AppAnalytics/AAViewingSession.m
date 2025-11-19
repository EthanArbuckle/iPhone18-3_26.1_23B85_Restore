@interface AAViewingSession
- (AAViewingSession)init;
- (NSString)identifier;
@end

@implementation AAViewingSession

- (NSString)identifier
{
  v2 = *(self + OBJC_IVAR___AAViewingSession_identifier);
  v3 = *(self + OBJC_IVAR___AAViewingSession_identifier + 8);

  v4 = sub_1B6AB92B0();

  return v4;
}

- (AAViewingSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end