@interface ASVPreviewViewControllerInternal
- (ASVPreviewViewControllerInternal)initWithNibName:(id)a3 bundle:(id)a4;
- (NSArray)accessibilityEntityControllers;
- (UIView)accessibilityARView;
- (_TtC11AssetViewer16EntityController)accessibilityRootEntityController;
- (_TtC11AssetViewer28ARQuickLookOverlayController)overlayController;
- (float)accessibilityDistanceInMetersFromEntityController:(id)a3;
- (uint64_t)currentlyDisallowsUnifiedGestureRecognizerAction;
- (void)accessibilityShowControls;
- (void)activateCoachingView;
- (void)activateCoachingViewWithDelay;
- (void)coachingOverlayViewDidDeactivate:(id)a3;
- (void)createInlinePreviewWithUUID:(id)a3 initialBounds:(CGRect)a4 contextIdReply:(id)a5;
- (void)didBecomeActive;
- (void)didDismissActivityViewController;
- (void)dismissButtonPressed;
- (void)dismissPreviewController;
- (void)entityController:(id)a3 doubleTappedAt:(CGPoint)a4;
- (void)handleTapAtPointWithPoint:(CGPoint)a3;
- (void)hideLozengeAnimated;
- (void)inlinePreview:(id)a3 setCameraYaw:(float)a4 pitch:(float)a5 scale:(float)a6 options:(id)a7;
- (void)inlinePreview:(id)a3 setCurrentTime:(double)a4;
- (void)inlinePreview:(id)a3 setEnableGradientBackground:(BOOL)a4;
- (void)inlinePreview:(id)a3 setIsMuted:(BOOL)a4;
- (void)inlinePreview:(id)a3 setRuntimeStateObserver:(id)a4;
- (void)observeReturnedToInlineForUUID:(id)a3 fenceHandleCompletion:(id)a4;
- (void)prepareFullscreenPreview:(id)a3 initialFrame:(CGRect)a4 previewOptions:(id)a5 fenceHandleCompletion:(id)a6;
- (void)prepareInlinePreviewWithData:(id)a3 forUUID:(id)a4 completion:(id)a5;
- (void)prepareInlinePreviewWithScopedURLWrapperAttributes:(id)a3 forUUID:(id)a4 completion:(id)a5;
- (void)preparePreviewOfFileAtURL:(id)a3 completionHandler:(id)a4;
- (void)presentationModeDidChange:(unint64_t)a3 animated:(BOOL)a4;
- (void)previewDidAppear:(BOOL)a3;
- (void)previewDidDisappear:(BOOL)a3;
- (void)previewWillAppear:(BOOL)a3;
- (void)previewWillDisappear:(BOOL)a3;
- (void)sendARQLEvent:(id)a3 forUUID:(id)a4 completion:(id)a5;
- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4;
- (void)session:(id)a3 didFailWithError:(id)a4;
- (void)session:(id)a3 didUpdateFrame:(id)a4;
- (void)sessionInterruptionEnded:(id)a3;
- (void)sessionWasInterrupted:(id)a3;
- (void)setOverlayController:(id)a3;
- (void)shareButtonPressed;
- (void)teardownInlinePreviewWithUUID:(id)a3 completion:(id)a4;
- (void)touchesCancelled:(id)a3 forUUID:(id)a4;
- (void)triggerOnInteractionsAndReEnablePhysicsWithDelay;
- (void)triggerTapToRadar;
- (void)tryPlaceModelOrRescheduleTimer;
- (void)updateBounds:(CGRect)a3 forUUID:(id)a4 fenceHandleCompletion:(id)a5;
- (void)updateInterfaceState;
- (void)updateIsWindowFullscreenWithFuncString:(id)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ASVPreviewViewControllerInternal

- (uint64_t)currentlyDisallowsUnifiedGestureRecognizerAction
{
  v1 = a1;
  sub_2412979B0();
  v3 = v2;

  return v3 & 1;
}

- (_TtC11AssetViewer28ARQuickLookOverlayController)overlayController
{
  v2 = self;
  v3 = sub_241287420();

  return v3;
}

- (void)setOverlayController:(id)a3
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) = a3;
  v3 = a3;
}

- (void)viewDidLoad
{
  v2 = self;
  PreviewViewController.viewDidLoad()();
}

- (void)didBecomeActive
{
  v2 = self;
  sub_24128C2A8(0xD000000000000011, 0x8000000241360110);
}

