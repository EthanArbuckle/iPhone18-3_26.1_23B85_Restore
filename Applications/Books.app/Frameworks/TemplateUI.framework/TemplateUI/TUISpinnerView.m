@interface TUISpinnerView
+ (id)renderModelWithIdentifier:(id)a3;
- (TUISpinnerView)initWithFrame:(CGRect)a3;
- (void)prepareForReuse;
- (void)setHidden:(BOOL)a3;
@end

@implementation TUISpinnerView

+ (id)renderModelWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[TUIRenderModelSpinner alloc] initWithReuseIdentifier:@"TUIReuseIdentifierSpinnerView" identifier:v3];

  return v4;
}

- (TUISpinnerView)initWithFrame:(CGRect)a3
{
  v14.receiver = self;
  v14.super_class = TUISpinnerView;
  v3 = [(TUISpinnerView *)&v14 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityView = v3->_activityView;
    v3->_activityView = v4;

    [(UIActivityIndicatorView *)v3->_activityView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUISpinnerView *)v3 addSubview:v3->_activityView];
    v6 = [(UIActivityIndicatorView *)v3->_activityView centerXAnchor];
    v7 = [(TUISpinnerView *)v3 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v15[0] = v8;
    v9 = [(UIActivityIndicatorView *)v3->_activityView centerYAnchor];
    v10 = [(TUISpinnerView *)v3 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v15[1] = v11;
    v12 = [NSArray arrayWithObjects:v15 count:2];
    [NSLayoutConstraint activateConstraints:v12];

    [(UIActivityIndicatorView *)v3->_activityView startAnimating];
  }

  return v3;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = TUISpinnerView;
  [(TUIReusableBaseView *)&v3 prepareForReuse];
  [(UIActivityIndicatorView *)self->_activityView startAnimating];
}

- (void)setHidden:(BOOL)a3
{
  v3 = a3;
  v6.receiver = self;
  v6.super_class = TUISpinnerView;
  [(TUISpinnerView *)&v6 setHidden:?];
  activityView = self->_activityView;
  if (v3)
  {
    [(UIActivityIndicatorView *)activityView stopAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)activityView startAnimating];
  }
}

@end