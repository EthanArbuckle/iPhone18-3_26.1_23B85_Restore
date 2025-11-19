@interface AuthorizationOperation
- (BOOL)isExecuting;
- (BOOL)isFinished;
- (_TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation)init;
- (id)presentationAnchorForAuthorizationController:(id)a3;
- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4;
- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4;
- (void)cancel;
- (void)start;
@end

@implementation AuthorizationOperation

- (void)start
{
  v2 = self;
  sub_23B6A29E4();
}

- (void)cancel
{
  v2 = self;
  sub_23B6A2D5C();
}

- (BOOL)isExecuting
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4 == 1;
}

- (BOOL)isFinished
{
  v2 = *(&self->super.super.isa + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_stateStorage);
  v3 = self;
  os_unfair_lock_lock((v2 + 20));
  v4 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));

  return v4 == 2;
}

- (void)authorizationController:(id)a3 didCompleteWithAuthorization:(id)a4
{
  v5 = a4;
  v6 = self;
  v7 = [v5 credential];
  sub_23B69D8C4(&v11);
  v9 = v11;
  v10 = v12;
  sub_23B6A38CC(&v9);

  v8 = v9;
}

- (void)authorizationController:(id)a3 didCompleteWithError:(id)a4
{
  v5 = *(&self->super.super.isa + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController);
  *(&self->super.super.isa + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_authorizationController) = 0;
  v6 = a4;
  v7 = self;

  sub_23B6A3238(v6);
}

- (_TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)presentationAnchorForAuthorizationController:(id)a3
{
  v3 = *(&self->super.super.isa + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  if (!v3)
  {
    v9 = self;
    goto LABEL_7;
  }

  v4 = *(&self->super._iop.__prevOp + OBJC_IVAR____TtC31_AuthenticationServices_SwiftUI22AuthorizationOperation_presentationAnchorProvider);
  v5 = self;
  v6 = sub_23B6A3F80(v3);
  v7 = v3(v6);
  sub_23B6A202C(v3);
  if (!v7)
  {
LABEL_7:
    result = sub_23B6A9990();
    __break(1u);
    return result;
  }

  return v7;
}

@end