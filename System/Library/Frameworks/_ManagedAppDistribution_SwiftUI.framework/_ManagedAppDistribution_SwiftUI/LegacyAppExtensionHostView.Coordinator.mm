@interface LegacyAppExtensionHostView.Coordinator
- (_TtCV31_ManagedAppDistribution_SwiftUI26LegacyAppExtensionHostView11Coordinator)init;
- (void)hostViewControllerDidActivate:(id)activate;
@end

@implementation LegacyAppExtensionHostView.Coordinator

- (void)hostViewControllerDidActivate:(id)activate
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1809E8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_23B7BC930();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_23B7BC900();
  activateCopy = activate;
  selfCopy = self;
  v11 = activateCopy;
  v12 = sub_23B7BC8F0();
  v13 = swift_allocObject();
  v14 = MEMORY[0x277D85700];
  v13[2] = v12;
  v13[3] = v14;
  v13[4] = selfCopy;
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