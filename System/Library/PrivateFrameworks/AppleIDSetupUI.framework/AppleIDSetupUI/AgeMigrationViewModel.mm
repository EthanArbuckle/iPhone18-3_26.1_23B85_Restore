@interface AgeMigrationViewModel
- (_TtC14AppleIDSetupUI21AgeMigrationViewModel)init;
- (id)accountsForAccountManager:(id)a3;
- (void)remoteUIDidDismiss:(id)a3;
- (void)remoteUIDidEndFlow:(id)a3;
- (void)remoteUIDidHandleButton:(id)a3;
- (void)remoteUIDidReceiveHTTPResponse:(id)a3;
- (void)remoteUIRequestComplete:(id)a3 error:(id)a4;
- (void)remoteUIWillLoadRequest:(id)a3;
@end

@implementation AgeMigrationViewModel

- (_TtC14AppleIDSetupUI21AgeMigrationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteUIWillLoadRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409B5B18(v4);
}

- (void)remoteUIDidEndFlow:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409B8EC4("RemoteUI dismissed. Ending flow", &unk_285290190, &unk_240A35760, sub_2409230D4);
}

- (void)remoteUIDidReceiveHTTPResponse:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2409B65F8(v4);
}

- (void)remoteUIRequestComplete:(id)a3 error:(id)a4
{
  v6 = sub_240A2946C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2944C();
  v12 = self;
  v13 = a4;
  sub_2409B6A10(v11, a4);

  (*(v7 + 8))(v11, v6);
}

- (void)remoteUIDidHandleButton:(id)a3
{
  v4 = sub_240A2BEBC();
  v5 = self;
  sub_2409B73CC(v4);
}

- (void)remoteUIDidDismiss:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = sub_240A2C24C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_240A2C21C();
  v10 = self;
  v11 = sub_240A2C20C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = v10;
  sub_2409230D4(0, 0, v8, &unk_240A356D8, v12);
}

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
    sub_2409194E8(0, &qword_27E50C600, 0x277CB8F30);
    sub_2409B8508(&qword_27E50BAF0, type metadata accessor for AIDAServiceType);
    v11 = sub_240A2BE9C();

    return v11;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end