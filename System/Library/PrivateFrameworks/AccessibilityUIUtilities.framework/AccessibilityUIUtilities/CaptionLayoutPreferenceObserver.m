@interface CaptionLayoutPreferenceObserver
- (void)captionAppearanceChanged;
@end

@implementation CaptionLayoutPreferenceObserver

- (void)captionAppearanceChanged
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE75EA0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  v7 = sub_1C0E50D64();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1C0E50D34();
  swift_retain_n();
  v8 = sub_1C0E50D24();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = self;
  sub_1C0E4BA60(0, 0, v6, &unk_1C0E58BE0, v9);
}

@end