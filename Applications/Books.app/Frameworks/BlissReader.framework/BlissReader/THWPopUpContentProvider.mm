@interface THWPopUpContentProvider
- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)controller;
- (CGSize)unscaledContentSizeForFillScreen;
- (THWPopUpContentProvider)initWithPopUpInfo:(id)info scale:(double)scale documentRoot:(id)root scrollableCanvasHost:(id)host bookNavigator:(id)navigator documentNavigator:(id)documentNavigator;
- (TSWPopoverTheme)popoverTheme;
- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)controller;
- (UIEdgeInsets)p_scaledEdgeInsets:(UIEdgeInsets)insets;
- (UIEdgeInsets)scrollViewContentInsetForScrollableCanvasController:(id)controller;
- (UIView)popoverContentView;
- (id)scrollableCanvasController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture;
- (id)scrollableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport;
- (void)dealloc;
- (void)disableCanvasInteraction;
- (void)displayModeDidChange:(int)change;
- (void)p_updateWithSettings:(id)settings;
- (void)teardown;
@end

@implementation THWPopUpContentProvider

- (THWPopUpContentProvider)initWithPopUpInfo:(id)info scale:(double)scale documentRoot:(id)root scrollableCanvasHost:(id)host bookNavigator:(id)navigator documentNavigator:(id)documentNavigator
{
  v16.receiver = self;
  v16.super_class = THWPopUpContentProvider;
  v14 = [(THWPopUpContentProvider *)&v16 init];
  if (v14)
  {
    v14->_popupInfo = info;
    v14->_documentRoot = root;
    v14->_scrollableCanvasHost = host;
    v14->_scale = scale;
    v14->_bookNavigator = navigator;
    v14->_documentNavigator = documentNavigator;
    v14->_scrollableCanvasController = [[THWScrollableCanvasController alloc] initWithDocumentRoot:root];
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

- (void)p_updateWithSettings:(id)settings
{
  [(THWScrollableCanvasController *)self->_scrollableCanvasController createViewIfNeededWithFrame:settings viewScale:0.0, 0.0, 100.0, 100.0, 1.0];
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
  scrollView = [(THWScrollableCanvasController *)self->_scrollableCanvasController scrollView];

  [(TSKScrollView *)scrollView setScrollIndicatorInsets:4.0, 0.0, 0.0, 2.0 - v21];
}

- (UIView)popoverContentView
{
  scrollableCanvasController = [(THWPopUpContentProvider *)self scrollableCanvasController];

  return [(THWScrollableCanvasController *)scrollableCanvasController mainView];
}

- (TSWPopoverTheme)popoverTheme
{
  popupInfo = [(THWPopUpContentProvider *)self popupInfo];

  return [(TSWPopUpInfo *)popupInfo popoverTheme];
}

- (void)teardown
{
  [(THWScrollableCanvasController *)[(THWPopUpContentProvider *)self scrollableCanvasController] teardownController];
  [(THWScrollableCanvasController *)[(THWPopUpContentProvider *)self scrollableCanvasController] teardownView];
  scrollableCanvasController = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)scrollableCanvasController setDelegate:0];
}

- (void)displayModeDidChange:(int)change
{
  v3 = *&change;
  scrollableCanvasController = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)scrollableCanvasController displayModeDidChange:v3];
}

- (CGSize)unscaledContentSizeForFillScreen
{
  scrollableCanvasController = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)scrollableCanvasController unscaledContentSizeForFillScreen];
  result.height = v4;
  result.width = v3;
  return result;
}

- (void)disableCanvasInteraction
{
  scrollableCanvasController = [(THWPopUpContentProvider *)self scrollableCanvasController];

  [(THWScrollableCanvasController *)scrollableCanvasController disableCanvasInteraction];
}

- (CGSize)sizeOfCanvasForScrollableCanvasController:(id)controller
{
  frameViewSettings = [(TSWPopUpInfo *)[(THWPopUpContentProvider *)self popupInfo] frameViewSettings];

  [frameViewSettings frameCanvasSize];
  result.height = v5;
  result.width = v4;
  return result;
}

- (id)scrollableCanvasController:(id)controller infosToDisplayForViewport:(CGRect)viewport
{
  frameViewSettings = [(TSWPopUpInfo *)[(THWPopUpContentProvider *)self popupInfo:controller] frameViewSettings];

  return [frameViewSettings frameCanvasInfos];
}

- (UIEdgeInsets)p_scaledEdgeInsets:(UIEdgeInsets)insets
{
  right = insets.right;
  bottom = insets.bottom;
  left = insets.left;
  top = insets.top;
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

- (UIEdgeInsets)contentInsetsForScrollableCanvasController:(id)controller
{
  [-[TSWPopUpInfo frameViewSettings](-[THWPopUpContentProvider popupInfo](self popupInfo];

  [(THWPopUpContentProvider *)self p_scaledEdgeInsets:?];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (id)scrollableCanvasController:(id)controller actionForHyperlink:(id)hyperlink inRep:(id)rep gesture:(id)gesture
{
  [(THWPopUpContentProvider *)self scrollableCanvasHost];
  v9 = TSUProtocolCast();

  return [v9 actionForHyperlink:hyperlink inRep:rep gesture:gesture];
}

- (UIEdgeInsets)scrollViewContentInsetForScrollableCanvasController:(id)controller
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