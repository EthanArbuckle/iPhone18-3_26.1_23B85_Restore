@interface ATPersonalizationClient
- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler;
- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler;
@end

@implementation ATPersonalizationClient

- (void)freeNowWithExcludeAllDayEvents:(BOOL)events completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = events;
  *(v11 + 24) = v10;
  *(v11 + 32) = self;
  v12 = sub_240FAEA00();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240FAF498;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240FAF4A0;
  v14[5] = v13;
  selfCopy = self;
  sub_240FACE24(0, 0, v9, &unk_240FAF4A8, v14);
}

- (void)topPlayedMediaWithK:(int64_t)k start:(int64_t)start end:(int64_t)end mediaType:(NSString *)type completionHandler:(id)handler
{
  v13 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v15 = &v23 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  v17[2] = k;
  v17[3] = start;
  v17[4] = end;
  v17[5] = type;
  v17[6] = v16;
  v17[7] = self;
  v18 = sub_240FAEA00();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_240FAF478;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_240FAF480;
  v20[5] = v19;
  typeCopy = type;
  selfCopy = self;
  sub_240FACE24(0, 0, v15, &unk_240FAF488, v20);
}

- (void)currentLocationWithEffectiveBundleIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E51E4F0, &qword_240FAF420) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_240FAEA00();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_240FAF430;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_240FAF440;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  sub_240FACE24(0, 0, v9, &unk_240FAF450, v14);
}

@end