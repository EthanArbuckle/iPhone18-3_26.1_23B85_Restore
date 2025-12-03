@interface THWAdornmentController
- (BOOL)attemptToPerformCloseButtonAction;
- (BOOL)hasRoomForPanels;
- (BOOL)p_combineBottomAndControlPanels;
- (BOOL)p_forceButtonVisible;
- (BOOL)p_panelVisible:(int)visible default:(BOOL)default forced:(BOOL)forced;
- (CGRect)adornmentPanel:(id)panel frameForSize:(CGSize)size;
- (CGRect)closeButtonFrame;
- (CGRect)layoutFrame;
- (THWAdornmentController)initWithExpandedRep:(id)rep documentRoot:(id)root;
- (double)adornmentPanelFontSize:(id)size;
- (double)adornmentPanelMinHeight:(id)height;
- (double)heightForPanel:(int)panel allowDefault:(BOOL)default;
- (id)adornmentPanelFontName:(id)name;
- (id)adornmentTrackingRects;
- (id)p_panelForKind:(int)kind;
- (void)addAdornmentViewsToView:(id)view;
- (void)adornmentPanelDidLayout:(id)layout;
- (void)animatePanel:(int)panel withCrossFadeContent:(BOOL)content backgroundLayout:(BOOL)layout duration:(double)duration;
- (void)controllerWillAnimateToSize:(CGSize)size duration:(double)duration inFrame:(CGRect)frame;
- (void)dealloc;
- (void)invalidateChildrenInPanel:(int)panel;
- (void)invalidateLayouts;
- (void)invalidateWPAutoInPanel:(int)panel;
- (void)layoutInFrame:(CGRect)frame;
- (void)p_createViews;
- (void)p_handleClose:(id)close;
- (void)p_layoutPanels;
- (void)p_updateAdornmentVisibilityAnimated:(BOOL)animated forced:(BOOL)forced completionBlock:(id)block;
- (void)p_updateCloseButton;
- (void)setAdornmentsVisible:(BOOL)visible;
- (void)setAdornmentsVisible:(BOOL)visible animated:(BOOL)animated completionBlock:(id)block;
- (void)setAdornmentsVisible:(BOOL)visible buttonVisible:(BOOL)buttonVisible controlsVisible:(BOOL)controlsVisible forceVisibility:(BOOL)visibility animated:(BOOL)animated completionBlock:(id)block;
- (void)teardown;
- (void)toggleVisibility;
@end

@implementation THWAdornmentController

- (THWAdornmentController)initWithExpandedRep:(id)rep documentRoot:(id)root
{
  v8.receiver = self;
  v8.super_class = THWAdornmentController;
  v6 = [(THWAdornmentController *)&v8 init];
  if (v6)
  {
    v6->_expandedRep = rep;
    v6->_documentRoot = root;
  }

  return v6;
}

- (void)dealloc
{
  if (![(THWAdornmentController *)self tornDown])
  {
    [(THWAdornmentController *)self teardown];
  }

  v3.receiver = self;
  v3.super_class = THWAdornmentController;
  [(THWAdornmentController *)&v3 dealloc];
}

- (void)teardown
{
  [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] setTarget:0 action:0];
  [(THWAdornmentPanel *)self->_topPanel teardown];
  [(THWAdornmentPanel *)self->_bottomPanel teardown];
  [(THWAdornmentPanel *)self->_controlPanel teardown];

  [(THWAdornmentController *)self setTornDown:1];
}

