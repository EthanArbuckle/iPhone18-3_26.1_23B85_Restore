@interface THWAdornmentPanel
- (BOOL)autosizedCanvasControllerIsRelatedCanvasScrolling:(id)scrolling;
- (CGPoint)stackedControlContainerOrigin:(id)origin;
- (THWAdornmentPanel)initWithDelegate:(id)delegate kind:(int)kind expandedRep:(id)rep documentRoot:(id)root;
- (UIEdgeInsets)stackedControlContainerInsets:(id)insets;
- (double)height;
- (double)stackedControlContainer:(id)container leftRightInsetForTextLayout:(id)layout;
- (double)stackedControlContainer:(id)container verticalPaddingAfter:(id)after;
- (double)stackedControlContainerMinHeight:(id)height;
- (id)autosizedCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep;
- (id)autosizedCanvasController:(id)controller geometryProviderForLayout:(id)layout;
- (id)autosizedCanvasController:(id)controller primaryTargetForGesture:(id)gesture;
- (id)controlContainerAdditionalChildLayouts:(id)layouts;
- (id)p_styleProviderForLayout:(id)layout inPanel:(int)panel;
- (id)stackedControlContainer:(id)container layoutGeometryForLayout:(id)layout;
- (id)stackedControlContainer:(id)container styleProviderForLayout:(id)layout;
- (unsigned)stackedControlContainer:(id)container alignmentForLayout:(id)layout;
- (unsigned)stackedControlContainer:(id)container maxLineCountForLayout:(id)layout;
- (void)animateWithCrossFadeContent:(BOOL)content backgroundLayout:(BOOL)layout duration:(double)duration;
- (void)autosizedCanvasControllerDidResize:(id)resize;
- (void)dealloc;
- (void)invalidateChildren;
- (void)invalidateLayoutsAndFrames;
- (void)invalidateWPAuto;
- (void)layoutIfNeeded;
- (void)layoutPanel;
- (void)p_didLayout;
- (void)p_unhideViewIfNeeded;
@end

@implementation THWAdornmentPanel

- (THWAdornmentPanel)initWithDelegate:(id)delegate kind:(int)kind expandedRep:(id)rep documentRoot:(id)root
{
  v20.receiver = self;
  v20.super_class = THWAdornmentPanel;
  v10 = [(THWAdornmentPanel *)&v20 init];
  v11 = v10;
  if (v10)
  {
    v10->_delegate = delegate;
    v10->_kind = kind;
    v10->_stackedControlContainer = [[THWStackedControlContainer alloc] initWithDelegate:v10];
    v11->_autosizedCanvasController = [[THWAutosizedCanvasController alloc] initWithDelegate:v11 documentRoot:root];
    v11->_expandedRep = rep;
    v12 = [TSWOverlayPanelView alloc];
    [(THWAdornmentPanelDelegate *)v11->_delegate adornmentPanelWidth:v11];
    v14 = v13;
    [(THWAdornmentPanelDelegate *)v11->_delegate adornmentPanelMinHeight:v11];
    v16 = [(TSWOverlayPanelView *)v12 initWithFrame:0.0, 0.0, v14, v15];
    v11->_view = v16;
    [(TSWOverlayPanelView *)v16 setAutoresizingMask:2];
    [(TSWOverlayPanelView *)v11->_view setTsdAlpha:0.0];
    canvasView = [(THWAutosizedCanvasController *)v11->_autosizedCanvasController canvasView];
    -[TSDCanvasView setTsdBackgroundColor:](canvasView, "setTsdBackgroundColor:", [+[TSUColor clearColor](TSUColor "clearColor")]);
    [(TSDCanvasView *)canvasView setUserInteractionEnabled:1];
    [(TSDCanvasView *)canvasView setClipsToBounds:0];
    [(TSDInteractiveCanvasController *)[(THWAutosizedCanvasController *)v11->_autosizedCanvasController interactiveCanvasController] setCreateRepsForOffscreenLayouts:1];
    [(TSWOverlayPanelView *)v11->_view addSubview:canvasView];
    if (v11->_stackedControlContainer)
    {
      [(TSDInteractiveCanvasController *)[(THWAutosizedCanvasController *)v11->_autosizedCanvasController interactiveCanvasController] setInfosToDisplay:[NSArray arrayWithObject:?]];
    }

    if (objc_opt_respondsToSelector())
    {
      v18 = [(THWExpandedRep *)v11->_expandedRep expandedAppearanceForPanel:v11->_kind];
    }

    else
    {
      v18 = &dword_0 + 1;
    }

    [(TSWOverlayPanelView *)v11->_view setAppearance:v18];
  }

  return v11;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = THWAdornmentPanel;
  [(THWAdornmentPanel *)&v3 dealloc];
}

