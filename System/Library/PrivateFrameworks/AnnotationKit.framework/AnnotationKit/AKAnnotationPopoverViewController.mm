@interface AKAnnotationPopoverViewController
- (AKAnnotationEditorDelegate)delegate;
- (AKAnnotationPopoverViewController)init;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (CGRect)p_containerFrameForView:(id)view;
- (CGRect)presentationRect;
- (int)willPresentInPosition:(CGRect)position view:(id)view;
- (void)dealloc;
- (void)didHide;
- (void)didReceiveMemoryWarning;
- (void)didShow;
- (void)hide;
- (void)presentFromRect:(CGRect)rect view:(id)view;
- (void)viewDidLoad;
- (void)willHide;
- (void)willShow;
@end

@implementation AKAnnotationPopoverViewController

- (AKAnnotationPopoverViewController)init
{
  v4.receiver = self;
  v4.super_class = AKAnnotationPopoverViewController;
  result = [(AKAnnotationPopoverViewController *)&v4 init];
  if (result)
  {
    v3 = *(MEMORY[0x277CBF398] + 16);
    result->_presentationRect.origin = *MEMORY[0x277CBF398];
    result->_presentationRect.size = v3;
  }

  return result;
}

- (void)dealloc
{
  [(AKAnnotationPopoverViewController *)self releaseOutlets];
  v3.receiver = self;
  v3.super_class = AKAnnotationPopoverViewController;
  [(AKAnnotationPopoverViewController *)&v3 dealloc];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = AKAnnotationPopoverViewController;
  [(AKAnnotationPopoverViewController *)&v4 viewDidLoad];
  view = [(AKAnnotationPopoverViewController *)self view];
  [view setUserInteractionEnabled:1];
}

- (void)didReceiveMemoryWarning
{
  [(AKAnnotationPopoverViewController *)self releaseOutlets];
  v3.receiver = self;
  v3.super_class = AKAnnotationPopoverViewController;
  [(AKAnnotationPopoverViewController *)&v3 didReceiveMemoryWarning];
}

