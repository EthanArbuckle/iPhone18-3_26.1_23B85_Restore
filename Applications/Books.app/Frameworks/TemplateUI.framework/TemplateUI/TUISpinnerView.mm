@interface TUISpinnerView
+ (id)renderModelWithIdentifier:(id)identifier;
- (TUISpinnerView)initWithFrame:(CGRect)frame;
- (void)prepareForReuse;
- (void)setHidden:(BOOL)hidden;
@end

@implementation TUISpinnerView

+ (id)renderModelWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[TUIRenderModelSpinner alloc] initWithReuseIdentifier:@"TUIReuseIdentifierSpinnerView" identifier:identifierCopy];

  return v4;
}

- (TUISpinnerView)initWithFrame:(CGRect)frame
{
  v14.receiver = self;
  v14.super_class = TUISpinnerView;
  v3 = [(TUISpinnerView *)&v14 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:100];
    activityView = v3->_activityView;
    v3->_activityView = v4;

    [(UIActivityIndicatorView *)v3->_activityView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(TUISpinnerView *)v3 addSubview:v3->_activityView];
    centerXAnchor = [(UIActivityIndicatorView *)v3->_activityView centerXAnchor];
    centerXAnchor2 = [(TUISpinnerView *)v3 centerXAnchor];
    v8 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v15[0] = v8;
    centerYAnchor = [(UIActivityIndicatorView *)v3->_activityView centerYAnchor];
    centerYAnchor2 = [(TUISpinnerView *)v3 centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
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

- (void)setHidden:(BOOL)hidden
{
  hiddenCopy = hidden;
  v6.receiver = self;
  v6.super_class = TUISpinnerView;
  [(TUISpinnerView *)&v6 setHidden:?];
  activityView = self->_activityView;
  if (hiddenCopy)
  {
    [(UIActivityIndicatorView *)activityView stopAnimating];
  }

  else
  {
    [(UIActivityIndicatorView *)activityView startAnimating];
  }
}

@end