@interface _MKStackingContentView
- (_MKStackingContentView)initWithViewController:(id)controller;
- (void)setBottomView:(id)view;
- (void)setTopView:(id)view;
- (void)updateConstraints;
@end

@implementation _MKStackingContentView

- (void)setBottomView:(id)view
{
  v16[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  superview = [(UIView *)self->_bottomView superview];

  if (superview == self)
  {
    [(UIView *)self->_bottomView removeFromSuperview];
  }

  objc_storeStrong(&self->_bottomView, view);
  bottomView = self->_bottomView;
  if (bottomView)
  {
    [(UIView *)bottomView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MKStackingContentView *)self addSubview:self->_bottomView];
    v8 = MEMORY[0x1E696ACD8];
    leftAnchor = [(UIView *)self->_bottomView leftAnchor];
    leftAnchor2 = [(_MKStackingContentView *)self leftAnchor];
    v11 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v16[0] = v11;
    rightAnchor = [(_MKStackingContentView *)self rightAnchor];
    rightAnchor2 = [(UIView *)self->_bottomView rightAnchor];
    v14 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v16[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:2];
    [v8 activateConstraints:v15];
  }

  [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
  [(NSLayoutConstraint *)self->_middleConstraint setActive:0];
  if (!self->_topView)
  {
    [(NSLayoutConstraint *)self->_topConstraint setActive:0];
  }

  [(UIView *)self _mapkit_setNeedsUpdateConstraints];
}

- (void)setTopView:(id)view
{
  v17[2] = *MEMORY[0x1E69E9840];
  viewCopy = view;
  topView = self->_topView;
  if (topView != viewCopy)
  {
    superview = [(UIView *)topView superview];

    if (superview == self)
    {
      [(UIView *)self->_topView removeFromSuperview];
    }

    objc_storeStrong(&self->_topView, view);
    v8 = self->_topView;
    if (v8)
    {
      [(UIView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
      [(_MKStackingContentView *)self addSubview:self->_topView];
      v9 = MEMORY[0x1E696ACD8];
      leftAnchor = [(UIView *)self->_topView leftAnchor];
      leftAnchor2 = [(_MKStackingContentView *)self leftAnchor];
      v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
      v17[0] = v12;
      rightAnchor = [(_MKStackingContentView *)self rightAnchor];
      rightAnchor2 = [(UIView *)self->_topView rightAnchor];
      v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
      v17[1] = v15;
      v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:2];
      [v9 activateConstraints:v16];
    }

    [(NSLayoutConstraint *)self->_topConstraint setActive:0];
    [(NSLayoutConstraint *)self->_middleConstraint setActive:0];
    if (!self->_bottomView)
    {
      [(NSLayoutConstraint *)self->_bottomConstraint setActive:0];
    }

    [(UIView *)self _mapkit_setNeedsUpdateConstraints];
  }
}

- (void)updateConstraints
{
  p_topView = &self->_topView;
  if (!self->_topView && !self->_bottomView)
  {
    goto LABEL_24;
  }

  topConstraint = self->_topConstraint;
  if (!topConstraint)
  {
    goto LABEL_9;
  }

  if ([(NSLayoutConstraint *)topConstraint isActive])
  {
    bottomConstraint = self->_bottomConstraint;
    if (bottomConstraint)
    {
      if ([(NSLayoutConstraint *)bottomConstraint isActive])
      {
        goto LABEL_24;
      }
    }
  }

  v6 = self->_topConstraint;
  if (!v6 || ![(NSLayoutConstraint *)v6 isActive])
  {
LABEL_9:
    bottomView = *p_topView;
    if (!*p_topView)
    {
      bottomView = self->_bottomView;
    }

    topAnchor = [(UIView *)bottomView topAnchor];
    topAnchor2 = [(_MKStackingContentView *)self topAnchor];
    v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v11 = self->_topConstraint;
    self->_topConstraint = v10;

    [(NSLayoutConstraint *)self->_topConstraint setActive:1];
  }

  if (*p_topView)
  {
    v12 = self->_bottomView;
    if (v12)
    {
      if (!self->_middleConstraint)
      {
LABEL_17:
        topAnchor3 = [(UIView *)v12 topAnchor];
        bottomAnchor = [*p_topView bottomAnchor];
        v15 = [topAnchor3 constraintEqualToAnchor:bottomAnchor];
        middleConstraint = self->_middleConstraint;
        self->_middleConstraint = v15;

        [(NSLayoutConstraint *)self->_middleConstraint setActive:1];
        goto LABEL_18;
      }

      if (![(NSLayoutConstraint *)self->_middleConstraint isActive])
      {
        v12 = self->_bottomView;
        goto LABEL_17;
      }
    }
  }

LABEL_18:
  v17 = self->_bottomConstraint;
  if (!v17 || ![(NSLayoutConstraint *)v17 isActive])
  {
    v18 = self->_bottomView;
    bottomAnchor2 = [(_MKStackingContentView *)self bottomAnchor];
    if (v18)
    {
      p_bottomView = &self->_bottomView;
    }

    else
    {
      p_bottomView = p_topView;
    }

    bottomAnchor3 = [(UIView *)*p_bottomView bottomAnchor];
    v22 = [bottomAnchor2 constraintEqualToAnchor:bottomAnchor3];
    v23 = self->_bottomConstraint;
    self->_bottomConstraint = v22;

    [(NSLayoutConstraint *)self->_bottomConstraint setActive:1];
  }

LABEL_24:
  v24.receiver = self;
  v24.super_class = _MKStackingContentView;
  [(_MKStackingContentView *)&v24 updateConstraints];
}

- (_MKStackingContentView)initWithViewController:(id)controller
{
  v4.receiver = self;
  v4.super_class = _MKStackingContentView;
  return [(_MKUIViewControllerRootView *)&v4 initWithViewController:controller];
}

@end