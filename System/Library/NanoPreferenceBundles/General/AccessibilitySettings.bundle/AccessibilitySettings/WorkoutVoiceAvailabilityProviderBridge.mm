@interface WorkoutVoiceAvailabilityProviderBridge
- (void)refreshIsFeatureSupportedWithCompletionHandler:(id)handler;
@end

@implementation WorkoutVoiceAvailabilityProviderBridge

- (void)refreshIsFeatureSupportedWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1C3D18, &qword_23BD097E0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_23BD06434();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23BD09768;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23BD09778;
  v13[5] = v12;
  selfCopy = self;
  sub_23BCFE340(0, 0, v8, &unk_23BD09788, v13);
}

@end