- (void)invalidateChildren
{
  v2 = [objc_msgSend(-[THWAdornmentPanel interactiveCanvasController](self "interactiveCanvasController")];

  [v2 invalidateChildren];
}

- (void)invalidateWPAuto
{
  v2 = [objc_msgSend(-[THWAdornmentPanel interactiveCanvasController](self "interactiveCanvasController")];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = [v2 children];
  v4 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(children);
        }

        objc_opt_class();
        v8 = TSUDynamicCast();
        [v8 invalidateTextLayout];
        [v8 invalidateMaxAutoGrowWidth];
        ++v7;
      }

      while (v5 != v7);
      v5 = [children countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)layoutIfNeeded
{
  interactiveCanvasController = [(THWAdornmentPanel *)self interactiveCanvasController];

  [interactiveCanvasController layoutIfNeeded];
}

- (void)invalidateLayoutsAndFrames
{
  [(THWAutosizedCanvasController *)self->_autosizedCanvasController invalidateLayoutsAndFrames];

  [(THWAdornmentPanel *)self p_unhideViewIfNeeded];
}

- (double)height
{
  view = self->_view;
  if (!view)
  {
    return 0.0;
  }

  [(TSWOverlayPanelView *)view frame];
  return v3;
}

- (void)p_unhideViewIfNeeded
{
  if ([(TSWOverlayPanelView *)self->_view isHidden])
  {
    [(TSWOverlayPanelView *)self->_view setHidden:0];
    layer = [(TSWOverlayPanelView *)self->_view layer];

    [layer setOpacity:0.0];
  }
}

- (void)animateWithCrossFadeContent:(BOOL)content backgroundLayout:(BOOL)layout duration:(double)duration
{
  layoutCopy = layout;
  contentCopy = content;
  [(THWAdornmentPanel *)self p_unhideViewIfNeeded];
  *&self->_hasBeenSizedDuringAnimation = 256;
  self->_animationDuration = duration;
  interactiveCanvasController = [(THWAutosizedCanvasController *)self->_autosizedCanvasController interactiveCanvasController];
  if (layoutCopy)
  {
    [(TSDInteractiveCanvasController *)interactiveCanvasController forceBackgroundLayout];
  }

  if (contentCopy)
  {
    v10 = +[CATransition animation];
    [v10 setType:kCATransitionFade];
    [v10 setDuration:duration];
    layer = [(TSDCanvasView *)[(THWAutosizedCanvasController *)self->_autosizedCanvasController canvasView] layer];

    [layer addAnimation:v10 forKey:@"fadeAnimation"];
  }
}

- (id)autosizedCanvasController:(id)controller geometryProviderForLayout:(id)layout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  expandedRep = self->_expandedRep;

  return [(THWExpandedRep *)expandedRep expandedLayoutGeometryProvider];
}

- (id)autosizedCanvasController:(id)controller primaryTargetForGesture:(id)gesture
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  expandedRep = self->_expandedRep;
  kind = self->_kind;

  return [(THWExpandedRep *)expandedRep expandedPanel:kind primaryTargetForGesture:gesture];
}

- (BOOL)autosizedCanvasControllerIsRelatedCanvasScrolling:(id)scrolling
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  expandedRep = self->_expandedRep;

  return [(THWExpandedRep *)expandedRep expandedIsRelatedCanvasScrolling];
}

