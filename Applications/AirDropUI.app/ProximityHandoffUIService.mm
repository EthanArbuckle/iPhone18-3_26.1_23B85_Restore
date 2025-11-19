@interface ProximityHandoffUIService
- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5;
- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)a3;
@end

@implementation ProximityHandoffUIService

- (void)registerForProximityHandoffInteractionUpdatesWithCompletion:(id)a3
{
  v4 = type metadata accessor for SFProximityHandoffClient.Identifier();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(a3);
  if (qword_1001721F0 != -1)
  {
    swift_once();
  }

  v10 = qword_10017F2E8;
  type metadata accessor for SFProximityHandoffClient();
  (*(v5 + 104))(v8, enum case for SFProximityHandoffClient.Identifier.airDropUI(_:), v4);
  v11 = SFProximityHandoffClient.__allocating_init(identifier:)();
  v12 = *(v10 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient);
  *(v10 + OBJC_IVAR____TtC9AirDropUI35NearbySharingInteractionCoordinator_proximityHandoffClient) = v11;

  sub_100095544();

  v9[2](v9, 0);
  _Block_release(v9);
}

- (void)listener:(id)a3 didReceiveConnection:(id)a4 withContext:(id)a5
{
  v7 = a3;
  v8 = a4;
  swift_unknownObjectRetain();
  v9 = self;
  sub_10005A238(v8);

  swift_unknownObjectRelease();
}

@end