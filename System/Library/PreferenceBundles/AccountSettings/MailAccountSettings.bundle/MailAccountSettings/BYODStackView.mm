@interface BYODStackView
- (BYODStackView)init;
- (BYODStackView)initWithBackgroundColor:(id)color;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
@end

@implementation BYODStackView

- (BYODStackView)init
{
  v3 = +[UIColor secondarySystemBackgroundColor];
  v4 = [(BYODStackView *)self initWithBackgroundColor:v3];

  return v4;
}

- (BYODStackView)initWithBackgroundColor:(id)color
{
  colorCopy = color;
  v27.receiver = self;
  v27.super_class = BYODStackView;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  height = [(BYODStackView *)&v27 initWithFrame:CGRectZero.origin.x, y, width, height];
  v8 = height;
  if (height)
  {
    [(BYODStackView *)height setBackgroundColor:colorCopy];
    [(BYODStackView *)v8 _setContinuousCornerRadius:26.0];
    [(BYODStackView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    v9 = [[UIStackView alloc] initWithFrame:{CGRectZero.origin.x, y, width, height}];
    stackView = v8->_stackView;
    v8->_stackView = v9;

    [(UIStackView *)v8->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v8->_stackView setAxis:1];
    [(UIStackView *)v8->_stackView setSpacing:16.0];
    [(BYODStackView *)v8 addSubview:v8->_stackView];
    bottomAnchor = [(BYODStackView *)v8 bottomAnchor];
    bottomAnchor2 = [(UIStackView *)v8->_stackView bottomAnchor];
    v13 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];
    bottomStackViewConstraint = v8->_bottomStackViewConstraint;
    v8->_bottomStackViewConstraint = v13;

    topAnchor = [(UIStackView *)v8->_stackView topAnchor];
    topAnchor2 = [(BYODStackView *)v8 topAnchor];
    v16 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v28[0] = v16;
    v28[1] = v8->_bottomStackViewConstraint;
    leadingAnchor = [(UIStackView *)v8->_stackView leadingAnchor];
    leadingAnchor2 = [(BYODStackView *)v8 leadingAnchor];
    v19 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v28[2] = v19;
    trailingAnchor = [(BYODStackView *)v8 trailingAnchor];
    trailingAnchor2 = [(UIStackView *)v8->_stackView trailingAnchor];
    v22 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v28[3] = v22;
    v23 = [NSArray arrayWithObjects:v28 count:4];
    [(BYODStackView *)v8 addConstraints:v23];
  }

  return v8;
}

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  eventsCopy = events;
  targetCopy = target;
  if (eventsCopy)
  {
    v10 = targetCopy;
    v9 = [[UITapGestureRecognizer alloc] initWithTarget:targetCopy action:action];
    [(BYODStackView *)self addGestureRecognizer:v9];

    targetCopy = v10;
  }
}

@end