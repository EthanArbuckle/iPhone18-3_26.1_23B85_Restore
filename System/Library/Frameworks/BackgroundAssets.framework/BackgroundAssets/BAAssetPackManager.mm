@interface BAAssetPackManager
+ (BAAssetPackManager)sharedManager;
- (BAAssetPackManager)init;
- (BAManagedAssetPackDownloadDelegate)delegate;
- (id)URLForPath:(id)path error:(id *)error;
- (id)contentsAtPath:(id)path searchingInAssetPackWithIdentifier:(id)identifier options:(unint64_t)options error:(id *)error;
- (id)init:(id)init;
- (int)fileDescriptorForPath:(id)path searchingInAssetPackWithIdentifier:(id)identifier error:(id *)error;
- (void)checkForUpdatesWithCompletionHandler:(id)handler;
- (void)ensureLocalAvailabilityOfAssetPack:(BAAssetPack *)pack completionHandler:(id)handler;
- (void)getAllAssetPacksWithCompletionHandler:(id)handler;
- (void)getAssetPackWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)getStatusOfAssetPackWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)removeAssetPackWithIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)setDelegate:(id)delegate;
@end

@implementation BAAssetPackManager

+ (BAAssetPackManager)sharedManager
{
  if (qword_27DE87AB0 != -1)
  {
    swift_once();
  }

  v2 = qword_27DE87DC0;
  v3 = objc_allocWithZone(BAAssetPackManager);
  v4 = _s23AssetPackManagerWrapperCMa();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR____TtCE16BackgroundAssetsCSo18BAAssetPackManagerP33_E4C11CC13CAE77C9CF02057BBB559E6123AssetPackManagerWrapper_manager] = v2;
  v9.receiver = v5;
  v9.super_class = v4;

  v6 = objc_msgSendSuper2(&v9, sel_init);
  init_ = [v3 init_];

  return init_;
}

- (BAManagedAssetPackDownloadDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setDelegate:(id)delegate
{
  swift_unknownObjectWeakAssign();
  v4 = (*(self + OBJC_IVAR___BAAssetPackManager_manager) + OBJC_IVAR____TtC16BackgroundAssets16AssetPackManager_objcDelegateReference);
  swift_unknownObjectRetain();
  selfCopy = self;
  os_unfair_lock_lock(v4);
  delegate = [(BAAssetPackManager *)selfCopy delegate];
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v4);

  swift_unknownObjectRelease();
}

- (id)init:(id)init
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___BAAssetPackManager_manager) = *(init + OBJC_IVAR____TtCE16BackgroundAssetsCSo18BAAssetPackManagerP33_E4C11CC13CAE77C9CF02057BBB559E6123AssetPackManagerWrapper_manager);
  v6.receiver = self;
  v6.super_class = BAAssetPackManager;

  return [(BAAssetPackManager *)&v6 init];
}

- (void)getAllAssetPacksWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_236E82034();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_236E85108;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_236E85110;
  v13[5] = v12;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v8, &unk_236E85118, v13);
}

- (void)getAssetPackWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_236E82034();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_236E850E0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_236E850E8;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v10, &unk_236E850F0, v15);
}

- (void)getStatusOfAssetPackWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_236E82034();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_236E850B8;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_236E850C0;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v10, &unk_236E850C8, v15);
}

- (void)ensureLocalAvailabilityOfAssetPack:(BAAssetPack *)pack completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = pack;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_236E82034();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_236E85090;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_236E85098;
  v15[5] = v14;
  packCopy = pack;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v10, &unk_236E850A0, v15);
}

- (void)checkForUpdatesWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_236E82034();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_236E85068;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_236E85070;
  v13[5] = v12;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v8, &unk_236E85078, v13);
}

- (id)contentsAtPath:(id)path searchingInAssetPackWithIdentifier:(id)identifier options:(unint64_t)options error:(id *)error
{
  v9 = sub_236E81E94();
  v11 = v10;
  if (identifier)
  {
    v12 = sub_236E81E94();
    identifier = v13;
  }

  else
  {
    v12 = 0;
  }

  selfCopy = self;
  v15 = sub_236E52500(v9, v11, v12, identifier, options);
  v17 = v16;

  v18 = sub_236E81A24();
  sub_236E38C74(v15, v17);

  return v18;
}

- (int)fileDescriptorForPath:(id)path searchingInAssetPackWithIdentifier:(id)identifier error:(id *)error
{
  v8 = sub_236E81E94();
  v10 = v9;
  if (identifier)
  {
    v11 = sub_236E81E94();
    identifier = v12;
  }

  else
  {
    v11 = 0;
  }

  selfCopy = self;
  v14 = sub_236E52898(v8, v10, v11, identifier, error);

  return v14;
}

- (id)URLForPath:(id)path error:(id *)error
{
  v5 = sub_236E819F4();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_236E81E94();
  v12 = v11;
  selfCopy = self;
  sub_236E52BB8(v10, v12, v9);

  v14 = sub_236E819B4();
  (*(v6 + 8))(v9, v5);

  return v14;
}

- (void)removeAssetPackWithIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DE87DB0, &qword_236E84C50);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = identifier;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_236E82034();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_236E85040;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_236E85048;
  v15[5] = v14;
  identifierCopy = identifier;
  selfCopy = self;
  sub_236E7A3F4(0, 0, v10, &unk_236E85050, v15);
}

- (BAAssetPackManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end