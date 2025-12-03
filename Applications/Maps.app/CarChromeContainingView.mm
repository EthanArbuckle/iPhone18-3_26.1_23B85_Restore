@interface CarChromeContainingView
- (void)willMoveToSuperview:(id)superview;
@end

@implementation CarChromeContainingView

- (void)willMoveToSuperview:(id)superview
{
  v24.receiver = self;
  v24.super_class = CarChromeContainingView;
  [(CarChromeContainingView *)&v24 willMoveToSuperview:superview];
  v4 = objc_alloc_init(UIFocusContainerGuide);
  [(CarChromeContainingView *)self setFocusContainerGuide:v4];

  focusContainerGuide = [(CarChromeContainingView *)self focusContainerGuide];
  [(CarChromeContainingView *)self addLayoutGuide:focusContainerGuide];

  focusContainerGuide2 = [(CarChromeContainingView *)self focusContainerGuide];
  [focusContainerGuide2 setIdentifier:@"CarChromeContainingViewFocusContentContainerGuide"];

  focusContainerGuide3 = [(CarChromeContainingView *)self focusContainerGuide];
  topAnchor = [focusContainerGuide3 topAnchor];
  topAnchor2 = [(CarChromeContainingView *)self topAnchor];
  v20 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v25[0] = v20;
  focusContainerGuide4 = [(CarChromeContainingView *)self focusContainerGuide];
  leadingAnchor = [focusContainerGuide4 leadingAnchor];
  leadingAnchor2 = [(CarChromeContainingView *)self leadingAnchor];
  v7 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v25[1] = v7;
  focusContainerGuide5 = [(CarChromeContainingView *)self focusContainerGuide];
  trailingAnchor = [focusContainerGuide5 trailingAnchor];
  trailingAnchor2 = [(CarChromeContainingView *)self trailingAnchor];
  v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v25[2] = v11;
  focusContainerGuide6 = [(CarChromeContainingView *)self focusContainerGuide];
  bottomAnchor = [focusContainerGuide6 bottomAnchor];
  bottomAnchor2 = [(CarChromeContainingView *)self bottomAnchor];
  v15 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v25[3] = v15;
  v16 = [NSArray arrayWithObjects:v25 count:4];
  [NSLayoutConstraint activateConstraints:v16];
}

@end