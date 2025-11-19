@interface ISStreamsFactory
+ (void)constructWithFilter:(ISEventFilter *)a3 startTime:(double)a4 endTime:(double)a5 maxEvents:(int64_t)a6 lastN:(int64_t)a7 completionHandler:(id)a8;
+ (void)constructWithFilter:(ISEventFilter *)a3 startTime:(double)a4 endTime:(double)a5 maxEvents:(int64_t)a6 lastN:(int64_t)a7 storageURL:(NSURL *)a8 completionHandler:(id)a9;
+ (void)constructWithFilter:(ISEventFilter *)a3 startTimeRelativeToNow:(double)a4 completionHandler:(id)a5;
+ (void)constructWithFilter:(ISEventFilter *)a3 startTimeRelativeToNow:(double)a4 storageURL:(NSURL *)a5 completionHandler:(id)a6;
- (ISStreamsFactory)init;
@end

@implementation ISStreamsFactory

+ (void)constructWithFilter:(ISEventFilter *)a3 startTime:(double)a4 endTime:(double)a5 maxEvents:(int64_t)a6 lastN:(int64_t)a7 completionHandler:(id)a8
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v25 - v17;
  v19 = _Block_copy(a8);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
  *(v20 + 40) = a6;
  *(v20 + 48) = a7;
  *(v20 + 56) = v19;
  *(v20 + 64) = a1;
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
  v24 = a3;
  sub_23C664E14(0, 0, v18, &unk_23C87D2E8, v23);
}

+ (void)constructWithFilter:(ISEventFilter *)a3 startTime:(double)a4 endTime:(double)a5 maxEvents:(int64_t)a6 lastN:(int64_t)a7 storageURL:(NSURL *)a8 completionHandler:(id)a9
{
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v20 = &v28 - v19;
  v21 = _Block_copy(a9);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
  *(v22 + 48) = a7;
  *(v22 + 56) = a8;
  *(v22 + 64) = v21;
  *(v22 + 72) = a1;
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
  v26 = a3;
  v27 = a8;
  sub_23C664E14(0, 0, v20, &unk_23C87D2C8, v25);
}

+ (void)constructWithFilter:(ISEventFilter *)a3 startTimeRelativeToNow:(double)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v19 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a4;
  *(v14 + 32) = v13;
  *(v14 + 40) = a1;
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
  v18 = a3;
  sub_23C664E14(0, 0, v12, &unk_23C87D2A8, v17);
}

+ (void)constructWithFilter:(ISEventFilter *)a3 startTimeRelativeToNow:(double)a4 storageURL:(NSURL *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1FBF78, &qword_23C87D268);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v22 - v13;
  v15 = _Block_copy(a6);
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  *(v16 + 32) = a5;
  *(v16 + 40) = v15;
  *(v16 + 48) = a1;
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
  v20 = a3;
  v21 = a5;
  sub_23C664E14(0, 0, v14, &unk_23C87D288, v19);
}

- (ISStreamsFactory)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for InstrumentationStreamsFactoryBridge();
  return [(ISStreamsFactory *)&v3 init];
}

@end