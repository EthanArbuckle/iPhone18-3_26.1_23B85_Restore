@interface AECLifetimeConnection
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC9AACClient21AECLifetimeConnection)init;
- (void)handleEventDidBeginWithCompletion:(id)a3;
- (void)handleEventDidInvalidateWithError:(id)a3 completion:(id)a4;
- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)a3;
- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)a3;
- (void)handleEventWantsPresentBannerWithTitle:(id)a3 duration:(id)a4 completion:(id)a5;
@end

@implementation AECLifetimeConnection

- (_TtC9AACClient21AECLifetimeConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleEventDidBeginWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_236E02E04(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)handleEventDidInvalidateWithError:(id)a3 completion:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler);
  if (v6)
  {
    v7 = *&self->queue[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler];
    sub_236E02DB0();
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v11 = self;
    sub_236E036C4(v6);
    v6(v8);
    sub_236E036D4(v6);
  }

  else
  {
    v12 = a3;
    v13 = self;
  }

  v5[2](v5, 0);
  _Block_release(v5);
}

- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_236E02588(sub_236E03C90, v5, "Client beginning SAM");
}

- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  sub_236E02588(sub_236E03C90, v5, "Client ending SAM");
}

- (void)handleEventWantsPresentBannerWithTitle:(id)a3 duration:(id)a4 completion:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_236E160C0();
  v10 = v9;
  _Block_copy(v7);
  v11 = a4;
  v12 = self;
  sub_236E02F00(v8, v10, v11, v12, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_236E032B0(v7);

  return v9 & 1;
}

@end