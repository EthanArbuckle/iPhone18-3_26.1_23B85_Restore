@interface WebAuthenticationOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation)init;
- (void)cancel;
- (void)start;
@end

@implementation WebAuthenticationOperation

- (void)start
{
  v2 = self;
  sub_23B6A5460();
}

- (void)cancel
{
  v2 = self;
  sub_23B6A5DB4();
}

- (BOOL)isExecuting
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4 == 1;
}

- (BOOL)isFinished
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation_stateStorage);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4 == 2;
}

- (_TtC31_AuthenticationServices_SwiftUI26WebAuthenticationOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end