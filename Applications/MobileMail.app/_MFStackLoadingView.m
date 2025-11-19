@interface _MFStackLoadingView
- (_MFStackLoadingView)initWithFrame:(CGRect)a3;
@end

@implementation _MFStackLoadingView

- (_MFStackLoadingView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = _MFStackLoadingView;
  v3 = [(_MFStackLoadingView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = +[UIColor mailTransferConversationViewBackgroundColor];
    [(_MFStackLoadingView *)v3 setBackgroundColor:v4];

    v5 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(_MFStackLoadingView *)v3 addSubview:v5];
    v15 = [v5 centerXAnchor];
    v6 = [(_MFStackLoadingView *)v3 safeAreaLayoutGuide];
    v7 = [v6 centerXAnchor];
    v8 = [v15 constraintEqualToAnchor:v7];
    v17[0] = v8;
    v9 = [v5 centerYAnchor];
    v10 = [(_MFStackLoadingView *)v3 safeAreaLayoutGuide];
    v11 = [v10 centerYAnchor];
    v12 = [v9 constraintEqualToAnchor:v11];
    v17[1] = v12;
    v13 = [NSArray arrayWithObjects:v17 count:2];

    [NSLayoutConstraint activateConstraints:v13];
    [(_MFStackLoadingView *)v3 setActivityIndicatorView:v5];
  }

  return v3;
}

@end