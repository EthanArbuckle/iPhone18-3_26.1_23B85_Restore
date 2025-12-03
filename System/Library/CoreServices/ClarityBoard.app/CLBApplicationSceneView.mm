@interface CLBApplicationSceneView
- (CGSize)_flipDimensionsForSize:(CGSize)size;
- (CLBApplicationSceneView)initWithSceneInterfaceOrientation:(int64_t)orientation includeBackgroundView:(BOOL)view;
- (UIEdgeInsets)realSafeAreaInsets;
- (double)_angleForInterfaceOrientation:(int64_t)orientation;
- (void)_trackScene:(id)scene;
- (void)_updateHostView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setRealSafeAreaInsets:(UIEdgeInsets)insets;
- (void)setScene:(id)scene;
- (void)setSceneInterfaceOrientation:(int64_t)orientation;
- (void)setShouldPresentWithinSafeArea:(BOOL)area;
- (void)updateSceneUI;
@end

@implementation CLBApplicationSceneView

- (CLBApplicationSceneView)initWithSceneInterfaceOrientation:(int64_t)orientation includeBackgroundView:(BOOL)view
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = CLBApplicationSceneView;
  v6 = [(CLBApplicationSceneView *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_includeBackgroundView = viewCopy;
    if (viewCopy)
    {
      v8 = objc_opt_new();
      [(CLBApplicationSceneView *)v7 addSubview:v8];
      [(CLBApplicationSceneView *)v7 bounds];
      [v8 setFrame:?];
      [v8 setAutoresizingMask:18];
    }

    v9 = [BSDescriptionBuilder descriptionForObject:v7];
    v10 = [NSString stringWithFormat:@"%@-%u", v9, ++dword_1003311D8];
    requester = v7->_requester;
    v7->_requester = v10;

    v7->_sceneInterfaceOrientation = orientation;
  }

  return v7;
}

- (void)dealloc
{
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  v3.receiver = self;
  v3.super_class = CLBApplicationSceneView;
  [(CLBApplicationSceneView *)&v3 dealloc];
}

- (void)setScene:(id)scene
{
  if (self->_scene != scene)
  {
    [(CLBApplicationSceneView *)self _trackScene:?];
  }
}

- (void)setRealSafeAreaInsets:(UIEdgeInsets)insets
{
  v3.f64[0] = insets.top;
  v3.f64[1] = insets.left;
  v4.f64[0] = insets.bottom;
  v4.f64[1] = insets.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_realSafeAreaInsets.top, v3), vceqq_f64(*&self->_realSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_realSafeAreaInsets = insets;
    [(CLBApplicationSceneView *)self setNeedsLayout];
  }
}

- (void)setShouldPresentWithinSafeArea:(BOOL)area
{
  if (self->_shouldPresentWithinSafeArea != area)
  {
    self->_shouldPresentWithinSafeArea = area;
    [(CLBApplicationSceneView *)self setNeedsLayout];
  }
}

- (void)setSceneInterfaceOrientation:(int64_t)orientation
{
  if (self->_sceneInterfaceOrientation != orientation)
  {
    self->_sceneInterfaceOrientation = orientation;
    [(CLBApplicationSceneView *)self setNeedsLayout];
  }
}

- (void)updateSceneUI
{
  [(CLBApplicationSceneView *)self setNeedsLayout];

  [(CLBApplicationSceneView *)self _updateHostView];
}