- (void)updateIsWindowFullscreenWithFuncString:(id)a3
{
  v4 = sub_241353C0C();
  v6 = v5;
  v7 = self;
  sub_24128C2A8(v4, v6);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  PreviewViewController.viewDidLayoutSubviews()();
}

- (void)hideLozengeAnimated
{
  v2 = self;
  sub_24128F64C();
}

- (void)updateInterfaceState
{
  v2 = self;
  sub_24128F70C();
}

- (void)presentationModeDidChange:(unint64_t)a3 animated:(BOOL)a4
{
  v5 = self;
  _s11AssetViewer21PreviewViewControllerC25presentationModeDidChange_8animatedySo014QLPresentationG0V_SbtF_0(a3);
}

- (void)didDismissActivityViewController
{
  v2 = self;
  v3 = sub_241287420();
  sub_2412F9D1C(1);

  v4 = *(&v2->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v4[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 0;
}

- (ASVPreviewViewControllerInternal)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    v5 = sub_241353C0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = a4;
  return PreviewViewController.init(nibName:bundle:)(v5, v7, a4);
}

- (void)entityController:(id)a3 doubleTappedAt:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  sub_2412AF90C(v5);
}

- (void)preparePreviewOfFileAtURL:(id)a3 completionHandler:(id)a4
{
  v6 = sub_24135152C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(a4);
  sub_2413514AC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = self;
  PreviewViewController.preparePreviewOfFile(at:completionHandler:)(v9, sub_2412B34E0, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)triggerOnInteractionsAndReEnablePhysicsWithDelay
{
  v2 = self;
  sub_24129A264();
}

- (void)previewWillAppear:(BOOL)a3
{
  v3 = self;
  _s11AssetViewer21PreviewViewControllerC17previewWillAppearyySbF_0();
}

- (void)previewDidAppear:(BOOL)a3
{
  v3 = self;
  _s11AssetViewer21PreviewViewControllerC16previewDidAppearyySbF_0();
}

- (void)previewWillDisappear:(BOOL)a3
{
  v3 = self;
  _s11AssetViewer21PreviewViewControllerC20previewWillDisappearyySbF_0();
}

- (void)previewDidDisappear:(BOOL)a3
{
  v3 = self;
  _s11AssetViewer21PreviewViewControllerC19previewDidDisappearyySbF_0();
}

- (void)dismissButtonPressed
{
  v2 = self;
  sub_24129EFAC();
}

- (void)shareButtonPressed
{
  v2 = self;
  sub_24129F8C0();
}

- (void)handleTapAtPointWithPoint:(CGPoint)a3
{
  v3 = self;
  sub_2412B3440();
}

- (UIView)accessibilityARView
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)accessibilityShowControls
{
  if (*(&self->super.super.super._responderFlags + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState) == 4)
  {
    *(&self->super.super.super._responderFlags + OBJC_IVAR___ASVPreviewViewControllerInternal_interfaceState) = 3;
    [(ASVPreviewViewControllerInternal *)self updateInterfaceState];
  }
}

- (float)accessibilityDistanceInMetersFromEntityController:(id)a3
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v4)
    {
      v6 = a3;
      v7 = self;
      v8 = v4;
      sub_2413528BC();
      v10 = v9;

      return v10;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

- (NSArray)accessibilityEntityControllers
{
  if (*(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController))
  {
  }

  type metadata accessor for EntityController();
  v2 = sub_241353E1C();

  return v2;
}

- (_TtC11AssetViewer16EntityController)accessibilityRootEntityController
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v3 && (v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_rootEntityController)) != 0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)tryPlaceModelOrRescheduleTimer
{
  v2 = self;
  sub_2412C70BC();
}

- (void)createInlinePreviewWithUUID:(id)a3 initialBounds:(CGRect)a4 contextIdReply:(id)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = aBlock - v15;
  v17 = _Block_copy(a5);
  sub_24135162C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  (*(v11 + 16))(v13, v16, v10);
  v19 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = sub_2412EB09C;
  *(v20 + 24) = v18;
  (*(v11 + 32))(v20 + v19, v13, v10);
  v21 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = x;
  v21[1] = y;
  v21[2] = width;
  v21[3] = height;
  aBlock[4] = sub_2412EBDEC;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_217;
  v22 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v22);

  (*(v11 + 8))(v16, v10);
}

