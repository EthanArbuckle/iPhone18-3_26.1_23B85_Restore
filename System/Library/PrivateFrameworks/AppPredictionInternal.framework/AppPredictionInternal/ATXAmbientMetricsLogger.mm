@interface ATXAmbientMetricsLogger
- (ATXAmbientMetricsLogger)init;
- (void)collectWithActivity:(id)a3;
@end

@implementation ATXAmbientMetricsLogger

- (void)collectWithActivity:(id)a3
{
  ObjectType = swift_getObjectType();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v10 = &v15 - v9;
  v11 = a3;
  v16 = self;
  if ([v11 setContinue])
  {
    v12 = sub_226836628();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v11;
    v13[5] = v16;
    v13[6] = ObjectType;
    sub_2267AEA94(0, 0, v10, &unk_226873AC8, v13);
  }

  else
  {

    v14 = v16;
  }
}

- (ATXAmbientMetricsLogger)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for AmbientMetricsLogger();
  return [(ATXAmbientMetricsLogger *)&v3 init];
}

@end