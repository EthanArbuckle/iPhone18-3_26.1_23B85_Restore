@interface ASCABLEAuthenticator
- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)init;
- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)initWithCaBLEURL:(id)a3 error:(id *)a4;
- (_TtP26AuthenticationServicesCore28ASCABLEAuthenticatorDelegate_)delegate;
- (void)dealloc;
- (void)finishTransactionWithCredential:(id)a3 error:(id)a4;
- (void)sendExcludedCredentialMatchError;
- (void)startWithCompletionHandler:(id)a3;
@end

@implementation ASCABLEAuthenticator

- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)initWithCaBLEURL:(id)a3 error:(id *)a4
{
  v5 = sub_1C2170024();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20[-v11];
  sub_1C216FFD4();
  (*(v6 + 16))(v10, v12, v5);
  v13 = [objc_allocWithZone(MEMORY[0x1E695D250]) init];
  v14 = objc_allocWithZone(type metadata accessor for ASCABLEAuthenticator());
  sub_1C20E0E34(v10, v13);
  v16 = v15;
  (*(v6 + 8))(v12, v5);
  swift_getObjectType();
  v17 = *((*MEMORY[0x1E69E7D40] & *self) + 0x30);
  v18 = *((*MEMORY[0x1E69E7D40] & *self) + 0x34);
  swift_deallocPartialClassInstance();
  return v16;
}

- (void)startWithCompletionHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = (self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v7 = *(self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler);
  v8 = *(self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_completionHandler + 8);
  *v6 = sub_1C20EB1A4;
  v6[1] = v5;
  v9 = self;

  sub_1C20B0080(v7);
  sub_1C20E19CC(0);
  [*(v9 + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_powerLogger) logAuthenticationStartedEventIfNeeded];
}

- (void)sendExcludedCredentialMatchError
{
  v2 = self;
  sub_1C20DF13C();
}

- (void)finishTransactionWithCredential:(id)a3 error:(id)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  v8 = a4;
  sub_1C20DF4F8(a3, a4);
  swift_unknownObjectRelease();
}

- (_TtP26AuthenticationServicesCore28ASCABLEAuthenticatorDelegate_)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)dealloc
{
  v2 = *(self + OBJC_IVAR____TtC26AuthenticationServicesCore20ASCABLEAuthenticator_bluetoothAdvertiser);
  v3 = self;
  [v2 invalidate];
  v4.receiver = v3;
  v4.super_class = type metadata accessor for ASCABLEAuthenticator();
  [(ASCABLEAuthenticator *)&v4 dealloc];
}

- (_TtC26AuthenticationServicesCore20ASCABLEAuthenticator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end