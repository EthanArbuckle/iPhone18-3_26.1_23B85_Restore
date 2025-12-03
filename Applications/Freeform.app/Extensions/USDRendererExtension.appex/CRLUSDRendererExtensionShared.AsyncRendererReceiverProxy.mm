@interface CRLUSDRendererExtensionShared.AsyncRendererReceiverProxy
- (_TtCO20USDRendererExtension29CRLUSDRendererExtensionShared26AsyncRendererReceiverProxy)init;
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
  sub_10002C9C8(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)loadScene:(id)scene response:(id)response
{
  v6 = _Block_copy(response);
  sceneCopy = scene;
  selfCopy = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002CD54(v8, v10, selfCopy, v6, &unk_1000C45F8, &unk_1000C4620, sub_10002F1A0, &unk_1000A5848);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)updateScene:(id)scene response:(id)response
{
  v6 = _Block_copy(response);
  sceneCopy = scene;
  selfCopy = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002CD54(v8, v10, selfCopy, v6, &unk_1000C45A8, &unk_1000C45D0, sub_10002F1A0, &unk_1000A5838);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)performActions:(id)actions response:(id)response
{
  v6 = _Block_copy(response);
  actionsCopy = actions;
  selfCopy = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002CD54(v8, v10, selfCopy, v6, &unk_1000C4558, &unk_1000C4580, sub_10002F1A0, &unk_1000A5828);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)takeSnapshotAt:(float)at response:(id)response
{
  v6 = _Block_copy(response);
  _Block_copy(v6);
  selfCopy = self;
  sub_10002CFBC(selfCopy, v6, at);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)createSurfaceSnapshot:(id)snapshot response:(id)response
{
  v6 = _Block_copy(response);
  snapshotCopy = snapshot;
  selfCopy = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002D228(v8, v10, selfCopy, v6, &unk_1000C44B8, &unk_1000C44E0, sub_10002F140, &unk_1000A5808);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)createSurfaceModel:(id)model response:(id)response
{
  v6 = _Block_copy(response);
  modelCopy = model;
  selfCopy = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002D228(v8, v10, selfCopy, v6, &unk_1000C4468, &unk_1000C4490, sub_10002F140, &unk_1000A57F8);
  _Block_release(v6);
  _Block_release(v6);
  sub_10002AC1C(v8, v10);
}

- (void)compressModel:(id)model response:(id)response
{
  v6 = _Block_copy(response);
  modelCopy = model;
  selfCopy = self;
  v8 = sub_100089D08();
  v10 = v9;

  _Block_copy(v6);
  sub_10002D494(v8, v10, selfCopy, v6);
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