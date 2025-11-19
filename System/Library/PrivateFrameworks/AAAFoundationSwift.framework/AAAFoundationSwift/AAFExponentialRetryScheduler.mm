@interface AAFExponentialRetryScheduler
- (AAFExponentialRetryScheduler)init;
- (AAFExponentialRetryScheduler)initWithMaxRetries:(int64_t)a3 power:(double)a4;
- (void)scheduleTask:(AAFExponentialRetryScheduler *)self shouldRetry:(SEL)a2 completionHandler:(id)a3;
@end

@implementation AAFExponentialRetryScheduler

- (AAFExponentialRetryScheduler)initWithMaxRetries:(int64_t)a3 power:(double)a4
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v6 = objc_allocWithZone(swift_getObjectType());
  v7 = ExponentialRetryScheduler.init(maxRetries:power:schedulerDelay:)(a3, v9, a4);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v7;
}

- (void)scheduleTask:(AAFExponentialRetryScheduler *)self shouldRetry:(SEL)a2 completionHandler:(id)a3
{
  v5 = v4;
  v6 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBDC4F0, &qword_1B99F5B20);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = _Block_copy(a3);
  v15 = _Block_copy(v6);
  v16 = _Block_copy(v5);
  v17 = swift_allocObject();
  v17[2] = v14;
  v17[3] = v15;
  v17[4] = v16;
  v17[5] = self;
  v18 = sub_1B99F3EC4();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_1B99F8800;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_1B99F8810;
  v20[5] = v19;
  v21 = self;
  sub_1B99DF280(0, 0, v13, &unk_1B99F8820, v20);
}

- (AAFExponentialRetryScheduler)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end