@interface TrapOverlayView
- (TrapOverlayView)initWithFrame:(CGRect)frame;
- (void)updateConstraints;
@end

@implementation TrapOverlayView

- (TrapOverlayView)initWithFrame:(CGRect)frame
{
  v19.receiver = self;
  v19.super_class = TrapOverlayView;
  v3 = [(TrapOverlayView *)&v19 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor systemBackgroundColor];
    [(TrapOverlayView *)v3 setBackgroundColor:v4];

    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(TrapOverlayView *)v3 setLabel:v5];

    label = [(TrapOverlayView *)v3 label];
    [label setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = +[UIColor secondaryLabelColor];
    label2 = [(TrapOverlayView *)v3 label];
    [label2 setTextColor:v7];

    v9 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    v22 = UIFontDescriptorTraitsAttribute;
    v20 = UIFontSymbolicTrait;
    v21 = &off_10000C730;
    v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = [v9 fontDescriptorByAddingAttributes:v11];

    v13 = [UIFont fontWithDescriptor:v12 size:0.0];
    label3 = [(TrapOverlayView *)v3 label];
    [label3 setFont:v13];

    label4 = [(TrapOverlayView *)v3 label];
    [label4 setNumberOfLines:0];

    label5 = [(TrapOverlayView *)v3 label];
    [label5 setTextAlignment:1];

    label6 = [(TrapOverlayView *)v3 label];
    [(TrapOverlayView *)v3 addSubview:label6];
  }

  return v3;
}

- (void)updateConstraints
{
  v27.receiver = self;
  v27.super_class = TrapOverlayView;
  [(TrapOverlayView *)&v27 updateConstraints];
  constraints = [(TrapOverlayView *)self constraints];

  if (constraints)
  {
    constraints2 = [(TrapOverlayView *)self constraints];
    [NSLayoutConstraint deactivateConstraints:constraints2];

    [(TrapOverlayView *)self setConstraints:0];
  }

  label = [(TrapOverlayView *)self label];
  widthAnchor = [label widthAnchor];
  safeAreaLayoutGuide = [(TrapOverlayView *)self safeAreaLayoutGuide];
  widthAnchor2 = [safeAreaLayoutGuide widthAnchor];
  v22 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2 multiplier:1.0 constant:-20.0];
  v28[0] = v22;
  label2 = [(TrapOverlayView *)self label];
  heightAnchor = [label2 heightAnchor];
  safeAreaLayoutGuide2 = [(TrapOverlayView *)self safeAreaLayoutGuide];
  heightAnchor2 = [safeAreaLayoutGuide2 heightAnchor];
  v17 = [heightAnchor constraintLessThanOrEqualToAnchor:heightAnchor2 multiplier:1.0 constant:-20.0];
  v28[1] = v17;
  label3 = [(TrapOverlayView *)self label];
  centerXAnchor = [label3 centerXAnchor];
  safeAreaLayoutGuide3 = [(TrapOverlayView *)self safeAreaLayoutGuide];
  centerXAnchor2 = [safeAreaLayoutGuide3 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v28[2] = v7;
  label4 = [(TrapOverlayView *)self label];
  centerYAnchor = [label4 centerYAnchor];
  safeAreaLayoutGuide4 = [(TrapOverlayView *)self safeAreaLayoutGuide];
  centerYAnchor2 = [safeAreaLayoutGuide4 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2 constant:-10.0];
  v28[3] = v12;
  v13 = [NSArray arrayWithObjects:v28 count:4];
  [(TrapOverlayView *)self setConstraints:v13];

  constraints3 = [(TrapOverlayView *)self constraints];
  [NSLayoutConstraint activateConstraints:constraints3];
}

@end