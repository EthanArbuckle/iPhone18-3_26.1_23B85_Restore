@interface FindMyHandleWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)a3;
- (CLLocationCoordinate2D)coordinate;
- (CNContact)contact;
- (MKMapItem)mapItemForLocationComparison;
- (NSString)handleIdentifier;
- (NSString)waypointName;
- (NSString)waypointNameWhenEditing;
- (_TtC4Maps27FindMyHandleWaypointRequest)init;
- (_TtC4Maps27FindMyHandleWaypointRequest)initWithHandle:(id)a3 location:(id)a4;
- (id)copyWithZone:(void *)a3;
- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6;
- (id)waypointIconWithScale:(double)a3;
- (void)recordRAPInformation:(id)a3;
@end

@implementation FindMyHandleWaypointRequest

- (_TtC4Maps27FindMyHandleWaypointRequest)initWithHandle:(id)a3 location:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_1000D067C(v5, a4);

  return v7;
}

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_location);
  if (v2)
  {
    [v2 coordinate];
  }

  else
  {
    latitude = kCLLocationCoordinate2DInvalid.latitude;
    longitude = kCLLocationCoordinate2DInvalid.longitude;
  }

  result.longitude = longitude;
  result.latitude = latitude;
  return result;
}

- (MKMapItem)mapItemForLocationComparison
{
  v2 = self;
  v3 = sub_1000CDAFC();

  return v3;
}

- (BOOL)isEquivalentToOtherRequest:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  v6 = sub_1000CDD54(a3);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (id)loadComposedWaypointWithTraits:(id)a3 clientResolvedCompletionHandler:(id)a4 completionHandler:(id)a5 networkActivityHandler:(id)a6
{
  v10 = _Block_copy(a4);
  v11 = _Block_copy(a5);
  v12 = _Block_copy(a6);
  if (v10)
  {
    *(swift_allocObject() + 16) = v10;
    v10 = sub_1000D2C9C;
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  if (v12)
  {
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    v12 = sub_1000D2CB0;
  }

  else
  {
    v14 = 0;
  }

  v15 = a3;
  v16 = self;
  v17 = sub_1000D0728(a3, sub_1000D2C9C, v13, v12, v14);
  sub_1000588AC(v12);

  sub_1000588AC(v10);

  return v17;
}

- (void)recordRAPInformation:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1000CE874(v4);
}

- (id)copyWithZone:(void *)a3
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_location);
  v7 = objc_allocWithZone(ObjectType);
  v8 = v6;
  v9 = self;
  v10 = v5;
  v11 = sub_1000D067C(v10, v6);

  v12 = *(&v9->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult);
  v13 = v12;

  v14 = *&v11[OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult];
  *&v11[OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult] = v12;

  return v11;
}

- (id)waypointIconWithScale:(double)a3
{
  v4 = self;
  v5 = sub_1000CED48(a3);

  return v5;
}

- (NSString)waypointName
{
  v2 = self;
  sub_10032785C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)waypointNameWhenEditing
{
  v2 = self;
  sub_1003277E8();
  if (!v3)
  {
    sub_10032785C();
  }

  v4 = String._bridgeToObjectiveC()();

  return v4;
}

- (CNContact)contact
{
  v2 = self;
  v3 = sub_100327DCC();

  return v3;
}

- (NSString)handleIdentifier
{
  v3 = type metadata accessor for Handle();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, *(&self->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle) + OBJC_IVAR____TtC4Maps16MapsFindMyHandle_handle, v3, v5);
  v8 = self;
  Handle.identifier.getter();
  (*(v4 + 8))(v7, v3);

  v9 = String._bridgeToObjectiveC()();

  return v9;
}

- (_TtC4Maps27FindMyHandleWaypointRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end