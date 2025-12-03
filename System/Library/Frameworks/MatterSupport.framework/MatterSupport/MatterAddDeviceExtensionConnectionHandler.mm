@interface MatterAddDeviceExtensionConnectionHandler
- (BOOL)shouldAcceptXPCConnection:(id)connection;
- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)init;
- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)initWithPrincipalObject:(id)object;
- (void)configureDeviceWithName:(NSString *)name room:(MTSDeviceSetupRoom *)room completionHandler:(id)handler;
- (void)fetchRoomsInHome:(MTSDeviceSetupHome *)home completionHandler:(id)handler;
- (void)pairDeviceInHome:(MTSDeviceSetupHome *)home onboardingPayload:(NSString *)payload uuid:(NSUUID *)uuid completionHandler:(id)handler;
- (void)selectThreadNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler;
- (void)selectWiFiNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler;
- (void)validateDeviceCredential:(MTSDeviceCredential *)credential completionHandler:(id)handler;
@end

@implementation MatterAddDeviceExtensionConnectionHandler

- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)initWithPrincipalObject:(id)object
{
  swift_unknownObjectRetain();
  sub_239856DE4();
  swift_unknownObjectRelease();
  return sub_23983C1E4(v4);
}

- (BOOL)shouldAcceptXPCConnection:(id)connection
{
  connectionCopy = connection;
  selfCopy = self;
  sub_23983C3C0(connectionCopy);

  return 1;
}

- (void)selectWiFiNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = results;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_239856D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C7A8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23985C7B0;
  v15[5] = v14;
  resultsCopy = results;
  selfCopy = self;
  sub_2398403E0(0, 0, v10, &unk_23985C7B8, v15);
}

- (void)selectThreadNetworkFromScanResults:(NSArray *)results completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = results;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_239856D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C778;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23985C780;
  v15[5] = v14;
  resultsCopy = results;
  selfCopy = self;
  sub_2398403E0(0, 0, v10, &unk_23985C788, v15);
}

- (void)validateDeviceCredential:(MTSDeviceCredential *)credential completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = credential;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_239856D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C750;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23985C758;
  v15[5] = v14;
  credentialCopy = credential;
  selfCopy = self;
  sub_2398403E0(0, 0, v10, &unk_23985C760, v15);
}

- (void)pairDeviceInHome:(MTSDeviceSetupHome *)home onboardingPayload:(NSString *)payload uuid:(NSUUID *)uuid completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  v16[2] = home;
  v16[3] = payload;
  v16[4] = uuid;
  v16[5] = v15;
  v16[6] = self;
  v17 = sub_239856D14();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23985C728;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_23985C730;
  v19[5] = v18;
  homeCopy = home;
  payloadCopy = payload;
  uuidCopy = uuid;
  selfCopy = self;
  sub_2398403E0(0, 0, v14, &unk_23985C738, v19);
}

- (void)fetchRoomsInHome:(MTSDeviceSetupHome *)home completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = home;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_239856D14();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23985C700;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23985C708;
  v15[5] = v14;
  homeCopy = home;
  selfCopy = self;
  sub_2398403E0(0, 0, v10, &unk_23985C710, v15);
}

- (void)configureDeviceWithName:(NSString *)name room:(MTSDeviceSetupRoom *)room completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = name;
  v14[3] = room;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_239856D14();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23985C6A0;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23985C6B0;
  v17[5] = v16;
  nameCopy = name;
  roomCopy = room;
  selfCopy = self;
  sub_2398403E0(0, 0, v12, &unk_23985C6C0, v17);
}

- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end