- (void)p_createViews
{
  if (self->_topPanel)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->_bottomPanel)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->_controlPanel)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (self->_closeButton)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  if (objc_opt_respondsToSelector())
  {
    expandedAppearance = [(THWExpandedRep *)self->_expandedRep expandedAppearance];
  }

  else
  {
    expandedAppearance = &dword_0 + 1;
  }

  [(THWAdornmentController *)self setAppearance:expandedAppearance];
  if ([(THWExpandedRep *)self->_expandedRep expandedHasContentForPanel:0])
  {
    self->_topPanel = [[THWAdornmentPanel alloc] initWithDelegate:self kind:0 expandedRep:self->_expandedRep documentRoot:[(THWAdornmentController *)self documentRoot]];
    if ([(THWAdornmentControllerDelegate *)[(THWAdornmentController *)self delegate] adornmentController:self allowWindowMoveForPanel:0])
    {
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_topPanel view] setAllowWindowMoveForPanel:1];
    }
  }

  if ([(THWExpandedRep *)self->_expandedRep expandedHasContentForPanel:1])
  {
    self->_bottomPanel = [[THWAdornmentPanel alloc] initWithDelegate:self kind:1 expandedRep:self->_expandedRep documentRoot:[(THWAdornmentController *)self documentRoot]];
    if ([(THWAdornmentControllerDelegate *)[(THWAdornmentController *)self delegate] adornmentController:self allowWindowMoveForPanel:1])
    {
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_bottomPanel view] setAllowWindowMoveForPanel:1];
    }

    [(THWAutosizedCanvasController *)[(THWAdornmentPanel *)self->_bottomPanel autosizedCanvasController] setupImmediatePressGesture];
    interactiveCanvasController = [(THWAutosizedCanvasController *)[(THWAdornmentPanel *)self->_bottomPanel autosizedCanvasController] interactiveCanvasController];
    v5 = [THShortTapGestureRecognizer alloc];
    gestureDispatcher = [(TSDInteractiveCanvasController *)interactiveCanvasController gestureDispatcher];
    v7 = [(THShortTapGestureRecognizer *)v5 initWithGestureDispatcher:gestureDispatcher gestureKind:TSDShortTap];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](-[THWAutosizedCanvasController canvasViewController](-[THWAdornmentPanel autosizedCanvasController](self->_bottomPanel "autosizedCanvasController")];
    [(THShortTapGestureRecognizer *)v7 requireGestureRecognizerToFail:[(THWAutosizedCanvasController *)[(THWAdornmentPanel *)self->_bottomPanel autosizedCanvasController] immediatePressGesture]];
  }

  if ([(THWExpandedRep *)self->_expandedRep expandedHasContentForPanel:2])
  {
    self->_controlPanel = [[THWAdornmentPanel alloc] initWithDelegate:self kind:2 expandedRep:self->_expandedRep documentRoot:[(THWAdornmentController *)self documentRoot]];
    if ([(THWAdornmentControllerDelegate *)[(THWAdornmentController *)self delegate] adornmentController:self allowWindowMoveForPanel:2])
    {
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_controlPanel view] setAllowWindowMoveForPanel:1];
    }

    [(THWAutosizedCanvasController *)[(THWAdornmentPanel *)self->_controlPanel autosizedCanvasController] setupImmediatePressGesture];
    interactiveCanvasController2 = [(THWAutosizedCanvasController *)[(THWAdornmentPanel *)self->_controlPanel autosizedCanvasController] interactiveCanvasController];
    v9 = [THShortTapGestureRecognizer alloc];
    gestureDispatcher2 = [(TSDInteractiveCanvasController *)interactiveCanvasController2 gestureDispatcher];
    v11 = [(THShortTapGestureRecognizer *)v9 initWithGestureDispatcher:gestureDispatcher2 gestureKind:TSDShortTap];
    [-[TSDiOSCanvasViewController viewForGestureRecognizer:](-[THWAutosizedCanvasController canvasViewController](-[THWAdornmentPanel autosizedCanvasController](self->_controlPanel "autosizedCanvasController")];
    [(THShortTapGestureRecognizer *)v11 requireGestureRecognizerToFail:[(THWAutosizedCanvasController *)[(THWAdornmentPanel *)self->_controlPanel autosizedCanvasController] immediatePressGesture]];
  }

  [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_topPanel view] setBottomHairlineEnabled:1];
  [(THWAdornmentController *)self p_combineBottomAndControlPanels];
  bottomPanel = self->_bottomPanel;
  if (bottomPanel || (bottomPanel = self->_controlPanel) != 0)
  {
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)bottomPanel view] setTopHairlineEnabled:1];
  }

  if ([(THWAdornmentController *)self appearance]== 1)
  {
    v13 = [(THWAdornmentController *)self hasRoomForPanels]^ 1;
  }

  else
  {
    v13 = 1;
  }

  v14 = [THWAdornmentCloseButton alloc];
  [(THWAdornmentController *)self closeButtonFrame];
  [(THWAdornmentController *)self setCloseButton:[(THWAdornmentCloseButton *)v14 initWithFrame:v13 theme:?]];
  [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] setTarget:self action:"p_handleClose:"];
  closeButton = [(THWAdornmentController *)self closeButton];

  [(THWAdornmentCloseButton *)closeButton setEnabled:1];
}

