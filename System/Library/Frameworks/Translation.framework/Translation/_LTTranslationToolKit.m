@interface _LTTranslationToolKit
+ (void)launchAppWithCompletionHandler:(id)a3;
+ (void)startPersonalTranslationSession:(id)a3;
- (_LTTranslationToolKit)init;
@end

@implementation _LTTranslationToolKit

+ (void)startPersonalTranslationSession:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC5960, &qword_23AB4D400);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  ObjCClassMetadata = swift_getObjCClassMetadata();
  v11 = sub_23AB46DC8();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = ObjCClassMetadata;
  v12[5] = sub_23AB3A344;
  v12[6] = v9;
  sub_23AB375D4(0, 0, v7, &unk_23AB4D4E8, v12);
}

+ (void)launchAppWithCompletionHandler:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFC5960, &qword_23AB4D400);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  v11 = sub_23AB46DC8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_23AB4D410;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23AB4D420;
  v13[5] = v12;
  sub_23AB3869C(0, 0, v8, &unk_23AB4D430, v13);
}

- (_LTTranslationToolKit)init
{
  v3.receiver = self;
  v3.super_class = _LTTranslationToolKit;
  return [(_LTTranslationToolKit *)&v3 init];
}

@end