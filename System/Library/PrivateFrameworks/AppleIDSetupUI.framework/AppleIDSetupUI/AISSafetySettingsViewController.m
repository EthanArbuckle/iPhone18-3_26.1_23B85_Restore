@interface AISSafetySettingsViewController
- (AISSafetySettingsViewController)initWithCoder:(id)a3;
- (AISSafetySettingsViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (AISSafetySettingsViewController)initWithSafetySettingsContext:(id)a3;
- (AISSafetySettingsViewControllerDelegate)delegate;
- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)a3 completionHandler:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation AISSafetySettingsViewController

- (AISSafetySettingsViewControllerDelegate)delegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (AISSafetySettingsViewController)initWithSafetySettingsContext:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISSafetySettingsViewController_progressHostingController) = 0;
  *(self + OBJC_IVAR___AISSafetySettingsViewController_context) = a3;
  *(self + OBJC_IVAR___AISSafetySettingsViewController_configuration) = 0;
  v7.receiver = self;
  v7.super_class = type metadata accessor for SafetySettingsViewController();
  v5 = a3;
  return [(AISSafetySettingsViewController *)&v7 initWithNibName:0 bundle:0];
}

- (AISSafetySettingsViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(self + OBJC_IVAR___AISSafetySettingsViewController_progressHostingController) = 0;
  result = sub_240A2C58C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SafetySettingsViewController();
  v2 = v3.receiver;
  [(AISSafetySettingsViewController *)&v3 viewDidLoad];
  sub_2409674C8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_240966AB4(a3);
}

- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E50B420, &qword_240A30800);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(a4);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_240A2C24C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240A335F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_240A30840;
  v16[5] = v15;
  v17 = a3;
  v18 = self;
  sub_240A0B0A4(0, 0, v11, &unk_240A33600, v16);
}

- (AISSafetySettingsViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end