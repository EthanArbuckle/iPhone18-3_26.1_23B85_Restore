@interface CNImageDerivedColorGenerator
+ (id)colorsForImageRef:(CGImage *)ref;
+ (id)defaultGrayColors;
+ (void)fetchColorsForImage:(id)image withCompletionHandler:(id)handler;
+ (void)fetchTintedAvatarColorsFor:(CNContact *)for completionHandler:(id)handler;
+ (void)fetchTintedAvatarColorsForContact:(id)contact completionHandler:(id)handler;
- (CNImageDerivedColorGenerator)init;
@end

@implementation CNImageDerivedColorGenerator

+ (void)fetchColorsForImage:(id)image withCompletionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_opt_self();
  v10[4] = sub_199AE5DD0;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_199AE3128;
  v10[3] = &block_descriptor_42_0;
  v8 = _Block_copy(v10);
  imageCopy = image;

  [v7 fetchColorsForImage:imageCopy ciContext:0 withCompletionHandler:v8];

  _Block_release(v8);
}

+ (id)colorsForImageRef:(CGImage *)ref
{
  v4 = objc_opt_self();
  refCopy = ref;
  colorsForImageRef_ = [v4 colorsForImageRef_];
  if (!colorsForImageRef_)
  {
    sub_199A7A02C(0, &qword_1EAF71C10);
    sub_199DFA0CC();
    colorsForImageRef_ = sub_199DFA0BC();
  }

  return colorsForImageRef_;
}

+ (id)defaultGrayColors
{
  defaultGrayColors = [objc_opt_self() defaultGrayColors];
  if (!defaultGrayColors)
  {
    sub_199A7A02C(0, &qword_1EAF71C10);
    sub_199DFA0CC();
    v3 = sub_199DFA0BC();

    defaultGrayColors = v3;
  }

  return defaultGrayColors;
}

+ (void)fetchTintedAvatarColorsFor:(CNContact *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = for;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_199DFA1BC();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_199E3B280;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_199E3B7C0;
  v15[5] = v14;
  forCopy = for;
  sub_199AEFE74(0, 0, v10, &unk_199E3B7D0, v15);
}

+ (void)fetchTintedAvatarColorsForContact:(id)contact completionHandler:(id)handler
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF73A70);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v15 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_199DFA1BC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = contact;
  v13[5] = sub_199AE4D20;
  v13[6] = v11;
  contactCopy = contact;
  sub_199AE5E60(0, 0, v9, &unk_199E3B268, v13);
}

- (CNImageDerivedColorGenerator)init
{
  v3.receiver = self;
  v3.super_class = CNImageDerivedColorGenerator;
  return [(CNImageDerivedColorGenerator *)&v3 init];
}

@end