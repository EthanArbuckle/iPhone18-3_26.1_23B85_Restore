@interface PaymentCardReaderDelegate
- (void)closed:(BOOL)closed;
@end

@implementation PaymentCardReaderDelegate

- (void)closed:(BOOL)closed
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF9C7F0, &qword_23A6E25B0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v11 - v7;
  v9 = sub_23A6DF7B4();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = closed;
  sub_23A64A15C(0, 0, v8, &unk_23A6E2028, v10);
}

@end