- (void)prepareInlinePreviewWithScopedURLWrapperAttributes:(id)a3 forUUID:(id)a4 completion:(id)a5
{
  v7 = sub_24135164C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = aBlock - v12;
  v14 = _Block_copy(a5);
  sub_24135162C();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  (*(v8 + 16))(v10, v13, v7);
  v16 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v17 = (v9 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v8 + 32))(v18 + v16, v10, v7);
  v19 = (v18 + v17);
  *v19 = sub_2412EB5C4;
  v19[1] = v15;
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_2412EBDE8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_207;
  v20 = _Block_copy(aBlock);
  v21 = a3;

  QLRunInMainThread();
  _Block_release(v20);

  (*(v8 + 8))(v13, v7);
}

- (void)prepareInlinePreviewWithData:(id)a3 forUUID:(id)a4 completion:(id)a5
{
  v8 = sub_24135164C();
  MEMORY[0x28223BE20](v8 - 8);
  _Block_copy(a5);
  v9 = a3;
  v10 = a4;
  sub_24135154C();

  sub_24135162C();
  sub_2413547DC();
  __break(1u);
}

- (void)prepareFullscreenPreview:(id)a3 initialFrame:(CGRect)a4 previewOptions:(id)a5 fenceHandleCompletion:(id)a6
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v35 = self;
  v11 = sub_24135164C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = _Block_copy(a6);
  v34 = v17;
  sub_24135162C();
  v33 = sub_241353B5C();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  (*(v12 + 16))(v14, v17, v11);
  v20 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v21 = (v13 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = (v21 + 39) & 0xFFFFFFFFFFFFFFF8;
  v23 = (v22 + 15) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  v25 = v24 + v20;
  v26 = v11;
  (*(v12 + 32))(v25, v14, v11);
  v27 = (v24 + v21);
  *v27 = x;
  v27[1] = y;
  v27[2] = width;
  v27[3] = height;
  *(v24 + v22) = v33;
  v28 = (v24 + v23);
  *v28 = sub_2412EBDF0;
  v28[1] = v19;
  v29 = v35;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = v35;
  aBlock[4] = sub_2412EBDE4;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_197;
  v30 = _Block_copy(aBlock);
  v31 = v29;

  QLRunInMainThread();
  _Block_release(v30);

  (*(v12 + 8))(v34, v26);
}

- (void)observeReturnedToInlineForUUID:(id)a3 fenceHandleCompletion:(id)a4
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  v12 = _Block_copy(a4);
  sub_24135162C();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  (*(v6 + 16))(v8, v11, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v8, v5);
  v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_2412EB2EC;
  v16[1] = v13;
  aBlock[4] = sub_2412EBDE0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_186;
  v17 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v17);

  (*(v6 + 8))(v11, v5);
}

- (void)dismissPreviewController
{
  v2 = self;
  PreviewViewController.dismissPreviewController()();
}

- (void)touchesCancelled:(id)a3 forUUID:(id)a4
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = aBlock - v9;
  sub_241246158(0, &unk_27E53A480);
  sub_2412EB1DC();
  v11 = sub_241353FFC();
  sub_24135162C();
  (*(v5 + 16))(v7, v10, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  (*(v5 + 32))(v14 + v12, v7, v4);
  *(v14 + v13) = v11;
  aBlock[4] = sub_2412EBDDC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_176;
  v15 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v15);
  (*(v5 + 8))(v10, v4);
}

- (void)updateBounds:(CGRect)a3 forUUID:(id)a4 fenceHandleCompletion:(id)a5
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = aBlock - v15;
  v17 = _Block_copy(a5);
  sub_24135162C();
  v18 = swift_allocObject();
  *(v18 + 16) = v17;
  (*(v11 + 16))(v13, v16, v10);
  v19 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v20[2] = x;
  v20[3] = y;
  v20[4] = width;
  v20[5] = height;
  (*(v11 + 32))(v20 + v19, v13, v10);
  v21 = (v20 + ((v12 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v21 = sub_2412EB09C;
  v21[1] = v18;
  aBlock[4] = sub_2412EBDD8;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_169;
  v22 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v22);

  (*(v11 + 8))(v16, v10);
}

- (void)inlinePreview:(id)a3 setRuntimeStateObserver:(id)a4
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  v12 = _Block_copy(a4);
  sub_24135162C();
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_2412EB094;
  }

  else
  {
    v13 = 0;
  }

  (*(v6 + 16))(v8, v11, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = (v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v6 + 32))(v16 + v14, v8, v5);
  v17 = (v16 + v15);
  *v17 = v12;
  v17[1] = v13;
  aBlock[4] = sub_2412EBDD4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_156;
  v18 = _Block_copy(aBlock);
  sub_24124AD38(v12);

  QLRunInMainThread();
  _Block_release(v18);
  sub_2412186FC(v12);
  (*(v6 + 8))(v11, v5);
}

