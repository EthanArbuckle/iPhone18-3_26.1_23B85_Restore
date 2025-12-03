@interface PaymentAuthorizationCoordinator
- (_TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator)init;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didChangeCouponCode:(NSString *)code handler:(id)handler;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didRequestMerchantSessionUpdate:(id)update;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingContact:(PKContact *)contact handler:(id)handler;
- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingMethod:(PKShippingMethod *)method handler:(id)handler;
- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler;
- (void)paymentAuthorizationControllerDidFinish:(id)finish;
- (void)paymentAuthorizationControllerWillAuthorizePayment:(id)payment;
@end

@implementation PaymentAuthorizationCoordinator

- (_TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)paymentAuthorizationControllerWillAuthorizePayment:(id)payment
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange);
  v4 = *&self->request[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange];
  memset(v6, 0, sizeof(v6));
  selfCopy = self;
  v3(v6);
}

- (void)paymentAuthorizationController:(id)controller didAuthorizePayment:(id)payment handler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = swift_allocObject();
  v8[2] = v7;
  v10 = *(&self->super.isa + OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange);
  v9 = *&self->request[OBJC_IVAR____TtC16_PassKit_SwiftUI31PaymentAuthorizationCoordinator_onPaymentAuthorizationChange];
  v13[0] = payment;
  v13[1] = sub_23B7F67B8;
  v13[2] = v8;
  paymentCopy = payment;
  selfCopy = self;

  v10(v13);

  sub_23B7F67CC(v13[0]);
}

- (void)paymentAuthorizationControllerDidFinish:(id)finish
{
  selfCopy = self;
  sub_23B7F1780();
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didRequestMerchantSessionUpdate:(id)update
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(update);
  v12 = swift_allocObject();
  v12[2] = controller;
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
  controllerCopy = controller;
  selfCopy = self;
  sub_23B7F5308(0, 0, v10, &unk_23B804A70, v15);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectPaymentMethod:(PKPaymentMethod *)method handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = method;
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
  controllerCopy = controller;
  methodCopy = method;
  selfCopy = self;
  sub_23B7F5308(0, 0, v12, &unk_23B804A48, v17);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingContact:(PKContact *)contact handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = contact;
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
  controllerCopy = controller;
  contactCopy = contact;
  selfCopy = self;
  sub_23B7F5308(0, 0, v12, &unk_23B804A20, v17);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didSelectShippingMethod:(PKShippingMethod *)method handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = method;
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
  controllerCopy = controller;
  methodCopy = method;
  selfCopy = self;
  sub_23B7F5308(0, 0, v12, &unk_23B8049F8, v17);
}

- (void)paymentAuthorizationController:(PKPaymentAuthorizationController *)controller didChangeCouponCode:(NSString *)code handler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E186C48, &qword_23B804970);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = controller;
  v14[3] = code;
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
  controllerCopy = controller;
  codeCopy = code;
  selfCopy = self;
  sub_23B7F5308(0, 0, v12, &unk_23B8049A0, v17);
}

@end