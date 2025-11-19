@interface CanvasGenerationTool
- (_TtC8PaperKit20CanvasGenerationTool)initWithFrame:(CGRect)a3;
- (void)authenticateWithCompletion:(id)a3;
- (void)didMoveToWindow;
- (void)generationTool:(id)a3;
- (void)gestureRecognizerBegan:(id)a3;
- (void)gestureRecognizerCanceledOrFailed:(id)a3;
- (void)gestureRecognizerChanged:(id)a3;
- (void)gestureRecognizerEnded:(id)a3;
- (void)handleToolPickerVisibilityDidChange:(id)a3;
- (void)keyboardWillHideNotification:(id)a3;
- (void)keyboardWillShowNotification:(id)a3;
- (void)magicPaperViewController:(id)a3 didGenerateImage:(id)a4;
- (void)magicPaperViewControllerDidCancel:(id)a3;
- (void)magicPaperViewControllerViewDidAppear:(id)a3;
- (void)magicPaperViewControllerViewDidDisappear:(id)a3;
@end

@implementation CanvasGenerationTool

- (void)magicPaperViewControllerViewDidAppear:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CanvasGenerationTool.magicPaperViewControllerViewDidAppear(_:)();
}

- (void)magicPaperViewControllerViewDidDisappear:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CanvasGenerationTool.magicPaperViewControllerViewDidDisappear(_:)();
}

- (void)magicPaperViewController:(id)a3 didGenerateImage:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  CanvasGenerationTool.magicPaperViewController(_:didGenerate:)(v6, v7);
}

- (void)magicPaperViewControllerDidCancel:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized CanvasGenerationTool.magicPaperViewControllerDidCancel(_:)();
}

- (void)generationTool:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasGenerationTool.generationTool(_:)(v4);
}

- (void)gestureRecognizerBegan:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasGenerationTool.gestureRecognizerBegan(_:)(v4);
}

- (void)gestureRecognizerChanged:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasGenerationTool.gestureRecognizerChanged(_:)(v4);
}

- (void)gestureRecognizerEnded:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasGenerationTool.gestureRecognizerEnded(_:)(v4);
}

- (void)gestureRecognizerCanceledOrFailed:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasGenerationTool.gestureRecognizerCanceledOrFailed(_:)(v4);
}

- (void)keyboardWillShowNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasGenerationTool.keyboardWillShowNotification(_:)(v4);
}

- (void)keyboardWillHideNotification:(id)a3
{
  v4 = a3;
  v5 = self;
  CanvasGenerationTool.keyboardWillHideNotification(_:)(v4);
}

- (void)didMoveToWindow
{
  v2 = self;
  CanvasGenerationTool.didMoveToWindow()();
}

- (void)handleToolPickerVisibilityDidChange:(id)a3
{
  v4 = type metadata accessor for Notification();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = self;
  CanvasGenerationTool.handleToolPickerVisibilityDidChange(_:)();

  (*(v5 + 8))(v7, v4);
}

- (_TtC8PaperKit20CanvasGenerationTool)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)authenticateWithCompletion:(id)a3
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
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
  v13 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

@end