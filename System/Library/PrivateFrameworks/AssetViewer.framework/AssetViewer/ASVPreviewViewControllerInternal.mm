@interface ASVPreviewViewControllerInternal
- (ASVPreviewViewControllerInternal)initWithNibName:(id)name bundle:(id)bundle;
- (NSArray)accessibilityEntityControllers;
- (UIView)accessibilityARView;
- (_TtC11AssetViewer16EntityController)accessibilityRootEntityController;
- (_TtC11AssetViewer28ARQuickLookOverlayController)overlayController;
- (float)accessibilityDistanceInMetersFromEntityController:(id)controller;
- (uint64_t)currentlyDisallowsUnifiedGestureRecognizerAction;
- (void)accessibilityShowControls;
- (void)activateCoachingView;
- (void)activateCoachingViewWithDelay;
- (void)coachingOverlayViewDidDeactivate:(id)deactivate;
- (void)createInlinePreviewWithUUID:(id)d initialBounds:(CGRect)bounds contextIdReply:(id)reply;
- (void)didBecomeActive;
- (void)didDismissActivityViewController;
- (void)dismissButtonPressed;
- (void)dismissPreviewController;
- (void)entityController:(id)controller doubleTappedAt:(CGPoint)at;
- (void)handleTapAtPointWithPoint:(CGPoint)point;
- (void)hideLozengeAnimated;
- (void)inlinePreview:(id)preview setCameraYaw:(float)yaw pitch:(float)pitch scale:(float)scale options:(id)options;
- (void)inlinePreview:(id)preview setCurrentTime:(double)time;
- (void)inlinePreview:(id)preview setEnableGradientBackground:(BOOL)background;
- (void)inlinePreview:(id)preview setIsMuted:(BOOL)muted;
- (void)inlinePreview:(id)preview setRuntimeStateObserver:(id)observer;
- (void)observeReturnedToInlineForUUID:(id)d fenceHandleCompletion:(id)completion;
- (void)prepareFullscreenPreview:(id)preview initialFrame:(CGRect)frame previewOptions:(id)options fenceHandleCompletion:(id)completion;
- (void)prepareInlinePreviewWithData:(id)data forUUID:(id)d completion:(id)completion;
- (void)prepareInlinePreviewWithScopedURLWrapperAttributes:(id)attributes forUUID:(id)d completion:(id)completion;
- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler;
- (void)presentationModeDidChange:(unint64_t)change animated:(BOOL)animated;
- (void)previewDidAppear:(BOOL)appear;
- (void)previewDidDisappear:(BOOL)disappear;
- (void)previewWillAppear:(BOOL)appear;
- (void)previewWillDisappear:(BOOL)disappear;
- (void)sendARQLEvent:(id)event forUUID:(id)d completion:(id)completion;
- (void)session:(id)session cameraDidChangeTrackingState:(id)state;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session didUpdateFrame:(id)frame;
- (void)sessionInterruptionEnded:(id)ended;
- (void)sessionWasInterrupted:(id)interrupted;
- (void)setOverlayController:(id)controller;
- (void)shareButtonPressed;
- (void)teardownInlinePreviewWithUUID:(id)d completion:(id)completion;
- (void)touchesCancelled:(id)cancelled forUUID:(id)d;
- (void)triggerOnInteractionsAndReEnablePhysicsWithDelay;
- (void)triggerTapToRadar;
- (void)tryPlaceModelOrRescheduleTimer;
- (void)updateBounds:(CGRect)bounds forUUID:(id)d fenceHandleCompletion:(id)completion;
- (void)updateInterfaceState;
- (void)updateIsWindowFullscreenWithFuncString:(id)string;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation ASVPreviewViewControllerInternal

- (uint64_t)currentlyDisallowsUnifiedGestureRecognizerAction
{
  selfCopy = self;
  sub_2412979B0();
  v3 = v2;

  return v3 & 1;
}

- (_TtC11AssetViewer28ARQuickLookOverlayController)overlayController
{
  selfCopy = self;
  v3 = sub_241287420();

  return v3;
}

- (void)setOverlayController:(id)controller
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController) = controller;
  controllerCopy = controller;
}