- (void)layoutSubviews
{
  v48.receiver = self;
  v48.super_class = CLBApplicationSceneView;
  [(CLBApplicationSceneView *)&v48 layoutSubviews];
  [(CLBApplicationSceneView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  if ([(CLBApplicationSceneView *)self shouldPresentWithinSafeArea])
  {
    [(CLBApplicationSceneView *)self realSafeAreaInsets];
    v4 = v4 + v11;
    v6 = v6 + v12;
    v8 = v8 - (v11 + v13);
    v10 = v10 - (v12 + v14);
  }

  scene = [(CLBApplicationSceneView *)self scene];
  settings = [scene settings];
  [settings frame];
  v18 = v17;
  v20 = v19;

  sceneInterfaceOrientation = [(CLBApplicationSceneView *)self sceneInterfaceOrientation];
  if (sceneInterfaceOrientation)
  {
    sceneInterfaceOrientation2 = [(CLBApplicationSceneView *)self sceneInterfaceOrientation];
  }

  else
  {
    window = [(CLBApplicationSceneView *)self window];
    sceneInterfaceOrientation2 = [window interfaceOrientation];
  }

  if ((sceneInterfaceOrientation2 - 3) <= 1)
  {
    [(CLBApplicationSceneView *)self _flipDimensionsForSize:v18, v20];
    v18 = v24;
    v20 = v25;
  }

  v26 = v10;
  v27 = v8;
  if (sceneInterfaceOrientation)
  {
    v28 = [(CLBApplicationSceneView *)self sceneInterfaceOrientation]- 3 < 2;
    window2 = [(CLBApplicationSceneView *)self window];
    v30 = [window2 interfaceOrientation] - 3 < 2;

    v26 = v10;
    v27 = v8;
    if (v28 != v30)
    {
      [(CLBApplicationSceneView *)self _flipDimensionsForSize:v8, v10];
      v27 = v31;
      v26 = v32;
    }
  }

  BSRectWithSize();
  [(UIView *)self->_sceneHostContainerView setBounds:?];
  v50.origin.x = v4;
  v50.origin.y = v6;
  v50.size.width = v8;
  v50.size.height = v10;
  MidX = CGRectGetMidX(v50);
  v51.origin.y = v6;
  v34 = MidX;
  v51.origin.x = v4;
  v51.size.width = v8;
  v51.size.height = v10;
  [(UIView *)self->_sceneHostContainerView setCenter:v34, CGRectGetMidY(v51)];
  v35 = fmin(v27 / v18, v26 / v20);
  if (sceneInterfaceOrientation)
  {
    [(CLBApplicationSceneView *)self _angleForInterfaceOrientation:[(CLBApplicationSceneView *)self sceneInterfaceOrientation]];
    v37 = v36;
    -[CLBApplicationSceneView _angleForInterfaceOrientation:](self, "_angleForInterfaceOrientation:", [qword_100336870 systemInterfaceOrientation]);
    v39 = v37 - v38;
  }

  else
  {
    v39 = 0.0;
  }

  CGAffineTransformMakeScale(&t1, v35, v35);
  CGAffineTransformMakeRotation(&v46, v39);
  CGAffineTransformConcat(&v47, &t1, &v46);
  sceneHostContainerView = self->_sceneHostContainerView;
  t1 = v47;
  [(UIView *)sceneHostContainerView setTransform:&t1];
  v41 = +[CLFLog commonLog];
  if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
  {
    scene2 = [(CLBApplicationSceneView *)self scene];
    [(UIView *)self->_sceneHostContainerView bounds];
    v43 = NSStringFromCGRect(v52);
    v44 = self->_sceneHostContainerView;
    if (v44)
    {
      [(UIView *)v44 transform];
    }

    else
    {
      memset(&t1, 0, sizeof(t1));
    }

    v45 = NSStringFromCGAffineTransform(&t1);
    LODWORD(t1.a) = 138412802;
    *(&t1.a + 4) = scene2;
    WORD2(t1.b) = 2112;
    *(&t1.b + 6) = v43;
    HIWORD(t1.c) = 2112;
    *&t1.d = v45;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Scene %@ using bounds: %@, transform: %@", &t1, 0x20u);
  }
}

- (double)_angleForInterfaceOrientation:(int64_t)orientation
{
  result = 0.0;
  if ((orientation - 2) <= 2)
  {
    return dbl_1002966F0[orientation - 2];
  }

  return result;
}

- (CGSize)_flipDimensionsForSize:(CGSize)size
{
  width = size.width;
  height = size.height;
  v5 = width;
  result.height = v5;
  result.width = height;
  return result;
}

- (void)_trackScene:(id)scene
{
  sceneCopy = scene;
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  sceneHostView = self->_sceneHostView;
  self->_sceneHostView = 0;

  sceneHostContainerView = self->_sceneHostContainerView;
  self->_sceneHostContainerView = 0;

  scene = self->_scene;
  self->_scene = 0;

  if (sceneCopy)
  {
    objc_storeStrong(&self->_scene, scene);
    uiPresentationManager = [sceneCopy uiPresentationManager];
    v10 = [uiPresentationManager createPresenterWithIdentifier:self->_requester];
    v11 = self->_scenePresenter;
    self->_scenePresenter = v10;

    [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&stru_1002FD168];
    [(UIScenePresenter *)self->_scenePresenter activate];
    presentationView = [(UIScenePresenter *)self->_scenePresenter presentationView];
    v13 = self->_sceneHostView;
    self->_sceneHostView = presentationView;

    v14 = objc_opt_new();
    v15 = self->_sceneHostContainerView;
    self->_sceneHostContainerView = v14;

    v16 = +[UIColor clearColor];
    [(UIView *)self->_sceneHostContainerView setBackgroundColor:v16];

    [(UIView *)self->_sceneHostContainerView addSubview:self->_sceneHostView];
    [(CLBApplicationSceneView *)self addSubview:self->_sceneHostContainerView];
    [(UIView *)self->_sceneHostContainerView bounds];
    [(UIView *)self->_sceneHostView setFrame:?];
    [(UIView *)self->_sceneHostView setAutoresizingMask:18];
    [(CLBApplicationSceneView *)self _updateHostView];
    [(CLBApplicationSceneView *)self setNeedsLayout];
  }
}

- (void)_updateHostView
{
  contentState = [(FBScene *)self->_scene contentState];
  v4 = 0.0;
  if (contentState == 2)
  {
    v4 = 1.0;
  }

  sceneHostContainerView = self->_sceneHostContainerView;

  [(UIView *)sceneHostContainerView setAlpha:v4];
}

- (UIEdgeInsets)realSafeAreaInsets
{
  top = self->_realSafeAreaInsets.top;
  left = self->_realSafeAreaInsets.left;
  bottom = self->_realSafeAreaInsets.bottom;
  right = self->_realSafeAreaInsets.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end