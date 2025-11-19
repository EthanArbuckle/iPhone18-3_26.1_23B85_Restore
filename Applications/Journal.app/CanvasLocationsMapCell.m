@interface CanvasLocationsMapCell
- (_TtC7Journal22CanvasLocationsMapCell)initWithCoder:(id)a3;
- (id)mapView:(id)a3 viewForAnnotation:(id)a4;
- (void)_bridgedUpdateConfigurationUsingState:(id)a3;
- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4;
- (void)prepareForReuse;
- (void)updateCameraRegion;
@end

@implementation CanvasLocationsMapCell

- (void)_bridgedUpdateConfigurationUsingState:(id)a3
{
  v4 = type metadata accessor for UICellConfigurationState();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UICellConfigurationState._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  sub_1007A52CC();

  (*(v5 + 8))(v7, v4);
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CanvasLocationsMapCell();
  v2 = v3.receiver;
  [(CanvasLocationsMapCell *)&v3 prepareForReuse];
  v2[OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_shouldUpdateSavedZoom] = 0;
  [objc_opt_self() cancelPreviousPerformRequestsWithTarget:v2 selector:"updateCameraRegion" object:{0, v3.receiver, v3.super_class}];
}

- (_TtC7Journal22CanvasLocationsMapCell)initWithCoder:(id)a3
{
  v4 = OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_mapView;
  *(&self->super.super.super.super.super.super.isa + v4) = [objc_allocWithZone(MKMapView) init];
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_multiPinMapAsset) = 0;
  *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_shouldUpdateSavedZoom) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)mapView:(id)a3 regionDidChangeAnimated:(BOOL)a4
{
  if (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_shouldUpdateSavedZoom) == 1)
  {
    v6 = objc_opt_self();
    v7 = a3;
    v8 = self;
    [v6 cancelPreviousPerformRequestsWithTarget:v8 selector:"updateCameraRegion" object:0];
    [(CanvasLocationsMapCell *)v8 performSelector:"updateCameraRegion" withObject:0 afterDelay:1.5];
  }

  else
  {
    *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC7Journal22CanvasLocationsMapCell_shouldUpdateSavedZoom) = 1;
  }
}

- (void)updateCameraRegion
{
  v3 = sub_1000F24EC(&qword_100AD5170);
  __chkstk_darwin(v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  v7 = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = &protocol witness table for MainActor;
  v9[4] = v7;
  sub_1003E9BBC(0, 0, v5, &unk_100968158, v9);
}

- (id)mapView:(id)a3 viewForAnnotation:(id)a4
{
  v6 = a3;
  swift_unknownObjectRetain();
  v7 = self;
  v8 = sub_1007A68D0(v6, a4);

  swift_unknownObjectRelease();

  return v8;
}

@end