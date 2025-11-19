@interface TSWPopoverController
- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4;
- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4;
- (BOOL)shouldDismissWhileRotating:(BOOL)a3;
- (CGPath)p_newMaskPathWithBounds:(CGRect)a3 cornerRadius:(double)a4 arrowDirection:(unint64_t)a5 arrowBounds:(CGRect)a6;
- (CGPoint)p_popoverCenterForArrowDirection:(unint64_t)a3 targetRect:(CGRect)a4 targetBounds:(CGRect)a5;
- (CGRect)boundsIncludingStroke;
- (CGRect)p_arrowBoundsForArrowDirection:(unint64_t)a3 targetPoint:(CGPoint)a4;
- (CGSize)originalViewSize;
- (TSWPopoverController)initWithContentProvider:(id)a3;
- (UIEdgeInsets)contentInsets;
- (UIEdgeInsets)fadeInsets;
- (UIEdgeInsets)fadeSizes;
- (unint64_t)p_arrowDirectionForTargetRect:(CGRect)a3 targetBounds:(CGRect)a4 permittedDirections:(unint64_t)a5;
- (void)dealloc;
- (void)dismissPopoverAnimated:(BOOL)a3;
- (void)loadView;
- (void)pFadeInIncludeScrim:(BOOL)a3;
- (void)p_customizeWithTheme:(id)a3;
- (void)p_didFade;
- (void)p_handleDismissGR:(id)a3;
- (void)p_handleDoubleTapGR:(id)a3;
- (void)p_updateAppearanceForArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4;
- (void)p_updateBackgroundViewWithArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4;
- (void)p_updateClipViewWithArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4;
- (void)p_updateStrokeLayerWithArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4;
- (void)p_willFade;
- (void)presentPopoverFromRect:(CGRect)a3 inView:(id)a4 viewBounds:(CGRect)a5 permittedArrowDirections:(unint64_t)a6 displayMode:(int)a7 animated:(BOOL)a8;
@end

@implementation TSWPopoverController

- (TSWPopoverController)initWithContentProvider:(id)a3
{
  if (!a3)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  v9.receiver = self;
  v9.super_class = TSWPopoverController;
  v5 = [(TSWPopoverController *)&v9 initWithNibName:0 bundle:0];
  v6 = v5;
  if (v5)
  {
    if (a3)
    {
      v5->_contentProvider = a3;
      if ([(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)v6 contentProvider] popoverTheme])
      {
        v7 = [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)v6 contentProvider] popoverTheme];
      }

      else
      {
        v7 = objc_alloc_init(TSWPopoverTheme);
      }

      [(TSWPopoverController *)v6 p_customizeWithTheme:v7];
      v6->_popUpInfo = [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)v6 contentProvider] popupInfo];
    }

    else
    {

      return 0;
    }
  }

  return v6;
}

- (void)dealloc
{
  if (self->_dismissGR)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(TSWPopoverControllerContentProvider *)self->_contentProvider teardown];
  v3.receiver = self;
  v3.super_class = TSWPopoverController;
  [(TSWPopoverController *)&v3 dealloc];
}

- (void)loadView
{
  -[TSWPopoverController setView:](self, "setView:", [[UIView alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}]);
  v3 = [TSWClipView alloc];
  [-[TSWPopoverController view](self "view")];
  self->_clipView = [(TSWClipView *)v3 initWithFrame:?];
  [-[TSWPopoverController view](self "view")];
  clipView = self->_clipView;
  v5 = [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] popoverContentView];

  [(TSWClipView *)clipView addContentView:v5];
}

- (BOOL)shouldDismissWhileRotating:(BOOL)a3
{
  v3 = a3;
  v5 = [(TSWPopoverController *)self isPopoverVisible];
  if (v5 && v3)
  {
    LOBYTE(v5) = [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]!= 1;
  }

  return v5;
}

- (void)pFadeInIncludeScrim:(BOOL)a3
{
  [(TSWPopoverController *)self p_willFade];
  [-[TSWPopoverController view](self "view")];
  [(UIButton *)[(TSWPopoverController *)self closeButton] setAlpha:0.0];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1283B8;
  v6[3] = &unk_45B2C0;
  v6[4] = self;
  v7 = a3;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_12842C;
  v5[3] = &unk_45B188;
  v5[4] = self;
  [UIView animateWithDuration:v6 animations:v5 completion:0.150000006];
}

