@interface THGlossaryInteractiveCanvasController
- (BOOL)handleGesture:(id)gesture;
- (BOOL)shouldShowTextOverflowGlyphs;
- (CGSize)canvasScrollingOutset;
- (void)handleHyperlinkGesture:(id)gesture;
- (void)p_dismissSearchKeyboard;
- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags;
- (void)showHyperlinkInfoForField:(id)field inRep:(id)rep openInEditMode:(BOOL)mode;
@end

@implementation THGlossaryInteractiveCanvasController

- (CGSize)canvasScrollingOutset
{
  v2 = 0.0;
  v3 = 0.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (BOOL)shouldShowTextOverflowGlyphs
{
  v2 = +[NSUserDefaults standardUserDefaults];
  v3 = kTHShowTextOverflowIndicator[0];

  return [(NSUserDefaults *)v2 BOOLForKey:v3];
}

- (void)setSelection:(id)selection onModel:(id)model withFlags:(unint64_t)flags
{
  v5.receiver = self;
  v5.super_class = THGlossaryInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v5 setSelection:selection onModel:model withFlags:flags & 0xFFFFFFFFFFFFFFAFLL];
}

- (void)p_dismissSearchKeyboard
{
  v2 = [NSNotification notificationWithName:kTHGlossaryDismissSearchNotification object:self];
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 postNotification:v2];
}

- (BOOL)handleGesture:(id)gesture
{
  [(THGlossaryInteractiveCanvasController *)self p_dismissSearchKeyboard];
  v6.receiver = self;
  v6.super_class = THGlossaryInteractiveCanvasController;
  return [(THInteractiveCanvasController *)&v6 handleGesture:gesture];
}

- (void)showHyperlinkInfoForField:(id)field inRep:(id)rep openInEditMode:(BOOL)mode
{
  mode = [(THInteractiveCanvasController *)self linkForHyperlinkField:field, rep, mode];
  mLinkHandler = self->mLinkHandler;
  if (!mLinkHandler)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mLinkHandler = self->mLinkHandler;
  }

  [(THLinkTraversalDelegate *)mLinkHandler followLink:mode];
}

- (void)handleHyperlinkGesture:(id)gesture
{
  if ([gesture state] == &dword_0 + 3)
  {
    if ([gesture wasTapHold])
    {
      +[TSWPEditMenuController hideEditMenu];
    }

    v5 = -[THInteractiveCanvasController linkForHyperlinkField:](self, "linkForHyperlinkField:", [gesture hitField]);
    [+[TSWPHyperlinkUIController sharedHyperlinkUIController](TSWPHyperlinkUIController "sharedHyperlinkUIController")];
    mLinkHandler = self->mLinkHandler;
    if (!mLinkHandler)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
      mLinkHandler = self->mLinkHandler;
    }

    [(THLinkTraversalDelegate *)mLinkHandler followLink:v5];
  }
}

@end