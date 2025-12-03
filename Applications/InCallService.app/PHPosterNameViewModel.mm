@interface PHPosterNameViewModel
- (BOOL)isVisible;
- (BOOL)shouldUpdateForCall:(id)call;
- (PHPosterNameViewModel)initWithCall:(id)call posterNameTextView:(id)view priorityPosterNameTextView:(id)textView;
- (void)removeFromSuperview;
- (void)transitionCallToActiveStateAnimated:(BOOL)animated;
- (void)updatePosterNameAlpha:(double)alpha;
- (void)updateStatus:(id)status;
- (void)updateStatusFromParticipantsView:(id)view;
- (void)updateViewModelForParticipantsView:(id)view;
@end

@implementation PHPosterNameViewModel

- (PHPosterNameViewModel)initWithCall:(id)call posterNameTextView:(id)view priorityPosterNameTextView:(id)textView
{
  callCopy = call;
  viewCopy = view;
  textViewCopy = textView;
  v18.receiver = self;
  v18.super_class = PHPosterNameViewModel;
  v12 = [(PHPosterNameViewModel *)&v18 init];
  if (v12)
  {
    titleText = [viewCopy titleText];
    v14 = [titleText length];

    if (!v14)
    {
      handle = [callCopy handle];
      value = [handle value];
      [viewCopy setTitleText:value];
    }

    objc_storeStrong(&v12->_call, call);
    objc_storeStrong(&v12->_posterNameTextView, view);
    objc_storeStrong(&v12->_priorityPosterNameTextView, textView);
  }

  return v12;
}

- (BOOL)isVisible
{
  priorityPosterNameTextView = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
  v4 = priorityPosterNameTextView;
  if (priorityPosterNameTextView)
  {
    posterNameTextView = priorityPosterNameTextView;
  }

  else
  {
    posterNameTextView = [(PHPosterNameViewModel *)self posterNameTextView];
  }

  v6 = posterNameTextView;

  viewController = [v6 viewController];
  view = [viewController view];
  [view alpha];
  v10 = v9 > 0.0;

  return v10;
}

- (void)removeFromSuperview
{
  posterNameTextView = [(PHPosterNameViewModel *)self posterNameTextView];
  viewController = [posterNameTextView viewController];
  view = [viewController view];
  [view removeFromSuperview];

  posterNameTextView2 = [(PHPosterNameViewModel *)self posterNameTextView];
  emojiViewController = [posterNameTextView2 emojiViewController];
  view2 = [emojiViewController view];
  [view2 removeFromSuperview];

  priorityPosterNameTextView = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (priorityPosterNameTextView)
  {
    priorityPosterNameTextView2 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    viewController2 = [priorityPosterNameTextView2 viewController];
    view3 = [viewController2 view];
    [view3 removeFromSuperview];

    priorityPosterNameTextView3 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    emojiViewController2 = [priorityPosterNameTextView3 emojiViewController];
    view4 = [emojiViewController2 view];
    [view4 removeFromSuperview];
  }
}

- (void)transitionCallToActiveStateAnimated:(BOOL)animated
{
  animatedCopy = animated;
  posterNameTextView = [(PHPosterNameViewModel *)self posterNameTextView];
  [posterNameTextView transitionCallToActiveStateAnimated:animatedCopy];

  priorityPosterNameTextView = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (priorityPosterNameTextView)
  {
    priorityPosterNameTextView2 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    [priorityPosterNameTextView2 transitionCallToActiveStateAnimated:animatedCopy];
  }
}

- (void)updateStatus:(id)status
{
  statusCopy = status;
  posterNameTextView = [(PHPosterNameViewModel *)self posterNameTextView];
  [posterNameTextView setStatusText:statusCopy];

  priorityPosterNameTextView = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (priorityPosterNameTextView)
  {
    priorityPosterNameTextView2 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    [priorityPosterNameTextView2 setStatusText:statusCopy];
  }
}

- (void)updateViewModelForParticipantsView:(id)view
{
  viewCopy = view;
  currentCall = [viewCopy currentCall];
  v6 = [(PHPosterNameViewModel *)self shouldUpdateForCall:currentCall];

  singleCallLabelView = [viewCopy singleCallLabelView];

  if (v6)
  {
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  [singleCallLabelView setPosterNameViewModel:selfCopy];
}

- (void)updatePosterNameAlpha:(double)alpha
{
  posterNameTextView = [(PHPosterNameViewModel *)self posterNameTextView];
  viewController = [posterNameTextView viewController];
  view = [viewController view];
  [view setAlpha:alpha];

  posterNameTextView2 = [(PHPosterNameViewModel *)self posterNameTextView];
  emojiViewController = [posterNameTextView2 emojiViewController];
  view2 = [emojiViewController view];
  [view2 setAlpha:alpha];

  priorityPosterNameTextView = [(PHPosterNameViewModel *)self priorityPosterNameTextView];

  if (priorityPosterNameTextView)
  {
    priorityPosterNameTextView2 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    viewController2 = [priorityPosterNameTextView2 viewController];
    view3 = [viewController2 view];
    [view3 setAlpha:alpha];

    priorityPosterNameTextView3 = [(PHPosterNameViewModel *)self priorityPosterNameTextView];
    emojiViewController2 = [priorityPosterNameTextView3 emojiViewController];
    view4 = [emojiViewController2 view];
    [view4 setAlpha:alpha];
  }
}

- (void)updateStatusFromParticipantsView:(id)view
{
  viewCopy = view;
  singleCallLabelView = [viewCopy singleCallLabelView];
  statusLabel = [singleCallLabelView statusLabel];
  text = [statusLabel text];

  currentCall = [viewCopy currentCall];

  LOBYTE(viewCopy) = [(PHPosterNameViewModel *)self shouldUpdateForCall:currentCall];
  if (viewCopy)
  {
    v8 = text;
  }

  else
  {

    v8 = 0;
  }

  v10 = v8;
  [(PHPosterNameViewModel *)self updateStatus:v8];
}

- (BOOL)shouldUpdateForCall:(id)call
{
  callCopy = call;
  call = [(PHPosterNameViewModel *)self call];

  v6 = 1;
  if (callCopy && call)
  {
    call2 = [(PHPosterNameViewModel *)self call];
    uniqueProxyIdentifier = [call2 uniqueProxyIdentifier];
    uniqueProxyIdentifier2 = [callCopy uniqueProxyIdentifier];
    v6 = [uniqueProxyIdentifier isEqualToString:uniqueProxyIdentifier2];
  }

  return v6;
}

@end