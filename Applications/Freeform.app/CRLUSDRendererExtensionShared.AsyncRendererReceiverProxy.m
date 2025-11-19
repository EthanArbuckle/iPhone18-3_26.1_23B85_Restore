@interface CRLUSDRendererExtensionShared.AsyncRendererReceiverProxy
- (_TtCO8Freeform29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy)init;
- (void)compressModel:(id)a3 response:(id)a4;
- (void)createSurfaceModel:(id)a3 response:(id)a4;
- (void)createSurfaceSnapshot:(id)a3 response:(id)a4;
- (void)getUUID:(id)a3;
- (void)loadScene:(id)a3 response:(id)a4;
- (void)performActions:(id)a3 response:(id)a4;
- (void)takeSnapshotAt:(float)a3 response:(id)a4;
- (void)updateScene:(id)a3 response:(id)a4;
@end

@implementation CRLUSDRendererExtensionShared.AsyncRendererReceiverProxy

- (void)getUUID:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1008CE3D8(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)loadScene:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CE764(v8, v10, v11, v6, &unk_10188C1C8, &unk_10188C1F0, sub_1008D02E0, &unk_101485B38);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)updateScene:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CE764(v8, v10, v11, v6, &unk_10188C178, &unk_10188C1A0, sub_1008D02E0, &unk_101485B28);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)performActions:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CE764(v8, v10, v11, v6, &unk_10188C128, &unk_10188C150, sub_1008D02E0, &unk_101485B18);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)takeSnapshotAt:(float)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_1008CE9CC(v7, v6, a3);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)createSurfaceSnapshot:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CEC38(v8, v10, v11, v6, &unk_10188C088, &unk_10188C0B0, sub_1008D0298, &unk_101485AF8);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)createSurfaceModel:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CEC38(v8, v10, v11, v6, &unk_10188C038, &unk_10188C060, sub_1008D0298, &unk_101485AE8);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002640C(v8, v10);
}

- (void)compressModel:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  _Block_copy(v6);
  sub_1008CEEA4(v8, v10, v11, v6);
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