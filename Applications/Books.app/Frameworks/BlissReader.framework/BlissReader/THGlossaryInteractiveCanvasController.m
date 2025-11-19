@interface THGlossaryInteractiveCanvasController
- (BOOL)handleGesture:(id)a3;
- (BOOL)shouldShowTextOverflowGlyphs;
- (CGSize)canvasScrollingOutset;
- (void)handleHyperlinkGesture:(id)a3;
- (void)p_dismissSearchKeyboard;
- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5;
- (void)showHyperlinkInfoForField:(id)a3 inRep:(id)a4 openInEditMode:(BOOL)a5;
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

- (void)setSelection:(id)a3 onModel:(id)a4 withFlags:(unint64_t)a5
{
  v5.receiver = self;
  v5.super_class = THGlossaryInteractiveCanvasController;
  [(THInteractiveCanvasController *)&v5 setSelection:a3 onModel:a4 withFlags:a5 & 0xFFFFFFFFFFFFFFAFLL];
}

- (void)p_dismissSearchKeyboard
{
  v2 = [NSNotification notificationWithName:kTHGlossaryDismissSearchNotification object:self];
  v3 = +[NSNotificationCenter defaultCenter];

  [(NSNotificationCenter *)v3 postNotification:v2];
}

- (BOOL)handleGesture:(id)a3
{
  [(THGlossaryInteractiveCanvasController *)self p_dismissSearchKeyboard];
  v6.receiver = self;
  v6.super_class = THGlossaryInteractiveCanvasController;
  return [(THInteractiveCanvasController *)&v6 handleGesture:a3];
}

- (void)showHyperlinkInfoForField:(id)a3 inRep:(id)a4 openInEditMode:(BOOL)a5
{
  v6 = [(THInteractiveCanvasController *)self linkForHyperlinkField:a3, a4, a5];
  mLinkHandler = self->mLinkHandler;
  if (!mLinkHandler)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    mLinkHandler = self->mLinkHandler;
  }

  [(THLinkTraversalDelegate *)mLinkHandler followLink:v6];
}

- (void)handleHyperlinkGesture:(id)a3
{
  if ([a3 state] == &dword_0 + 3)
  {
    if ([a3 wasTapHold])
    {
      +[TSWPEditMenuController hideEditMenu];
    }

    v5 = -[THInteractiveCanvasController linkForHyperlinkField:](self, "linkForHyperlinkField:", [a3 hitField]);
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