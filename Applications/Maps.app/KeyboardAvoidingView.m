@interface KeyboardAvoidingView
- (KeyboardAvoidingView)initWithCoder:(id)a3;
- (KeyboardAvoidingView)initWithContentView:(id)a3 frame:(CGRect)a4;
- (void)addConstraints;
- (void)keyboardWillOrDidChangeFrame:(id)a3;
- (void)layoutSubviews;
- (void)removeConstraints;
- (void)setConstraintPriority:(float)a3;
- (void)setContentView:(id)a3;
- (void)updateConstraints;
- (void)updateForKeyboardFrame;
- (void)updateForKeyboardFrame:(CGRect)a3;
@end

@implementation KeyboardAvoidingView

- (void)updateForKeyboardFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  IsNull = CGRectIsNull(a3);
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
  v19 = [(KeyboardAvoidingView *)self topConstraint];
  [v19 setConstant:v18];

  v20 = [(KeyboardAvoidingView *)self bottomConstraint];
  [v20 setConstant:{fmin(-v9, 0.0)}];
}

- (void)keyboardWillOrDidChangeFrame:(id)a3
{
  v4 = [a3 userInfo];
  v9 = [v4 objectForKeyedSubscript:UIKeyboardFrameEndUserInfoKey];

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
  v3 = [(KeyboardAvoidingView *)self leadingConstraint];

  if (v3)
  {
    v4 = [(KeyboardAvoidingView *)self leadingConstraint];
    v9[0] = v4;
    v5 = [(KeyboardAvoidingView *)self trailingConstraint];
    v9[1] = v5;
    v6 = [(KeyboardAvoidingView *)self topConstraint];
    v9[2] = v6;
    v7 = [(KeyboardAvoidingView *)self bottomConstraint];
    v9[3] = v7;
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
  v3 = [(KeyboardAvoidingView *)self contentView];

  if (v3)
  {
    v4 = [(KeyboardAvoidingView *)self contentView];
    v5 = [v4 leadingAnchor];
    v6 = [(KeyboardAvoidingView *)self leadingAnchor];
    v7 = [v5 constraintEqualToAnchor:v6];
    [(KeyboardAvoidingView *)self setLeadingConstraint:v7];

    v8 = [(KeyboardAvoidingView *)self contentView];
    v9 = [v8 trailingAnchor];
    v10 = [(KeyboardAvoidingView *)self trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [(KeyboardAvoidingView *)self setTrailingConstraint:v11];

    v12 = [(KeyboardAvoidingView *)self contentView];
    v13 = [v12 topAnchor];
    v14 = [(KeyboardAvoidingView *)self topAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    [(KeyboardAvoidingView *)self setTopConstraint:v15];

    v16 = [(KeyboardAvoidingView *)self contentView];
    v17 = [v16 bottomAnchor];
    v18 = [(KeyboardAvoidingView *)self bottomAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    [(KeyboardAvoidingView *)self setBottomConstraint:v19];

    v20 = [(KeyboardAvoidingView *)self leadingConstraint];
    v25[0] = v20;
    v21 = [(KeyboardAvoidingView *)self trailingConstraint];
    v25[1] = v21;
    v22 = [(KeyboardAvoidingView *)self topConstraint];
    v25[2] = v22;
    v23 = [(KeyboardAvoidingView *)self bottomConstraint];
    v25[3] = v23;
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

- (void)setContentView:(id)a3
{
  v8 = a3;
  v5 = [(KeyboardAvoidingView *)self contentView];

  v6 = v8;
  if (v5 != v8)
  {
    [(KeyboardAvoidingView *)self removeConstraints];
    v7 = [(KeyboardAvoidingView *)self contentView];
    [v7 removeFromSuperview];

    objc_storeStrong(&self->_contentView, a3);
    if (v8)
    {
      [(KeyboardAvoidingView *)self addSubview:v8];
    }

    [(KeyboardAvoidingView *)self addConstraints];
    v6 = v8;
  }
}

- (void)setConstraintPriority:(float)a3
{
  [(KeyboardAvoidingView *)self constraintPriority];
  if (v5 != a3)
  {
    if (a3 == 1000.0 || ([(KeyboardAvoidingView *)self constraintPriority], v6 == 1000.0))
    {
      [(KeyboardAvoidingView *)self removeConstraints];
      self->_constraintPriority = a3;

      [(KeyboardAvoidingView *)self addConstraints];
    }

    else
    {
      v7 = [(KeyboardAvoidingView *)self leadingConstraint];
      *&v8 = a3;
      [v7 setPriority:v8];

      v9 = [(KeyboardAvoidingView *)self trailingConstraint];
      *&v10 = a3;
      [v9 setPriority:v10];

      v11 = [(KeyboardAvoidingView *)self topConstraint];
      *&v12 = a3;
      [v11 setPriority:v12];

      v14 = [(KeyboardAvoidingView *)self bottomConstraint];
      *&v13 = a3;
      [v14 setPriority:v13];
    }
  }
}

- (KeyboardAvoidingView)initWithCoder:(id)a3
{
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v7 = NSStringFromSelector(a2);
  [NSException raise:NSInternalInconsistencyException format:@"[%@ %@] not implemeneted", v6, v7];

  return 0;
}

- (KeyboardAvoidingView)initWithContentView:(id)a3 frame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v9 = a3;
  v15.receiver = self;
  v15.super_class = KeyboardAvoidingView;
  v10 = [(KeyboardAvoidingView *)&v15 initWithFrame:x, y, width, height];
  v11 = v10;
  if (v10)
  {
    v10->_constraintPriority = 750.0;
    [(KeyboardAvoidingView *)v10 setContentView:v9];
    [(KeyboardAvoidingView *)v11 updateForKeyboardFrame];
    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v11 selector:"keyboardWillOrDidChangeFrame:" name:UIKeyboardWillChangeFrameNotification object:0];

    v13 = +[NSNotificationCenter defaultCenter];
    [v13 addObserver:v11 selector:"keyboardWillOrDidChangeFrame:" name:UIKeyboardDidChangeFrameNotification object:0];
  }

  return v11;
}

@end