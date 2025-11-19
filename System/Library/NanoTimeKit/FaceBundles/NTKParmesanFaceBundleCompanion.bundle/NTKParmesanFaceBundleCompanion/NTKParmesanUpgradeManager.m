@interface NTKParmesanUpgradeManager
- (BOOL)canUpgradeFace;
- (NTKParmesanUpgradeManager)init;
- (NTKParmesanUpgradeManager)initWithFace:(id)a3 forDevice:(id)a4;
- (id)upgradeFlowViewControllerWithDelegate:(id)a3;
- (void)upgradeFaceWithCompletion:(id)a3;
@end

@implementation NTKParmesanUpgradeManager

- (NTKParmesanUpgradeManager)initWithFace:(id)a3 forDevice:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_23BF629BC(v5, v6);

  return v7;
}

- (BOOL)canUpgradeFace
{
  v2 = self;
  v3 = sub_23BF57124();

  return v3 & 1;
}

- (void)upgradeFaceWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_23BF6544C(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (id)upgradeFlowViewControllerWithDelegate:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR___NTKParmesanUpgradeManager_sourceFace);
  v5 = *(&self->super.isa + OBJC_IVAR___NTKParmesanUpgradeManager_device);
  v6 = objc_allocWithZone(type metadata accessor for ParmesanUpgradeOptInViewController());
  v7 = self;
  swift_unknownObjectRetain();
  v8 = sub_23BFEC6D4(v4, v5, v7);
  swift_unknownObjectWeakAssign();
  v9 = [objc_allocWithZone(MEMORY[0x277D757A0]) initWithRootViewController_];

  swift_unknownObjectRelease();

  return v9;
}

- (NTKParmesanUpgradeManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end