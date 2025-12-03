@interface MKFullDeveloperPlaceCardLoadingView
+ (CGSize)contentSize;
- (MKFullDeveloperPlaceCardLoadingView)init;
@end

@implementation MKFullDeveloperPlaceCardLoadingView

- (MKFullDeveloperPlaceCardLoadingView)init
{
  v19[4] = *MEMORY[0x1E69E9840];
  v18.receiver = self;
  v18.super_class = MKFullDeveloperPlaceCardLoadingView;
  v2 = [(MKFullDeveloperPlaceCardLoadingView *)&v18 initWithFrame:*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)];
  if (v2)
  {
    v3 = objc_alloc_init(MKDeveloperPlaceCardLoadingActivityIndicatorView);
    activityIndicatorView = v2->_activityIndicatorView;
    v2->_activityIndicatorView = v3;

    [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(MKFullDeveloperPlaceCardLoadingView *)v2 addSubview:v2->_activityIndicatorView];
    v15 = MEMORY[0x1E696ACD8];
    centerXAnchor = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView centerXAnchor];
    centerXAnchor2 = [(MKFullDeveloperPlaceCardLoadingView *)v2 centerXAnchor];
    v5 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v19[0] = v5;
    centerYAnchor = [(MKDeveloperPlaceCardLoadingActivityIndicatorView *)v2->_activityIndicatorView centerYAnchor];
    centerYAnchor2 = [(MKFullDeveloperPlaceCardLoadingView *)v2 centerYAnchor];
    v8 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v19[1] = v8;
    widthAnchor = [(MKFullDeveloperPlaceCardLoadingView *)v2 widthAnchor];
    v10 = [widthAnchor constraintGreaterThanOrEqualToConstant:320.0];
    v19[2] = v10;
    heightAnchor = [(MKFullDeveloperPlaceCardLoadingView *)v2 heightAnchor];
    v12 = [heightAnchor constraintGreaterThanOrEqualToConstant:442.0];
    v19[3] = v12;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:4];
    [v15 activateConstraints:v13];
  }

  return v2;
}

+ (CGSize)contentSize
{
  v2 = 320.0;
  v3 = 442.0;
  result.height = v3;
  result.width = v2;
  return result;
}

@end