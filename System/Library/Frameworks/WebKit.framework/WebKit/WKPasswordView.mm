@interface WKPasswordView
- (WKPasswordView)initWithFrame:(CGRect)frame documentName:(id)name;
- (id).cxx_construct;
- (void)_keyboardDidShow:(id)show;
- (void)dealloc;
- (void)didBeginEditingPassword:(id)password inView:(id)view;
- (void)didEndEditingPassword:(id)password inView:(id)view;
- (void)hide;
- (void)layoutSubviews;
- (void)showInScrollView:(id)view;
- (void)showPasswordFailureAlert;
- (void)userDidEnterPassword:(id)password forPasswordView:(id)view;
@end

@implementation WKPasswordView

- (WKPasswordView)initWithFrame:(CGRect)frame documentName:(id)name
{
  v12.receiver = self;
  v12.super_class = WKPasswordView;
  v5 = [(WKPasswordView *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v5)
  {
    v6 = [name copy];
    m_ptr = v5->_documentName.m_ptr;
    v5->_documentName.m_ptr = v6;
    if (m_ptr)
    {
    }

    v8 = [objc_alloc(MEMORY[0x1E69DC960]) initWithDocumentName:v5->_documentName.m_ptr];
    v9 = v5->_passwordView.m_ptr;
    v5->_passwordView.m_ptr = v8;
    if (v9)
    {

      v10 = v5->_passwordView.m_ptr;
    }

    else
    {
      v10 = v8;
    }

    [(WKPasswordView *)v5 bounds];
    [v10 setFrame:?];
    [(UIDocumentPasswordView *)v5->_passwordView.m_ptr setPasswordDelegate:v5];
    [(UIDocumentPasswordView *)v5->_passwordView.m_ptr setAutoresizingMask:18];
    [(WKPasswordView *)v5 setAutoresizesSubviews:1];
    [(WKPasswordView *)v5 addSubview:v5->_passwordView.m_ptr];
  }

  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = WKPasswordView;
  [(WKPasswordView *)&v3 dealloc];
}

- (void)layoutSubviews
{
  m_ptr = self->_scrollView.m_ptr;
  if (m_ptr)
  {
    [(WKPasswordView *)self frame];

    [(UIScrollView *)m_ptr setContentSize:v3, v4];
  }
}

- (void)showInScrollView:(id)view
{
  if (view)
  {
    viewCopy = view;
  }

  m_ptr = self->_scrollView.m_ptr;
  self->_scrollView.m_ptr = view;
  viewCopy2 = view;
  if (m_ptr)
  {

    viewCopy2 = self->_scrollView.m_ptr;
  }

  [viewCopy2 minimumZoomScale];
  self->_savedMinimumZoomScale = v8;
  [(UIScrollView *)self->_scrollView.m_ptr maximumZoomScale];
  self->_savedMaximumZoomScale = v9;
  [(UIScrollView *)self->_scrollView.m_ptr zoomScale];
  self->_savedZoomScale = v10;
  [(UIScrollView *)self->_scrollView.m_ptr contentSize];
  self->_savedContentSize.width = v11;
  self->_savedContentSize.height = v12;
  backgroundColor = [(UIScrollView *)self->_scrollView.m_ptr backgroundColor];
  v14 = backgroundColor;
  if (backgroundColor)
  {
    v15 = backgroundColor;
  }

  v16 = self->_savedBackgroundColor.m_ptr;
  self->_savedBackgroundColor.m_ptr = v14;
  if (v16)
  {
  }

  [(UIScrollView *)self->_scrollView.m_ptr setMinimumZoomScale:1.0];
  [(UIScrollView *)self->_scrollView.m_ptr setMaximumZoomScale:1.0];
  [(UIScrollView *)self->_scrollView.m_ptr setZoomScale:1.0];
  v17 = self->_scrollView.m_ptr;
  [(WKPasswordView *)self frame];
  [(UIScrollView *)v17 setContentSize:v18, v19];
  -[UIScrollView setBackgroundColor:](self->_scrollView.m_ptr, "setBackgroundColor:", [MEMORY[0x1E69DC888] systemGroupedBackgroundColor]);

  [view addSubview:self];
}

- (void)hide
{
  [(UIScrollView *)self->_scrollView.m_ptr setMinimumZoomScale:self->_savedMinimumZoomScale];
  [(UIScrollView *)self->_scrollView.m_ptr setMaximumZoomScale:self->_savedMaximumZoomScale];
  [(UIScrollView *)self->_scrollView.m_ptr setZoomScale:self->_savedZoomScale];
  [(UIScrollView *)self->_scrollView.m_ptr setContentSize:self->_savedContentSize.width, self->_savedContentSize.height];
  [(UIScrollView *)self->_scrollView.m_ptr setBackgroundColor:self->_savedBackgroundColor.m_ptr];
  m_ptr = self->_scrollView.m_ptr;
  self->_scrollView.m_ptr = 0;
  if (m_ptr)
  {
  }

  v4 = self->_savedBackgroundColor.m_ptr;
  self->_savedBackgroundColor.m_ptr = 0;
  if (v4)
  {
  }

  [(WKPasswordView *)self removeFromSuperview];
}

- (void)showPasswordFailureAlert
{
  [-[UIDocumentPasswordView passwordField](self->_passwordView.m_ptr "passwordField")];
  WebCore::localizedString(&v21, @"The document could not be opened with that password.", v3);
  v4 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v22, v4);
    if (atomic_fetch_add_explicit(v4, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v4, v5);
    }
  }

  else
  {
    v22 = &stru_1F1147748;
    v6 = &stru_1F1147748;
  }

  WebKit::createUIAlertController(v22, &stru_1F1147748.isa, &v23);
  v8 = v22;
  v22 = 0;
  if (v8)
  {
  }

  v9 = v21;
  v21 = 0;
  if (v9 && atomic_fetch_add_explicit(v9, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v9, v7);
  }

  v10 = MEMORY[0x1E69DC648];
  WebCore::localizedString(&v21, @"OK (password failure alert)", v7);
  v11 = v21;
  if (v21)
  {
    atomic_fetch_add_explicit(v21, 2u, memory_order_relaxed);
    MEMORY[0x19EB00B70](&v22, v11);
    if (atomic_fetch_add_explicit(v11, 0xFFFFFFFE, memory_order_relaxed) == 2)
    {
      WTF::StringImpl::destroy(v11, v12);
    }
  }

  else
  {
    v22 = &stru_1F1147748;
    v13 = &stru_1F1147748;
  }

  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3321888768;
  v20[2] = __42__WKPasswordView_showPasswordFailureAlert__block_invoke;
  v20[3] = &__block_descriptor_33_e8_32c55_ZTSKZ42__WKPasswordView_showPasswordFailureAlert_E3__5_e23_v16__0__UIAlertAction_8l;
  v15 = [v10 actionWithTitle:v22 style:0 handler:v20];
  v16 = v22;
  v22 = 0;
  if (v16)
  {
  }

  v17 = v21;
  v21 = 0;
  if (v17 && atomic_fetch_add_explicit(v17, 0xFFFFFFFE, memory_order_relaxed) == 2)
  {
    WTF::StringImpl::destroy(v17, v14);
  }

  [v23 addAction:v15];
  v18 = [-[WKPasswordView window](self "window")];
  [v18 presentViewController:v23 animated:1 completion:0];
  v19 = v23;
  v23 = 0;
  if (v19)
  {
  }
}

