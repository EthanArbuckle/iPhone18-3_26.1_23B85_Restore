@interface RatchetCoolOffViewController
- (void)loadView;
- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply;
- (void)ratchetCoolOffContentDidTapOnCustomCancel:(id)cancel;
- (void)ratchetCoolOffContentDidTapOnFileRadar:(id)radar;
- (void)ratchetCoolOffContentDidTapOnLearnMore:(id)more;
- (void)viewDidLoad;
@end

@implementation RatchetCoolOffViewController

- (void)loadView
{
  v3 = objc_alloc_init(UIView);
  [(RatchetCoolOffViewController *)self setView:v3];

  internalInfo = [(TransitionViewController *)self internalInfo];
  v5 = [_TtC28LocalAuthenticationUIService21RatchetCoolOffFactory makeViewControllerWith:internalInfo delegate:self];
  contentVC = self->_contentVC;
  self->_contentVC = v5;

  [(RatchetCoolOffContentViewControllerType *)self->_contentVC willMoveToParent:self];
  view = [(RatchetCoolOffViewController *)self view];
  view2 = [(RatchetCoolOffContentViewControllerType *)self->_contentVC view];
  [view addSubview:view2];

  view3 = [(RatchetCoolOffContentViewControllerType *)self->_contentVC view];
  [view3 setTranslatesAutoresizingMaskIntoConstraints:0];

  view4 = [(RatchetCoolOffContentViewControllerType *)self->_contentVC view];
  topAnchor = [view4 topAnchor];
  view5 = [(RatchetCoolOffViewController *)self view];
  topAnchor2 = [view5 topAnchor];
  v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
  [v14 setActive:1];

  view6 = [(RatchetCoolOffContentViewControllerType *)self->_contentVC view];
  bottomAnchor = [view6 bottomAnchor];
  view7 = [(RatchetCoolOffViewController *)self view];
  bottomAnchor2 = [view7 bottomAnchor];
  v19 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  [v19 setActive:1];

  view8 = [(RatchetCoolOffContentViewControllerType *)self->_contentVC view];
  leadingAnchor = [view8 leadingAnchor];
  view9 = [(RatchetCoolOffViewController *)self view];
  leadingAnchor2 = [view9 leadingAnchor];
  v24 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [v24 setActive:1];

  view10 = [(RatchetCoolOffContentViewControllerType *)self->_contentVC view];
  trailingAnchor = [view10 trailingAnchor];
  view11 = [(RatchetCoolOffViewController *)self view];
  trailingAnchor2 = [view11 trailingAnchor];
  v29 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [v29 setActive:1];

  v30 = self->_contentVC;

  [(RatchetCoolOffContentViewControllerType *)v30 didMoveToParent:self];
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = RatchetCoolOffViewController;
  [(TransitionViewController *)&v4 viewDidLoad];
  presentationController = [(RatchetCoolOffViewController *)self presentationController];
  [presentationController setDelegate:self];
}

- (void)mechanismEvent:(int64_t)event value:(id)value reply:(id)reply
{
  valueCopy = value;
  replyCopy = reply;
  if (event == 19)
  {
    contentVC = self->_contentVC;
    v10 = 0.0;
  }

  else
  {
    if (event != 18)
    {
      goto LABEL_6;
    }

    v9 = self->_contentVC;
    [valueCopy doubleValue];
    contentVC = v9;
  }

  [(RatchetCoolOffContentViewControllerType *)contentVC setCoolOffDuration:v10];
LABEL_6:
}

- (void)ratchetCoolOffContentDidTapOnCustomCancel:(id)cancel
{
  v4 = [LACError errorWithCode:LACErrorCodeUserCustomRatchetCancel debugDescription:@"Custom canceled by user."];
  [(TransitionViewController *)self uiCancelWithError:v4];
}

- (void)ratchetCoolOffContentDidTapOnLearnMore:(id)more
{
  [(TransitionViewController *)self uiDismissed];
  v4 = +[LACUIDTOUtilities dtoLearnMoreLinkURL];
  [(TransitionViewController *)self uiOpenURL:v4];
}

- (void)ratchetCoolOffContentDidTapOnFileRadar:(id)radar
{
  [(TransitionViewController *)self uiDismissed];
  v4 = +[LACUIDTOUtilities dtoUnexpectedSecurityDelayRadarURL];
  [(TransitionViewController *)self uiOpenURL:v4];
}

@end