- (void)presentPopoverFromRect:(CGRect)a3 inView:(id)a4 viewBounds:(CGRect)a5 permittedArrowDirections:(unint64_t)a6 displayMode:(int)a7 animated:(BOOL)a8
{
  height = a5.size.height;
  width = a5.size.width;
  x = a5.origin.x;
  y = a5.origin.y;
  v13 = a3.size.height;
  v14 = a3.size.width;
  v15 = a3.origin.y;
  v16 = a3.origin.x;
  if ([-[TSWPopoverController view](self view] || self->_dismissGR)
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  self->_displayMode = a7;
  if ([(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]== 1)
  {
    v83 = v14;
    v84 = v13;
    v89 = width;
    v91 = height;
    if (self->_scrimView)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v18 = [UIView alloc];
    [a4 bounds];
    v20 = v19;
    v22 = v21;
    v24 = v23;
    v26 = v25;
    [a4 bounds];
    v28 = v27 * -1.414;
    [a4 bounds];
    v30 = v29 * -1.414;
    v94.origin.x = v20;
    v94.origin.y = v22;
    v94.size.width = v24;
    v94.size.height = v26;
    v95 = CGRectInset(v94, v28, v30);
    self->_scrimView = [v18 initWithFrame:{v95.origin.x, v95.origin.y, v95.size.width, v95.size.height}];
    -[UIView setBackgroundColor:](-[TSWPopoverController scrimView](self, "scrimView"), "setBackgroundColor:", [+[TSUColor blackColor](TSUColor "blackColor")]);
    [(UIView *)[(TSWPopoverController *)self scrimView] setAutoresizingMask:18];
    [(UIView *)[(TSWPopoverController *)self scrimView] setAlpha:0.0];
    [a4 addSubview:{-[TSWPopoverController scrimView](self, "scrimView")}];
    width = v89;
    height = v91;
    v14 = v83;
    v13 = v84;
  }

  [a4 addSubview:{-[TSWPopoverController view](self, "view")}];
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] scale];
  v32 = v31 * -12.0;
  [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] scale];
  v34 = v33 * -12.0;
  v96.origin.x = v16;
  v96.origin.y = v15;
  v96.size.width = v14;
  v96.size.height = v13;
  v97 = CGRectInset(v96, v32, v34);
  v35 = v97.origin.x;
  v36 = v97.origin.y;
  v90 = v97.size.height;
  v92 = v97.size.width;
  v97.origin.x = x;
  v97.origin.y = y;
  v97.size.width = width;
  v97.size.height = height;
  v98 = CGRectInset(v97, 15.0, 15.0);
  v86 = v98.origin.y;
  v88 = v98.origin.x;
  v37 = v98.size.width;
  v38 = v98.size.height;
  [-[TSWPopoverController view](self "view")];
  [(TSWPopoverController *)self setOriginalViewSize:v39, v40];
  [(TSWPopoverController *)self originalViewSize];
  v43 = v42;
  v44 = v41;
  if (v42 > v37 || v41 > v38)
  {
    v81 = v36;
    v82 = v35;
    TSDFitOrFillSizeInSize();
    TSDRectWithSize();
    TSDRoundedRectForMainScreen();
    v47 = v46;
    v49 = v48;
    [objc_msgSend(-[TSWPopoverControllerContentProvider popoverContentController](-[TSWPopoverController contentProvider](self "contentProvider")];
    if (v47 != v53 || v49 != v52)
    {
      v79 = v50;
      v80 = v51;
      [objc_msgSend(-[TSWPopoverControllerContentProvider popupInfo](-[TSWPopoverController contentProvider](self "contentProvider")];
      if (v47 / v54 >= v49 / v55)
      {
        v56 = v49 / v55;
      }

      else
      {
        v56 = v47 / v54;
      }

      v57 = v54 * v56;
      v58 = [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] popoverContentController];
      [v58 setFrame:v79 scale:{v80, v57, v78, v56}];
    }

    TSDRectWithSize();
    [-[TSWPopoverController view](self "view")];
    v45 = [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]== 1 && fmin(v37 / v43, v38 / v44) < 0.8;
    v43 = v47;
    v44 = v49;
    v36 = v81;
    v35 = v82;
  }

  else
  {
    v45 = 0;
  }

  [-[TSWPopoverControllerContentProvider popoverContentView](-[TSWPopoverController contentProvider](self "contentProvider")];
  if (v65 < v43)
  {
    v43 = v65;
  }

  if (v66 < v44)
  {
    v44 = v66;
  }

  [-[TSWPopoverControllerContentProvider popoverContentView](-[TSWPopoverController contentProvider](self "contentProvider")];
  v67 = [(TSWPopoverController *)self p_arrowDirectionForTargetRect:a6 targetBounds:v35 permittedDirections:v36, v92, v90, v88, v86, v37, v38];
  [(TSWPopoverController *)self p_popoverCenterForArrowDirection:v67 targetRect:v35 targetBounds:v36, v92, v90, v88, v86, v37, v38];
  [-[TSWPopoverController view](self "view")];
  TSDRectWithCenterAndSize();
  TSDRoundedRectForMainScreen();
  [-[TSWPopoverController view](self "view")];
  [(TSWPopoverController *)self boundsIncludingStroke];
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  v72 = [(TSWPopoverController *)self view];
  TSDCenterOfRect();
  [v72 convertPoint:a4 fromView:?];
  [(TSWPopoverController *)self p_arrowBoundsForArrowDirection:v67 targetPoint:?];
  [(TSWPopoverController *)self p_updateAppearanceForArrowDirection:v67 arrowBounds:?];
  [(TSWPopoverController *)self contentProvider];
  v73 = TSUProtocolCast();
  [v73 displayModeDidChange:self->_displayMode];
  if (v45 || [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]== 1)
  {
    [v73 disableCanvasInteraction];
  }

  v74 = [[TSWPopoverDismissGestureRecognizer alloc] initWithTarget:self action:"p_handleDismissGR:"];
  self->_dismissGR = &v74->super;
  [(TSWPopoverDismissGestureRecognizer *)v74 setDelegate:self];
  [a4 addGestureRecognizer:self->_dismissGR];
  if (v45)
  {
    -[TSWPopoverController setDoubleTapGR:](self, "setDoubleTapGR:", [[UITapGestureRecognizer alloc] initWithTarget:self action:"p_handleDoubleTapGR:"]);
    [(UITapGestureRecognizer *)[(TSWPopoverController *)self doubleTapGR] setNumberOfTapsRequired:2];
    [(UITapGestureRecognizer *)[(TSWPopoverController *)self doubleTapGR] setDelegate:self];
    [-[TSWPopoverController view](self "view")];
  }

  if ([(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]== 1)
  {
    if (self->_closeButton)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    [(TSWPopoverController *)self setCloseButton:[UIButton buttonWithType:0]];
    [(UIButton *)[(TSWPopoverController *)self closeButton] setImage:[UIImage forState:"th_imageNamed:" th_imageNamed:?], 0];
    [(UIButton *)[(TSWPopoverController *)self closeButton] setImage:[UIImage forState:"th_imageNamed:" th_imageNamed:?], 1];
    [(UIButton *)[(TSWPopoverController *)self closeButton] addTarget:self action:"handleClose:" forControlEvents:64];
    [(UIButton *)[(TSWPopoverController *)self closeButton] setFrame:0.0, 0.0, 35.0, 35.0];
    [a4 addSubview:{-[TSWPopoverController closeButton](self, "closeButton")}];
    [-[TSWPopoverController view](self "view")];
    v76 = v75 + 5.0;
    [-[TSWPopoverController view](self "view")];
    [(UIButton *)[(TSWPopoverController *)self closeButton] setCenter:v76, v77 + 5.0];
  }

  [(TSWPopoverController *)self pFadeInIncludeScrim:1];
}

- (void)dismissPopoverAnimated:(BOOL)a3
{
  v3 = a3;
  if ([(TSWPopoverController *)self isDismissing])
  {
    [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
  }

  [(TSWPopoverController *)self setIsDismissing:1];
  [(TSWPopoverController *)self p_willFade];
  [(TSWPopoverControllerDelegate *)self->_delegate popoverControllerWillDismiss:self];
  [(UIView *)[(UIGestureRecognizer *)self->_dismissGR view] removeGestureRecognizer:self->_dismissGR];

  self->_dismissGR = 0;
  v5 = 0.150000006;
  if (!v3)
  {
    v5 = 0.0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_128E10;
  v7[3] = &unk_45AE00;
  v7[4] = self;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_128E6C;
  v6[3] = &unk_45B188;
  v6[4] = self;
  [UIView animateWithDuration:v7 animations:v6 completion:v5];
}

- (BOOL)gestureRecognizer:(id)a3 shouldRecognizeSimultaneouslyWithGestureRecognizer:(id)a4
{
  v7 = [(TSWPopoverController *)self doubleTapGR]== a3 || [(TSWPopoverController *)self dismissGR]== a3;
  if ([(NSArray *)self->_passThroughGestureRecognizers containsObject:a4])
  {
    return (objc_opt_respondsToSelector() & 1) == 0 || ([(TSWPopoverControllerDelegate *)self->_delegate popoverController:self shouldIgnorePassThroughGestureRecognizer:a4]& 1) == 0;
  }

  return v7;
}

- (BOOL)gestureRecognizer:(id)a3 shouldReceiveTouch:(id)a4
{
  result = 1;
  if ([(TSWPopoverController *)self doubleTapGR]!= a3)
  {
    [-[TSWPopoverController view](self "view")];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;
    [a4 locationInView:{-[TSWPopoverController view](self, "view")}];
    v27.x = v14;
    v27.y = v15;
    v29.origin.x = v7;
    v29.origin.y = v9;
    v29.size.width = v11;
    v29.size.height = v13;
    if (CGRectContainsPoint(v29, v27))
    {
      return 0;
    }

    if ([(TSWPopoverController *)self closeButton])
    {
      [(UIButton *)[(TSWPopoverController *)self closeButton] bounds];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [a4 locationInView:{-[TSWPopoverController closeButton](self, "closeButton")}];
      v28.x = v24;
      v28.y = v25;
      v30.origin.x = v17;
      v30.origin.y = v19;
      v30.size.width = v21;
      v30.size.height = v23;
      if (CGRectContainsPoint(v30, v28))
      {
        return 0;
      }
    }
  }

  return result;
}

- (CGRect)boundsIncludingStroke
{
  [-[TSWPopoverController view](self "view")];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(TSDStroke *)[(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverStroke] shouldRender])
  {
    v11 = [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverStroke];
    [-[TSWPopoverController view](self "view")];
    [(TSDStroke *)v11 boundsForPath:[TSDBezierPath bezierPathWithRect:?]];
    v4 = v12;
    v6 = v13;
    v8 = v14;
    v10 = v15;
  }

  v16 = v4;
  v17 = v6;
  v18 = v8;
  v19 = v10;
  result.size.height = v19;
  result.size.width = v18;
  result.origin.y = v17;
  result.origin.x = v16;
  return result;
}

- (unint64_t)p_arrowDirectionForTargetRect:(CGRect)a3 targetBounds:(CGRect)a4 permittedDirections:(unint64_t)a5
{
  v5 = a5;
  width = a4.size.width;
  rect = a4.size.height;
  y = a4.origin.y;
  x = a4.origin.x;
  height = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if ([(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]== 1)
  {
    return -1;
  }

  [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] scale];
  v29 = v14;
  v15 = v14 * 13.0;
  [(TSWPopoverController *)self boundsIncludingStroke];
  v16 = -CGRectGetWidth(v32);
  [(TSWPopoverController *)self boundsIncludingStroke];
  v17 = -CGRectGetHeight(v33);
  v34.origin.x = v11;
  v34.origin.y = v10;
  v34.size.width = v9;
  v34.size.height = height;
  v35 = CGRectInset(v34, v16, v17);
  v18 = v35.origin.x;
  v19 = v35.origin.y;
  v20 = v35.size.width;
  v21 = v35.size.height;
  if ((v5 & 2) != 0)
  {
    v22 = CGRectGetMinY(v35) - v15;
    v36.origin.x = x;
    v36.origin.y = y;
    v36.size.width = width;
    v36.size.height = rect;
    if (v22 >= CGRectGetMinY(v36))
    {
      return 2;
    }
  }

  if (v5)
  {
    v37.origin.x = v18;
    v37.origin.y = v19;
    v37.size.width = v20;
    v37.size.height = v21;
    v23 = v15 + CGRectGetMaxY(v37);
    v38.origin.x = x;
    v38.origin.y = y;
    v38.size.width = width;
    v38.size.height = rect;
    if (v23 <= CGRectGetMaxY(v38))
    {
      return 1;
    }
  }

  if ((v5 & 4) != 0)
  {
    v39.origin.x = v18;
    v39.origin.y = v19;
    v39.size.width = v20;
    v39.size.height = v21;
    v24 = v15 + CGRectGetMaxX(v39);
    v40.origin.x = x;
    v40.origin.y = y;
    v40.size.width = width;
    v40.size.height = rect;
    if (v24 <= CGRectGetMaxX(v40))
    {
      return 4;
    }
  }

  if ((v5 & 8) == 0)
  {
    if ((v5 & 2) == 0)
    {
      return -1;
    }

    goto LABEL_17;
  }

  v41.origin.x = v18;
  v41.origin.y = v19;
  v41.size.width = v20;
  v41.size.height = v21;
  v25 = CGRectGetMinX(v41) - v15;
  v42.origin.x = x;
  v42.origin.y = y;
  v42.size.width = width;
  v42.size.height = rect;
  MinX = CGRectGetMinX(v42);
  if (v25 < MinX)
  {
    result = -1;
  }

  else
  {
    result = 8;
  }

  if ((v5 & 2) != 0 && v25 < MinX)
  {
LABEL_17:
    v43.origin.x = v18;
    v43.origin.y = v19;
    v43.size.width = v20;
    v43.size.height = v21;
    MinY = CGRectGetMinY(v43);
    v44.size.width = width;
    v28 = MinY + v29 * 12.0;
    v44.origin.x = x;
    v44.origin.y = y;
    v44.size.height = rect;
    if (v28 >= CGRectGetMinY(v44))
    {
      return 2;
    }

    return -1;
  }

  return result;
}

- (CGRect)p_arrowBoundsForArrowDirection:(unint64_t)a3 targetPoint:(CGPoint)a4
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  if ([(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]== 1)
  {
    v8 = width;
    v9 = height;
  }

  else
  {
    [-[TSWPopoverController view](self "view")];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;
    [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] scale];
    v21 = v20 * 30.0 * 0.5;
    v29 = v20 * 13.0;
    v30 = v20 * 30.0;
    [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverCornerRadius];
    v33.origin.x = v13;
    v33.origin.y = v15;
    v33.size.width = v17;
    v33.size.height = v19;
    CGRectGetWidth(v33);
    TSUClamp();
    v23 = v22;
    v28 = v13;
    v34.origin.x = v13;
    v34.origin.y = v15;
    v34.size.width = v17;
    v34.size.height = v19;
    CGRectGetHeight(v34);
    TSUClamp();
    if (a3 > 3)
    {
      v25 = v24;
      v9 = height;
      if (a3 == 4)
      {
        v38.origin.x = v28;
        v38.origin.y = v15;
        v38.size.width = v17;
        v38.size.height = v19;
        MinX = CGRectGetMinX(v38);
        v8 = v29;
        v9 = v30;
        x = MinX - v29;
        y = v25 - v21;
      }

      else
      {
        x = CGRectZero.origin.x;
        v8 = width;
        if (a3 == 8)
        {
          v36.origin.x = v28;
          v36.origin.y = v15;
          v36.size.width = v17;
          v36.size.height = v19;
          x = CGRectGetMaxX(v36);
          y = v25 - v21;
          v8 = v29;
          v9 = v30;
        }
      }
    }

    else
    {
      v9 = height;
      if (a3 == 1)
      {
        x = v23 - v21;
        v37.origin.x = v13;
        v37.origin.y = v15;
        v37.size.width = v17;
        v37.size.height = v19;
        MinY = CGRectGetMinY(v37);
        v9 = v29;
        v8 = v30;
        y = MinY - v29;
      }

      else
      {
        x = CGRectZero.origin.x;
        v8 = width;
        if (a3 == 2)
        {
          x = v23 - v21;
          v35.origin.x = v13;
          v35.origin.y = v15;
          v35.size.width = v17;
          v35.size.height = v19;
          y = CGRectGetMaxY(v35);
          v9 = v29;
          v8 = v30;
        }
      }
    }
  }

  v10 = x;
  v11 = y;
  result.size.height = v9;
  result.size.width = v8;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (CGPoint)p_popoverCenterForArrowDirection:(unint64_t)a3 targetRect:(CGRect)a4 targetBounds:(CGRect)a5
{
  width = a5.size.width;
  rect = a5.size.height;
  y = a5.origin.y;
  x = a5.origin.x;
  height = a4.size.height;
  v7 = a4.size.width;
  v8 = a4.origin.y;
  v9 = a4.origin.x;
  if ([(TSWPopoverTheme *)[(TSWPopoverController *)self theme] presentationMode]== 1)
  {
    v47.origin.x = x;
    v47.origin.y = y;
    v47.size.width = width;
    v47.size.height = rect;
    CGRectGetMidX(v47);
    v48.origin.x = x;
    v48.origin.y = y;
    v48.size.width = width;
    v48.size.height = rect;
    CGRectGetMidY(v48);
    goto LABEL_16;
  }

  [(TSWPopoverController *)self boundsIncludingStroke];
  v38 = v12;
  v39 = v13;
  v40 = v15;
  v41 = v14;
  v49.origin.x = v9;
  v49.origin.y = v8;
  v49.size.width = v7;
  v49.size.height = height;
  MidX = CGRectGetMidX(v49);
  v50.origin.x = v9;
  v50.origin.y = v8;
  v50.size.width = v7;
  v50.size.height = height;
  MidY = CGRectGetMidY(v50);
  [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] scale];
  v19 = v18 * 13.0;
  if (a3 <= 1)
  {
    if (a3 == -1)
    {
      v59.origin.x = v9;
      v59.origin.y = v8;
      v59.size.width = v7;
      v59.size.height = height;
      MinY = CGRectGetMinY(v59);
      v22 = v38;
      v23 = v39;
      v60.origin.x = v38;
      v60.origin.y = v39;
      v24 = v40;
      v25 = v41;
      v60.size.width = v41;
      v60.size.height = v40;
      MidY = MinY + CGRectGetHeight(v60) * -0.5;
      goto LABEL_15;
    }

    if (a3 == 1)
    {
      v26 = v19;
      v53.origin.x = v9;
      v53.origin.y = v8;
      v53.size.width = v7;
      v53.size.height = height;
      MaxY = CGRectGetMaxY(v53);
      v22 = v38;
      v23 = v39;
      v54.origin.x = v38;
      v54.origin.y = v39;
      v24 = v40;
      v25 = v41;
      v54.size.width = v41;
      v54.size.height = v40;
      MidY = v26 + MaxY + CGRectGetHeight(v54) * 0.5;
      goto LABEL_15;
    }

LABEL_14:
    v24 = v40;
    v25 = v41;
    v22 = v38;
    v23 = v39;
    goto LABEL_15;
  }

  if (a3 == 2)
  {
    v28 = v19;
    v55.origin.x = v9;
    v55.origin.y = v8;
    v55.size.width = v7;
    v55.size.height = height;
    v29 = CGRectGetMinY(v55);
    v22 = v38;
    v23 = v39;
    v56.origin.x = v38;
    v56.origin.y = v39;
    v24 = v40;
    v25 = v41;
    v56.size.width = v41;
    v56.size.height = v40;
    MidY = v29 + CGRectGetHeight(v56) * -0.5 - v28;
    goto LABEL_15;
  }

  if (a3 == 4)
  {
    v30 = v19;
    v57.origin.x = v9;
    v57.origin.y = v8;
    v57.size.width = v7;
    v57.size.height = height;
    MaxX = CGRectGetMaxX(v57);
    v22 = v38;
    v23 = v39;
    v58.origin.x = v38;
    v58.origin.y = v39;
    v24 = v40;
    v25 = v41;
    v58.size.width = v41;
    v58.size.height = v40;
    MidX = v30 + MaxX + CGRectGetWidth(v58) * 0.5;
    goto LABEL_15;
  }

  if (a3 != 8)
  {
    goto LABEL_14;
  }

  v20 = v19;
  v51.origin.x = v9;
  v51.origin.y = v8;
  v51.size.width = v7;
  v51.size.height = height;
  MinX = CGRectGetMinX(v51);
  v22 = v38;
  v23 = v39;
  v52.origin.x = v38;
  v52.origin.y = v39;
  v24 = v40;
  v25 = v41;
  v52.size.width = v41;
  v52.size.height = v40;
  MidX = MinX + CGRectGetWidth(v52) * -0.5 - v20;
LABEL_15:
  v61.origin.x = v22;
  v61.origin.y = v23;
  v61.size.width = v25;
  v61.size.height = v24;
  v33 = CGRectGetWidth(v61);
  v62.size.height = v24;
  v62.origin.x = MidX - v33 * 0.5;
  v34 = v62.origin.x;
  v62.origin.y = v23;
  v62.size.width = v25;
  v37 = MidY - CGRectGetHeight(v62) * 0.5;
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = rect;
  CGRectGetMinX(v63);
  v64.origin.x = v34;
  v64.origin.y = v37;
  v64.size.width = v25;
  v64.size.height = v40;
  CGRectGetMinX(v64);
  v65.origin.x = v34;
  v65.origin.y = v37;
  v65.size.width = v25;
  v65.size.height = v40;
  CGRectGetMaxX(v65);
  v66.origin.x = x;
  v66.origin.y = y;
  v66.size.width = width;
  v66.size.height = rect;
  CGRectGetMaxX(v66);
  v67.origin.x = x;
  v67.origin.y = y;
  v67.size.width = width;
  v67.size.height = rect;
  CGRectGetMinY(v67);
  v68.origin.x = v34;
  v68.origin.y = v37;
  v68.size.width = v41;
  v68.size.height = v40;
  CGRectGetMinY(v68);
  v69.origin.x = v34;
  v69.origin.y = v37;
  v69.size.width = v41;
  v69.size.height = v40;
  CGRectGetMaxY(v69);
  v70.origin.x = x;
  v70.origin.y = y;
  v70.size.width = width;
  v70.size.height = rect;
  CGRectGetMaxY(v70);
LABEL_16:

  TSDRoundedPoint();
  result.y = v36;
  result.x = v35;
  return result;
}

- (void)p_handleDismissGR:(id)a3
{
  if ([a3 state] == &dword_0 + 3 || objc_msgSend(a3, "state") == &dword_0 + 2)
  {

    [(TSWPopoverController *)self dismissPopoverAnimated:1];
  }
}

- (void)p_handleDoubleTapGR:(id)a3
{
  displayMode = self->_displayMode;
  if (displayMode)
  {
    if (displayMode == 1)
    {
      [(TSWPopoverController *)self setDisplayMode:0];
    }
  }

  else
  {
    [(TSWPopoverController *)self setDisplayMode:1];
  }
}

- (void)p_willFade
{
  v3 = self;
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  TSUScreenScale();
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  v5 = +[UIApplication sharedApplication];

  [(UIApplication *)v5 beginIgnoringInteractionEvents];
}

- (void)p_didFade
{
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  [+[UIApplication sharedApplication](UIApplication endIgnoringInteractionEvents];

  v3 = self;
}

- (void)p_customizeWithTheme:(id)a3
{
  v4 = [a3 copy];
  [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] scale];
  [v4 scaleWithFactor:?];
  [(TSWPopoverController *)self setTheme:v4];
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverShadowOffset];
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverShadowRadius];
  [objc_msgSend(-[TSWPopoverController view](self "view")];
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverShadowOpacity];
  v9 = v8;
  v10 = [-[TSWPopoverController view](self "view")];
  *&v11 = v9;
  [v10 setShadowOpacity:v11];
  [-[TSWPopoverControllerContentProvider popoverContentView](-[TSWPopoverController contentProvider](self "contentProvider")];
  TSDCeilSize();
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverContentInsets];
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverContentInsets];
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverContentInsets];
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverContentInsets];
  TSDRectWithSize();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = [(TSWPopoverController *)self view];

  [v20 setFrame:{v13, v15, v17, v19}];
}

