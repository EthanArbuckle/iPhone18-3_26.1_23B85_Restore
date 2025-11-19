@interface CLBApplicationSceneView
- (CGSize)_flipDimensionsForSize:(CGSize)a3;
- (CLBApplicationSceneView)initWithSceneInterfaceOrientation:(int64_t)a3 includeBackgroundView:(BOOL)a4;
- (UIEdgeInsets)realSafeAreaInsets;
- (double)_angleForInterfaceOrientation:(int64_t)a3;
- (void)_trackScene:(id)a3;
- (void)_updateHostView;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setRealSafeAreaInsets:(UIEdgeInsets)a3;
- (void)setScene:(id)a3;
- (void)setSceneInterfaceOrientation:(int64_t)a3;
- (void)setShouldPresentWithinSafeArea:(BOOL)a3;
- (void)updateSceneUI;
@end

@implementation CLBApplicationSceneView

- (CLBApplicationSceneView)initWithSceneInterfaceOrientation:(int64_t)a3 includeBackgroundView:(BOOL)a4
{
  v4 = a4;
  v13.receiver = self;
  v13.super_class = CLBApplicationSceneView;
  v6 = [(CLBApplicationSceneView *)&v13 init];
  v7 = v6;
  if (v6)
  {
    v6->_includeBackgroundView = v4;
    if (v4)
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

    v7->_sceneInterfaceOrientation = a3;
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

- (void)setScene:(id)a3
{
  if (self->_scene != a3)
  {
    [(CLBApplicationSceneView *)self _trackScene:?];
  }
}

- (void)setRealSafeAreaInsets:(UIEdgeInsets)a3
{
  v3.f64[0] = a3.top;
  v3.f64[1] = a3.left;
  v4.f64[0] = a3.bottom;
  v4.f64[1] = a3.right;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*&self->_realSafeAreaInsets.top, v3), vceqq_f64(*&self->_realSafeAreaInsets.bottom, v4)))) & 1) == 0)
  {
    self->_realSafeAreaInsets = a3;
    [(CLBApplicationSceneView *)self setNeedsLayout];
  }
}

- (void)setShouldPresentWithinSafeArea:(BOOL)a3
{
  if (self->_shouldPresentWithinSafeArea != a3)
  {
    self->_shouldPresentWithinSafeArea = a3;
    [(CLBApplicationSceneView *)self setNeedsLayout];
  }
}

- (void)setSceneInterfaceOrientation:(int64_t)a3
{
  if (self->_sceneInterfaceOrientation != a3)
  {
    self->_sceneInterfaceOrientation = a3;
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

  v15 = [(CLBApplicationSceneView *)self scene];
  v16 = [v15 settings];
  [v16 frame];
  v18 = v17;
  v20 = v19;

  v21 = [(CLBApplicationSceneView *)self sceneInterfaceOrientation];
  if (v21)
  {
    v22 = [(CLBApplicationSceneView *)self sceneInterfaceOrientation];
  }

  else
  {
    v23 = [(CLBApplicationSceneView *)self window];
    v22 = [v23 interfaceOrientation];
  }

  if ((v22 - 3) <= 1)
  {
    [(CLBApplicationSceneView *)self _flipDimensionsForSize:v18, v20];
    v18 = v24;
    v20 = v25;
  }

  v26 = v10;
  v27 = v8;
  if (v21)
  {
    v28 = [(CLBApplicationSceneView *)self sceneInterfaceOrientation]- 3 < 2;
    v29 = [(CLBApplicationSceneView *)self window];
    v30 = [v29 interfaceOrientation] - 3 < 2;

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
  if (v21)
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
    v42 = [(CLBApplicationSceneView *)self scene];
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
    *(&t1.a + 4) = v42;
    WORD2(t1.b) = 2112;
    *(&t1.b + 6) = v43;
    HIWORD(t1.c) = 2112;
    *&t1.d = v45;
    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Scene %@ using bounds: %@, transform: %@", &t1, 0x20u);
  }
}

- (double)_angleForInterfaceOrientation:(int64_t)a3
{
  result = 0.0;
  if ((a3 - 2) <= 2)
  {
    return dbl_1002966F0[a3 - 2];
  }

  return result;
}

- (CGSize)_flipDimensionsForSize:(CGSize)a3
{
  width = a3.width;
  height = a3.height;
  v5 = width;
  result.height = v5;
  result.width = height;
  return result;
}

- (void)_trackScene:(id)a3
{
  v17 = a3;
  [(UIScenePresenter *)self->_scenePresenter invalidate];
  scenePresenter = self->_scenePresenter;
  self->_scenePresenter = 0;

  sceneHostView = self->_sceneHostView;
  self->_sceneHostView = 0;

  sceneHostContainerView = self->_sceneHostContainerView;
  self->_sceneHostContainerView = 0;

  scene = self->_scene;
  self->_scene = 0;

  if (v17)
  {
    objc_storeStrong(&self->_scene, a3);
    v9 = [v17 uiPresentationManager];
    v10 = [v9 createPresenterWithIdentifier:self->_requester];
    v11 = self->_scenePresenter;
    self->_scenePresenter = v10;

    [(UIScenePresenter *)self->_scenePresenter modifyPresentationContext:&stru_1002FD168];
    [(UIScenePresenter *)self->_scenePresenter activate];
    v12 = [(UIScenePresenter *)self->_scenePresenter presentationView];
    v13 = self->_sceneHostView;
    self->_sceneHostView = v12;

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
  v3 = [(FBScene *)self->_scene contentState];
  v4 = 0.0;
  if (v3 == 2)
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