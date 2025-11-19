@interface CarChromeContainingView
- (void)willMoveToSuperview:(id)a3;
@end

@implementation CarChromeContainingView

- (void)willMoveToSuperview:(id)a3
{
  v24.receiver = self;
  v24.super_class = CarChromeContainingView;
  [(CarChromeContainingView *)&v24 willMoveToSuperview:a3];
  v4 = objc_alloc_init(UIFocusContainerGuide);
  [(CarChromeContainingView *)self setFocusContainerGuide:v4];

  v5 = [(CarChromeContainingView *)self focusContainerGuide];
  [(CarChromeContainingView *)self addLayoutGuide:v5];

  v6 = [(CarChromeContainingView *)self focusContainerGuide];
  [v6 setIdentifier:@"CarChromeContainingViewFocusContentContainerGuide"];

  v23 = [(CarChromeContainingView *)self focusContainerGuide];
  v22 = [v23 topAnchor];
  v21 = [(CarChromeContainingView *)self topAnchor];
  v20 = [v22 constraintEqualToAnchor:v21];
  v25[0] = v20;
  v19 = [(CarChromeContainingView *)self focusContainerGuide];
  v18 = [v19 leadingAnchor];
  v17 = [(CarChromeContainingView *)self leadingAnchor];
  v7 = [v18 constraintEqualToAnchor:v17];
  v25[1] = v7;
  v8 = [(CarChromeContainingView *)self focusContainerGuide];
  v9 = [v8 trailingAnchor];
  v10 = [(CarChromeContainingView *)self trailingAnchor];
  v11 = [v9 constraintEqualToAnchor:v10];
  v25[2] = v11;
  v12 = [(CarChromeContainingView *)self focusContainerGuide];
  v13 = [v12 bottomAnchor];
  v14 = [(CarChromeContainingView *)self bottomAnchor];
  v15 = [v13 constraintEqualToAnchor:v14];
  v25[3] = v15;
  v16 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

@end