- (CGPath)p_newMaskPathWithBounds:(CGRect)a3 cornerRadius:(double)a4 arrowDirection:(unint64_t)a5 arrowBounds:(CGRect)a6
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  Mutable = CGPathCreateMutable();
  v75.origin.x = x;
  v75.origin.y = y;
  v75.size.width = width;
  v75.size.height = height;
  MinX = CGRectGetMinX(v75);
  v76.origin.x = x;
  v76.origin.y = y;
  v76.size.width = width;
  v76.size.height = height;
  MidX = CGRectGetMidX(v76);
  v77.origin.x = x;
  v77.origin.y = y;
  v77.size.width = width;
  v77.size.height = height;
  MaxX = CGRectGetMaxX(v77);
  v78.origin.x = x;
  v78.origin.y = y;
  v78.size.width = width;
  v78.size.height = height;
  MidY = CGRectGetMidY(v78);
  v79.origin.x = x;
  v79.origin.y = y;
  v79.size.width = width;
  v79.size.height = height;
  MaxY = CGRectGetMaxY(v79);
  v80.origin.x = x;
  v80.origin.y = y;
  v80.size.width = width;
  v14 = a4;
  v80.size.height = height;
  MinY = CGRectGetMinY(v80);
  CGPathMoveToPoint(Mutable, 0, MinX, MinY + a4);
  v69 = MinX;
  v67 = MidX;
  CGPathAddArcToPoint(Mutable, 0, MinX, MinY, MidX, MinY, a4);
  if (a5 == 1)
  {
    v16 = CGRectGetMinX(a6);
    CGPathAddLineToPoint(Mutable, 0, v16, MinY);
    cp1x = CGRectGetMinX(a6) + 7.0;
    v17 = CGRectGetMidX(a6) + -5.0;
    v18 = CGRectGetMinY(a6);
    v19 = CGRectGetMidX(a6);
    v20 = CGRectGetMinY(a6);
    CGPathAddCurveToPoint(Mutable, 0, cp1x, MinY, v17, v18, v19, v20);
    v21 = CGRectGetMidX(a6) + 5.0;
    v22 = CGRectGetMinY(a6);
    v23 = CGRectGetMaxX(a6) + -7.0;
    v24 = CGRectGetMaxX(a6);
    v25 = v21;
    v14 = a4;
    CGPathAddCurveToPoint(Mutable, 0, v25, v22, v23, MinY, v24, MinY);
    v26 = MaxX;
    CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MidY, a4);
    v27 = a6.size.height;
    v28 = a6.size.width;
    v29 = MidY;