- (CGRect)p_containerFrameForView:(id)view
{
  viewCopy = view;
  traitCollection = [(AKAnnotationPopoverViewController *)self traitCollection];
  v6 = [MEMORY[0x277D75C80] traitCollectionWithVerticalSizeClass:1];
  v7 = [traitCollection containsTraitsInCollection:v6];

  if (v7)
  {
    v8 = 12.0;
  }

  else
  {
    v8 = 44.0;
  }

  [viewCopy frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v19.origin.x = v10;
  v19.origin.y = v12;
  v19.size.width = v14;
  v19.size.height = v16;
  result = CGRectInset(v19, 20.0, 20.0);
  v17 = v8 + result.origin.y;
  v18 = result.size.height - v8;
  result.size.height = v18;
  result.origin.y = v17;
  return result;
}

- (int)willPresentInPosition:(CGRect)position view:(id)view
{
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  viewCopy = view;
  view = [(AKAnnotationPopoverViewController *)self view];
  [view bounds];
  v29 = v12;
  v30 = v11;
  v27 = v14;
  v28 = v13;

  [(AKAnnotationPopoverViewController *)self p_containerFrameForView:viewCopy];
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
  if (![(AKAnnotationPopoverViewController *)self canPresentInPosition:1])
  {
    return 0;
  }

  return v25;
}

- (void)presentFromRect:(CGRect)rect view:(id)view
{
  viewCopy = view;
  [(AKAnnotationPopoverViewController *)self setPresentationView:viewCopy];
  view = [(AKAnnotationPopoverViewController *)self view];
  [view setAlpha:0.0];

  view2 = [(AKAnnotationPopoverViewController *)self view];
  [view2 bounds];
  v9 = v8;
  v11 = v10;
  v13 = v12;
  rect = v12;
  v15 = v14;

  [(AKAnnotationPopoverViewController *)self p_containerFrameForView:viewCopy];
  x = v57.origin.x;
  y = v57.origin.y;
  width = v57.size.width;
  height = v57.size.height;
  MinX = CGRectGetMinX(v57);
  v58.origin.x = v9;
  v58.origin.y = v11;
  v58.size.width = v13;
  v58.size.height = v15;
  v51 = CGRectGetWidth(v58);
  v59.origin.x = x;
  v59.origin.y = y;
  v59.size.width = width;
  v59.size.height = height;
  MaxX = CGRectGetMaxX(v59);
  v60.origin.x = v9;
  v60.origin.y = v11;
  v60.size.width = v13;
  v60.size.height = v15;
  v49 = CGRectGetWidth(v60);
  v61.origin.x = x;
  v61.origin.y = y;
  v61.size.width = width;
  v61.size.height = height;
  MinY = CGRectGetMinY(v61);
  v46 = v9;
  v62.origin.x = v9;
  v62.origin.y = v11;
  v62.size.width = rect;
  v62.size.height = v15;
  v21 = MinY + CGRectGetHeight(v62) + 2.0;
  v63.origin.x = x;
  v63.origin.y = y;
  v44 = width;
  v45 = height;
  v63.size.width = width;
  v63.size.height = height;
  MaxY = CGRectGetMaxY(v63);
  v48 = CGRectGetMinX(rect);
  v47 = CGRectGetWidth(rect);
  v23 = CGRectGetMinY(rect);
  if (v23 < v21 && [(AKAnnotationPopoverViewController *)self canPresentInPosition:1])
  {
    [(AKAnnotationPopoverViewController *)self setPosition:1];
    v23 = CGRectGetMaxY(rect);
    v64.origin.x = x;
    v64.origin.y = y;
    v64.size.width = v44;
    v64.size.height = height;
    v21 = CGRectGetMinY(v64) + 2.0;
    v65.origin.x = x;
    v65.origin.y = y;
    v65.size.width = v44;
    v65.size.height = height;
    v24 = CGRectGetMaxY(v65);
    v66.origin.y = v11;
    v66.origin.x = v46;
    v66.size.width = rect;
    v66.size.height = v15;
    MaxY = v24 - CGRectGetHeight(v66);
  }

  else
  {
    [(AKAnnotationPopoverViewController *)self setPosition:0, *&v44, *&height];
  }

  v25 = v48 + v47 * 0.5;
  v26 = MaxX - (v49 * 0.5 + 2.0);
  if (v25 <= v26)
  {
    v26 = v48 + v47 * 0.5;
  }

  if (v25 >= MinX + v51 * 0.5 + 2.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = MinX + v51 * 0.5 + 2.0;
  }

  if (v23 <= MaxY + -2.0)
  {
    v28 = v23;
  }

  else
  {
    v28 = MaxY + -2.0;
  }

  if (v23 >= v21)
  {
    v29 = v28;
  }

  else
  {
    v29 = v21;
  }

  [(AKAnnotationPopoverViewController *)self setPresentationRect:v27 + -1.0, v29 + -1.0, 2.0, 2.0, *&v44, *&v45];
  position = [(AKAnnotationPopoverViewController *)self position];
  view3 = [(AKAnnotationPopoverViewController *)self view];
  layer = [view3 layer];
  v33 = layer;
  v34 = 0.0;
  if (position != 1)
  {
    v34 = 1.0;
  }

  [layer setAnchorPoint:{0.5, v34}];

  view4 = [(AKAnnotationPopoverViewController *)self view];
  [view4 setCenter:{v27, v29}];

  view5 = [(AKAnnotationPopoverViewController *)self view];
  [view5 frame];
  v68 = CGRectIntegral(v67);
  v37 = v68.origin.x;
  v38 = v68.origin.y;
  v39 = v68.size.width;
  v40 = v68.size.height;
  view6 = [(AKAnnotationPopoverViewController *)self view];
  [view6 setFrame:{v37, v38, v39, v40}];

  view7 = [(AKAnnotationPopoverViewController *)self view];
  [viewCopy addSubview:view7];

  view8 = [(AKAnnotationPopoverViewController *)self view];
  [view8 setUserInteractionEnabled:0];

  [(AKAnnotationPopoverViewController *)self willShow];
  v56[0] = MEMORY[0x277D85DD0];
  v56[1] = 3221225472;
  v56[2] = sub_23F493B44;
  v56[3] = &unk_278C7B540;
  v56[4] = self;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 3221225472;
  v55[2] = sub_23F493B8C;
  v55[3] = &unk_278C7B720;
  v55[4] = self;
  [MEMORY[0x277D75D18] animateWithDuration:v56 animations:v55 completion:0.15];
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  view = [(AKAnnotationPopoverViewController *)self view];
  [view bounds];
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  view2 = [(AKAnnotationPopoverViewController *)self view];
  [beginCopy locationInView:view2];
  v16 = v15;
  v18 = v17;

  v21.origin.x = v7;
  v21.origin.y = v9;
  v21.size.width = v11;
  v21.size.height = v13;
  v20.x = v16;
  v20.y = v18;
  LOBYTE(beginCopy) = CGRectContainsPoint(v21, v20);

  return beginCopy ^ 1;
}

- (void)willShow
{
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate willShowAnnotationEditor:self];
  }
}

