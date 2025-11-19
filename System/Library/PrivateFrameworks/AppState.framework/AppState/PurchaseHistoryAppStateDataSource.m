@interface PurchaseHistoryAppStateDataSource
- (void)purchaseHistoryUpdated:(id)a3;
@end

@implementation PurchaseHistoryAppStateDataSource

- (void)purchaseHistoryUpdated:(id)a3
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D010AC8, &qword_22261DCC0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_22261AC60();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22261AC40();
  v13 = sub_22261B310();
  (*(*(v13 - 8) + 56))(v7, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = self;
  swift_retain_n();
  sub_222603104(0, 0, v7, &unk_22261E7F0, v14);

  (*(v9 + 8))(v12, v8);
}

@end