@interface NTKParmesanUpgradeManager
- (BOOL)canUpgradeFace;
- (NTKParmesanUpgradeManager)init;
- (NTKParmesanUpgradeManager)initWithFace:(id)face forDevice:(id)device;
- (id)upgradeFlowViewControllerWithDelegate:(id)delegate;
- (void)upgradeFaceWithCompletion:(id)completion;
@end

@implementation NTKParmesanUpgradeManager

- (NTKParmesanUpgradeManager)initWithFace:(id)face forDevice:(id)device
{
  faceCopy = face;
  deviceCopy = device;
  v7 = sub_23BF629BC(faceCopy, deviceCopy);

  return v7;
}

- (BOOL)canUpgradeFace
{
  selfCopy = self;
  v3 = sub_23BF57124();

  return v3 & 1;
}

- (void)upgradeFaceWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_23BF6544C(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)upgradeFlowViewControllerWithDelegate:(id)delegate
{
  v4 = *(&self->super.isa + OBJC_IVAR___NTKParmesanUpgradeManager_sourceFace);
  v5 = *(&self->super.isa + OBJC_IVAR___NTKParmesanUpgradeManager_device);
  v6 = objc_allocWithZone(type metadata accessor for ParmesanUpgradeOptInViewController());
  selfCopy = self;
  swift_unknownObjectRetain();
  v8 = sub_23BFEC6D4(v4, v5, selfCopy);
  swift_unknownObjectWeakAssign();
  initWithRootViewController_ = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  swift_unknownObjectRelease();

  return initWithRootViewController_;
}

- (NTKParmesanUpgradeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end