LABEL_5:
    v43 = v26;
    v44 = MaxY;
    CGPathAddArcToPoint(Mutable, 0, v43, MaxY, v67, MaxY, v14);
    v45 = v69;
    goto LABEL_6;
  }

  v28 = a6.size.width;
  v27 = a6.size.height;
  v29 = MidY;
  CGPathAddArcToPoint(Mutable, 0, MaxX, MinY, MaxX, MidY, a4);
  if (a5 == 8)
  {
    v30 = CGRectGetMinY(a6);
    CGPathAddLineToPoint(Mutable, 0, MaxX, v30);
    v31 = CGRectGetMinY(a6) + 7.0;
    v32 = CGRectGetMaxX(a6);
    v33 = CGRectGetMidY(a6) + -5.0;
    v34 = CGRectGetMaxX(a6);
    v35 = CGRectGetMidY(a6);
    CGPathAddCurveToPoint(Mutable, 0, MaxX, v31, v32, v33, v34, v35);
    v36 = CGRectGetMaxX(a6);
    v37 = CGRectGetMidY(a6) + 5.0;
    v38 = CGRectGetMaxY(a6) + -7.0;
    v39 = CGRectGetMaxY(a6);
    v40 = v36;
    v14 = a4;
    v41 = v37;
    v42 = v38;
    v29 = MidY;
    v26 = MaxX;
    CGPathAddCurveToPoint(Mutable, 0, v40, v41, MaxX, v42, MaxX, v39);
    goto LABEL_5;
  }

  v44 = MaxY;
  CGPathAddArcToPoint(Mutable, 0, MaxX, MaxY, v67, MaxY, a4);
  v45 = v69;
  if (a5 == 2)
  {
    v56 = CGRectGetMaxX(a6);
    CGPathAddLineToPoint(Mutable, 0, v56, MaxY);
    v72 = CGRectGetMaxX(a6) + -7.0;
    v57 = CGRectGetMidX(a6) + 5.0;
    v58 = CGRectGetMaxY(a6);
    v59 = CGRectGetMidX(a6);
    v60 = CGRectGetMaxY(a6);
    CGPathAddCurveToPoint(Mutable, 0, v72, MaxY, v57, v58, v59, v60);
    v61 = CGRectGetMidX(a6) + -7.0;
    v62 = CGRectGetMaxY(a6);
    v63 = CGRectGetMinX(a6) + 5.0;
    v64 = CGRectGetMinX(a6);
    CGPathAddCurveToPoint(Mutable, 0, v61, v62, v63, MaxY, v64, MaxY);
    CGPathAddArcToPoint(Mutable, 0, v69, MaxY, v69, MidY, a4);
    goto LABEL_10;
  }

