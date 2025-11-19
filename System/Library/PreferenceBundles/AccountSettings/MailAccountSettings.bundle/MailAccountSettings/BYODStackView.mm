@interface BYODStackView
- (BYODStackView)init;
- (BYODStackView)initWithBackgroundColor:(id)a3;
- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
@end

@implementation BYODStackView

- (BYODStackView)init
{
  v3 = +[UIColor secondarySystemBackgroundColor];
  v4 = [(BYODStackView *)self initWithBackgroundColor:v3];

  return v4;
}

- (BYODStackView)initWithBackgroundColor:(id)a3
{
  v26 = a3;
  v27.receiver = self;
  v27.super_class = BYODStackView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  v7 = [(BYODStackView *)&v27 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = v7;
  if (v7)
  {
    [(BYODStackView *)v7 setBackgroundColor:v26];
    [(BYODStackView *)v8 _setContinuousCornerRadius:26.0];
    [(BYODStackView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    stackView = v8->_stackView;
    v8->_stackView = v9;

    [(UIStackView *)v8->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v8->_stackView setAxis:1];
    [(UIStackView *)v8->_stackView setSpacing:16.0];
    [(BYODStackView *)v8 addSubview:v8->_stackView];
    v11 = [(BYODStackView *)v8 bottomAnchor];
    v12 = [(UIStackView *)v8->_stackView bottomAnchor];
    v13 = [v11 constraintEqualToAnchor:v12 constant:0.0];
    bottomStackViewConstraint = v8->_bottomStackViewConstraint;
    v8->_bottomStackViewConstraint = v13;

    v25 = [(UIStackView *)v8->_stackView topAnchor];
    v15 = [(BYODStackView *)v8 topAnchor];
    v16 = [v25 constraintEqualToAnchor:v15];
    v28[0] = v16;
    v28[1] = v8->_bottomStackViewConstraint;
    v17 = [(UIStackView *)v8->_stackView leadingAnchor];
    v18 = [(BYODStackView *)v8 leadingAnchor];
    v19 = [v17 constraintEqualToAnchor:v18];
    v28[2] = v19;
    v20 = [(BYODStackView *)v8 trailingAnchor];
    v21 = [(UIStackView *)v8->_stackView trailingAnchor];
    v22 = [v20 constraintEqualToAnchor:v21];
    v28[3] = v22;
    v23 = [NSArray arrayWithObjects:v28 count:4];
    [(BYODStackView *)v8 addConstraints:v23];
  }

  return v8;
}

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  v5 = a5;
  v8 = a3;
  if (v5)
  {
    v10 = v8;
    v9 = [[UITapGestureRecognizer alloc] initWithTarget:v8 action:a4];
    [(BYODStackView *)self addGestureRecognizer:v9];

    v8 = v10;
  }
}

@end