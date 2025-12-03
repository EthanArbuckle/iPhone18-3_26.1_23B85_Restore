@interface CRLUSDRendererExtensionShared.RendererDelegateReceiverProxy
- (_TtCO20USDRendererExtension29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy)init;
- (void)rendererSharedTextureChangedXPC:(id)c deviceID:(unint64_t)d textureHandle:(id)handle rendererFrameCountHandle:(id)countHandle displayerFrameCountHandle:(id)frameCountHandle response:(id)response;
- (void)rendererStateChanged:(id)changed state:(id)state;
- (void)rendererStateChangedWithAcknowledge:(id)acknowledge state:(id)state response:(id)response;
@end

@implementation CRLUSDRendererExtensionShared.RendererDelegateReceiverProxy

- (void)rendererStateChanged:(id)changed state:(id)state
{
  v6 = sub_100089DA8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100089D88();
  stateCopy = state;
  selfCopy = self;
  v12 = sub_100089D08();
  v14 = v13;

  sub_10002781C(v9, v12, v14);
  sub_10002AC1C(v12, v14);

  (*(v7 + 8))(v9, v6);
}

- (void)rendererStateChangedWithAcknowledge:(id)acknowledge state:(id)state response:(id)response
{
  v8 = sub_100089DA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(response);
  sub_100089D88();
  stateCopy = state;
  selfCopy = self;
  v15 = sub_100089D08();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v12;
  sub_100027FB4(v11, v15, v17, sub_10002F1A0, v18);

  sub_10002AC1C(v15, v17);

  (*(v9 + 8))(v11, v8);
}

- (void)rendererSharedTextureChangedXPC:(id)c deviceID:(unint64_t)d textureHandle:(id)handle rendererFrameCountHandle:(id)countHandle displayerFrameCountHandle:(id)frameCountHandle response:(id)response
{
  v14 = sub_100089DA8();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(response);
  sub_100089D88();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  handleCopy = handle;
  countHandleCopy = countHandle;
  frameCountHandleCopy = frameCountHandle;
  selfCopy = self;
  sub_100028A3C(v17, d, handleCopy, countHandleCopy, frameCountHandleCopy, sub_10002BEBC, v19);

  (*(v15 + 8))(v17, v14);
}

- (_TtCO20USDRendererExtension29CRLUSDRendererExtensionShared29RendererDelegateReceiverProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end