LABEL_6:
  CGPathAddArcToPoint(Mutable, 0, v45, v44, v45, v29, v14);
  if (a5 == 4)
  {
    v81.origin.x = a6.origin.x;
    v81.origin.y = a6.origin.y;
    v81.size.width = v28;
    v81.size.height = v27;
    v46 = CGRectGetMaxY(v81);
    CGPathAddLineToPoint(Mutable, 0, v45, v46);
    v82.origin.x = a6.origin.x;
    v82.origin.y = a6.origin.y;
    v82.size.width = v28;
    v82.size.height = v27;
    cp1ya = CGRectGetMaxY(v82) + -7.0;
    v83.origin.x = a6.origin.x;
    v83.origin.y = a6.origin.y;
    v83.size.width = v28;
    v83.size.height = v27;
    v47 = CGRectGetMinX(v83);
    v84.origin.x = a6.origin.x;
    v84.origin.y = a6.origin.y;
    v84.size.width = v28;
    v84.size.height = v27;
    v48 = CGRectGetMidY(v84) + 5.0;
    v85.origin.x = a6.origin.x;
    v85.origin.y = a6.origin.y;
    v85.size.width = v28;
    v85.size.height = v27;
    v49 = v45;
    v50 = CGRectGetMinX(v85);
    v86.origin.x = a6.origin.x;
    v86.origin.y = a6.origin.y;
    v86.size.width = v28;
    v86.size.height = v27;
    v51 = CGRectGetMidY(v86);
    CGPathAddCurveToPoint(Mutable, 0, v49, cp1ya, v47, v48, v50, v51);
    v87.origin.x = a6.origin.x;
    v87.origin.y = a6.origin.y;
    v87.size.width = v28;
    v87.size.height = v27;
    v52 = CGRectGetMinX(v87);
    v88.origin.x = a6.origin.x;
    v88.origin.y = a6.origin.y;
    v88.size.width = v28;
    v88.size.height = v27;
    v53 = CGRectGetMidY(v88) + -5.0;
    v89.origin.x = a6.origin.x;
    v89.origin.y = a6.origin.y;
    v89.size.width = v28;
    v89.size.height = v27;
    v54 = CGRectGetMinY(v89) + 7.0;
    v90.origin.x = a6.origin.x;
    v90.origin.y = a6.origin.y;
    v90.size.width = v28;
    v90.size.height = v27;
    v55 = CGRectGetMinY(v90);
    CGPathAddCurveToPoint(Mutable, 0, v52, v53, v49, v54, v49, v55);
  }