- (void)_keyboardDidShow:(id)show
{
  passwordField = [(UIDocumentPasswordView *)self->_passwordView.m_ptr passwordField];
  if ([passwordField isEditing])
  {
    [MEMORY[0x1E69DCD68] visiblePeripheralFrame];
    x = v32.origin.x;
    y = v32.origin.y;
    width = v32.size.width;
    height = v32.size.height;
    if (!CGRectIsEmpty(v32))
    {
      window = [(UIScrollView *)self->_scrollView.m_ptr window];
      [window convertRect:0 fromWindow:{x, y, width, height}];
      [(UIScrollView *)self->_scrollView.m_ptr convertRect:window fromView:?];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
      [passwordField bounds];
      [passwordField convertRect:self->_scrollView.m_ptr toView:?];
      v29 = v19;
      v30 = v18;
      v21 = v20;
      v23 = v22;
      [(UIDocumentPasswordView *)self->_passwordView.m_ptr bounds];
      v25 = v24;
      v27 = v26;
      v33.origin.x = v11;
      v33.origin.y = v13;
      v33.size.width = v15;
      v33.size.height = v17;
      [(UIScrollView *)self->_scrollView.m_ptr setContentSize:v25, CGRectGetHeight(v33) + v27];
      v34.origin.x = v30;
      v34.origin.y = v21;
      v34.size.width = v29;
      v34.size.height = v23;
      v37.origin.x = v11;
      v37.origin.y = v13;
      v37.size.width = v15;
      v37.size.height = v17;
      if (CGRectIntersectsRect(v34, v37))
      {
        v35.origin.x = v30;
        v35.origin.y = v21;
        v35.size.width = v29;
        v35.size.height = v23;
        CGRectGetMaxY(v35);
        v36.origin.x = v11;
        v36.origin.y = v13;
        v36.size.width = v15;
        v36.size.height = v17;
        CGRectGetMinY(v36);
        [(UIScrollView *)self->_scrollView.m_ptr contentOffset];
        m_ptr = self->_scrollView.m_ptr;

        [(UIScrollView *)m_ptr setContentOffset:1 animated:?];
      }
    }
  }
}

- (void)userDidEnterPassword:(id)password forPasswordView:(id)view
{
  selfCopy = self;
  if (self)
  {
    selfCopy2 = self;
    self = selfCopy;
  }

  userDidEnterPassword = self->_userDidEnterPassword;
  if (userDidEnterPassword)
  {
    userDidEnterPassword[2](userDidEnterPassword, password, password, view);
  }
}

- (void)didBeginEditingPassword:(id)password inView:(id)view
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v6 = *MEMORY[0x1E69DDF78];

  [defaultCenter addObserver:self selector:sel__keyboardDidShow_ name:v6 object:0];
}

- (void)didEndEditingPassword:(id)password inView:(id)view
{
  m_ptr = self->_scrollView.m_ptr;
  [(UIDocumentPasswordView *)self->_passwordView.m_ptr frame:password];
  [(UIScrollView *)m_ptr setContentSize:v6, v7];
  [(UIScrollView *)self->_scrollView.m_ptr contentInset];
  [(UIScrollView *)self->_scrollView.m_ptr setContentOffset:1 animated:-v8, -v9];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v11 = *MEMORY[0x1E69DDF78];

  [defaultCenter removeObserver:self name:v11 object:0];
}

- (id).cxx_construct
{
  *(self + 51) = 0;
  *(self + 52) = 0;
  *(self + 53) = 0;
  *(self + 59) = 0;
  return self;
}

@end