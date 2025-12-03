@interface CanvasGenerationTool
- (_TtC8PaperKit20CanvasGenerationTool)initWithFrame:(CGRect)frame;
- (void)authenticateWithCompletion:(id)completion;
- (void)didMoveToWindow;
- (void)generationTool:(id)tool;
- (void)gestureRecognizerBegan:(id)began;
- (void)gestureRecognizerCanceledOrFailed:(id)failed;
- (void)gestureRecognizerChanged:(id)changed;
- (void)gestureRecognizerEnded:(id)ended;
- (void)handleToolPickerVisibilityDidChange:(id)change;
- (void)keyboardWillHideNotification:(id)notification;
- (void)keyboardWillShowNotification:(id)notification;
- (void)magicPaperViewController:(id)controller didGenerateImage:(id)image;
- (void)magicPaperViewControllerDidCancel:(id)cancel;
- (void)magicPaperViewControllerViewDidAppear:(id)appear;
- (void)magicPaperViewControllerViewDidDisappear:(id)disappear;
@end

@implementation CanvasGenerationTool

- (void)magicPaperViewControllerViewDidAppear:(id)appear
{
  appearCopy = appear;
  selfCopy = self;
  specialized CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)();
}

- (void)magicPaperViewControllerViewDidDisappear:(id)disappear
{
  disappearCopy = disappear;
  selfCopy = self;
  specialized CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)();
}

- (void)magicPaperViewController:(id)controller didGenerateImage:(id)image
{
  controllerCopy = controller;
  imageCopy = image;
  selfCopy = self;
  CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(controllerCopy, imageCopy);
}

- (void)magicPaperViewControllerDidCancel:(id)cancel
{
  cancelCopy = cancel;
  selfCopy = self;
  specialized CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)();
}

- (void)generationTool:(id)tool
{
  toolCopy = tool;
  selfCopy = self;
  CanvasGenerationTool.generationTool(_:)(toolCopy);
}

- (void)gestureRecognizerBegan:(id)began
{
  beganCopy = began;
  selfCopy = self;
  CanvasGenerationTool.gestureRecognizerBegan(_:)(beganCopy);
}

- (void)gestureRecognizerChanged:(id)changed
{
  changedCopy = changed;
  selfCopy = self;
  CanvasGenerationTool.gestureRecognizerChanged(_:)(changedCopy);
}

- (void)gestureRecognizerEnded:(id)ended
{
  endedCopy = ended;
  selfCopy = self;
  CanvasGenerationTool.gestureRecognizerEnded(_:)(endedCopy);
}

- (void)gestureRecognizerCanceledOrFailed:(id)failed
{
  failedCopy = failed;
  selfCopy = self;
  CanvasGenerationTool.gestureRecognizerCanceledOrFailed(_:)(failedCopy);
}

- (void)keyboardWillShowNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  CanvasGenerationTool.keyboardWillShowNotification(_:)(notificationCopy);
}

- (void)keyboardWillHideNotification:(id)notification
{
  notificationCopy = notification;
  selfCopy = self;
  CanvasGenerationTool.keyboardWillHideNotification(_:)(notificationCopy);
}

- (void)didMoveToWindow
{
  selfCopy = self;
  CanvasGenerationTool.didMoveToWindow()();
}

- (void)handleToolPickerVisibilityDidChange:(id)change
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  CanvasGenerationTool.handleToolPickerVisibilityDidChange(_:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKit20CanvasGenerationTool)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticateWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in CanvasGenerationTool.authenticate();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

@end