LABEL_10:
  CGPathCloseSubpath(Mutable);
  return Mutable;
}

- (void)p_updateAppearanceForArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [TSWPopoverController p_updateClipViewWithArrowDirection:"p_updateClipViewWithArrowDirection:arrowBounds:" arrowBounds:?];
  [(TSWPopoverController *)self p_updateBackgroundViewWithArrowDirection:a3 arrowBounds:x, y, width, height];

  [(TSWPopoverController *)self p_updateStrokeLayerWithArrowDirection:a3 arrowBounds:x, y, width, height];
}

- (void)p_updateClipViewWithArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  [-[TSWPopoverController view](self "view")];
  [(TSWClipView *)self->_clipView setFrame:?];
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverContentInsets];
  v11 = v10;
  [-[TSWPopoverControllerContentProvider popoverContentView](-[TSWPopoverController contentProvider](self "contentProvider")];
  v12 = v11 + CGRectGetWidth(v40) * 0.5;
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverContentInsets];
  v14 = v13;
  [-[TSWPopoverControllerContentProvider popoverContentView](-[TSWPopoverController contentProvider](self "contentProvider")];
  [-[TSWPopoverControllerContentProvider popoverContentView](-[TSWPopoverController contentProvider](self "contentProvider")];
  [-[TSWPopoverController view](self "view")];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverCornerRadius];
  v24 = [(TSWPopoverController *)self p_newMaskPathWithBounds:a3 cornerRadius:v16 arrowDirection:v18 arrowBounds:v20, v22, v23, *&x, *&y, *&width, *&height];
  [-[TSWPopoverController view](self "view")];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverFadeInsets];
  v37 = [+[TSDBezierPath bezierPathWithRect:](TSDBezierPath CGPath:v26 + v36];
  clipView = self->_clipView;
  [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverFadeSizes];
  [(TSWClipView *)clipView updateClipWithOuterPath:v24 innerPath:v37 fadeSizes:?];

  CGPathRelease(v24);
}