- (CGRect)closeButtonFrame
{
  v3 = CGRectGetMinX(self->_layoutFrame) + 5.0;
  v4 = CGRectGetMinY(self->_layoutFrame) + 0.0;
  [(THWAdornmentController *)self p_statusBarOffset];
  v6 = v4 + v5;
  v7 = 100.0;
  v8 = v3;
  v9 = 100.0;
  result.size.height = v9;
  result.size.width = v7;
  result.origin.y = v6;
  result.origin.x = v8;
  return result;
}

- (void)p_updateCloseButton
{
  [(THWAdornmentController *)self closeButtonFrame];
  v4 = v3;
  v6 = v5;
  [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] frame];
  [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] setFrame:v4, v6, v7, v8];
  closeButton = [(THWAdornmentController *)self closeButton];

  [(THWAdornmentCloseButton *)closeButton updateImage];
}

- (BOOL)attemptToPerformCloseButtonAction
{
  closeButton = [(THWAdornmentController *)self closeButton];
  if (closeButton)
  {
    if (([(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] isHidden]& 1) != 0 || [(THWAdornmentController *)self animatingVisibilityCount])
    {
      LOBYTE(closeButton) = 0;
    }

    else
    {
      [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] sendActionsForControlEvents:64];
      LOBYTE(closeButton) = 1;
    }
  }

  return closeButton;
}

- (BOOL)p_panelVisible:(int)visible default:(BOOL)default forced:(BOOL)forced
{
  defaultCopy = default;
  if (forced)
  {
    return defaultCopy;
  }

  v6 = *&visible;
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return defaultCopy;
  }

  expandedRep = self->_expandedRep;

  return [(THWExpandedRep *)expandedRep expandedPanel:v6 isVisibleWithDefault:defaultCopy];
}

