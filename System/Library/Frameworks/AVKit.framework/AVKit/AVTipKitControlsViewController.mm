@interface AVTipKitControlsViewController
- (AVTipKitControlsViewController)init;
- (NSString)didPresentTipNotificationName;
- (NSString)viewControllerNotificationInfoKey;
- (id)findViewWithAccessibilityIdentifier:(id)identifier;
- (void)_configureTipsIfNeededWithCompletion:(void *)completion;
- (void)cleanUpTips;
- (void)configureTipsUponNextOverflowControlUpdateWithCompletion:(id)completion;
- (void)dismissTip;
- (void)displayTips;
- (void)handleEnhanceDialogueWithSourceViewIdentifier:(id)identifier;
- (void)handleTipEventDidEnterEnhanceDialogue;
- (void)handleTipEventDidEnterSubtitlesShortcut;
- (void)handleTipWithTipId:(id)id sourceViewIdentifier:(id)identifier arrowDirection:(unint64_t)direction priority:(int64_t)priority;
- (void)scheduleTipsIfNeededWithCompletion:(id)completion;
- (void)showTipsIfNeededWithCompletion:(id)completion;
@end

@implementation AVTipKitControlsViewController

- (id)findViewWithAccessibilityIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    v5 = +[TipsManager shared];
    v6 = [v5 findViewIn:self withAccessibilityIdentifier:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)displayTips
{
  v3 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v3 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v5 = +[TipsManager shared];
    [v5 displayTipsIn:self];
  }
}

- (void)dismissTip
{
  v3 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v3 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v5 = +[TipsManager shared];
    [v5 dismissTipIn:self];
  }
}

- (void)handleTipEventDidEnterSubtitlesShortcut
{
  v2 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v2 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v4 = +[TipsManager shared];
    [v4 handleTipEventDidEnterSubtitlesShortcut];
  }
}

- (void)handleTipEventDidEnterEnhanceDialogue
{
  v2 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v2 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v4 = +[TipsManager shared];
    [v4 handleTipEventDidEnterEnhanceDialogue];
  }
}

- (void)handleEnhanceDialogueWithSourceViewIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v4 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v6 = +[TipsManager shared];
    [v6 handleEnhanceDialogueTipInViewController:self sourceViewIdentifier:identifierCopy];
  }
}

- (void)handleTipWithTipId:(id)id sourceViewIdentifier:(id)identifier arrowDirection:(unint64_t)direction priority:(int64_t)priority
{
  idCopy = id;
  identifierCopy = identifier;
  v11 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v11 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    v13 = +[TipsManager shared];
    [v13 handleTipInViewController:self tipId:idCopy sourceViewIdentifier:identifierCopy arrowDirection:direction priority:priority];
  }
}

- (void)cleanUpTips
{
  v3 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v3 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    [(NSTimer *)self->_tipTimer invalidate];
    tipTimer = self->_tipTimer;
    self->_tipTimer = 0;

    v6 = +[TipsManager shared];
    [v6 dismissTipIn:self];

    v7 = +[TipsManager shared];
    [v7 cleanUpTips];
  }
}

- (void)scheduleTipsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[AVKitGlobalSettings shared];
  playerTipsEnabled = [v4 playerTipsEnabled];

  if (playerTipsEnabled)
  {
    self->_tipsState = self->_tipsState & 0xFFFFFFFFFFFFFFFALL | 1;
    [(AVTipKitControlsViewController *)self _configureTipsIfNeededWithCompletion:completionCopy];
  }
}

- (void)_configureTipsIfNeededWithCompletion:(void *)completion
{
  v5 = a2;
  if (completion)
  {
    v3 = +[AVKitGlobalSettings shared];
    if ([v3 playerTipsEnabled] && objc_msgSend(completion, "temporarilyVisible") && !completion[146] && (v4 = completion[148], (v4 & 5) == 1))
    {

      if ((v4 & 2) != 0)
      {
        completion[148] |= 4uLL;
        v5[2]();
      }
    }

    else
    {
    }
  }
}

- (NSString)didPresentTipNotificationName
{
  v2 = +[TipsManager shared];
  didPresentTipNotificationName = [v2 didPresentTipNotificationName];

  return didPresentTipNotificationName;
}

- (NSString)viewControllerNotificationInfoKey
{
  v2 = +[TipsManager shared];
  viewControllerNotificationInfoKey = [v2 viewControllerNotificationInfoKey];

  return viewControllerNotificationInfoKey;
}

- (void)configureTipsUponNextOverflowControlUpdateWithCompletion:(id)completion
{
  completionCopy = completion;
  v4 = +[AVKitGlobalSettings shared];
  if ([v4 playerTipsEnabled])
  {
    configureTipsUponNextOverflowControlUpdate = self->_configureTipsUponNextOverflowControlUpdate;

    if (configureTipsUponNextOverflowControlUpdate)
    {
      self->_configureTipsUponNextOverflowControlUpdate = 0;
      self->_tipsState |= 2uLL;
      [(AVTipKitControlsViewController *)self _configureTipsIfNeededWithCompletion:completionCopy];
    }
  }

  else
  {
  }
}

- (void)showTipsIfNeededWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = +[AVKitGlobalSettings shared];
  if (![v5 playerTipsEnabled])
  {

    goto LABEL_6;
  }

  if (!self)
  {

    goto LABEL_4;
  }

  tipsState = self->_tipsState;

  if ((tipsState & 4) == 0)
  {
LABEL_4:
    objc_initWeak(&location, self);
    v7 = MEMORY[0x1E695DFF0];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __65__AVTipKitControlsViewController_showTipsIfNeededWithCompletion___block_invoke;
    v10[3] = &unk_1E72090D8;
    objc_copyWeak(&v12, &location);
    v11 = completionCopy;
    v8 = [v7 scheduledTimerWithTimeInterval:0 repeats:v10 block:0.5];
    tipTimer = self->_tipTimer;
    self->_tipTimer = v8;

    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

LABEL_6:
}

void __65__AVTipKitControlsViewController_showTipsIfNeededWithCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = WeakRetained[146];
    WeakRetained[146] = 0;
    v4 = WeakRetained;

    [(AVTipKitControlsViewController *)v4 _configureTipsIfNeededWithCompletion:?];
    WeakRetained = v4;
  }
}

- (AVTipKitControlsViewController)init
{
  v6.receiver = self;
  v6.super_class = AVTipKitControlsViewController;
  v2 = [(AVMobileControlsViewController *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_tipsState = 0;
    tipTimer = v2->_tipTimer;
    v2->_tipTimer = 0;

    v3->_configureTipsUponNextOverflowControlUpdate = 0;
  }

  return v3;
}

@end