@interface _UIOverlayWelcomeView
- (_UIOverlayWelcomeView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation _UIOverlayWelcomeView

- (_UIOverlayWelcomeView)initWithFrame:(CGRect)frame
{
  v22.receiver = self;
  v22.super_class = _UIOverlayWelcomeView;
  v3 = [(_UIOverlayWelcomeView *)&v22 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [UIVisualEffectView alloc];
    v5 = [UIBlurEffect effectWithStyle:2];
    v6 = [v4 initWithEffect:v5];
    backdropView = v3->_backdropView;
    v3->_backdropView = v6;

    [(_UIOverlayWelcomeView *)v3 addSubview:v3->_backdropView];
    v8 = [UIView alloc];
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
    v12 = [v8 initWithFrame:{CGRectZero.origin.x, y, width, height}];
    containerView = v3->_containerView;
    v3->_containerView = v12;

    [(_UIOverlayWelcomeView *)v3 addSubview:v3->_containerView];
    v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    label = v3->_label;
    v3->_label = v14;

    [(UILabel *)v3->_label setText:@"Welcome to the overlay!"];
    v16 = [UIFont preferredFontForTextStyle:UIFontTextStyleTitle1];
    [(UILabel *)v3->_label setFont:v16];

    v17 = +[UIColor whiteColor];
    [(UILabel *)v3->_label setTextColor:v17];

    [(UILabel *)v3->_label setTextAlignment:1];
    [(UIView *)v3->_containerView addSubview:v3->_label];
    v18 = +[UIButtonConfiguration filledButtonConfiguration];
    [v18 setTitle:@"Dismiss Overlay"];
    v19 = [UIButton buttonWithConfiguration:v18 primaryAction:0];
    dismissButton = v3->_dismissButton;
    v3->_dismissButton = v19;

    [(UIView *)v3->_containerView addSubview:v3->_dismissButton];
  }

  return v3;
}

- (void)layoutSubviews
{
  v29.receiver = self;
  v29.super_class = _UIOverlayWelcomeView;
  [(_UIOverlayWelcomeView *)&v29 layoutSubviews];
  [(_UIOverlayWelcomeView *)self bounds];
  v4 = v3;
  v6 = v5;
  [(UIVisualEffectView *)self->_backdropView setFrame:?];
  [(UILabel *)self->_label sizeThatFits:v4, v6];
  [(UILabel *)self->_label setFrame:CGPointZero.x, CGPointZero.y, v7, v8];
  [(UILabel *)self->_label frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  [(UIButton *)self->_dismissButton sizeThatFits:v4, v6];
  v18 = v17;
  v20 = v19;
  [(UILabel *)self->_label frame];
  [(UIButton *)self->_dismissButton setFrame:0.0, CGRectGetMaxY(v30) + 30.0, v18, v20];
  [(UIButton *)self->_dismissButton frame];
  v33.origin.x = v21;
  v33.origin.y = v22;
  v33.size.width = v23;
  v33.size.height = v24;
  v31.origin.x = v10;
  v31.origin.y = v12;
  v31.size.width = v14;
  v31.size.height = v16;
  v32 = CGRectUnion(v31, v33);
  x = v32.origin.x;
  y = v32.origin.y;
  width = v32.size.width;
  height = v32.size.height;
  [(UILabel *)self->_label frame];
  UIRectCenteredXInRect();
  [(UILabel *)self->_label setFrame:?];
  [(UIButton *)self->_dismissButton frame];
  UIRectCenteredXInRect();
  [(UIButton *)self->_dismissButton setFrame:?];
  [(UIView *)self->_containerView setFrame:x, y, width, height];
  [(UIView *)self->_containerView frame];
  UIRectCenteredRect();
  [(UIView *)self->_containerView setFrame:?];
}

@end