- (void)p_updateAdornmentVisibilityAnimated:(BOOL)animated forced:(BOOL)forced completionBlock:(id)block
{
  forcedCopy = forced;
  animatedCopy = animated;
  v9 = self->_adornmentsVisible && [(THWAdornmentController *)self hasRoomForPanels];
  v10 = [(THWAdornmentController *)self p_panelVisible:0 default:v9 forced:forcedCopy];
  hasRoomForPanels = 0;
  if (self->_adornmentsVisible)
  {
    hasRoomForPanels = [(THWAdornmentController *)self hasRoomForPanels];
  }

  v12 = [(THWAdornmentController *)self p_panelVisible:1 default:hasRoomForPanels forced:forcedCopy];
  v13 = [(THWAdornmentController *)self p_panelVisible:2 default:self->_controlsVisible forced:forcedCopy];
  v14 = v13;
  if (self->_buttonVisible)
  {
    v15 = 1.0;
  }

  else
  {
    v15 = 0.0;
  }

  if (v10)
  {
    v16 = 1.0;
  }

  else
  {
    v16 = 0.0;
  }

  if (v12)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  if (v13)
  {
    v18 = 1.0;
  }

  else
  {
    v18 = 0.0;
  }

  [(THWAdornmentController *)self delegate];
  if ((objc_opt_respondsToSelector() & 1) != 0 && ![(THWAdornmentControllerDelegate *)[(THWAdornmentController *)self delegate] shouldShowCloseButton])
  {
    v15 = 0.0;
  }

  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v24 = sub_14B820;
  v25 = &unk_45B2C0;
  selfCopy = self;
  v27 = v10;
  if (animatedCopy)
  {
    animatingVisibilityCount = self->_animatingVisibilityCount;
    if (!animatingVisibilityCount)
    {
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self topPanel] view] alphaAnimationWillBegin];
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self bottomPanel] view] alphaAnimationWillBegin];
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self controlPanel] view] alphaAnimationWillBegin];
      animatingVisibilityCount = self->_animatingVisibilityCount;
    }

    self->_animatingVisibilityCount = animatingVisibilityCount + 1;
    +[CATransaction begin];
    [CATransaction setAnimationTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut]];
    [CATransaction setAnimationDuration:0.4];
    if (objc_opt_respondsToSelector())
    {
      if (self->_topPanel)
      {
        [(THWExpandedRep *)self->_expandedRep expandedPanel:0 willAnimateToVisible:v10 duration:0.4];
      }

      if (self->_bottomPanel)
      {
        [(THWExpandedRep *)self->_expandedRep expandedPanel:1 willAnimateToVisible:v12 duration:0.4];
      }

      if (self->_controlPanel)
      {
        [(THWExpandedRep *)self->_expandedRep expandedPanel:2 willAnimateToVisible:v14 duration:0.4];
      }
    }

    v24(v23);
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_14B8C4;
    v22[3] = &unk_45DF68;
    *&v22[6] = v15;
    *&v22[7] = v16;
    *&v22[8] = v17;
    *&v22[9] = v18;
    v22[4] = self;
    v22[5] = block;
    [CATransaction setCompletionBlock:v22];
    [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] setHidden:0];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self topPanel] view] setHidden:0];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self bottomPanel] view] setHidden:0];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self controlPanel] view] setHidden:0];
    layer = [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] layer];
    v21 = 0.0;
    if (v15 == 0.0)
    {
      v21 = 0.3;
    }

    [layer addCABasicOpacityAnimationToValue:0 duration:v15 removedOnCompletion:v21];
    [-[TSWOverlayPanelView layer](-[THWAdornmentPanel view](-[THWAdornmentController topPanel](self "topPanel")];
    [-[TSWOverlayPanelView layer](-[THWAdornmentPanel view](-[THWAdornmentController bottomPanel](self "bottomPanel")];
    [-[TSWOverlayPanelView layer](-[THWAdornmentPanel view](-[THWAdornmentController controlPanel](self "controlPanel")];
  }

  else
  {
    +[CATransaction begin];
    [CATransaction setDisableActions:1];
    v24(v23);
    [-[THWAdornmentCloseButton layer](-[THWAdornmentController closeButton](self "closeButton")];
    [-[TSWOverlayPanelView layer](-[THWAdornmentPanel view](-[THWAdornmentController topPanel](self "topPanel")];
    [-[TSWOverlayPanelView layer](-[THWAdornmentPanel view](-[THWAdornmentController bottomPanel](self "bottomPanel")];
    [-[TSWOverlayPanelView layer](-[THWAdornmentPanel view](-[THWAdornmentController controlPanel](self "controlPanel")];
    [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] setTsdAlpha:v15];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self topPanel] view] setTsdAlpha:v16];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self bottomPanel] view] setTsdAlpha:v17];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self controlPanel] view] setTsdAlpha:v18];
    [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] setHidden:v15 == 0.0];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self topPanel] view] setHidden:v16 == 0.0];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self bottomPanel] view] setHidden:v17 == 0.0];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)[(THWAdornmentController *)self controlPanel] view] setHidden:v18 == 0.0];
    if (block)
    {
      (*(block + 2))(block);
    }
  }

  +[CATransaction commit];
}

- (void)p_handleClose:(id)close
{
  if (![(THWAdornmentController *)self animatingVisibilityCount])
  {
    delegate = [(THWAdornmentController *)self delegate];

    [(THWAdornmentControllerDelegate *)delegate handleCloseForAdornmentController:self];
  }
}

