@interface MKCompactDeveloperPlaceCardLoadingView
+ (CGSize)contentSize;
- (MKCompactDeveloperPlaceCardLoadingView)init;
@end

@implementation MKCompactDeveloperPlaceCardLoadingView

- (MKCompactDeveloperPlaceCardLoadingView)init
{
  v20[4] = *MEMORY[0x1E69E9840];
  v19.receiver = self;
  v19.super_class = MKCompactDeveloperPlaceCardLoadingView;
  v2 = [(MKCompactDeveloperPlaceCardLoadingView *)&v19 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MKDeveloperPlaceCardLoadingActivityIndicatorView);
    activityIndicatorView = v2->_activityIndicatorView;
    v2->_activityIndicatorView = v3;

    [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKCompactDeveloperPlaceCardLoadingView *)v2 addSubview:v2->_activityIndicatorView];
    v5 = [(MKCompactDeveloperPlaceCardLoadingView *)v2 widthAnchor];
    v6 = [v5 constraintGreaterThanOrEqualToConstant:240.0];

    LODWORD(v7) = 1144750080;
    [v6 setPriority:v7];
    v17 = MEMORY[0x1E696ACD8];
    v18 = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView centerXAnchor];
    v8 = [(MKCompactDeveloperPlaceCardLoadingView *)v2 centerXAnchor];
    v9 = [v18 constraintEqualToAnchor:v8];
    v20[0] = v9;
    v10 = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView centerYAnchor];
    v11 = [(MKCompactDeveloperPlaceCardLoadingView *)v2 centerYAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v20[1] = v12;
    v20[2] = v6;
    v13 = [(MKCompactDeveloperPlaceCardLoadingView *)v2 heightAnchor];
    v14 = [v13 constraintGreaterThanOrEqualToConstant:100.0];
    v20[3] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v20 count:4];
    [v17 activateConstraints:v15];
  }

  return v2;
}

+ (CGSize)contentSize
{
  v2 = 240.0;
  v3 = 100.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end