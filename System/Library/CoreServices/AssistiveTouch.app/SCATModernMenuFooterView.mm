@interface SCATModernMenuFooterView
- (SCATModernMenuFooterView)initWithFrame:(CGRect)frame;
@end

@implementation SCATModernMenuFooterView

- (SCATModernMenuFooterView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v24.receiver = self;
  v24.super_class = SCATModernMenuFooterView;
  v7 = [(SCATModernMenuFooterView *)&v24 initWithFrame:?];
  if (v7)
  {
    height = [[SCATModernMenuPageControl alloc] initWithFrame:x, y, width, height];
    v9 = sub_100042B24(@"MORE");
    [(SCATModernMenuPageControl *)height setScatSpeakableDescription:v9];

    [(SCATModernMenuFooterView *)v7 setMoreItemsPageControl:height];
    [(SCATModernMenuFooterView *)v7 addSubview:height];
    [(SCATModernMenuPageControl *)height setTranslatesAutoresizingMaskIntoConstraints:0];
    topAnchor = [(SCATModernMenuPageControl *)height topAnchor];
    topAnchor2 = [(SCATModernMenuFooterView *)v7 topAnchor];
    v21 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v25[0] = v21;
    bottomAnchor = [(SCATModernMenuPageControl *)height bottomAnchor];
    bottomAnchor2 = [(SCATModernMenuFooterView *)v7 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v25[1] = v10;
    leadingAnchor = [(SCATModernMenuPageControl *)height leadingAnchor];
    leadingAnchor2 = [(SCATModernMenuFooterView *)v7 leadingAnchor];
    v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:10.0];
    v25[2] = v13;
    trailingAnchor = [(SCATModernMenuPageControl *)height trailingAnchor];
    trailingAnchor2 = [(SCATModernMenuFooterView *)v7 trailingAnchor];
    v16 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-10.0];
    v25[3] = v16;
    v17 = [NSArray arrayWithObjects:v25 count:4];
    [NSLayoutConstraint activateConstraints:v17];
  }

  return v7;
}

@end