@interface PaymentReadResultStorageDelegate
- (void)paymentCardReadResultsWithBatch:(NSArray *)batch completionHandler:(id)handler;
@end

@implementation PaymentReadResultStorageDelegate

- (void)paymentCardReadResultsWithBatch:(NSArray *)batch completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v18 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = batch;
  v13[3] = v12;
  v13[4] = self;
  v14 = sub_23A6DF7B4();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23A6E2308;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23A6E2318;
  v16[5] = v15;
  batchCopy = batch;

  sub_23A67F270(0, 0, v11, &unk_23A6E2328, v16);
}

@end