- (void)p_layoutPanels
{
  if (self->_panelLayoutDisabledCount)
  {
    return;
  }

  [(THWAdornmentControllerDelegate *)[(THWAdornmentController *)self delegate] safeAreaInsetsForAdornmentController:self];
  v4 = v3;
  v7 = -v6;
  v9 = -v8;
  [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_topPanel view] setAdditionalBackgroundInset:-v5, -v6, 0.0, -v8];
  bottomPanel = self->_bottomPanel;
  if (!bottomPanel)
  {
    v11 = -v4;
    bottomPanel = self->_controlPanel;
    goto LABEL_7;
  }

  v11 = -v4;
  if (!self->_controlPanel)
  {
LABEL_7:
    view = [(THWAdornmentPanel *)bottomPanel view];
    v14 = v7;
    v13 = v11;
    goto LABEL_8;
  }

  [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_controlPanel view] setAdditionalBackgroundInset:0.0, v7, v11, v9];
  view = [(THWAdornmentPanel *)self->_bottomPanel view];
  v13 = 0.0;
  v14 = v7;
LABEL_8:
  [(TSWOverlayPanelView *)view setAdditionalBackgroundInset:0.0, v14, v13, v9];
  [(THWAdornmentPanel *)self->_topPanel layoutPanel];
  [(THWAdornmentPanel *)self->_controlPanel layoutPanel];
  [(THWAdornmentPanel *)self->_bottomPanel layoutPanel];
  if (self->_bottomPanel && self->_controlPanel && [(THWAdornmentController *)self p_combineBottomAndControlPanels])
  {
    [(THWAdornmentPanel *)self->_controlPanel height];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_bottomPanel view] setAdditionalShadowInset:0.0, 0.0, -v15, 0.0];
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_controlPanel view] setBackdropGroupName:@"THWAdornmentControllerSharedBackdrop"];
    view2 = [(THWAdornmentPanel *)self->_bottomPanel view];

    [(TSWOverlayPanelView *)view2 setBackdropGroupName:@"THWAdornmentControllerSharedBackdrop"];
  }
}

- (void)layoutInFrame:(CGRect)frame
{
  self->_layoutFrame = frame;
  [(THWAdornmentController *)self p_layoutPanels];
  [(THWAdornmentController *)self p_updateCloseButton];
  [(THWAdornmentController *)self invalidateLayouts];

  [(THWAdornmentController *)self p_updateAdornmentVisibilityAnimated:0 forced:0 completionBlock:0];
}

- (void)addAdornmentViewsToView:(id)view
{
  +[CATransaction begin];
  if (![(THWAdornmentController *)self closeButton]|| [(THWExpandedRep *)self->_expandedRep expandedHasContentForPanel:0]&& !self->_topPanel || [(THWExpandedRep *)self->_expandedRep expandedHasContentForPanel:1]&& !self->_bottomPanel || [(THWExpandedRep *)self->_expandedRep expandedHasContentForPanel:2]&& !self->_controlPanel)
  {
    [(THWAdornmentController *)self p_createViews];
  }

  topPanel = self->_topPanel;
  if (topPanel)
  {
    [view addSubview:{-[THWAdornmentPanel view](topPanel, "view")}];
  }

  bottomPanel = self->_bottomPanel;
  if (bottomPanel)
  {
    [view addSubview:{-[THWAdornmentPanel view](bottomPanel, "view")}];
  }

  controlPanel = self->_controlPanel;
  if (controlPanel)
  {
    [view addSubview:{-[THWAdornmentPanel view](controlPanel, "view")}];
  }

  if (self->_closeButton)
  {
    [view addSubview:?];
  }

  if (self->_bottomPanel && self->_controlPanel && [(THWAdornmentController *)self p_combineBottomAndControlPanels])
  {
    [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_controlPanel view] setShadowOpacity:0.0];
  }

  [(THWAdornmentController *)self setAdornmentsVisible:0 buttonVisible:0 controlsVisible:0 forceVisibility:0 animated:0 completionBlock:0];

  +[CATransaction commit];
}

