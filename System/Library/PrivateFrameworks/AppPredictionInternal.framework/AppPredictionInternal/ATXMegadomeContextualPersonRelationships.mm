@interface ATXMegadomeContextualPersonRelationships
- (ATXMegadomeContextualPersonRelationships)init;
- (void)entityRelationshipsFrom:(NSString *)from completionHandler:(id)handler;
@end

@implementation ATXMegadomeContextualPersonRelationships

- (void)entityRelationshipsFrom:(NSString *)from completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = from;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_226836628();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_226875B90;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_226875BA0;
  v16[5] = v15;
  fromCopy = from;
  selfCopy = self;
  sub_22679FE8C(0, 0, v11, &unk_226875BB0, v16);
}

- (ATXMegadomeContextualPersonRelationships)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MegadomeContextualPersonRelationships();
  return [(ATXMegadomeContextualPersonRelationships *)&v3 init];
}

@end