@interface CRLiOSMiniShapePickerHostingController
- (NSArray)decoratorOverlayRenderables;
- (_TtC8Freeform38CRLiOSMiniShapePickerHostingController)initWithCoder:(id)a3;
- (void)processChanges:(id)a3 forChangeSource:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)willBeginZoomingOperation;
@end

@implementation CRLiOSMiniShapePickerHostingController

- (_TtC8Freeform38CRLiOSMiniShapePickerHostingController)initWithCoder:(id)a3
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_associatedBoardItems) = 0;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for CRLiOSMiniShapePickerHostingController();
  v4 = v7.receiver;
  [(CRLiOSMiniShapePickerHostingController *)&v7 viewDidAppear:v3];
  v5 = *&v4[OBJC_IVAR____TtC8Freeform38CRLiOSMiniShapePickerHostingController_interactiveCanvasController];
  if (v5)
  {
    v6 = v5;
    [v6 addDecorator:{v4, v7.receiver, v7.super_class}];
  }
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_100D41460(a3);
}

- (void)processChanges:(id)a3 forChangeSource:(id)a4
{
  type metadata accessor for CRLChangeRecord();
  v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v6 = self;
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_100D41884(v5, v7);

  sub_100005070(v7);
}

- (NSArray)decoratorOverlayRenderables
{
  sub_100006370(0, &qword_101A00020);
  v2.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v2.super.isa;
}

- (void)willBeginZoomingOperation
{
  v2 = self;
  sub_100D41DD0();
}

@end