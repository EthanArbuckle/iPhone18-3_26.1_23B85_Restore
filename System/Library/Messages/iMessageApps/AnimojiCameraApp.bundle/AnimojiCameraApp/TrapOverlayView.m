@interface TrapOverlayView
- (TrapOverlayView)initWithFrame:(CGRect)a3;
- (void)updateConstraints;
@end

@implementation TrapOverlayView

- (TrapOverlayView)initWithFrame:(CGRect)a3
{
  v19.receiver = self;
  v19.super_class = TrapOverlayView;
  v3 = [(TrapOverlayView *)&v19 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor systemBackgroundColor];
    [(TrapOverlayView *)v3 setBackgroundColor:v4];

    v5 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    [(TrapOverlayView *)v3 setLabel:v5];

    v6 = [(TrapOverlayView *)v3 label];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = +[UIColor secondaryLabelColor];
    v8 = [(TrapOverlayView *)v3 label];
    [v8 setTextColor:v7];

    v9 = [UIFontDescriptor preferredFontDescriptorWithTextStyle:UIFontTextStyleFootnote];
    v22 = UIFontDescriptorTraitsAttribute;
    v20 = UIFontSymbolicTrait;
    v21 = &off_C710;
    v10 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
    v23 = v10;
    v11 = [NSDictionary dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    v12 = [v9 fontDescriptorByAddingAttributes:v11];

    v13 = [UIFont fontWithDescriptor:v12 size:0.0];
    v14 = [(TrapOverlayView *)v3 label];
    [v14 setFont:v13];

    v15 = [(TrapOverlayView *)v3 label];
    [v15 setNumberOfLines:0];

    v16 = [(TrapOverlayView *)v3 label];
    [v16 setTextAlignment:1];

    v17 = [(TrapOverlayView *)v3 label];
    [(TrapOverlayView *)v3 addSubview:v17];
  }

  return v3;
}

- (void)updateConstraints
{
  v27.receiver = self;
  v27.super_class = TrapOverlayView;
  [(TrapOverlayView *)&v27 updateConstraints];
  v3 = [(TrapOverlayView *)self constraints];

  if (v3)
  {
    v4 = [(TrapOverlayView *)self constraints];
    [NSLayoutConstraint deactivateConstraints:v4];

    [(TrapOverlayView *)self setConstraints:0];
  }

  v26 = [(TrapOverlayView *)self label];
  v24 = [v26 widthAnchor];
  v25 = [(TrapOverlayView *)self safeAreaLayoutGuide];
  v23 = [v25 widthAnchor];
  v22 = [v24 constraintLessThanOrEqualToAnchor:v23 multiplier:1.0 constant:-20.0];
  v28[0] = v22;
  v21 = [(TrapOverlayView *)self label];
  v19 = [v21 heightAnchor];
  v20 = [(TrapOverlayView *)self safeAreaLayoutGuide];
  v18 = [v20 heightAnchor];
  v17 = [v19 constraintLessThanOrEqualToAnchor:v18 multiplier:1.0 constant:-20.0];
  v28[1] = v17;
  v16 = [(TrapOverlayView *)self label];
  v15 = [v16 centerXAnchor];
  v5 = [(TrapOverlayView *)self safeAreaLayoutGuide];
  v6 = [v5 centerXAnchor];
  v7 = [v15 constraintEqualToAnchor:v6];
  v28[2] = v7;
  v8 = [(TrapOverlayView *)self label];
  v9 = [v8 centerYAnchor];
  v10 = [(TrapOverlayView *)self safeAreaLayoutGuide];
  v11 = [v10 centerYAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:-10.0];
  v28[3] = v12;
  v13 = [NSArray arrayWithObjects:v28 count:4];
  [(TrapOverlayView *)self setConstraints:v13];

  v14 = [(TrapOverlayView *)self constraints];
  [NSLayoutConstraint activateConstraints:v14];
}

@end