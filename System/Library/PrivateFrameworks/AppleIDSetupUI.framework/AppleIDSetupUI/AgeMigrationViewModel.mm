@interface AgeMigrationViewModel
- (_TtC14AppleIDSetupUI21AgeMigrationViewModel)init;
- (id)accountsForAccountManager:(id)manager;
- (void)remoteUIDidDismiss:(id)dismiss;
- (void)remoteUIDidEndFlow:(id)flow;
- (void)remoteUIDidHandleButton:(id)button;
- (void)remoteUIDidReceiveHTTPResponse:(id)response;
- (void)remoteUIRequestComplete:(id)complete error:(id)error;
- (void)remoteUIWillLoadRequest:(id)request;
@end

@implementation AgeMigrationViewModel

- (_TtC14AppleIDSetupUI21AgeMigrationViewModel)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remoteUIWillLoadRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_2409B5B18(requestCopy);
}

- (void)remoteUIDidEndFlow:(id)flow
{
  flowCopy = flow;
  selfCopy = self;
  sub_2409B8EC4("RemoteUI dismissed. Ending flow", &unk_285290190, &unk_240A35760, sub_2409230D4);
}

- (void)remoteUIDidReceiveHTTPResponse:(id)response
{
  responseCopy = response;
  selfCopy = self;
  sub_2409B65F8(responseCopy);
}

- (void)remoteUIRequestComplete:(id)complete error:(id)error
{
  v6 = sub_240A2946C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_240A2944C();
  selfCopy = self;
  errorCopy = error;
  sub_2409B6A10(v11, error);

  (*(v7 + 8))(v11, v6);
}

- (void)remoteUIDidHandleButton:(id)button
{
  v4 = sub_240A2BEBC();
  selfCopy = self;
  sub_2409B73CC(v4);
}

- (void)remoteUIDidDismiss:(id)dismiss
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v14 - v7;
  v9 = sub_240A2C24C();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_240A2C21C();
  selfCopy = self;
  v11 = sub_240A2C20C();
  v12 = swift_allocObject();
  v13 = MEMORY[0x277D85700];
  v12[2] = v11;
  v12[3] = v13;
  v12[4] = selfCopy;
  sub_2409230D4(0, 0, v8, &unk_240A356D8, v12);
}

- (id)accountsForAccountManager:(id)manager
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50C7D0, &unk_240A315C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_240A305D0;
  v5 = *MEMORY[0x277CED1A0];
  *(inited + 32) = *MEMORY[0x277CED1A0];
  managerCopy = manager;
  v7 = v5;
  accountStore = [managerCopy accountStore];
  aa_primaryAppleAccount = [accountStore aa_primaryAppleAccount];

  if (aa_primaryAppleAccount)
  {
    *(inited + 40) = aa_primaryAppleAccount;
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