- (id)adornmentTrackingRects
{
  v3 = +[NSMutableArray array];
  if (self->_topPanel)
  {
    hasBeenSized = [(THWAdornmentPanel *)[(THWAdornmentController *)self topPanel] hasBeenSized];
    view = [(THWAdornmentPanel *)[(THWAdornmentController *)self topPanel] view];
    if (hasBeenSized)
    {
      [(TSWOverlayPanelView *)view frame];
    }

    else
    {
      [-[TSWOverlayPanelView superview](view "superview")];
      v6 = 0.0;
      v7 = 0.0;
    }

    [v3 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v6, v7)}];
  }

  bottomPanel = self->_bottomPanel;
  if (bottomPanel)
  {
    if (self->_controlPanel)
    {
      if ([(THWAdornmentPanel *)bottomPanel hasBeenSized])
      {
        [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_bottomPanel view] frame];
        v10 = v9;
        v12 = v11;
        v14 = v13;
        v16 = v15;
      }

      else
      {
        [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController bottomPanel](self "bottomPanel")];
        v12 = v20 + -44.0;
        [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController bottomPanel](self "bottomPanel")];
        v14 = v21;
        v10 = 0.0;
        v16 = 44.0;
      }

      if ([(THWAdornmentPanel *)self->_controlPanel hasBeenSized])
      {
        [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_controlPanel view] frame];
        v23 = v22;
        v25 = v24;
        v27 = v26;
        v29 = v28;
      }

      else
      {
        [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController controlPanel](self "controlPanel")];
        v25 = v30 + -44.0;
        [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController controlPanel](self "controlPanel")];
        v27 = v31;
        v23 = 0;
        v29 = 0x4046000000000000;
      }

      v43.origin.x = v10;
      v43.origin.y = v12;
      v43.size.width = v14;
      v43.size.height = v16;
      v32 = v25;
      v44 = CGRectUnion(v43, *&v23);
      y = v44.origin.y;
      goto LABEL_23;
    }

    if ([(THWAdornmentPanel *)bottomPanel hasBeenSized])
    {
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_bottomPanel view] frame];
      v19 = v18;
    }

    else
    {
      [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController bottomPanel](self "bottomPanel")];
      v19 = v34 + -44.0;
      [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController bottomPanel](self "bottomPanel")];
      v17 = 0.0;
    }

    [v3 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v17, v19)}];
  }

  controlPanel = self->_controlPanel;
  if (controlPanel)
  {
    if ([(THWAdornmentPanel *)controlPanel hasBeenSized])
    {
      [(TSWOverlayPanelView *)[(THWAdornmentPanel *)self->_controlPanel view] frame];
      y = v36;
    }

    else
    {
      [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController controlPanel](self "controlPanel")];
      y = v37 + -44.0;
      [-[TSWOverlayPanelView superview](-[THWAdornmentPanel view](-[THWAdornmentController controlPanel](self "controlPanel")];
      v44.origin.x = 0.0;
      v44.size.height = 44.0;
    }

LABEL_23:
    [v3 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", v44.origin.x, y, v44.size.width, v44.size.height)}];
  }

  if (!self->_topPanel && [(THWAdornmentController *)self closeButton])
  {
    [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] frame];
    v39 = v38;
    [-[THWAdornmentCloseButton superview](-[THWAdornmentController closeButton](self "closeButton")];
    v41 = v40;
    [(THWAdornmentCloseButton *)[(THWAdornmentController *)self closeButton] frame];
    [v3 addObject:{+[NSValue valueWithCGRect:](NSValue, "valueWithCGRect:", 0.0, v39, v41)}];
  }

  return v3;
}

- (void)controllerWillAnimateToSize:(CGSize)size duration:(double)duration inFrame:(CGRect)frame
{
  self->_layoutFrame = frame;
  ++self->_panelLayoutDisabledCount;
  v7 = 1;
  [(THWAdornmentPanel *)self->_topPanel animateWithCrossFadeContent:1 backgroundLayout:0 duration:duration, size.height];
  [(THWAdornmentPanel *)self->_bottomPanel animateWithCrossFadeContent:1 backgroundLayout:0 duration:duration];
  [(THWAdornmentPanel *)self->_controlPanel animateWithCrossFadeContent:1 backgroundLayout:0 duration:duration];
  [(THWAdornmentController *)self invalidateLayouts];
  if (![(THWAdornmentController *)self adornmentsVisible])
  {
    v7 = [(THWAdornmentController *)self hasRoomForPanels]^ 1;
  }

  [(THWAdornmentController *)self setAdornmentsVisible:v7];
  --self->_panelLayoutDisabledCount;

  [(THWAdornmentController *)self p_layoutPanels];
}

- (void)invalidateLayouts
{
  [(THWAdornmentPanel *)self->_topPanel invalidateLayoutsAndFrames];
  [(THWAdornmentPanel *)self->_bottomPanel invalidateLayoutsAndFrames];
  [(THWAdornmentPanel *)self->_controlPanel invalidateLayoutsAndFrames];
  [(THWAdornmentPanel *)self->_topPanel layoutIfNeeded];
  [(THWAdornmentPanel *)self->_bottomPanel layoutIfNeeded];
  [(THWAdornmentPanel *)self->_controlPanel layoutIfNeeded];

  [(THWAdornmentController *)self p_updateCloseButton];
}

- (void)toggleVisibility
{
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v3 = [(THWAdornmentController *)self adornmentsVisible]^ 1;

  [(THWAdornmentController *)self setAdornmentsVisible:v3 animated:1 completionBlock:0];
}

- (BOOL)p_combineBottomAndControlPanels
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  expandedRep = self->_expandedRep;

  return [(THWExpandedRep *)expandedRep expandedShouldCombineBottomAndControlPanels];
}