- (void)layoutPanel
{
  [(THWAutosizedCanvasController *)self->_autosizedCanvasController canvasLayoutSize];
  if (!self->_hasBeenSized)
  {
    [(THWAdornmentPanelDelegate *)self->_delegate adornmentPanelWidth:self];
  }

  [(THWAdornmentPanelDelegate *)self->_delegate adornmentPanel:self frameForSize:?];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  [(TSWOverlayPanelView *)self->_view frame];
  v14.origin.x = v4;
  v14.origin.y = v6;
  v14.size.width = v8;
  v14.size.height = v10;
  if (CGRectEqualToRect(v13, v14))
  {
    if (self->_hasBeenSizedDuringAnimation)
    {
      self->_animatingPanel = 0;
    }

    self->_hasBeenSizedDuringAnimation = 0;
  }

  else if (self->_animatingPanel && self->_animationDuration > 0.0)
  {
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_14A39C;
    v12[3] = &unk_45B1D0;
    v12[4] = self;
    *&v12[5] = v4;
    *&v12[6] = v6;
    *&v12[7] = v8;
    *&v12[8] = v10;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_14A3B0;
    v11[3] = &unk_45B188;
    v11[4] = self;
    [UIView animateWithDuration:v12 animations:v11 completion:?];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    [(TSWOverlayPanelView *)self->_view setFrame:v4, v6, v8, v10];
    +[CATransaction commit];
    *&self->_hasBeenSizedDuringAnimation = 0;
  }
}

- (void)p_didLayout
{
  self->_hasBeenSized = 1;
  if (self->_animatingPanel)
  {
    self->_hasBeenSizedDuringAnimation = 1;
  }

  [(THWAdornmentPanelDelegate *)self->_delegate adornmentPanelDidLayout:self];
}

- (void)autosizedCanvasControllerDidResize:(id)resize
{
  if (+[NSThread isMainThread])
  {

    [(THWAdornmentPanel *)self p_didLayout];
  }
}

- (id)autosizedCanvasController:(id)controller delegateConformingToProtocol:(id)protocol forRep:(id)rep
{
  result = [rep parentRep];
  if (result)
  {
    if (protocol_isEqual(protocol, &OBJC_PROTOCOL___TSDLayoutGeometryProvider) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      expandedRep = self->_expandedRep;

      return [(THWExpandedRep *)expandedRep expandedLayoutGeometryProvider];
    }

    else if ([(THWExpandedRep *)self->_expandedRep conformsToProtocol:protocol])
    {
      return self->_expandedRep;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

- (id)controlContainerAdditionalChildLayouts:(id)layouts
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  expandedRep = self->_expandedRep;
  kind = self->_kind;

  return [(THWExpandedRep *)expandedRep expandedAdditionalChildLayoutsForPanel:kind];
}

- (CGPoint)stackedControlContainerOrigin:(id)origin
{
  x = CGPointZero.x;
  y = CGPointZero.y;
  result.y = y;
  result.x = x;
  return result;
}

- (UIEdgeInsets)stackedControlContainerInsets:(id)insets
{
  v4 = objc_opt_respondsToSelector();
  v5 = 10.0;
  v6 = 10.0;
  v7 = 10.0;
  v8 = 10.0;
  if (v4)
  {
    [(THWExpandedRep *)self->_expandedRep expandedStackedControlContainerInsetsForPanel:self->_kind withDefault:10.0, 10.0, 10.0, 10.0];
  }

  result.right = v5;
  result.bottom = v6;
  result.left = v7;
  result.top = v8;
  return result;
}

- (double)stackedControlContainer:(id)container verticalPaddingAfter:(id)after
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 10.0;
  }

  expandedRep = self->_expandedRep;
  kind = self->_kind;

  [(THWExpandedRep *)expandedRep expandedVerticalPaddingAfterForLayout:after inPanel:kind];
  return result;
}

- (id)stackedControlContainer:(id)container layoutGeometryForLayout:(id)layout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  [(THWAdornmentPanel *)self stackedControlContainerInsets:container];
  expandedRep = self->_expandedRep;
  kind = self->_kind;
  [(THWAdornmentPanelDelegate *)self->_delegate adornmentPanelWidth:self];

  return [THWExpandedRep expandedLayoutGeometryForLayout:"expandedLayoutGeometryForLayout:inPanel:withWidth:insets:" inPanel:layout withWidth:kind insets:?];
}

