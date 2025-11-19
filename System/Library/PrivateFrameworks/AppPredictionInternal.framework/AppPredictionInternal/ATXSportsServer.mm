@interface ATXSportsServer
+ (ATXSportsServer)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)requestedSchedulesForTeamsWithReply:(id)a3;
@end

@implementation ATXSportsServer

+ (ATXSportsServer)sharedInstance
{
  if (qword_2813905E8 != -1)
  {
    swift_once();
  }

  v3 = qword_2813905F0;

  return v3;
}

- (void)requestedSchedulesForTeamsWithReply:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v16 - v8;
  v10 = _Block_copy(a3);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = self;
  v12 = sub_226836628();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_226875C80;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_226875C90;
  v14[5] = v13;
  v15 = self;
  sub_22679FE8C(0, 0, v9, &unk_226875CA0, v14);
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_2267F6B20(v7);

  return v9 & 1;
}

@end