- (void)inlinePreview:(id)a3 setEnableGradientBackground:(BOOL)a4
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135162C();
  _s11AssetViewer21PreviewViewControllerC06inlineC0_27setEnableGradientBackgroundy10Foundation4UUIDV_SbtF_0(v7);
  (*(v5 + 8))(v7, v4);
}

- (void)inlinePreview:(id)a3 setCurrentTime:(double)a4
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  sub_24135162C();
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  aBlock[4] = sub_2412EBDC4;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_128;
  v14 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v14);
  (*(v6 + 8))(v11, v5);
}

- (void)inlinePreview:(id)a3 setIsMuted:(BOOL)a4
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  sub_24135162C();
  (*(v6 + 16))(v8, v11, v5);
  v12 = (*(v6 + 80) + 17) & ~*(v6 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  (*(v6 + 32))(v13 + v12, v8, v5);
  aBlock[4] = sub_2412EBDC0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_121;
  v14 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v14);
  (*(v6 + 8))(v11, v5);
}

- (void)inlinePreview:(id)a3 setCameraYaw:(float)a4 pitch:(float)a5 scale:(float)a6 options:(id)a7
{
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v23 - v15;
  sub_24135162C();
  v24 = sub_241353B5C();
  (*(v11 + 16))(v13, v16, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v18 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v20 = (v19 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v21 = swift_allocObject();
  (*(v11 + 32))(v21 + v17, v13, v10);
  *(v21 + v18) = a4;
  *(v21 + v19) = a5;
  *(v21 + v20) = a6;
  *(v21 + ((v20 + 11) & 0xFFFFFFFFFFFFFFF8)) = v24;
  aBlock[4] = sub_2412EBDBC;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_114;
  v22 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v22);
  (*(v11 + 8))(v16, v10);
}

- (void)teardownInlinePreviewWithUUID:(id)a3 completion:(id)a4
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  v12 = _Block_copy(a4);
  sub_24135162C();
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  (*(v6 + 16))(v8, v11, v5);
  v14 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v15 = swift_allocObject();
  (*(v6 + 32))(v15 + v14, v8, v5);
  v16 = (v15 + ((v7 + v14 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v16 = sub_2412EAA98;
  v16[1] = v13;
  aBlock[4] = sub_2412EBDB8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_107;
  v17 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v17);

  (*(v6 + 8))(v11, v5);
}

- (void)sendARQLEvent:(id)a3 forUUID:(id)a4 completion:(id)a5
{
  v6 = sub_24135164C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = aBlock - v11;
  v13 = _Block_copy(a5);
  v14 = sub_241353B5C();
  sub_24135162C();
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v7 + 16))(v9, v12, v6);
  v16 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v7 + 32))(v18 + v16, v9, v6);
  *(v18 + v17) = v14;
  v19 = (v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v19 = sub_2412EA944;
  v19[1] = v15;
  aBlock[4] = sub_2412EBDB4;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_97;
  v20 = _Block_copy(aBlock);

  QLRunInMainThread();
  _Block_release(v20);

  (*(v7 + 8))(v12, v6);
}

- (void)triggerTapToRadar
{
  v2 = self;
  sub_2412F1140();
}

- (void)session:(id)a3 cameraDidChangeTrackingState:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_2412F3FCC(v7);
}

- (void)session:(id)a3 didFailWithError:(id)a4
{
  v6 = a3;
  v8 = a4;
  v7 = self;
  sub_2412F4660(v8);
}

- (void)sessionWasInterrupted:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412F42E4(&unk_285303158, sub_2412F493C, &block_descriptor_36);
}

- (void)sessionInterruptionEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2412F42E4(&unk_285303108, sub_2412F4934, &block_descriptor_30);
}

- (void)session:(id)a3 didUpdateFrame:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  PreviewViewController.session(_:didUpdate:)(v6, v7);
}

- (void)activateCoachingView
{
  v2 = self;
  sub_24134FFA4();
}

- (void)activateCoachingViewWithDelay
{
  v2 = self;
  sub_24134FB68();
}

- (void)coachingOverlayViewDidDeactivate:(id)a3
{
  v3 = (self + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  v5 = self;
  if (v4)
  {
    v6 = sub_24124AD38(v4);
    v4(v6);
    sub_2412186FC(v4);
    v7 = *v3;
  }

  else
  {
    v7 = 0;
  }

  *v3 = 0;
  v3[1] = 0;
  sub_2412186FC(v7);
}

@end