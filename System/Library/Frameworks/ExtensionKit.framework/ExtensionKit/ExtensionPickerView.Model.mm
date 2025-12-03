@interface ExtensionPickerView.Model
- (void)prepareSceneWithConfig:(id)config reply:(id)reply;
@end

@implementation ExtensionPickerView.Model

- (void)prepareSceneWithConfig:(id)config reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC701090, &qword_1D2A03B68);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(reply);
  v12 = v11[2];
  configCopy = config;
  selfCopy = self;
  v12(v11);
  _Block_release(v11);
  v15 = sub_1D2A00568();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = configCopy;
  v16[5] = selfCopy;
  sub_1D29E0BF0(0, 0, v10, &unk_1D2A03B78, v16);
}

@end