- (unsigned)stackedControlContainer:(id)container alignmentForLayout:(id)layout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 4;
  }

  expandedRep = self->_expandedRep;
  kind = self->_kind;

  return [(THWExpandedRep *)expandedRep expandedAlignmentForLayout:layout inPanel:kind];
}

- (id)p_styleProviderForLayout:(id)layout inPanel:(int)panel
{
  v5 = -[THWAdornmentWPStyleProvider initWithStorage:]([THWAdornmentWPStyleProvider alloc], "initWithStorage:", [layout info]);
  if ([(TSWOverlayPanelView *)self->_view appearance])
  {
    v6 = [(TSWOverlayPanelView *)self->_view appearance]== 2 && [(THWAdornmentPanelDelegate *)[(THWAdornmentPanel *)self delegate] adornmentPanelBackgroundAppearance:self]== 0;
  }

  else
  {
    v6 = 1;
  }

  [(THWAdornmentWPStyleProvider *)v5 setUseDarkAppearance:v6];
  [(THWAdornmentPanelDelegate *)self->_delegate adornmentPanelFontSize:self];
  [(THWAdornmentWPStyleProvider *)v5 setFontSize:?];
  [(THWAdornmentWPStyleProvider *)v5 setFontName:[(THWAdornmentPanelDelegate *)self->_delegate adornmentPanelFontName:self]];
  [(THWAdornmentWPStyleProvider *)v5 setTextAlignment:0];
  return v5;
}

- (id)stackedControlContainer:(id)container styleProviderForLayout:(id)layout
{
  v7 = [(THWAdornmentPanel *)self p_styleProviderForLayout:layout inPanel:self->_kind];
  v8 = [(THWAdornmentPanel *)self stackedControlContainer:container alignmentForLayout:layout];
  if (self->_kind)
  {
    v9 = v8;
    v10 = 0.0;
  }

  else
  {
    v11 = [[TSWPText alloc] initWithParagraphStyle:{objc_msgSend(v7, "paragraphStyleAtParIndex:effectiveRange:", 0, 0)}];
    [v11 setStyleProvider:v7];
    [v11 measureStorage:{objc_msgSend(layout, "info")}];
    v13 = v12;
    [(THWAdornmentPanel *)self stackedControlContainerWidth:container];
    v15 = v14;
    [(THWAdornmentPanel *)self stackedControlContainerInsets:container];
    v18 = (v15 - v16 - v17 - v13) * 0.5;
    [(THWAdornmentPanelDelegate *)self->_delegate adornmentPanelTitleLeftIndent:self];
    v20 = v18 > v19;
    if (v18 <= v19)
    {
      v10 = v19;
    }

    else
    {
      v10 = 0.0;
    }

    v9 = (2 * v20);
  }

  [v7 setTextAlignment:v9];
  [v7 setLeftIndent:v10];
  return v7;
}

- (unsigned)stackedControlContainer:(id)container maxLineCountForLayout:(id)layout
{
  if (self->_kind)
  {
    v6 = 0;
  }

  else if (TSUPadUI())
  {
    v6 = 1;
  }

  else
  {
    v6 = 10;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v6;
  }

  expandedRep = self->_expandedRep;
  kind = self->_kind;

  return [(THWExpandedRep *)expandedRep expandedMaxLineCountForTextLayout:layout inPanel:kind withDefault:v6];
}

- (double)stackedControlContainer:(id)container leftRightInsetForTextLayout:(id)layout
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 10.0;
  }

  expandedRep = self->_expandedRep;
  kind = self->_kind;

  [(THWExpandedRep *)expandedRep expandedLeftRightInsetForTextLayout:layout inPanel:kind];
  return result;
}

- (double)stackedControlContainerMinHeight:(id)height
{
  if (self->_kind > 1u)
  {
    return 0.0;
  }

  [(THWAdornmentPanelDelegate *)self->_delegate adornmentPanelMinHeight:self];
  return result;
}

@end