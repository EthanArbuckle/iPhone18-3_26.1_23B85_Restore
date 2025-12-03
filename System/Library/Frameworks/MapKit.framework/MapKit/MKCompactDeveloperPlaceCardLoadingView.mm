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
    widthAnchor = [(MKCompactDeveloperPlaceCardLoadingView *)v2 widthAnchor];
    v6 = [widthAnchor constraintGreaterThanOrEqualToConstant:240.0];

    LODWORD(v7) = 1144750080;
    [v6 setPriority:v7];
    v17 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView centerXAnchor];
    centerXAnchor2 = [(MKCompactDeveloperPlaceCardLoadingView *)v2 centerXAnchor];
    v9 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v20[0] = v9;
    centerYAnchor = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView centerYAnchor];
    centerYAnchor2 = [(MKCompactDeveloperPlaceCardLoadingView *)v2 centerYAnchor];
    v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v20[1] = v12;
    v20[2] = v6;
    heightAnchor = [(MKCompactDeveloperPlaceCardLoadingView *)v2 heightAnchor];
    v14 = [heightAnchor constraintGreaterThanOrEqualToConstant:100.0];
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