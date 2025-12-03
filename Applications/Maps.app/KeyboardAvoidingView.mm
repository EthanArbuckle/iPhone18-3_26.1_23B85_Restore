@interface KeyboardAvoidingView
- (KeyboardAvoidingView)initWithCoder:(id)coder;
- (KeyboardAvoidingView)initWithContentView:(id)view frame:(CGRect)frame;
- (void)addConstraints;
- (void)keyboardWillOrDidChangeFrame:(id)frame;
- (void)layoutSubviews;
- (void)removeConstraints;
- (void)setConstraintPriority:(float)priority;
- (void)setContentView:(id)view;
- (void)updateConstraints;
- (void)updateForKeyboardFrame;
- (void)updateForKeyboardFrame:(CGRect)frame;
@end

@implementation KeyboardAvoidingView

- (void)updateForKeyboardFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  IsNull = CGRectIsNull(frame);
  v9 = 0.0;
  v10 = 0.0;
  if (!IsNull)
  {
    [(KeyboardAvoidingView *)self convertRect:0 fromView:x, y, width, height];
    v11 = v22.origin.x;
    v12 = v22.origin.y;
    v13 = v22.size.width;
    v14 = v22.size.height;
    MidY = CGRectGetMidY(v22);
    [(KeyboardAvoidingView *)self bounds];
    if (MidY >= CGRectGetMidY(v23))
    {
      [(KeyboardAvoidingView *)self bounds];
      MaxY = CGRectGetMaxY(v26);
      v27.origin.x = v11;
      v27.origin.y = v12;
      v27.size.width = v13;
      v27.size.height = v14;
      v9 = MaxY - CGRectGetMinY(v27);
      v10 = 0.0;
    }

    else
    {
      v24.origin.x = v11;
      v24.origin.y = v12;
      v24.size.width = v13;
      v24.size.height = v14;
      v16 = CGRectGetMaxY(v24);
      [(KeyboardAvoidingView *)self bounds];
      v10 = v16 - CGRectGetMinY(v25);
      v9 = 0.0;
    }
  }

  v18 = fmax(v10, 0.0);
  topConstraint = [(KeyboardAvoidingView *)self topConstraint];
  [topConstraint setConstant:v18];

  bottomConstraint = [(KeyboardAvoidingView *)self bottomConstraint];
  [bottomConstraint setConstant:{fmin(-v9, 0.0)}];
}

- (void)keyboardWillOrDidChangeFrame:(id)frame
{
  userInfo = [frame userInfo];
  v9 = [userInfo objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];

  if (v9)
  {
    [v9 CGRectValue];
  }

  else
  {
    x = CGRectNull.origin.x;
    y = CGRectNull.origin.y;
    width = CGRectNull.size.width;
    height = CGRectNull.size.height;
  }

  [(KeyboardAvoidingView *)self updateForKeyboardFrame:x, y, width, height];
}

- (void)removeConstraints
{
  leadingConstraint = [(KeyboardAvoidingView *)self leadingConstraint];

  if (leadingConstraint)
  {
    leadingConstraint2 = [(KeyboardAvoidingView *)self leadingConstraint];
    v9[0] = leadingConstraint2;
    trailingConstraint = [(KeyboardAvoidingView *)self trailingConstraint];
    v9[1] = trailingConstraint;
    topConstraint = [(KeyboardAvoidingView *)self topConstraint];
    v9[2] = topConstraint;
    bottomConstraint = [(KeyboardAvoidingView *)self bottomConstraint];
    v9[3] = bottomConstraint;
    v8 = [NSArray arrayWithObjects:v9 count:4];
    [NSLayoutConstraint deactivateConstraints:v8];

    [(KeyboardAvoidingView *)self setLeadingConstraint:0];
    [(KeyboardAvoidingView *)self setTrailingConstraint:0];
    [(KeyboardAvoidingView *)self setTopConstraint:0];
    [(KeyboardAvoidingView *)self setBottomConstraint:0];
  }
}