- (void)p_updateBackgroundViewWithArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4
{
  [(UIView *)self->_backgroundView removeFromSuperview:a3];

  self->_backgroundView = 0;
  [(TSWPopoverControllerContentProvider *)[(TSWPopoverController *)self contentProvider] scale];
  *&v5 = v5 * 13.0;
  v6 = ceilf(*&v5);
  v7 = [UIView alloc];
  [-[TSWPopoverController view](self "view")];
  v17 = CGRectInset(v16, -v6, -v6);
  v8 = [v7 initWithFrame:{v17.origin.x, v17.origin.y, v17.size.width, v17.size.height}];
  [(UIView *)v8 setBackgroundColor:[(TSUColor *)[(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverBackgroundColor] platformColor]];
  if ([(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverHasGradientBackground])
  {
    [(UIView *)v8 setBackgroundColor:0];
    v9 = objc_alloc_init(TSDNoDefaultImplicitActionGradientLayer);
    [(UIView *)v8 bounds];
    [v9 setFrame:?];
    v10 = [TSUColor colorWithWhite:1.0 alpha:0.200000003];
    v11 = [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverBackgroundColor];
    [(TSUColor *)v10 alphaComponent];
    v12 = [(TSUColor *)v11 blendedColorWithFraction:v10 ofColor:?];
    [(TSUColor *)[(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverBackgroundColor] alphaComponent];
    [v9 setColors:{+[NSArray arrayWithObjects:](NSArray, "arrayWithObjects:", objc_msgSend(objc_msgSend(v12, "colorWithAlphaComponent:"), "CGColor"), -[TSUColor CGColor](-[TSWPopoverTheme popoverBackgroundColor](-[TSWPopoverController theme](self, "theme"), "popoverBackgroundColor"), "CGColor"), 0)}];
    [(UIView *)v8 bounds];
    [v9 setStartPoint:{0.5, v6 / CGRectGetHeight(v18)}];
    [(UIView *)v8 bounds];
    v13 = CGRectGetHeight(v19) - v6;
    [(UIView *)v8 bounds];
    [v9 setEndPoint:{0.5, v13 / CGRectGetHeight(v20)}];
    [(CALayer *)[(UIView *)v8 layer] addSublayer:v9];
  }

  self->_backgroundView = v8;
  clipView = self->_clipView;

  [(TSWClipView *)clipView addBackgroundView:v8];
}

- (void)p_updateStrokeLayerWithArrowDirection:(unint64_t)a3 arrowBounds:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = [(TSDStroke *)[(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverStroke] shouldRender];
  strokeLayer = self->_strokeLayer;
  if (v10)
  {
    if (!strokeLayer)
    {
      v12 = objc_alloc_init(TSDNoDefaultImplicitActionShapeLayer);
      self->_strokeLayer = v12;
      [(CAShapeLayer *)v12 setFillColor:0];
      [objc_msgSend(-[TSWPopoverController view](self "view")];
    }

    [-[TSWPopoverController view](self "view")];
    v13 = [TSDBezierPath bezierPathWithRect:?];
    [(TSDStroke *)[(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverStroke] width];
    v15 = 1.0;
    if (v14 > 1.0)
    {
      v14 = 1.0;
    }

    *&v15 = v14;
    LODWORD(v14) = 1.0;
    [-[TSDBezierPath aliasedPathWithViewScale:effectiveStrokeWidth:](v13 aliasedPathWithViewScale:v14 effectiveStrokeWidth:{v15), "bounds"}];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverCornerRadius];
    v25 = [(TSWPopoverController *)self p_newMaskPathWithBounds:a3 cornerRadius:v17 arrowDirection:v19 arrowBounds:v21, v23, v24, *&x, *&y, *&width, *&height];
    [(CAShapeLayer *)self->_strokeLayer setPath:v25];
    CGPathRelease(v25);
    if (([(TSDStroke *)[(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverStroke] canApplyToShapeRenderable]& 1) == 0)
    {
      [+[TSUAssertionHandler currentHandler](TSUAssertionHandler "currentHandler")];
    }

    v26 = [(TSWPopoverTheme *)[(TSWPopoverController *)self theme] popoverStroke];
    v27 = [TSDRenderable renderableFromLayer:self->_strokeLayer];

    [(TSDStroke *)v26 applyToRepRenderable:v27 withScale:1.0];
  }

  else
  {
    [(CAShapeLayer *)strokeLayer removeFromSuperlayer];

    self->_strokeLayer = 0;
  }
}

- (UIEdgeInsets)contentInsets
{
  top = self->_contentInsets.top;
  left = self->_contentInsets.left;
  bottom = self->_contentInsets.bottom;
  right = self->_contentInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)fadeInsets
{
  top = self->_fadeInsets.top;
  left = self->_fadeInsets.left;
  bottom = self->_fadeInsets.bottom;
  right = self->_fadeInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)fadeSizes
{
  top = self->_fadeSizes.top;
  left = self->_fadeSizes.left;
  bottom = self->_fadeSizes.bottom;
  right = self->_fadeSizes.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (CGSize)originalViewSize
{
  width = self->_originalViewSize.width;
  height = self->_originalViewSize.height;
  result.height = height;
  result.width = width;
  return result;
}

@end