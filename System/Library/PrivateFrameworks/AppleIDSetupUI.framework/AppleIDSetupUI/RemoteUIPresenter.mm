@interface RemoteUIPresenter
- (_TtC14AppleIDSetupUI17RemoteUIPresenter)init;
- (id)accountsForAccountManager:(id)a3;
- (void)remoteUIDidEndFlow:(id)a3;
- (void)remoteUIDidHandleButton:(id)a3;
- (void)remoteUIDidReceiveHTTPResponse:(id)a3;
- (void)remoteUIRequestComplete:(id)a3 error:(id)a4;
- (void)remoteUIWillLoadRequest:(id)a3;
@end

@implementation RemoteUIPresenter

- (id)accountsForAccountManager:(id)a3
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7D0, &unk_240A315C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v5 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  v6 = a3;
  v7 = v5;
  v8 = [v6 accountStore];
  v9 = [v8 aa_primaryAppleAccount];

  if (v9)
  {
    *(inited + 40) = v9;
    sub_2409265DC(inited);
    swift_setDeallocating();
    sub_240919300(inited + 32, &qword_27E50B9D0, &unk_240A356C0);

    type metadata accessor for AIDAServiceType(0);
    sub_2409269D0();
    sub_240926A1C(&qword_27E50BAF0, type metadata accessor for AIDAServiceType);
    v11 = sub_240A2BE9C();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (void)remoteUIWillLoadRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409243EC(v4);
}

- (void)remoteUIDidEndFlow:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler);
  if (v3)
  {
    v4 = *&self->remoteUIPresenter[OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_completionHandler];
    v5 = OBJC_IVAR____TtC14AppleIDSetupUI17RemoteUIPresenter_authResults;
    swift_beginAccess();
    v7 = *(&self->super.isa + v5);
    v8 = self;
    sub_24090C23C(v3);

    v3(v9, 0);

    sub_24090C1A0(v3);
  }
}

- (void)remoteUIDidReceiveHTTPResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_240924650(v4);
}

- (void)remoteUIRequestComplete:(id)a3 error:(id)a4
{
  v4 = sub_240A2946C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = &v10 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2944C();
  (*(v5 + 8))(v9, v4);
}

- (void)remoteUIDidHandleButton:(id)a3
{
  v4 = sub_240A2BEBC();
  v5 = self;
  sub_240924A24(v4);
}

- (_TtC14AppleIDSetupUI17RemoteUIPresenter)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end