- (void)addConstraints
{
  contentView = [(KeyboardAvoidingView *)self contentView];

  if (contentView)
  {
    contentView2 = [(KeyboardAvoidingView *)self contentView];
    leadingAnchor = [contentView2 leadingAnchor];
    leadingAnchor2 = [(KeyboardAvoidingView *)self leadingAnchor];
    v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [(KeyboardAvoidingView *)self setLeadingConstraint:v7];

    contentView3 = [(KeyboardAvoidingView *)self contentView];
    trailingAnchor = [contentView3 trailingAnchor];
    trailingAnchor2 = [(KeyboardAvoidingView *)self trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [(KeyboardAvoidingView *)self setTrailingConstraint:v11];

    contentView4 = [(KeyboardAvoidingView *)self contentView];
    topAnchor = [contentView4 topAnchor];
    topAnchor2 = [(KeyboardAvoidingView *)self topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [(KeyboardAvoidingView *)self setTopConstraint:v15];

    contentView5 = [(KeyboardAvoidingView *)self contentView];
    bottomAnchor = [contentView5 bottomAnchor];
    bottomAnchor2 = [(KeyboardAvoidingView *)self bottomAnchor];
    v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [(KeyboardAvoidingView *)self setBottomConstraint:v19];

    leadingConstraint = [(KeyboardAvoidingView *)self leadingConstraint];
    v25[0] = leadingConstraint;
    trailingConstraint = [(KeyboardAvoidingView *)self trailingConstraint];
    v25[1] = trailingConstraint;
    topConstraint = [(KeyboardAvoidingView *)self topConstraint];
    v25[2] = topConstraint;
    bottomConstraint = [(KeyboardAvoidingView *)self bottomConstraint];
    v25[3] = bottomConstraint;
    v24 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v24];
  }
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = KeyboardAvoidingView;
  [(KeyboardAvoidingView *)&v3 layoutSubviews];
  [(KeyboardAvoidingView *)self updateForKeyboardFrame];
}

- (void)updateConstraints
{
  v3.receiver = self;
  v3.super_class = KeyboardAvoidingView;
  [(KeyboardAvoidingView *)&v3 updateConstraints];
  [(KeyboardAvoidingView *)self updateForKeyboardFrame];
}

- (void)updateForKeyboardFrame
{
  v3 = +[KeyboardObserver sharedInstance];
  [v3 keyboardFrame];
  [(KeyboardAvoidingView *)self updateForKeyboardFrame:?];
}

- (void)setContentView:(id)view
{
  viewCopy = view;
  contentView = [(KeyboardAvoidingView *)self contentView];

  v6 = viewCopy;
  if (contentView != viewCopy)
  {
    [(KeyboardAvoidingView *)self removeConstraints];
    contentView2 = [(KeyboardAvoidingView *)self contentView];
    [contentView2 removeFromSuperview];

    objc_storeStrong(&self->_contentView, view);
    if (viewCopy)
    {
      [(KeyboardAvoidingView *)self addSubview:viewCopy];
    }

    [(KeyboardAvoidingView *)self addConstraints];
    v6 = viewCopy;
  }
}

- (void)setConstraintPriority:(float)priority
{
  [(KeyboardAvoidingView *)self constraintPriority];
  if (v5 != priority)
  {
    if (priority == 1000.0 || ([(KeyboardAvoidingView *)self constraintPriority], v6 == 1000.0))
    {
      [(KeyboardAvoidingView *)self removeConstraints];
      self->_constraintPriority = priority;

      [(KeyboardAvoidingView *)self addConstraints];
    }

    else
    {
      leadingConstraint = [(KeyboardAvoidingView *)self leadingConstraint];
      *&v8 = priority;
      [leadingConstraint setPriority:v8];

      trailingConstraint = [(KeyboardAvoidingView *)self trailingConstraint];
      *&v10 = priority;
      [trailingConstraint setPriority:v10];

      topConstraint = [(KeyboardAvoidingView *)self topConstraint];
      *&v12 = priority;
      [topConstraint setPriority:v12];

      bottomConstraint = [(KeyboardAvoidingView *)self bottomConstraint];
      *&v13 = priority;
      [bottomConstraint setPriority:v13];
    }
  }
}

- (KeyboardAvoidingView)initWithCoder:(id)coder
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemeneted", v6, v7];

  return 0;
}

- (KeyboardAvoidingView)initWithContentView:(id)view frame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  viewCopy = view;
  v15.receiver = self;
  v15.super_class = KeyboardAvoidingView;
  height = [(KeyboardAvoidingView *)&v15 initWithFrame:x, y, width, height];
  v11 = height;
  if (height)
  {
    height->_constraintPriority = 750.0;
    [(KeyboardAvoidingView *)height setContentView:viewCopy];
    [(KeyboardAvoidingView *)v11 updateForKeyboardFrame];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"keyboardWillOrDidChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v11 selector:"keyboardWillOrDidChangeFrame:" name:UIKeyboardDidChangeFrameNotification object:0];
  }

  return v11;
}

@end