@interface _MFStackLoadingView
- (_MFStackLoadingView)initWithFrame:(CGRect)frame;
@end

@implementation _MFStackLoadingView

- (_MFStackLoadingView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = _MFStackLoadingView;
  v3 = [(_MFStackLoadingView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[UIColor mailTransferConversationViewBackgroundColor];
    [(_MFStackLoadingView *)v3 setBackgroundColor:v4];

    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MFStackLoadingView *)v3 addSubview:v5];
    centerXAnchor = [v5 centerXAnchor];
    safeAreaLayoutGuide = [(_MFStackLoadingView *)v3 safeAreaLayoutGuide];
    centerXAnchor2 = [safeAreaLayoutGuide centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v17[0] = v8;
    centerYAnchor = [v5 centerYAnchor];
    safeAreaLayoutGuide2 = [(_MFStackLoadingView *)v3 safeAreaLayoutGuide];
    centerYAnchor2 = [safeAreaLayoutGuide2 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v17[1] = v12;
    v13 = [NSArray arrayWithObjects:v17 count:2];

    [NSLayoutConstraint activateConstraints:v13];
    [(_MFStackLoadingView *)v3 setActivityIndicatorView:v5];
  }

  return v3;
}

@end