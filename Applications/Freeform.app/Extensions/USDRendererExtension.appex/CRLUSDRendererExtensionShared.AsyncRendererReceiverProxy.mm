@interface CRLUSDRendererExtensionShared.AsyncRendererReceiverProxy
- (_TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy)init;
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
  sub_10002C9C8(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)loadScene:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002CD54(v8, v10, v11, v6, &unk_1000C45F8, &unk_1000C4620, sub_10002F1A0, &unk_1000A5848);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)updateScene:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002CD54(v8, v10, v11, v6, &unk_1000C45A8, &unk_1000C45D0, sub_10002F1A0, &unk_1000A5838);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)performActions:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002CD54(v8, v10, v11, v6, &unk_1000C4558, &unk_1000C4580, sub_10002F1A0, &unk_1000A5828);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)takeSnapshotAt:(float)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  _Block_copy(v6);
  v7 = self;
  sub_10002CFBC(v7, v6, a3);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)createSurfaceSnapshot:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002D228(v8, v10, v11, v6, &unk_1000C44B8, &unk_1000C44E0, sub_10002F140, &unk_1000A5808);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)createSurfaceModel:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002D228(v8, v10, v11, v6, &unk_1000C4468, &unk_1000C4490, sub_10002F140, &unk_1000A57F8);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)compressModel:(id)a3 response:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002D494(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (_TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end