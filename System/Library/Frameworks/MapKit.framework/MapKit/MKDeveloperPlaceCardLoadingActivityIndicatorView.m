@interface MKDeveloperPlaceCardLoadingActivityIndicatorView
- (MKDeveloperPlaceCardLoadingActivityIndicatorView)init;
@end

@implementation MKDeveloperPlaceCardLoadingActivityIndicatorView

- (MKDeveloperPlaceCardLoadingActivityIndicatorView)init
{
  v15[2] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = MKDeveloperPlaceCardLoadingActivityIndicatorView;
  v2 = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)&v14 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E69DC638]) initWithActivityIndicatorStyle:100];
    activityIndicatorView = v2->_activityIndicatorView;
    v2->_activityIndicatorView = v3;

    [(UIActivityIndicatorView *)v2->_activityIndicatorView startAnimating];
    [(UIActivityIndicatorView *)v2->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2 addSubview:v2->_activityIndicatorView];
    v5 = MEMORY[0x1E696ACD8];
    v6 = [(UIActivityIndicatorView *)v2->_activityIndicatorView centerXAnchor];
    v7 = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2 centerXAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    v15[0] = v8;
    v9 = [(UIActivityIndicatorView *)v2->_activityIndicatorView centerYAnchor];
    v10 = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v15[1] = v11;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:2];
    [v5 activateConstraints:v12];
  }

  return v2;
}

@end