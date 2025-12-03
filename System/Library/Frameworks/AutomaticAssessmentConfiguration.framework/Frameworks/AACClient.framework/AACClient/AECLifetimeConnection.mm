@interface AECLifetimeConnection
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (_TtC9AACClient21AECLifetimeConnection)init;
- (void)handleEventDidBeginWithCompletion:(id)completion;
- (void)handleEventDidInvalidateWithError:(id)error completion:(id)completion;
- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)completion;
- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)completion;
- (void)handleEventWantsPresentBannerWithTitle:(id)title duration:(id)duration completion:(id)completion;
@end

@implementation AECLifetimeConnection

- (_TtC9AACClient21AECLifetimeConnection)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleEventDidBeginWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_236E02E04(v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)handleEventDidInvalidateWithError:(id)error completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler);
  if (v6)
  {
    v7 = *&self->queue[OBJC_IVAR____TtC9AACClient21AECLifetimeConnection_invalidationHandler];
    sub_236E02DB0();
    v8 = swift_allocError();
    *v9 = error;
    errorCopy = error;
    selfCopy = self;
    sub_236E036C4(v6);
    v6(v8);
    sub_236E036D4(v6);
  }

  else
  {
    errorCopy2 = error;
    selfCopy2 = self;
  }

  v5[2](v5, 0);
  _Block_release(v5);
}

- (void)handleEventWantsBeginSingleAppModeWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_236E02588(sub_236E03C90, v5, "Client beginning SAM");
}

- (void)handleEventWantsEndSingleAppModeWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_236E02588(sub_236E03C90, v5, "Client ending SAM");
}

- (void)handleEventWantsPresentBannerWithTitle:(id)title duration:(id)duration completion:(id)completion
{
  v7 = _Block_copy(completion);
  v8 = sub_236E160C0();
  v10 = v9;
  _Block_copy(v7);
  durationCopy = duration;
  selfCopy = self;
  sub_236E02F00(v8, v10, durationCopy, selfCopy, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  selfCopy = self;
  v9 = sub_236E032B0(connectionCopy);

  return v9 & 1;
}

@end