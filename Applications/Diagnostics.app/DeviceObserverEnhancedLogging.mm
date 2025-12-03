@interface DeviceObserverEnhancedLogging
- (id)beginDiscoveringDevicesWithHandler:(id)handler;
- (void)discoverAllDevicesWithCompletionHandler:(id)handler;
- (void)endDiscoveringDevicesWithIdentifier:(id)identifier;
@end

@implementation DeviceObserverEnhancedLogging

- (id)beginDiscoveringDevicesWithHandler:(id)handler
{
  v4 = _Block_copy(handler);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  v7 = sub_10013C6F4(sub_10013EB1C, v5);

  return v7;
}

- (void)endDiscoveringDevicesWithIdentifier:(id)identifier
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10013CA0C();
  swift_unknownObjectRelease();
}

- (void)discoverAllDevicesWithCompletionHandler:(id)handler
{
  v5 = sub_10003C49C(&unk_1001FFE20);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
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
  selfCopy = self;
  sub_10013DF78(0, 0, v7, &unk_100185E18, v12);
}

@end