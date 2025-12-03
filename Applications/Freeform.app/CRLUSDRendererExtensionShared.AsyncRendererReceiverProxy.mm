@interface CRLUSDRendererExtensionShared.AsyncRendererReceiverProxy
- (_TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy)init;
- (void)compressModel:(id)model response:(id)response;
- (void)createSurfaceModel:(id)model response:(id)response;
- (void)createSurfaceSnapshot:(id)snapshot response:(id)response;
- (void)getUUID:(id)d;
- (void)loadScene:(id)scene response:(id)response;
- (void)performActions:(id)actions response:(id)response;
- (void)takeSnapshotAt:(float)at response:(id)response;
- (void)updateScene:(id)scene response:(id)response;
@end

@implementation CRLUSDRendererExtensionShared.AsyncRendererReceiverProxy

- (void)getUUID:(id)d
{
  v4 = _Block_copy(d);
  _Block_copy(v4);
  selfCopy = self;
  sub_1008CE3D8(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)loadScene:(id)scene response:(id)response
{
  v6 = _Block_copy(response);
  sceneCopy = scene;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CE764(v8, v10, selfCopy, v6, &unk_10188C1C8, &unk_10188C1F0, sub_1008D02E0, &unk_101485B38);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)updateScene:(id)scene response:(id)response
{
  v6 = _Block_copy(response);
  sceneCopy = scene;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CE764(v8, v10, selfCopy, v6, &unk_10188C178, &unk_10188C1A0, sub_1008D02E0, &unk_101485B28);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)performActions:(id)actions response:(id)response
{
  v6 = _Block_copy(response);
  actionsCopy = actions;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CE764(v8, v10, selfCopy, v6, &unk_10188C128, &unk_10188C150, sub_1008D02E0, &unk_101485B18);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)takeSnapshotAt:(float)at response:(id)response
{
  v6 = _Block_copy(response);
  _Block_copy(v6);
  selfCopy = self;
  sub_1008CE9CC(selfCopy, v6, at);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)createSurfaceSnapshot:(id)snapshot response:(id)response
{
  v6 = _Block_copy(response);
  snapshotCopy = snapshot;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CEC38(v8, v10, selfCopy, v6, &unk_10188C088, &unk_10188C0B0, sub_1008D0298, &unk_101485AF8);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)createSurfaceModel:(id)model response:(id)response
{
  v6 = _Block_copy(response);
  modelCopy = model;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CEC38(v8, v10, selfCopy, v6, &unk_10188C038, &unk_10188C060, sub_1008D0298, &unk_101485AE8);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)compressModel:(id)model response:(id)response
{
  v6 = _Block_copy(response);
  modelCopy = model;
  selfCopy = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CEEA4(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (_TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end