@interface CRLiOSDocumentModeFindReplace
- (BOOL)handleSingleTapAtPoint:(CGPoint)point touchType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLiOSDocumentModeFindReplace)initWithBoardViewController:(id)controller andInteractiveCanvasController:(id)canvasController;
- (void)handleAlternateContextMenuBehaviorAtPoint:(CGPoint)point;
- (void)modeDidEndForMode:(id)mode forced:(BOOL)forced;
- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced;
- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced;
@end

@implementation CRLiOSDocumentModeFindReplace

- (CRLiOSDocumentModeFindReplace)initWithBoardViewController:(id)controller andInteractiveCanvasController:(id)canvasController
{
  canvasControllerCopy = canvasController;
  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFindReplace;
  v7 = [(CRLiOSDocumentMode *)&v10 initWithBoardViewController:controller];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_interactiveCanvasController, canvasControllerCopy);
  }

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v4 = [equalCopy isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)modeWillBeginFromMode:(id)mode forced:(BOOL)forced
{
  v12.receiver = self;
  v12.super_class = CRLiOSDocumentModeFindReplace;
  [(CRLiOSDocumentMode *)&v12 modeWillBeginFromMode:mode forced:forced];
  interactiveCanvasController = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  editorController = [interactiveCanvasController editorController];

  interactiveCanvasController2 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  selectionModelTranslator = [interactiveCanvasController2 selectionModelTranslator];
  v9 = [selectionModelTranslator selectionPathForInfos:0];

  [editorController setSelectionPath:v9];
  interactiveCanvasController3 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController3 textInputResponder];
  [textInputResponder setDisallowBecomingFirstResponder:1];
}

- (void)modeWillEndForMode:(id)mode forced:(BOOL)forced
{
  forcedCopy = forced;
  modeCopy = mode;
  interactiveCanvasController = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  textInputResponder = [interactiveCanvasController textInputResponder];
  [textInputResponder setDisallowBecomingFirstResponder:0];

  interactiveCanvasController2 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  [interactiveCanvasController2 setShowGrayOverlay:0];

  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFindReplace;
  [(CRLiOSDocumentMode *)&v10 modeWillEndForMode:modeCopy forced:forcedCopy];
}

- (void)modeDidEndForMode:(id)mode forced:(BOOL)forced
{
  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFindReplace;
  [(CRLiOSDocumentMode *)&v10 modeDidEndForMode:mode forced:forced];
  boardViewController = [(CRLiOSDocumentMode *)self boardViewController];
  findReplaceInteraction = [boardViewController findReplaceInteraction];
  [findReplaceInteraction dismissFindNavigator];

  interactiveCanvasController = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  layerHost = [interactiveCanvasController layerHost];
  asiOSCVC = [layerHost asiOSCVC];
  [asiOSCVC becomeFirstResponderIfAppropriate];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)point touchType:(int64_t)type
{
  v4 = [(CRLiOSDocumentMode *)self boardViewController:type];
  findReplaceInteraction = [v4 findReplaceInteraction];
  [findReplaceInteraction dismissFindNavigator];

  return 1;
}

- (void)handleAlternateContextMenuBehaviorAtPoint:(CGPoint)point
{
  v4 = [(CRLiOSDocumentMode *)self boardViewController:point.x];
  documentModeController = [v4 documentModeController];
  [documentModeController performSelector:"resetToDefaultModeAnimated:" withObject:&__kCFBooleanTrue afterDelay:0.0];
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end