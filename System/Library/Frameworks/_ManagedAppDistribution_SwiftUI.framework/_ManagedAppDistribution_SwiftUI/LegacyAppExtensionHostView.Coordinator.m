@interface LegacyAppExtensionHostView.Coordinator
- (_TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator)init;
- (void)hostViewControllerDidActivate:(id)a3;
@end

@implementation LegacyAppExtensionHostView.Coordinator

- (void)hostViewControllerDidActivate:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_23B7BC930();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_23B7BC900();
  v9 = a3;
  v10 = self;
  v11 = v9;
  v12 = sub_23B7BC8F0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = v10;
  v13[5] = v11;
  sub_23B778154(0, 0, v7, &unk_23B7BDC08, v13);
}

- (_TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end