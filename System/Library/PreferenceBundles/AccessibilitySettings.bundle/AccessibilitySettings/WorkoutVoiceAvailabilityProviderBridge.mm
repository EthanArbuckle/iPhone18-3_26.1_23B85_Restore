@interface WorkoutVoiceAvailabilityProviderBridge
- (void)refreshIsFeatureSupportedWithCompletionHandler:(id)handler;
@end

@implementation WorkoutVoiceAvailabilityProviderBridge

- (void)refreshIsFeatureSupportedWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2B9568);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_19C144();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1DD598;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1DCC78;
  v12[5] = v11;
  selfCopy = self;
  sub_1907B4(0, 0, v7, &unk_1DCC80, v12);
}

@end