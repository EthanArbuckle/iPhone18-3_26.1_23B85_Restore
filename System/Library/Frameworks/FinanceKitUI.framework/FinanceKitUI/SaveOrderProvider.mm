@interface SaveOrderProvider
+ (void)saveOrderWithData:(NSData *)data completionHandler:(id)handler;
- (_TtC12FinanceKitUI17SaveOrderProvider)init;
@end

@implementation SaveOrderProvider

+ (void)saveOrderWithData:(NSData *)data completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF09920, &qword_238764D80);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v17 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = data;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23875ED80();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_238773598;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2387735A0;
  v15[5] = v14;
  dataCopy = data;
  sub_2386E65D8(0, 0, v10, &unk_238764DA0, v15);
}

- (_TtC12FinanceKitUI17SaveOrderProvider)init
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  return [(SaveOrderProvider *)&v3 init];
}

@end