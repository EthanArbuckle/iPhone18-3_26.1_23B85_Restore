@interface PKTiledViewAnimationController
- (PKTiledViewAnimationController)init;
- (PKTiledViewAnimationController)initWithTiledView:(id)a3;
- (void)avoidSnapshot:(id)a3;
- (void)didEndDrawing;
- (void)refineFrom:(NSArray *)a3 to:(NSArray *)a4 in:(PKDrawing *)a5 completionHandler:(id)a6;
- (void)setupRefineAnimationFrom:(NSArray *)a3 to:(NSArray *)a4 in:(PKDrawing *)a5 alternateContainerView:(UIView *)a6 alternateDrawingTransform:(CGAffineTransform *)a7 completionHandler:(id)a8;
- (void)setupRefineAnimationFrom:(NSArray *)a3 to:(NSArray *)a4 in:(PKDrawing *)a5 completionHandler:(id)a6;
- (void)setupStrokeInAnimationTo:(NSArray *)a3 in:(PKDrawing *)a4 alternateContainerView:(UIView *)a5 alternateDrawingTransform:(CGAffineTransform *)a6 completionHandler:(id)a7;
- (void)setupStrokeInAnimationTo:(NSArray *)a3 in:(PKDrawing *)a4 completionHandler:(id)a5;
- (void)startRefineAnimationWithDuration:(double)a3;
- (void)stopRefineAnimation;
@end

@implementation PKTiledViewAnimationController

- (PKTiledViewAnimationController)initWithTiledView:(id)a3
{
  v3 = a3;
  v4 = specialized PKTiledViewAnimationController.init(tiledView:)();

  return v4;
}

- (void)didEndDrawing
{
  v2 = self;
  PKTiledViewAnimationController.didEndDrawing()();
}

- (void)avoidSnapshot:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2]();

  _Block_release(v3);
}

- (void)setupRefineAnimationFrom:(NSArray *)a3 to:(NSArray *)a4 in:(PKDrawing *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_146Tu, v18);
}

- (void)setupRefineAnimationFrom:(NSArray *)a3 to:(NSArray *)a4 in:(PKDrawing *)a5 alternateContainerView:(UIView *)a6 alternateDrawingTransform:(CGAffineTransform *)a7 completionHandler:(id)a8
{
  tx = a7->tx;
  ty = a7->ty;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v32 - v18;
  v20 = *&a7->a;
  v32 = *&a7->c;
  v33 = v20;
  v21 = _Block_copy(a8);
  v22 = swift_allocObject();
  *(v22 + 16) = a3;
  *(v22 + 24) = a4;
  *(v22 + 32) = a5;
  *(v22 + 40) = a6;
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
  v27 = a3;
  v28 = a4;
  v29 = a5;
  v30 = a6;
  v31 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v19, &_sIeAgH_ytIeAgHr_TRTA_131Tu, v26);
}

- (void)setupStrokeInAnimationTo:(NSArray *)a3 in:(PKDrawing *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
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
  v17 = a3;
  v18 = a4;
  v19 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_116Tu, v16);
}

- (void)setupStrokeInAnimationTo:(NSArray *)a3 in:(PKDrawing *)a4 alternateContainerView:(UIView *)a5 alternateDrawingTransform:(CGAffineTransform *)a6 completionHandler:(id)a7
{
  tx = a6->tx;
  ty = a6->ty;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v29 - v16;
  v18 = *&a6->a;
  v29 = *&a6->c;
  v30 = v18;
  v19 = _Block_copy(a7);
  v20 = swift_allocObject();
  *(v20 + 16) = a3;
  *(v20 + 24) = a4;
  *(v20 + 32) = a5;
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
  v25 = a3;
  v26 = a4;
  v27 = a5;
  v28 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v17, &_sIeAgH_ytIeAgHr_TRTA_101Tu, v24);
}

- (void)startRefineAnimationWithDuration:(double)a3
{
  v4 = self;
  PKTiledViewAnimationController.startRefineAnimation(duration:)(a3);
}

- (void)stopRefineAnimation
{
  v3 = *(&self->super.isa + OBJC_IVAR___PKTiledViewAnimationController_mtkView);
  v4 = self;
  if (v3)
  {
    [v3 removeFromSuperview];
  }

  v5 = *(&self->super.isa + OBJC_IVAR___PKTiledViewAnimationController_renderer);
  *(&self->super.isa + OBJC_IVAR___PKTiledViewAnimationController_renderer) = 0;
}

- (void)refineFrom:(NSArray *)a3 to:(NSArray *)a4 in:(PKDrawing *)a5 completionHandler:(id)a6
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a5;
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
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTATu, v18);
}

- (PKTiledViewAnimationController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end