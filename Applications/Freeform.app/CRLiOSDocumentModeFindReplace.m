@interface CRLiOSDocumentModeFindReplace
- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4;
- (BOOL)isEqual:(id)a3;
- (CRLInteractiveCanvasController)interactiveCanvasController;
- (CRLiOSDocumentModeFindReplace)initWithBoardViewController:(id)a3 andInteractiveCanvasController:(id)a4;
- (void)handleAlternateContextMenuBehaviorAtPoint:(CGPoint)a3;
- (void)modeDidEndForMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4;
- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4;
@end

@implementation CRLiOSDocumentModeFindReplace

- (CRLiOSDocumentModeFindReplace)initWithBoardViewController:(id)a3 andInteractiveCanvasController:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFindReplace;
  v7 = [(CRLiOSDocumentMode *)&v10 initWithBoardViewController:a3];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_interactiveCanvasController, v6);
  }

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v3 = a3;
  v4 = [v3 isMemberOfClass:objc_opt_class()];

  return v4;
}

- (void)modeWillBeginFromMode:(id)a3 forced:(BOOL)a4
{
  v12.receiver = self;
  v12.super_class = CRLiOSDocumentModeFindReplace;
  [(CRLiOSDocumentMode *)&v12 modeWillBeginFromMode:a3 forced:a4];
  v5 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  v6 = [v5 editorController];

  v7 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  v8 = [v7 selectionModelTranslator];
  v9 = [v8 selectionPathForInfos:0];

  [v6 setSelectionPath:v9];
  v10 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  v11 = [v10 textInputResponder];
  [v11 setDisallowBecomingFirstResponder:1];
}

- (void)modeWillEndForMode:(id)a3 forced:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  v8 = [v7 textInputResponder];
  [v8 setDisallowBecomingFirstResponder:0];

  v9 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  [v9 setShowGrayOverlay:0];

  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFindReplace;
  [(CRLiOSDocumentMode *)&v10 modeWillEndForMode:v6 forced:v4];
}

- (void)modeDidEndForMode:(id)a3 forced:(BOOL)a4
{
  v10.receiver = self;
  v10.super_class = CRLiOSDocumentModeFindReplace;
  [(CRLiOSDocumentMode *)&v10 modeDidEndForMode:a3 forced:a4];
  v5 = [(CRLiOSDocumentMode *)self boardViewController];
  v6 = [v5 findReplaceInteraction];
  [v6 dismissFindNavigator];

  v7 = [(CRLiOSDocumentModeFindReplace *)self interactiveCanvasController];
  v8 = [v7 layerHost];
  v9 = [v8 asiOSCVC];
  [v9 becomeFirstResponderIfAppropriate];
}

- (BOOL)handleSingleTapAtPoint:(CGPoint)a3 touchType:(int64_t)a4
{
  v4 = [(CRLiOSDocumentMode *)self boardViewController:a4];
  v5 = [v4 findReplaceInteraction];
  [v5 dismissFindNavigator];

  return 1;
}

- (void)handleAlternateContextMenuBehaviorAtPoint:(CGPoint)a3
{
  v4 = [(CRLiOSDocumentMode *)self boardViewController:a3.x];
  v3 = [v4 documentModeController];
  [v3 performSelector:"resetToDefaultModeAnimated:" withObject:&__kCFBooleanTrue afterDelay:0.0];
}

- (CRLInteractiveCanvasController)interactiveCanvasController
{
  WeakRetained = objc_loadWeakRetained(&self->_interactiveCanvasController);

  return WeakRetained;
}

@end