- (void)setAdornmentsVisible:(BOOL)visible
{
  visibleCopy = visible;
  self->_adornmentsVisible = visible;
  self->_buttonVisible = [(THWAdornmentController *)self p_forceButtonVisible]|| visible;
  self->_controlsVisible = [(THWAdornmentController *)self p_controlsVisibleWithAdornmentsVisible:visibleCopy];

  [(THWAdornmentController *)self p_updateAdornmentVisibilityAnimated:0 forced:0 completionBlock:0];
}

- (void)setAdornmentsVisible:(BOOL)visible animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  visibleCopy = visible;
  v9 = [(THWAdornmentController *)self p_controlsVisibleWithAdornmentsVisible:?];

  [(THWAdornmentController *)self setAdornmentsVisible:visibleCopy buttonVisible:visibleCopy controlsVisible:v9 forceVisibility:0 animated:animatedCopy completionBlock:block];
}

- (void)setAdornmentsVisible:(BOOL)visible buttonVisible:(BOOL)buttonVisible controlsVisible:(BOOL)controlsVisible forceVisibility:(BOOL)visibility animated:(BOOL)animated completionBlock:(id)block
{
  animatedCopy = animated;
  visibilityCopy = visibility;
  if (!+[NSThread isMainThread])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->_adornmentsVisible = visible;
  if (!visibilityCopy)
  {
    buttonVisible |= [(THWAdornmentController *)self p_forceButtonVisible];
    controlsVisible |= visible;
  }

  self->_buttonVisible = buttonVisible;
  self->_controlsVisible = controlsVisible;

  [(THWAdornmentController *)self p_updateAdornmentVisibilityAnimated:animatedCopy forced:visibilityCopy completionBlock:block];
}

- (BOOL)hasRoomForPanels
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 1;
  }

  [(THWAdornmentPanel *)self->_topPanel layoutIfNeeded];
  [(THWAdornmentPanel *)self->_bottomPanel layoutIfNeeded];
  [(THWAdornmentPanel *)self->_controlPanel layoutIfNeeded];
  [(THWAdornmentPanel *)self->_topPanel height];
  v4 = v3;
  [(THWAdornmentPanel *)self->_bottomPanel height];
  v6 = v4 + v5;
  [(THWAdornmentPanel *)self->_controlPanel height];
  v8 = v6 + v7;
  if (v8 == 0.0)
  {
    v8 = 44.0;
  }

  expandedRep = self->_expandedRep;
  x = self->_layoutFrame.origin.x;
  y = self->_layoutFrame.origin.y;
  width = self->_layoutFrame.size.width;
  height = self->_layoutFrame.size.height;

  return [(THWExpandedRep *)expandedRep expandedHasRoomForPanelsWithHeight:v8 inFrame:x, y, width, height];
}

- (BOOL)p_forceButtonVisible
{
  if ((objc_opt_respondsToSelector() & 1) == 0 || [(THWAdornmentController *)self hasRoomForPanels])
  {
    return 0;
  }

  expandedRep = self->_expandedRep;

  return [(THWExpandedRep *)expandedRep expandedWantsButtonVisibleWhenNoPanels];
}