- (void)didShow
{
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  if (!self->mHideOnTouchGestureRecognizer)
  {
    v4 = [AKTouchOutsideViewGestureRecognizer alloc];
    view = [(AKAnnotationPopoverViewController *)self view];
    v6 = [(AKTouchOutsideViewGestureRecognizer *)v4 initWithTarget:self action:sel_hide watchView:view];
    mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;
    self->mHideOnTouchGestureRecognizer = v6;

    view2 = [(AKAnnotationPopoverViewController *)self view];
    superview = [view2 superview];
    [superview addGestureRecognizer:self->mHideOnTouchGestureRecognizer];
  }

  if (!self->mObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v11 = qword_27E39A178;
    mainQueue = [MEMORY[0x277CCABD8] mainQueue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = sub_23F493ED4;
    v17[3] = &unk_278C7C398;
    v17[4] = self;
    v13 = [defaultCenter addObserverForName:v11 object:0 queue:mainQueue usingBlock:v17];
    mObserver = self->mObserver;
    self->mObserver = v13;
  }

  if (objc_opt_respondsToSelector())
  {
    [delegate didShowAnnotationEditor:self];
  }

  mEMORY[0x277D75718] = [MEMORY[0x277D75718] sharedMenuController];
  isMenuVisible = [mEMORY[0x277D75718] isMenuVisible];

  if (isMenuVisible)
  {
    [(AKAnnotationPopoverViewController *)self hide];
  }
}

- (void)willHide
{
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  mHideOnTouchGestureRecognizer = self->mHideOnTouchGestureRecognizer;
  v9 = delegate;
  if (mHideOnTouchGestureRecognizer)
  {
    view = [(AKTouchOutsideViewGestureRecognizer *)mHideOnTouchGestureRecognizer view];
    [view removeGestureRecognizer:self->mHideOnTouchGestureRecognizer];

    v6 = self->mHideOnTouchGestureRecognizer;
    self->mHideOnTouchGestureRecognizer = 0;

    delegate = v9;
  }

  if (self->mObserver)
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self->mObserver name:qword_27E39A178 object:0];

    mObserver = self->mObserver;
    self->mObserver = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    [v9 willHideAnnotationEditor:self];
  }
}

- (void)didHide
{
  delegate = [(AKAnnotationPopoverViewController *)self delegate];
  selfCopy = self;
  if (objc_opt_respondsToSelector())
  {
    [delegate didHideAnnotationEditor:self];
  }

  [(AKAnnotationPopoverViewController *)self setPresentationRect:*MEMORY[0x277CBF398], *(MEMORY[0x277CBF398] + 8), *(MEMORY[0x277CBF398] + 16), *(MEMORY[0x277CBF398] + 24)];
  [(AKAnnotationPopoverViewController *)self setPresentationView:0];
  v4 = objc_opt_self();
}

- (void)hide
{
  if (self->mHideOnTouchGestureRecognizer)
  {
    [(AKAnnotationPopoverViewController *)self willHide];
    view = [(AKAnnotationPopoverViewController *)self view];
    [view setUserInteractionEnabled:0];

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = sub_23F494180;
    v5[3] = &unk_278C7B540;
    v5[4] = self;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = sub_23F4941C8;
    v4[3] = &unk_278C7B720;
    v4[4] = self;
    [MEMORY[0x277D75D18] animateWithDuration:v5 animations:v4 completion:0.15];
    [(AKAnnotationPopoverViewController *)self didHide];
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

- (AKAnnotationEditorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end