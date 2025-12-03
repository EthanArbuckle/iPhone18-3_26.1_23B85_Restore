@interface FindMyHandleWaypointRequest
- (BOOL)isEquivalentToOtherRequest:(id)request;
- (CLLocationCoordinate2D)coordinate;
- (CNContact)contact;
- (MKMapItem)mapItemForLocationComparison;
- (NSString)handleIdentifier;
- (NSString)waypointName;
- (NSString)waypointNameWhenEditing;
- (_TtC4Maps27FindMyHandleWaypointRequest)init;
- (_TtC4Maps27FindMyHandleWaypointRequest)initWithHandle:(id)handle location:(id)location;
- (id)copyWithZone:(void *)zone;
- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler;
- (id)waypointIconWithScale:(double)scale;
- (void)recordRAPInformation:(id)information;
@end

@implementation FindMyHandleWaypointRequest

- (_TtC4Maps27FindMyHandleWaypointRequest)initWithHandle:(id)handle location:(id)location
{
  handleCopy = handle;
  locationCopy = location;
  v7 = sub_1000D067C(handleCopy, location);

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
  selfCopy = self;
  v3 = sub_1000CDAFC();

  return v3;
}

- (BOOL)isEquivalentToOtherRequest:(id)request
{
  swift_unknownObjectRetain();
  selfCopy = self;
  v6 = sub_1000CDD54(request);
  swift_unknownObjectRelease();

  return v6 & 1;
}

- (id)loadComposedWaypointWithTraits:(id)traits clientResolvedCompletionHandler:(id)handler completionHandler:(id)completionHandler networkActivityHandler:(id)activityHandler
{
  v10 = _Block_copy(handler);
  v11 = _Block_copy(completionHandler);
  v12 = _Block_copy(activityHandler);
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

  traitsCopy = traits;
  selfCopy = self;
  v17 = sub_1000D0728(traits, sub_1000D2C9C, v13, v12, v14);
  sub_1000588AC(v12);

  sub_1000588AC(v10);

  return v17;
}

- (void)recordRAPInformation:(id)information
{
  informationCopy = information;
  selfCopy = self;
  sub_1000CE874(informationCopy);
}

- (id)copyWithZone:(void *)zone
{
  ObjectType = swift_getObjectType();
  v5 = *(&self->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_handle);
  v6 = *(&self->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_location);
  v7 = objc_allocWithZone(ObjectType);
  v8 = v6;
  selfCopy = self;
  v10 = v5;
  v11 = sub_1000D067C(v10, v6);

  v12 = *(&selfCopy->super.isa + OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult);
  v13 = v12;

  v14 = *&v11[OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult];
  *&v11[OBJC_IVAR____TtC4Maps27FindMyHandleWaypointRequest_cachedLoadResult] = v12;

  return v11;
}

- (id)waypointIconWithScale:(double)scale
{
  selfCopy = self;
  v5 = sub_1000CED48(scale);

  return v5;
}

- (NSString)waypointName
{
  selfCopy = self;
  sub_10032785C();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (NSString)waypointNameWhenEditing
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
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