- (double)adornmentPanelMinHeight:(id)height
{
  if ([height kind] >= 3)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 44.0;
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return v5;
  }

  expandedRep = self->_expandedRep;
  kind = [height kind];

  [(THWExpandedRep *)expandedRep expandedMinHeightForPanel:kind withDefault:v5];
  return result;
}

- (CGRect)adornmentPanel:(id)panel frameForSize:(CGSize)size
{
  TSDRoundedSize();
  TSDRectWithSize();
  v7 = v6;
  v9 = v8;
  [(THWAdornmentController *)self adornmentPanelMinHeight:panel];
  v11 = fmax(v9, v10);
  MinX = CGRectGetMinX(self->_layoutFrame);
  MinY = CGRectGetMinY(self->_layoutFrame);
  kind = [panel kind];
  if (kind == 2)
  {
    MaxY = CGRectGetMaxY(self->_layoutFrame);
    v24.origin.x = MinX;
    v24.origin.y = MinY;
    v24.size.width = v7;
    v24.size.height = v11;
    MinY = MaxY - CGRectGetHeight(v24);
  }

  else if (kind == 1)
  {
    v15 = CGRectGetMaxY(self->_layoutFrame);
    v23.origin.x = MinX;
    v23.origin.y = MinY;
    v23.size.width = v7;
    v23.size.height = v11;
    v16 = v15 - CGRectGetHeight(v23);
    [(THWAdornmentPanel *)self->_controlPanel height];
    MinY = v16 - v17;
  }

  v19 = MinX;
  v20 = MinY;
  v21 = v7;
  v22 = v11;
  result.size.height = v22;
  result.size.width = v21;
  result.origin.y = v20;
  result.origin.x = v19;
  return result;
}

- (void)adornmentPanelDidLayout:(id)layout
{
  [(THWAdornmentController *)self p_layoutPanels];
  [(THWAdornmentController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    delegate = [(THWAdornmentController *)self delegate];

    [(THWAdornmentControllerDelegate *)delegate updateTrackingRectsForAdornmentController:self];
  }
}

- (double)adornmentPanelFontSize:(id)size
{
  kind = [size kind];
  result = 10.0;
  if (kind < 3)
  {
    return 14.0;
  }

  return result;
}

- (id)adornmentPanelFontName:(id)name
{
  if ([name kind] || !TSUPhoneUI())
  {
    return 0;
  }

  v3 = [TSUFont systemFontOfSize:14.0];

  return [v3 fontName];
}

- (id)p_panelForKind:(int)kind
{
  if (kind > 2)
  {
    return 0;
  }

  else
  {
    return *(&self->_topPanel + (8 * kind));
  }
}

- (void)invalidateChildrenInPanel:(int)panel
{
  v3 = [(THWAdornmentController *)self p_panelForKind:*&panel];

  [v3 invalidateChildren];
}

- (void)invalidateWPAutoInPanel:(int)panel
{
  v3 = [(THWAdornmentController *)self p_panelForKind:*&panel];

  [v3 invalidateWPAuto];
}

- (double)heightForPanel:(int)panel allowDefault:(BOOL)default
{
  v6 = [(THWAdornmentController *)self p_panelForKind:?];
  [v6 height];
  if (v6)
  {
    defaultCopy = 0;
  }

  else
  {
    defaultCopy = default;
  }

  if (defaultCopy && panel < 3)
  {
    return 44.0;
  }

  return result;
}

- (void)animatePanel:(int)panel withCrossFadeContent:(BOOL)content backgroundLayout:(BOOL)layout duration:(double)duration
{
  layoutCopy = layout;
  contentCopy = content;
  v9 = [(THWAdornmentController *)self p_panelForKind:*&panel];

  [v9 animateWithCrossFadeContent:contentCopy backgroundLayout:layoutCopy duration:duration];
}

- (CGRect)layoutFrame
{
  x = self->_layoutFrame.origin.x;
  y = self->_layoutFrame.origin.y;
  width = self->_layoutFrame.size.width;
  height = self->_layoutFrame.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

@end