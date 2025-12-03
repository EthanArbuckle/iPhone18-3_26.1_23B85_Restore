@interface PKTiledViewAnimationController
- (PKTiledViewAnimationController)init;
- (PKTiledViewAnimationController)initWithTiledView:(id)view;
- (void)avoidSnapshot:(id)snapshot;
- (void)didEndDrawing;
- (void)refineFrom:(NSArray *)from to:(NSArray *)to in:(PKDrawing *)in completionHandler:(id)handler;
- (void)setupRefineAnimationFrom:(NSArray *)from to:(NSArray *)to in:(PKDrawing *)in alternateContainerView:(UIView *)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler;
- (void)setupRefineAnimationFrom:(NSArray *)from to:(NSArray *)to in:(PKDrawing *)in completionHandler:(id)handler;
- (void)setupStrokeInAnimationTo:(NSArray *)to in:(PKDrawing *)in alternateContainerView:(UIView *)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler;
- (void)setupStrokeInAnimationTo:(NSArray *)to in:(PKDrawing *)in completionHandler:(id)handler;
- (void)startRefineAnimationWithDuration:(double)duration;
- (void)stopRefineAnimation;
@end

@implementation PKTiledViewAnimationController

- (PKTiledViewAnimationController)initWithTiledView:(id)view
{
  viewCopy = view;
  v4 = specialized PKTiledViewAnimationController.init(tiledView:)();

  return v4;
}

- (void)didEndDrawing
{
  selfCopy = self;
  PKTiledViewAnimationController.didEndDrawing()();
}

- (void)avoidSnapshot:(id)snapshot
{
  v3 = _Block_copy(snapshot);
  v3[2]();

  _Block_release(v3);
}

- (void)setupRefineAnimationFrom:(NSArray *)from to:(NSArray *)to in:(PKDrawing *)in completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = from;
  v15[3] = to;
  v15[4] = in;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in PKTiledViewAnimationController.setupRefineAnimation(from:to:in:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_141Tu;
  v18[5] = v17;
  fromCopy = from;
  toCopy = to;
  inCopy = in;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_146Tu, v18);
}

- (void)setupRefineAnimationFrom:(NSArray *)from to:(NSArray *)to in:(PKDrawing *)in alternateContainerView:(UIView *)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler
{
  tx = transform->tx;
  ty = transform->ty;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - v18;
  v20 = *&transform->a;
  v32 = *&transform->c;
  v33 = v20;
  v21 = _Block_copy(handler);
  v22 = swift_allocObject();
  *(v22 + 16) = from;
  *(v22 + 24) = to;
  *(v22 + 32) = in;
  *(v22 + 40) = view;
  v23 = v32;
  *(v22 + 48) = v33;
  *(v22 + 64) = v23;
  *(v22 + 80) = tx;
  *(v22 + 88) = ty;
  *(v22 + 96) = v21;
  *(v22 + 104) = self;
  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = &async function pointer to partial apply for @objc closure #1 in PKTiledViewAnimationController.setupRefineAnimation(from:to:in:alternateContainerView:alternateDrawingTransform:);
  v25[5] = v22;
  v26 = swift_allocObject();
  v26[2] = 0;
  v26[3] = 0;
  v26[4] = &_sIeghH_IeAgH_TRTA_126Tu;
  v26[5] = v25;
  fromCopy = from;
  toCopy = to;
  inCopy = in;
  viewCopy = view;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v19, &_sIeAgH_ytIeAgHr_TRTA_131Tu, v26);
}

- (void)setupStrokeInAnimationTo:(NSArray *)to in:(PKDrawing *)in completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = to;
  v13[3] = in;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in PKTiledViewAnimationController.setupStrokeInAnimation(to:in:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_111Tu;
  v16[5] = v15;
  toCopy = to;
  inCopy = in;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_116Tu, v16);
}

- (void)setupStrokeInAnimationTo:(NSArray *)to in:(PKDrawing *)in alternateContainerView:(UIView *)view alternateDrawingTransform:(CGAffineTransform *)transform completionHandler:(id)handler
{
  tx = transform->tx;
  ty = transform->ty;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v18 = *&transform->a;
  v29 = *&transform->c;
  v30 = v18;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = to;
  *(v20 + 24) = in;
  *(v20 + 32) = view;
  v21 = v30;
  *(v20 + 56) = v29;
  *(v20 + 40) = v21;
  *(v20 + 72) = tx;
  *(v20 + 80) = ty;
  *(v20 + 88) = v19;
  *(v20 + 96) = self;
  v22 = type metadata accessor for TaskPriority();
  (*(*(v22 - 8) + 56))(v17, 1, 1, v22);
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &async function pointer to partial apply for @objc closure #1 in PKTiledViewAnimationController.setupStrokeInAnimation(to:in:alternateContainerView:alternateDrawingTransform:);
  v23[5] = v20;
  v24 = swift_allocObject();
  v24[2] = 0;
  v24[3] = 0;
  v24[4] = &_sIeghH_IeAgH_TRTA_96Tu;
  v24[5] = v23;
  toCopy = to;
  inCopy = in;
  viewCopy = view;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v17, &_sIeAgH_ytIeAgHr_TRTA_101Tu, v24);
}

- (void)startRefineAnimationWithDuration:(double)duration
{
  selfCopy = self;
  PKTiledViewAnimationController.startRefineAnimation(duration:)(duration);
}

- (void)stopRefineAnimation
{
  v3 = *(&self->super.isa + OBJC_IVAR___PKTiledViewAnimationController_mtkView);
  selfCopy = self;
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v5 = *(&self->super.isa + OBJC_IVAR___PKTiledViewAnimationController_renderer);
  *(&self->super.isa + OBJC_IVAR___PKTiledViewAnimationController_renderer) = 0;
}

- (void)refineFrom:(NSArray *)from to:(NSArray *)to in:(PKDrawing *)in completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = from;
  v15[3] = to;
  v15[4] = in;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in PKTiledViewAnimationController.refine(from:to:in:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTATu;
  v18[5] = v17;
  fromCopy = from;
  toCopy = to;
  inCopy = in;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTATu, v18);
}

- (PKTiledViewAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end