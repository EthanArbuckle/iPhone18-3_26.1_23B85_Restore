@interface DeviceObserverEnhancedLogging
- (id)beginDiscoveringDevicesWithHandler:(id)a3;
- (void)discoverAllDevicesWithCompletionHandler:(id)a3;
- (void)endDiscoveringDevicesWithIdentifier:(id)a3;
@end

@implementation DeviceObserverEnhancedLogging

- (id)beginDiscoveringDevicesWithHandler:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = self;
  v7 = sub_10013C6F4(sub_10013EB1C, v5);

  return v7;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_10013CA0C();
  swift_unknownObjectRelease();
}

- (void)discoverAllDevicesWithCompletionHandler:(id)a3
{
  v5 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_100185DF8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_100185E08;
  v12[5] = v11;
  v13 = self;
  sub_10013DF78(0, 0, v7, &unk_100185E18, v12);
}

@end