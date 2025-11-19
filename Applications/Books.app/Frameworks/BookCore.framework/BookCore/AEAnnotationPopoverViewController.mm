@interface AEAnnotationPopoverViewController
- (AEAnnotationEditorDelegate)delegate;
- (AEAnnotationPopoverViewController)init;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (CGRect)p_containerFrameForView:(id)a3;
- (CGRect)presentationRect;
- (int)willPresentInPosition:(CGRect)a3 view:(id)a4;
- (void)dealloc;
- (void)didHide;
- (void)didShow;
- (void)hide;
- (void)presentFromRect:(CGRect)a3 view:(id)a4;
- (void)viewDidLoad;
- (void)viewDidUnload;
- (void)willHide;
- (void)willShow;
@end

@implementation AEAnnotationPopoverViewController

- (AEAnnotationPopoverViewController)init
{
  v4.receiver = self;
  v4.super_class = AEAnnotationPopoverViewController;
  result = [(AEAnnotationPopoverViewController *)&v4 init];
  if (result)
  {
    size = CGRectNull.size;
    result->_presentationRect.origin = CGRectNull.origin;
    result->_presentationRect.size = size;
  }

  return result;
}

- (void)dealloc
{
  [(AEAnnotationPopoverViewController *)self releaseOutlets];
  v3.receiver = self;
  v3.super_class = AEAnnotationPopoverViewController;
  [(AEAnnotationPopoverViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AEAnnotationPopoverViewController;
  [(AEAnnotationPopoverViewController *)&v4 viewDidLoad];
  v3 = [(AEAnnotationPopoverViewController *)self view];
  [v3 setUserInteractionEnabled:1];
}

- (void)viewDidUnload
{
  v3.receiver = self;
  v3.super_class = AEAnnotationPopoverViewController;
  [(AEAnnotationPopoverViewController *)&v3 viewDidUnload];
  [(AEAnnotationPopoverViewController *)self releaseOutlets];
}

- (CGRect)p_containerFrameForView:(id)a3
{
  v4 = a3;
  if ([(AEAnnotationPopoverViewController *)self im_isCompactHeight])
  {
    v5 = 12.0;
  }

  else
  {
    v5 = 44.0;
  }

  [v4 frame];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  result = CGRectInset(v16, 20.0, 20.0);
  v14 = v5 + result.origin.y;
  v15 = result.size.height - v5;
  result.size.height = v15;
  result.origin.y = v14;
  return result;
}

- (int)willPresentInPosition:(CGRect)a3 view:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v10 = [(AEAnnotationPopoverViewController *)self view];
  [v10 bounds];
  v29 = v12;
  v30 = v11;
  v27 = v14;
  v28 = v13;

  [(AEAnnotationPopoverViewController *)self p_containerFrameForView:v9];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;

  v31.origin.x = v16;
  v31.origin.y = v18;
  v31.size.width = v20;
  v31.size.height = v22;
  MinY = CGRectGetMinY(v31);
  v32.origin.y = v29;
  v32.origin.x = v30;
  v32.size.height = v27;
  v32.size.width = v28;
  v24 = MinY + CGRectGetHeight(v32) + 2.0;
  v33.origin.x = x;
  v33.origin.y = y;
  v33.size.width = width;
  v33.size.height = height;
  CGRectGetMinX(v33);
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  CGRectGetWidth(v34);
  v35.origin.x = x;
  v35.origin.y = y;
  v35.size.width = width;
  v35.size.height = height;
  if (CGRectGetMinY(v35) >= v24)
  {
    return 0;
  }

  v25 = 1;
  if (![(AEAnnotationPopoverViewController *)self canPresentInPosition:1])
  {
    return 0;
  }

  return v25;
}

- (void)presentFromRect:(CGRect)a3 view:(id)a4
{
  v5 = a4;
  [(AEAnnotationPopoverViewController *)self setPresentationView:v5];
  v6 = [(AEAnnotationPopoverViewController *)self view];
  [v6 setAlpha:0.0];

  v7 = [(AEAnnotationPopoverViewController *)self view];
  [v7 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;

  [(AEAnnotationPopoverViewController *)self p_containerFrameForView:v5];
  x = v59.origin.x;
  y = v59.origin.y;
  width = v59.size.width;
  height = v59.size.height;
  MinX = CGRectGetMinX(v59);
  rect = v9;
  v60.origin.x = v9;
  v60.origin.y = v11;
  v60.size.width = v13;
  v60.size.height = v15;
  v52 = MinX + CGRectGetWidth(v60) * 0.5 + 2.0;
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MaxX = CGRectGetMaxX(v61);
  v62.origin.x = v9;
  v62.origin.y = v11;
  v62.size.width = v13;
  v62.size.height = v15;
  v50 = MaxX - (CGRectGetWidth(v62) * 0.5 + 2.0);
  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  MinY = CGRectGetMinY(v63);
  v64.origin.x = rect;
  v48 = v11;
  v64.origin.y = v11;
  v64.size.width = v13;
  v47 = v15;
  v64.size.height = v15;
  v21 = MinY + CGRectGetHeight(v64) + 2.0;
  v46 = x;
  v65.origin.x = x;
  v65.origin.y = y;
  v65.size.width = width;
  v65.size.height = height;
  MaxY = CGRectGetMaxY(v65);
  v23 = CGRectGetMinX(a3);
  v24 = v23 + CGRectGetWidth(a3) * 0.5;
  v25 = CGRectGetMinY(a3);
  if (v25 < v21 && [(AEAnnotationPopoverViewController *)self canPresentInPosition:1])
  {
    [(AEAnnotationPopoverViewController *)self setPosition:1];
    v25 = CGRectGetMaxY(a3);
    v66.origin.x = v46;
    v66.origin.y = y;
    v66.size.width = width;
    v66.size.height = height;
    v21 = CGRectGetMinY(v66) + 2.0;
    v67.origin.x = v46;
    v67.origin.y = y;
    v67.size.width = width;
    v67.size.height = height;
    v26 = CGRectGetMaxY(v67);
    v68.origin.x = rect;
    v68.size.width = v13;
    v68.origin.y = v48;
    v68.size.height = v47;
    MaxY = v26 - CGRectGetHeight(v68);
  }

  else
  {
    [(AEAnnotationPopoverViewController *)self setPosition:0];
  }

  v27 = MaxY + -2.0;
  v28 = v50;
  if (v24 <= v50)
  {
    v28 = v24;
  }

  if (v24 >= v52)
  {
    v29 = v28;
  }

  else
  {
    v29 = v52;
  }

  if (v25 <= v27)
  {
    v27 = v25;
  }

  if (v25 >= v21)
  {
    v30 = v27;
  }

  else
  {
    v30 = v21;
  }

  [(AEAnnotationPopoverViewController *)self setPresentationRect:v29 + -1.0, v30 + -1.0, 2.0, 2.0];
  v31 = [(AEAnnotationPopoverViewController *)self position];
  v32 = [(AEAnnotationPopoverViewController *)self view];
  v33 = [v32 layer];
  v34 = v33;
  v35 = 0.0;
  if (v31 != 1)
  {
    v35 = 1.0;
  }

  [v33 setAnchorPoint:{0.5, v35}];

  v36 = [(AEAnnotationPopoverViewController *)self view];
  [v36 setCenter:{v29, v30}];

  v37 = [(AEAnnotationPopoverViewController *)self view];
  [v37 frame];
  v70 = CGRectIntegral(v69);
  v38 = v70.origin.x;
  v39 = v70.origin.y;
  v40 = v70.size.width;
  v41 = v70.size.height;
  v42 = [(AEAnnotationPopoverViewController *)self view];
  [v42 setFrame:{v38, v39, v40, v41}];

  v43 = [(AEAnnotationPopoverViewController *)self view];
  [v5 addSubview:v43];

  v44 = [v5 window];
  [v44 setUserInteractionEnabled:0];

  [(AEAnnotationPopoverViewController *)self willShow];
  v58[0] = _NSConcreteStackBlock;
  v58[1] = 3221225472;
  v58[2] = sub_4F01C;
  v58[3] = &unk_2C7D40;
  v58[4] = self;
  v55[0] = _NSConcreteStackBlock;
  v55[1] = 3221225472;
  v55[2] = sub_4F064;
  v55[3] = &unk_2C8200;
  v56 = v5;
  v57 = self;
  v45 = v5;
  [UIView animateWithDuration:v58 animations:v55 completion:0.15];
}

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = [(AEAnnotationPopoverViewController *)self view];
  [v5 bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v14 = [(AEAnnotationPopoverViewController *)self view];
  [v4 locationInView:v14];
  v16 = v15;
  v18 = v17;

  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  v20.x = v16;
  v20.y = v18;
  LOBYTE(v4) = CGRectContainsPoint(v21, v20);

  return v4 ^ 1;
}

- (void)willShow
{
  v3 = [(AEAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v3 willShowAnnotationEditor:self];
  }
}

- (void)didShow
{
  v3 = [AETouchOutsideViewGestureRecognizer alloc];
  v4 = [(AEAnnotationPopoverViewController *)self view];
  v5 = [(AETouchOutsideViewGestureRecognizer *)v3 initWithTarget:self action:"hide" watchView:v4];
  mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;
  self->mHideOnTouchGestureRecognizer = v5;

  v7 = [(AEAnnotationPopoverViewController *)self view];
  v8 = [v7 superview];
  [v8 addGestureRecognizer:self->mHideOnTouchGestureRecognizer];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = AEAnnotationPopoverShouldHideNotification;
  v11 = +[NSOperationQueue mainQueue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_4F370;
  v15[3] = &unk_2C99B0;
  v15[4] = self;
  v12 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v15];
  mObserver = self->mObserver;
  self->mObserver = v12;

  v14 = [(AEAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v14 didShowAnnotationEditor:self];
  }
}

- (void)willHide
{
  v3 = [(AETouchOutsideViewGestureRecognizer *)self->mHideOnTouchGestureRecognizer view];
  [v3 removeGestureRecognizer:self->mHideOnTouchGestureRecognizer];

  mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;
  self->mHideOnTouchGestureRecognizer = 0;

  if (self->mObserver)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 removeObserver:self->mObserver name:AEAnnotationPopoverShouldHideNotification object:0];

    mObserver = self->mObserver;
    self->mObserver = 0;
  }

  v7 = [(AEAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v7 willHideAnnotationEditor:self];
  }
}

