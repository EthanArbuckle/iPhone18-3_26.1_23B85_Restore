@interface ISStreamsFactory
+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n completionHandler:(id)handler;
+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n storageURL:(NSURL *)l completionHandler:(id)handler;
+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now completionHandler:(id)handler;
+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now storageURL:(NSURL *)l completionHandler:(id)handler;
- (ISStreamsFactory)init;
@end

@implementation ISStreamsFactory

+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = filter;
  *(v20 + 24) = time;
  *(v20 + 32) = endTime;
  *(v20 + 40) = events;
  *(v20 + 48) = n;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_23C8719A4();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_23C87D2D8;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_23C87D2E0;
  v23[5] = v22;
  filterCopy = filter;
  sub_23C664E14(0, 0, v18, &unk_23C87D2E8, v23);
}

+ (void)constructWithFilter:(ISEventFilter *)filter startTime:(double)time endTime:(double)endTime maxEvents:(int64_t)events lastN:(int64_t)n storageURL:(NSURL *)l completionHandler:(id)handler
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v28 - v19;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  *(v22 + 16) = filter;
  *(v22 + 24) = time;
  *(v22 + 32) = endTime;
  *(v22 + 40) = events;
  *(v22 + 48) = n;
  *(v22 + 56) = l;
  *(v22 + 64) = v21;
  *(v22 + 72) = self;
  v23 = sub_23C8719A4();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &unk_23C87D2B8;
  v24[5] = v22;
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &unk_23C87D2C0;
  v25[5] = v24;
  filterCopy = filter;
  lCopy = l;
  sub_23C664E14(0, 0, v20, &unk_23C87D2C8, v25);
}

+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 16) = filter;
  *(v14 + 24) = now;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = sub_23C8719A4();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23C87D298;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23C87D2A0;
  v17[5] = v16;
  filterCopy = filter;
  sub_23C664E14(0, 0, v12, &unk_23C87D2A8, v17);
}

+ (void)constructWithFilter:(ISEventFilter *)filter startTimeRelativeToNow:(double)now storageURL:(NSURL *)l completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(handler);
  v16 = swift_allocObject();
  *(v16 + 16) = filter;
  *(v16 + 24) = now;
  *(v16 + 32) = l;
  *(v16 + 40) = v15;
  *(v16 + 48) = self;
  v17 = sub_23C8719A4();
  (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_23C87D278;
  v18[5] = v16;
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_23C87D280;
  v19[5] = v18;
  filterCopy = filter;
  lCopy = l;
  sub_23C664E14(0, 0, v14, &unk_23C87D288, v19);
}

- (ISStreamsFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InstrumentationStreamsFactoryBridge();
  return [(ISStreamsFactory *)&v3 init];
}

@end