- (void)viewDidLoad
{
  selfCopy = self;
  PreviewViewController.viewDidLoad()();
}

- (void)didBecomeActive
{
  selfCopy = self;
  sub_24128C2A8(0xD000000000000011, 0x8000000241360110);
}

- (void)updateIsWindowFullscreenWithFuncString:(id)string
{
  v4 = sub_241353C0C();
  v6 = v5;
  selfCopy = self;
  sub_24128C2A8(v4, v6);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  PreviewViewController.viewDidLayoutSubviews()();
}

- (void)hideLozengeAnimated
{
  selfCopy = self;
  sub_24128F64C();
}

- (void)updateInterfaceState
{
  selfCopy = self;
  sub_24128F70C();
}

- (void)presentationModeDidChange:(unint64_t)change animated:(BOOL)animated
{
  selfCopy = self;
  _s11AssetViewer21PreviewViewControllerC25presentationModeDidChange_8animatedySo014QLPresentationG0V_SbtF_0(change);
}

- (void)didDismissActivityViewController
{
  selfCopy = self;
  v3 = sub_241287420();
  sub_2412F9D1C(1);

  v4 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal____lazy_storage___overlayController);
  v4[OBJC_IVAR____TtC11AssetViewer28ARQuickLookOverlayController_operationMode] = 0;
}

- (ASVPreviewViewControllerInternal)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    v5 = sub_241353C0C();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  bundleCopy = bundle;
  return PreviewViewController.init(nibName:bundle:)(v5, v7, bundle);
}

- (void)entityController:(id)controller doubleTappedAt:(CGPoint)at
{
  controllerCopy = controller;
  selfCopy = self;
  sub_2412AF90C(controllerCopy);
}

- (void)preparePreviewOfFileAtURL:(id)l completionHandler:(id)handler
{
  v6 = sub_24135152C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(handler);
  sub_2413514AC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  PreviewViewController.preparePreviewOfFile(at:completionHandler:)(v9, sub_2412B34E0, v11);

  (*(v7 + 8))(v9, v6);
}

- (void)triggerOnInteractionsAndReEnablePhysicsWithDelay
{
  selfCopy = self;
  sub_24129A264();
}

- (void)previewWillAppear:(BOOL)appear
{
  selfCopy = self;
  _s11AssetViewer21PreviewViewControllerC17previewWillAppearyySbF_0();
}

- (void)previewDidAppear:(BOOL)appear
{
  selfCopy = self;
  _s11AssetViewer21PreviewViewControllerC16previewDidAppearyySbF_0();
}

- (void)previewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  _s11AssetViewer21PreviewViewControllerC20previewWillDisappearyySbF_0();
}

- (void)previewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  _s11AssetViewer21PreviewViewControllerC19previewDidDisappearyySbF_0();
}

- (void)dismissButtonPressed
{
  selfCopy = self;
  sub_24129EFAC();
}

- (void)shareButtonPressed
{
  selfCopy = self;
  sub_24129F8C0();
}

- (void)handleTapAtPointWithPoint:(CGPoint)point
{
  selfCopy = self;
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

- (float)accessibilityDistanceInMetersFromEntityController:(id)controller
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal_modelController);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC11AssetViewer15ModelController_arView);
    if (v4)
    {
      controllerCopy = controller;
      selfCopy = self;
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
  selfCopy = self;
  sub_2412C70BC();
}

- (void)createInlinePreviewWithUUID:(id)d initialBounds:(CGRect)bounds contextIdReply:(id)reply
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = aBlock - v15;
  v17 = _Block_copy(reply);
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

- (void)prepareInlinePreviewWithScopedURLWrapperAttributes:(id)attributes forUUID:(id)d completion:(id)completion
{
  v7 = sub_24135164C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = aBlock - v12;
  v14 = _Block_copy(completion);
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
  *(v18 + ((v17 + 23) & 0xFFFFFFFFFFFFFFF8)) = attributes;
  aBlock[4] = sub_2412EBDE8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2412D5698;
  aBlock[3] = &block_descriptor_207;
  v20 = _Block_copy(aBlock);
  attributesCopy = attributes;

  QLRunInMainThread();
  _Block_release(v20);

  (*(v8 + 8))(v13, v7);
}

