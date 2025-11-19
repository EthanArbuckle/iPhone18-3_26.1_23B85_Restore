@interface MatterAddDeviceExtensionConnectionHandler
- (BOOL)shouldAcceptXPCConnection:(id)a3;
- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)init;
- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)initWithPrincipalObject:(id)a3;
- (void)configureDeviceWithName:(NSString *)a3 room:(MTSDeviceSetupRoom *)a4 completionHandler:(id)a5;
- (void)fetchRoomsInHome:(MTSDeviceSetupHome *)a3 completionHandler:(id)a4;
- (void)pairDeviceInHome:(MTSDeviceSetupHome *)a3 onboardingPayload:(NSString *)a4 uuid:(NSUUID *)a5 completionHandler:(id)a6;
- (void)selectThreadNetworkFromScanResults:(NSArray *)a3 completionHandler:(id)a4;
- (void)selectWiFiNetworkFromScanResults:(NSArray *)a3 completionHandler:(id)a4;
- (void)validateDeviceCredential:(MTSDeviceCredential *)a3 completionHandler:(id)a4;
@end

@implementation MatterAddDeviceExtensionConnectionHandler

- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)initWithPrincipalObject:(id)a3
{
  swift_unknownObjectRetain();
  sub_239856DE4();
  swift_unknownObjectRelease();
  return sub_23983C1E4(v4);
}

- (BOOL)shouldAcceptXPCConnection:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_23983C3C0(v4);

  return 1;
}

- (void)selectWiFiNetworkFromScanResults:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_2398403E0(0, 0, v10, &unk_23985C7B8, v15);
}

- (void)selectThreadNetworkFromScanResults:(NSArray *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_2398403E0(0, 0, v10, &unk_23985C788, v15);
}

- (void)validateDeviceCredential:(MTSDeviceCredential *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_2398403E0(0, 0, v10, &unk_23985C760, v15);
}

- (void)pairDeviceInHome:(MTSDeviceSetupHome *)a3 onboardingPayload:(NSString *)a4 uuid:(NSUUID *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
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
  v20 = a3;
  v21 = a4;
  v22 = a5;
  v23 = self;
  sub_2398403E0(0, 0, v14, &unk_23985C738, v19);
}

- (void)fetchRoomsInHome:(MTSDeviceSetupHome *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
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
  v16 = a3;
  v17 = self;
  sub_2398403E0(0, 0, v10, &unk_23985C710, v15);
}

- (void)configureDeviceWithName:(NSString *)a3 room:(MTSDeviceSetupRoom *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF7C508, &qword_23985C690);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
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
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_2398403E0(0, 0, v12, &unk_23985C6C0, v17);
}

- (_TtC13MatterSupport41MatterAddDeviceExtensionConnectionHandler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end