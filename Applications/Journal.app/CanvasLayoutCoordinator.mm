@interface CanvasLayoutCoordinator
- (void)keyboardWillShow:(id)a3;
- (void)onControllerEnvironmentChanges;
- (void)textViewDidBeginEditing:(id)a3;
@end

@implementation CanvasLayoutCoordinator

- (void)textViewDidBeginEditing:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100170DC0();

  (*(v4 + 8))(v6, v3);
}

- (void)keyboardWillShow:(id)a3
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  sub_100171154();

  (*(v4 + 8))(v6, v3);
}

- (void)onControllerEnvironmentChanges
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = self->_TtCs12_SwiftObject_opaque[OBJC_IVAR____TtC7Journal23CanvasLayoutCoordinator_lastPickerPresentationStyle];

    sub_100172F48(v4, v5);
  }
}

@end