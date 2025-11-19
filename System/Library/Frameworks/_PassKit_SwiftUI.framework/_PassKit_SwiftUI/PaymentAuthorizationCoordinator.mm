@interface PaymentAuthorizationCoordinator
- (_TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator)init;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didChangeCouponCode:(NSString *)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didRequestMerchantSessionUpdate:(id)a4;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didSelectPaymentMethod:(PKPaymentMethod *)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didSelectShippingContact:(PKContact *)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didSelectShippingMethod:(PKShippingMethod *)a4 handler:(id)a5;
- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5;
- (void)paymentAuthorizationControllerDidFinish:(id)a3;
- (void)paymentAuthorizationControllerWillAuthorizePayment:(id)a3;
@end

@implementation PaymentAuthorizationCoordinator

- (_TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentAuthorizationControllerWillAuthorizePayment:(id)a3
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange);
  v4 = *&self->request[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange];
  memset(v6, 0, sizeof(v6));
  v5 = self;
  v3(v6);
}

- (void)paymentAuthorizationController:(id)a3 didAuthorizePayment:(id)a4 handler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = swift_allocObject();
  v8[2] = v7;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange);
  v9 = *&self->request[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange];
  v13[0] = a4;
  v13[1] = sub_23B7F67B8;
  v13[2] = v8;
  v11 = a4;
  v12 = self;

  v10(v13);

  sub_23B7F67CC(v13[0]);
}

- (void)paymentAuthorizationControllerDidFinish:(id)a3
{
  v3 = self;
  sub_23B7F1780();
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didRequestMerchantSessionUpdate:(id)a4
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = sub_23B802660();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23B804A60;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_23B804A68;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_23B7F5308(0, 0, v10, &unk_23B804A70, v15);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didSelectPaymentMethod:(PKPaymentMethod *)a4 handler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23B802660();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B804A38;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B804A40;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_23B7F5308(0, 0, v12, &unk_23B804A48, v17);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didSelectShippingContact:(PKContact *)a4 handler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23B802660();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B804A10;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B804A18;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_23B7F5308(0, 0, v12, &unk_23B804A20, v17);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didSelectShippingMethod:(PKShippingMethod *)a4 handler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23B802660();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B8049E8;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B8049F0;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_23B7F5308(0, 0, v12, &unk_23B8049F8, v17);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)a3 didChangeCouponCode:(NSString *)a4 handler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = sub_23B802660();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_23B804980;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_23B804990;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  sub_23B7F5308(0, 0, v12, &unk_23B8049A0, v17);
}

@end