@interface AISSafetySettingsController
- (AISSafetySettingsController)init;
- (void)shouldPresentSafetySettingsUsingOnlyLocalChecksWithContext:(AISSafetySettingsContext *)a3 completionHandler:(id)a4;
- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)a3 completionHandler:(id)a4;
@end

@implementation AISSafetySettingsController

- (void)shouldPresentSafetySettingsWithContext:(AISSafetySettingsContext *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24076FBD0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_24076FBD8;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2406FC468(0, 0, v10, &unk_24076FBE0, v15);
}

- (void)shouldPresentSafetySettingsUsingOnlyLocalChecksWithContext:(AISSafetySettingsContext *)a3 completionHandler:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27E4B9BF0, &qword_240762710);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_24075A3D4();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_24076FBB0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_240767F10;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_2406FC468(0, 0, v10, &unk_24076FBC0, v15);
}

- (AISSafetySettingsController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SafetySettingsController();
  return [(AISSafetySettingsController *)&v3 init];
}

@end