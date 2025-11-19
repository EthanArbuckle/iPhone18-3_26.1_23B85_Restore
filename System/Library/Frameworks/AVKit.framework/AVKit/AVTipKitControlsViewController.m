@interface AVTipKitControlsViewController
- (AVTipKitControlsViewController)init;
- (NSString)didPresentTipNotificationName;
- (NSString)viewControllerNotificationInfoKey;
- (id)findViewWithAccessibilityIdentifier:(id)a3;
- (void)_configureTipsIfNeededWithCompletion:(void *)a1;
- (void)cleanUpTips;
- (void)configureTipsUponNextOverflowControlUpdateWithCompletion:(id)a3;
- (void)dismissTip;
- (void)displayTips;
- (void)handleEnhanceDialogueWithSourceViewIdentifier:(id)a3;
- (void)handleTipEventDidEnterEnhanceDialogue;
- (void)handleTipEventDidEnterSubtitlesShortcut;
- (void)handleTipWithTipId:(id)a3 sourceViewIdentifier:(id)a4 arrowDirection:(unint64_t)a5 priority:(int64_t)a6;
- (void)scheduleTipsIfNeededWithCompletion:(id)a3;
- (void)showTipsIfNeededWithCompletion:(id)a3;
@end

@implementation AVTipKitControlsViewController

- (id)findViewWithAccessibilityIdentifier:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = +[TipsManager shared];
    v6 = [v5 findViewIn:self withAccessibilityIdentifier:v4];
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
  v4 = [v3 playerTipsEnabled];

  if (v4)
  {
    v5 = +[TipsManager shared];
    [v5 displayTipsIn:self];
  }
}

- (void)dismissTip
{
  v3 = +[AVKitGlobalSettings shared];
  v4 = [v3 playerTipsEnabled];

  if (v4)
  {
    v5 = +[TipsManager shared];
    [v5 dismissTipIn:self];
  }
}

- (void)handleTipEventDidEnterSubtitlesShortcut
{
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 playerTipsEnabled];

  if (v3)
  {
    v4 = +[TipsManager shared];
    [v4 handleTipEventDidEnterSubtitlesShortcut];
  }
}

- (void)handleTipEventDidEnterEnhanceDialogue
{
  v2 = +[AVKitGlobalSettings shared];
  v3 = [v2 playerTipsEnabled];

  if (v3)
  {
    v4 = +[TipsManager shared];
    [v4 handleTipEventDidEnterEnhanceDialogue];
  }
}

- (void)handleEnhanceDialogueWithSourceViewIdentifier:(id)a3
{
  v7 = a3;
  v4 = +[AVKitGlobalSettings shared];
  v5 = [v4 playerTipsEnabled];

  if (v5)
  {
    v6 = +[TipsManager shared];
    [v6 handleEnhanceDialogueTipInViewController:self sourceViewIdentifier:v7];
  }
}

- (void)handleTipWithTipId:(id)a3 sourceViewIdentifier:(id)a4 arrowDirection:(unint64_t)a5 priority:(int64_t)a6
{
  v14 = a3;
  v10 = a4;
  v11 = +[AVKitGlobalSettings shared];
  v12 = [v11 playerTipsEnabled];

  if (v12)
  {
    v13 = +[TipsManager shared];
    [v13 handleTipInViewController:self tipId:v14 sourceViewIdentifier:v10 arrowDirection:a5 priority:a6];
  }
}

- (void)cleanUpTips
{
  v3 = +[AVKitGlobalSettings shared];
  v4 = [v3 playerTipsEnabled];

  if (v4)
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

- (void)scheduleTipsIfNeededWithCompletion:(id)a3
{
  v6 = a3;
  v4 = +[AVKitGlobalSettings shared];
  v5 = [v4 playerTipsEnabled];

  if (v5)
  {
    self->_tipsState = self->_tipsState & 0xFFFFFFFFFFFFFFFALL | 1;
    [(AVTipKitControlsViewController *)self _configureTipsIfNeededWithCompletion:v6];
  }
}

- (void)_configureTipsIfNeededWithCompletion:(void *)a1
{
  v5 = a2;
  if (a1)
  {
    v3 = +[AVKitGlobalSettings shared];
    if ([v3 playerTipsEnabled] && objc_msgSend(a1, "temporarilyVisible") && !a1[146] && (v4 = a1[148], (v4 & 5) == 1))
    {

      if ((v4 & 2) != 0)
      {
        a1[148] |= 4uLL;
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
  v3 = [v2 didPresentTipNotificationName];

  return v3;
}

- (NSString)viewControllerNotificationInfoKey
{
  v2 = +[TipsManager shared];
  v3 = [v2 viewControllerNotificationInfoKey];

  return v3;
}

- (void)configureTipsUponNextOverflowControlUpdateWithCompletion:(id)a3
{
  v6 = a3;
  v4 = +[AVKitGlobalSettings shared];
  if ([v4 playerTipsEnabled])
  {
    configureTipsUponNextOverflowControlUpdate = self->_configureTipsUponNextOverflowControlUpdate;

    if (configureTipsUponNextOverflowControlUpdate)
    {
      self->_configureTipsUponNextOverflowControlUpdate = 0;
      self->_tipsState |= 2uLL;
      [(AVTipKitControlsViewController *)self _configureTipsIfNeededWithCompletion:v6];
    }
  }

  else
  {
  }
}

- (void)showTipsIfNeededWithCompletion:(id)a3
{
  v4 = a3;
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
    v11 = v4;
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