- (void)prepareInlinePreviewWithData:(id)data forUUID:(id)d completion:(id)completion
{
  v8 = sub_24135164C();
  MEMORY[0x28223BE20](v8 - 8);
  _Block_copy(completion);
  dataCopy = data;
  dCopy = d;
  sub_24135154C();

  sub_24135162C();
  sub_2413547DC();
  __break(1u);
}

- (void)prepareFullscreenPreview:(id)preview initialFrame:(CGRect)frame previewOptions:(id)options fenceHandleCompletion:(id)completion
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  selfCopy = self;
  v11 = sub_24135164C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = _Block_copy(completion);
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
  v29 = selfCopy;
  *(v24 + ((v23 + 23) & 0xFFFFFFFFFFFFFFF8)) = selfCopy;
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

- (void)observeReturnedToInlineForUUID:(id)d fenceHandleCompletion:(id)completion
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  v12 = _Block_copy(completion);
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
  selfCopy = self;
  PreviewViewController.dismissPreviewController()();
}

- (void)touchesCancelled:(id)cancelled forUUID:(id)d
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

- (void)updateBounds:(CGRect)bounds forUUID:(id)d fenceHandleCompletion:(id)completion
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  v10 = sub_24135164C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = aBlock - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = aBlock - v15;
  v17 = _Block_copy(completion);
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

- (void)inlinePreview:(id)preview setRuntimeStateObserver:(id)observer
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  v12 = _Block_copy(observer);
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

- (void)inlinePreview:(id)preview setEnableGradientBackground:(BOOL)background
{
  v4 = sub_24135164C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v8 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24135162C();
  _s11AssetViewer21PreviewViewControllerC06inlineC0_27setEnableGradientBackgroundy10Foundation4UUIDV_SbtF_0(v7);
  (*(v5 + 8))(v7, v4);
}

- (void)inlinePreview:(id)preview setCurrentTime:(double)time
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
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = time;
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

- (void)inlinePreview:(id)preview setIsMuted:(BOOL)muted
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
  *(v13 + 16) = muted;
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

- (void)inlinePreview:(id)preview setCameraYaw:(float)yaw pitch:(float)pitch scale:(float)scale options:(id)options
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
  *(v21 + v18) = yaw;
  *(v21 + v19) = pitch;
  *(v21 + v20) = scale;
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

- (void)teardownInlinePreviewWithUUID:(id)d completion:(id)completion
{
  v5 = sub_24135164C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = aBlock - v10;
  v12 = _Block_copy(completion);
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

- (void)sendARQLEvent:(id)event forUUID:(id)d completion:(id)completion
{
  v6 = sub_24135164C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = aBlock - v11;
  v13 = _Block_copy(completion);
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
  selfCopy = self;
  sub_2412F1140();
}

- (void)session:(id)session cameraDidChangeTrackingState:(id)state
{
  sessionCopy = session;
  stateCopy = state;
  selfCopy = self;
  sub_2412F3FCC(stateCopy);
}

- (void)session:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_2412F4660(errorCopy);
}

- (void)sessionWasInterrupted:(id)interrupted
{
  interruptedCopy = interrupted;
  selfCopy = self;
  sub_2412F42E4(&unk_285303158, sub_2412F493C, &block_descriptor_36);
}

- (void)sessionInterruptionEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  sub_2412F42E4(&unk_285303108, sub_2412F4934, &block_descriptor_30);
}

- (void)session:(id)session didUpdateFrame:(id)frame
{
  sessionCopy = session;
  frameCopy = frame;
  selfCopy = self;
  PreviewViewController.session(_:didUpdate:)(sessionCopy, frameCopy);
}

- (void)activateCoachingView
{
  selfCopy = self;
  sub_24134FFA4();
}

- (void)activateCoachingViewWithDelay
{
  selfCopy = self;
  sub_24134FB68();
}

- (void)coachingOverlayViewDidDeactivate:(id)deactivate
{
  v3 = (self + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR___ASVPreviewViewControllerInternal_coachingOverlayViewDidDeactivateCompletionBlock);
  selfCopy = self;
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