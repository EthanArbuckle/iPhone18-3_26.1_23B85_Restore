@interface DynamicPaymentButtonRepresentableSlotView.Coordinator
- (void)buttonTapped;
@end

@implementation DynamicPaymentButtonRepresentableSlotView.Coordinator

- (void)buttonTapped
{
  v2 = self + OBJC_IVAR____TtCV16_PassKit_SwiftUI41DynamicPaymentButtonRepresentableSlotView11Coordinator_parent;
  swift_beginAccess();
  v3 = &v2[*(type metadata accessor for DynamicPaymentButtonRepresentableSlotView(0) + 36)];
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 1);

    v6 = sub_23B7ED858(v4);
    v4(v6);

    sub_23B7E3200(v4);
  }
}

@end