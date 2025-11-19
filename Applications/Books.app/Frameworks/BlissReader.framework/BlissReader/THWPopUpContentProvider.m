@interface THWPopUpContentProvider
- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)a3;
- (CGSize)unscaledContentSizeForFillScreen;
- (THWPopUpContentProvider)initWithPopUpInfo:(id)a3 scale:(double)a4 documentRoot:(id)a5 scrollableCanvasHost:(id)a6 bookNavigator:(id)a7 documentNavigator:(id)a8;
- (TSWPopoverTheme)popoverTheme;
- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)a3;
- (UIEdgeInsets)p_scaledEdgeInsets:(UIEdgeInsets)a3;
- (UIEdgeInsets)scrollViewContentInsetForScrollableCanvasController:(id)a3;
- (UIView)popoverContentView;
- (id)scrollableCanvasController:(id)a3 actionForHyperlink:(id)a4 inRep:(id)a5 gesture:(id)a6;
- (id)scrollableCanvasController:(id)a3 infosToDisplayForViewport:(CGRect)a4;
- (void)dealloc;
- (void)disableCanvasInteraction;
- (void)displayModeDidChange:(int)a3;
- (void)p_updateWithSettings:(id)a3;
- (void)teardown;
@end

@implementation THWPopUpContentProvider

- (THWPopUpContentProvider)initWithPopUpInfo:(id)a3 scale:(double)a4 documentRoot:(id)a5 scrollableCanvasHost:(id)a6 bookNavigator:(id)a7 documentNavigator:(id)a8
{
  v16.receiver = self;
  v16.super_class = THWPopUpContentProvider;
  v14 = [(THWPopUpContentProvider *)&v16 init];
  if (v14)
  {
    v14->_popupInfo = a3;
    v14->_documentRoot = a5;
    v14->_scrollableCanvasHost = a6;
    v14->_scale = a4;
    v14->_bookNavigator = a7;
    v14->_documentNavigator = a8;
    v14->_scrollableCanvasController = [[THWScrollableCanvasController alloc] initWithDocumentRoot:a5];
    [(THWScrollableCanvasController *)[(THWPopUpContentProvider *)v14 scrollableCanvasController] setDelegate:v14];
    [(THWPopUpContentProvider *)v14 p_updateWithSettings:[(TSWPopUpInfo *)[(THWPopUpContentProvider *)v14 popupInfo] frameViewSettings]];
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWPopUpContentProvider;
  [(THWPopUpContentProvider *)&v3 dealloc];
}

- (void)p_updateWithSettings:(id)a3
{
  [(THWScrollableCanvasController *)self->_scrollableCanvasController createViewIfNeededWithFrame:a3 viewScale:0.0, 0.0, 100.0, 100.0, 1.0];
  [(TSKScrollView *)[(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView] setMayPassScrollEventsToNextResponder:0];
  if ([(THWScrollableCanvasController *)self->_scrollableCanvasController mainView])
  {
    [-[TSWPopUpInfo frameViewSettings](-[THWPopUpContentProvider popupInfo](self "popupInfo")];
    [(THWPopUpContentProvider *)self scale];
    [(THWPopUpContentProvider *)self scale];
    TSDRectWithOriginAndSize();
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;
    scrollableCanvasController = self->_scrollableCanvasController;
    [(THWPopUpContentProvider *)self scale];
    [(THWScrollableCanvasController *)scrollableCanvasController setFrame:v5 scale:v7, v9, v11, v13];
  }

  [-[TSWPopUpInfo frameViewSettings](-[THWPopUpContentProvider popupInfo](self "popupInfo")];
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v21 = v20;
  [(UIView *)[(THWScrollableCanvasController *)self->_scrollableCanvasController mainView] bounds];
  [(TSKScrollView *)[(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView] setFrame:v17 + v22, v15 + v23, v24 - (v17 + v21), v25 - (v15 + v19)];
  v26 = [(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView];

  [(TSKScrollView *)v26 setScrollIndicatorInsets:4.0, 0.0, 0.0, 2.0 - v21];
}

- (UIView)popoverContentView
{
  v2 = [(THWPopUpContentProvider *)self scrollableCanvasController];

  return [(THWScrollableCanvasController *)v2 mainView];
}

- (TSWPopoverTheme)popoverTheme
{
  v2 = [(THWPopUpContentProvider *)self popupInfo];

  return [(TSWPopUpInfo *)v2 popoverTheme];
}

- (void)teardown
{
  [(THWScrollableCanvasController *)[(THWPopUpContentProvider *)self scrollableCanvasController] teardownController];
  [(THWScrollableCanvasController *)[(THWPopUpContentProvider *)self scrollableCanvasController] teardownView];
  v3 = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)v3 setDelegate:0];
}

- (void)displayModeDidChange:(int)a3
{
  v3 = *&a3;
  v4 = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)v4 displayModeDidChange:v3];
}

- (CGSize)unscaledContentSizeForFillScreen
{
  v2 = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)v2 unscaledContentSizeForFillScreen];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)disableCanvasInteraction
{
  v2 = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)v2 disableCanvasInteraction];
}

- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)a3
{
  v3 = [(TSWPopUpInfo *)[(THWPopUpContentProvider *)self popupInfo] frameViewSettings];

  [v3 frameCanvasSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)scrollableCanvasController:(id)a3 infosToDisplayForViewport:(CGRect)a4
{
  v4 = [(TSWPopUpInfo *)[(THWPopUpContentProvider *)self popupInfo:a3] frameViewSettings];

  return [v4 frameCanvasInfos];
}

- (UIEdgeInsets)p_scaledEdgeInsets:(UIEdgeInsets)a3
{
  right = a3.right;
  bottom = a3.bottom;
  left = a3.left;
  top = a3.top;
  [(THWPopUpContentProvider *)self scale];
  v9 = top * v8;
  [(THWPopUpContentProvider *)self scale];
  v11 = left * v10;
  [(THWPopUpContentProvider *)self scale];
  v13 = bottom * v12;
  [(THWPopUpContentProvider *)self scale];
  v15 = right * v14;
  v16 = v9;
  v17 = v11;
  v18 = v13;
  result.right = v15;
  result.bottom = v18;
  result.left = v17;
  result.top = v16;
  return result;
}

- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)a3
{
  [-[TSWPopUpInfo frameViewSettings](-[THWPopUpContentProvider popupInfo](self popupInfo];

  [(THWPopUpContentProvider *)self p_scaledEdgeInsets:?];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)scrollableCanvasController:(id)a3 actionForHyperlink:(id)a4 inRep:(id)a5 gesture:(id)a6
{
  [(THWPopUpContentProvider *)self scrollableCanvasHost];
  v9 = TSUProtocolCast();

  return [v9 actionForHyperlink:a4 inRep:a5 gesture:a6];
}

- (UIEdgeInsets)scrollViewContentInsetForScrollableCanvasController:(id)a3
{
  v3 = 4.0;
  v4 = 0.0;
  v5 = 4.0;
  v6 = 0.0;
  result.right = v6;
  result.bottom = v5;
  result.left = v4;
  result.top = v3;
  return result;
}

@end