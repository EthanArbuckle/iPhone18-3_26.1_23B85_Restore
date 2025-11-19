@interface PHPosterNameViewModel
- (BOOL)isVisible;
- (BOOL)shouldUpdateForCall:(id)a3;
- (PHPosterNameViewModel)initWithCall:(id)a3 posterNameTextView:(id)a4 priorityPosterNameTextView:(id)a5;
- (void)removeFromSuperview;
- (void)transitionCallToActiveStateAnimated:(BOOL)a3;
- (void)updatePosterNameAlpha:(double)a3;
- (void)updateStatus:(id)a3;
- (void)updateStatusFromParticipantsView:(id)a3;
- (void)updateViewModelForParticipantsView:(id)a3;
@end

@implementation PHPosterNameViewModel

- (PHPosterNameViewModel)initWithCall:(id)a3 posterNameTextView:(id)a4 priorityPosterNameTextView:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v18.receiver = self;
  v18.super_class = PHPosterNameViewModel;
  v12 = [(PHPosterNameViewModel *)&v18 init];
  if (v12)
  {
    v13 = [v10 titleText];
    v14 = [v13 length];

    if (!v14)
    {
      v15 = [v9 handle];
      v16 = [v15 value];
      [v10 setTitleText:v16];
    }

    objc_storeStrong(&v12->_call, a3);
    objc_storeStrong(&v12->_posterNameTextView, a4);
    objc_storeStrong(&v12->_priorityPosterNameTextView, a5);
  }

  return v12;
}

- (BOOL)isVisible
{
  v3 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(PHPosterNameViewModel *)self posterNameTextView];
  }

  v6 = v5;

  v7 = [v6 viewController];
  v8 = [v7 view];
  [v8 alpha];
  v10 = v9 > 0.0;

  return v10;
}

- (void)removeFromSuperview
{
  v3 = [(PHPosterNameViewModel *)self posterNameTextView];
  v4 = [v3 viewController];
  v5 = [v4 view];
  [v5 removeFromSuperview];

  v6 = [(PHPosterNameViewModel *)self posterNameTextView];
  v7 = [v6 emojiViewController];
  v8 = [v7 view];
  [v8 removeFromSuperview];

  v9 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (v9)
  {
    v10 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    v11 = [v10 viewController];
    v12 = [v11 view];
    [v12 removeFromSuperview];

    v15 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    v13 = [v15 emojiViewController];
    v14 = [v13 view];
    [v14 removeFromSuperview];
  }
}

- (void)transitionCallToActiveStateAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = [(PHPosterNameViewModel *)self posterNameTextView];
  [v5 transitionCallToActiveStateAnimated:v3];

  v6 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (v6)
  {
    v7 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    [v7 transitionCallToActiveStateAnimated:v3];
  }
}

- (void)updateStatus:(id)a3
{
  v7 = a3;
  v4 = [(PHPosterNameViewModel *)self posterNameTextView];
  [v4 setStatusText:v7];

  v5 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (v5)
  {
    v6 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    [v6 setStatusText:v7];
  }
}

- (void)updateViewModelForParticipantsView:(id)a3
{
  v4 = a3;
  v5 = [v4 currentCall];
  v6 = [(PHPosterNameViewModel *)self shouldUpdateForCall:v5];

  v8 = [v4 singleCallLabelView];

  if (v6)
  {
    v7 = self;
  }

  else
  {
    v7 = 0;
  }

  [v8 setPosterNameViewModel:v7];
}

- (void)updatePosterNameAlpha:(double)a3
{
  v5 = [(PHPosterNameViewModel *)self posterNameTextView];
  v6 = [v5 viewController];
  v7 = [v6 view];
  [v7 setAlpha:a3];

  v8 = [(PHPosterNameViewModel *)self posterNameTextView];
  v9 = [v8 emojiViewController];
  v10 = [v9 view];
  [v10 setAlpha:a3];

  v11 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (v11)
  {
    v12 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    v13 = [v12 viewController];
    v14 = [v13 view];
    [v14 setAlpha:a3];

    v17 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    v15 = [v17 emojiViewController];
    v16 = [v15 view];
    [v16 setAlpha:a3];
  }
}

- (void)updateStatusFromParticipantsView:(id)a3
{
  v4 = a3;
  v5 = [v4 singleCallLabelView];
  v6 = [v5 statusLabel];
  v9 = [v6 text];

  v7 = [v4 currentCall];

  LOBYTE(v4) = [(PHPosterNameViewModel *)self shouldUpdateForCall:v7];
  if (v4)
  {
    v8 = v9;
  }

  else
  {

    v8 = 0;
  }

  v10 = v8;
  [(PHPosterNameViewModel *)self updateStatus:v8];
}

- (BOOL)shouldUpdateForCall:(id)a3
{
  v4 = a3;
  v5 = [(PHPosterNameViewModel *)self call];

  v6 = 1;
  if (v4 && v5)
  {
    v7 = [(PHPosterNameViewModel *)self call];
    v8 = [v7 uniqueProxyIdentifier];
    v9 = [v4 uniqueProxyIdentifier];
    v6 = [v8 isEqualToString:v9];
  }

  return v6;
}

@end