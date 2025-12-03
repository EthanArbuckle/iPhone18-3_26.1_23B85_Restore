@interface NEExtensionBaseProviderHost
- (NEExtensionBaseHostDelegate)extensionDelegate;
- (void)setExtensionDelegate:(id)delegate;
- (void)setExtensionExportedObject:(id)object;
- (void)setExtensionHostXPCProtocol:(id)protocol;
- (void)setExtensionQueue:(id)queue;
- (void)setExtensionXPCProtocol:(id)protocol;
- (void)setupWithCompletion:(id)completion;
- (void)sleepWithCompletion:(id)completion;
- (void)wakeWithCompletion:(id)completion;
@end

@implementation NEExtensionBaseProviderHost

- (void)setExtensionQueue:(id)queue
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionQueue);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionQueue) = queue;
  queueCopy = queue;
}

- (void)setExtensionXPCProtocol:(id)protocol
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionXPCProtocol);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionXPCProtocol) = protocol;
  protocolCopy = protocol;
}

- (void)setExtensionHostXPCProtocol:(id)protocol
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionHostXPCProtocol);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionHostXPCProtocol) = protocol;
  protocolCopy = protocol;
}

- (NEExtensionBaseHostDelegate)extensionDelegate
{
  v2 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionDelegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setExtensionDelegate:(id)delegate
{
  v3 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionDelegate);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionDelegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setExtensionExportedObject:(id)object
{
  v4 = *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionExportedObject);
  *(self + OBJC_IVAR___NEExtensionBaseProviderHost_extensionExportedObject) = object;
  objectCopy = object;
}

- (void)setupWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4D138;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BAA4D140;
  v13[5] = v12;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v8, &unk_1BAA4D148, v13);
}

- (void)sleepWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4D118;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BAA4D120;
  v13[5] = v12;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v8, &unk_1BAA4D128, v13);
}

- (void)wakeWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBC0EAC0, &qword_1BAA4CD50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(completion);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1BAA39EFC();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1BAA4D0F8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1BAA4D100;
  v13[5] = v12;
  selfCopy = self;
  sub_1BA8737D8(0, 0, v8, &unk_1BAA4CD70, v13);
}

@end