- (void)didHide
{
  v4 = [(AEAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v4 didHideAnnotationEditor:self];
  }

  [(AEAnnotationPopoverViewController *)self setPresentationRect:CGRectNull.origin.x, CGRectNull.origin.y, CGRectNull.size.width, CGRectNull.size.height];
  [(AEAnnotationPopoverViewController *)self setPresentationView:0];
  v3 = objc_opt_self();
}

- (void)hide
{
  if (self->mHideOnTouchGestureRecognizer)
  {
    [(AEAnnotationPopoverViewController *)self willHide];
    v3 = [(AEAnnotationPopoverViewController *)self view];
    [v3 setUserInteractionEnabled:0];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_4F634;
    v10[3] = &unk_2C7D40;
    v11 = v3;
    v5 = _NSConcreteStackBlock;
    v6 = 3221225472;
    v7 = sub_4F640;
    v8 = &unk_2C99D8;
    v9 = v11;
    v4 = v11;
    [UIView animateWithDuration:v10 animations:&v5 completion:0.2];
    [(AEAnnotationPopoverViewController *)self didHide:v5];
  }
}

- (CGRect)presentationRect
{
  x = self->_presentationRect.origin.x;
  y = self->_presentationRect.origin.y;
  width = self->_presentationRect.size.width;
  height = self->_presentationRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (AEAnnotationEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end