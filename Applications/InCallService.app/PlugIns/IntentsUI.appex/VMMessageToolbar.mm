@interface VMMessageToolbar
- (BOOL)_shouldShowRTTButton;
- (VMMessageToolbarDelegate)delegate;
- (VMPlayerControlsView)playerControlsView;
- (double)playerControlButtonWidthLayoutConstraintConstant;
- (void)commonInit;
- (void)handleActionForButtonSender:(id)sender event:(id)event;
- (void)handleActionForPlayerControlButtonSender:(id)sender event:(id)event;
- (void)handleActionForRTTButtonSender:(id)sender event:(id)event;
- (void)loadConstraints;
- (void)loadViews;
- (void)setButtonType:(unint64_t)type enabled:(BOOL)enabled;
- (void)setPlayerControlState:(int64_t)state;
- (void)setRestricted:(BOOL)restricted;
- (void)unloadConstraints;
- (void)updateAudioRouteButtonWithTouchUpInsideEnabled:(BOOL)enabled;
- (void)updateButtonsState;
- (void)updateRTTButton;
@end

@implementation VMMessageToolbar

- (void)setButtonType:(unint64_t)type enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  switch(type)
  {
    case 3uLL:
      trashButton = [(VMMessageToolbar *)self trashButton];
      break;
    case 2uLL:
      trashButton = [(VMMessageToolbar *)self dialRequestButton];
      break;
    case 1uLL:
      trashButton = [(VMMessageToolbar *)self audioRouteButton];
      break;
    default:
      return;
  }

  v6 = trashButton;
  [trashButton setHidden:!enabledCopy];
}

- (void)setRestricted:(BOOL)restricted
{
  if (self->_restricted != restricted)
  {
    self->_restricted = restricted;
    [(VMMessageToolbar *)self updateButtonsState];
  }
}

- (void)updateAudioRouteButtonWithTouchUpInsideEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  audioRouteButton = [(VMMessageToolbar *)self audioRouteButton];
  v6 = audioRouteButton;
  if (enabledCopy)
  {
    [audioRouteButton addTarget:self action:"handleActionForButtonSender:event:" forControlEvents:64];
  }

  else
  {
    [audioRouteButton removeTarget:self forEvents:64];
  }
}

- (void)updateButtonsState
{
  isRestricted = [(VMMessageToolbar *)self isRestricted];
  playerControlButton = [(VMMessageToolbar *)self playerControlButton];
  [playerControlButton setEnabled:isRestricted ^ 1];

  audioRouteButton = [(VMMessageToolbar *)self audioRouteButton];
  [audioRouteButton setEnabled:isRestricted ^ 1];

  [(VMMessageToolbar *)self updateRTTButton];
}

- (void)commonInit
{
  v3.receiver = self;
  v3.super_class = VMMessageToolbar;
  [(VMMessageToolbar *)&v3 commonInit];
  [(VMMessageToolbar *)self loadViews];
}

- (void)loadViews
{
  v3 = [[VMRoundButton alloc] initWithType:1];
  audioRouteButton = self->_audioRouteButton;
  self->_audioRouteButton = v3;

  [(VMRoundButton *)self->_audioRouteButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMMessageToolbar *)self updateAudioRouteButtonWithTouchUpInsideEnabled:1];
  [(VMMessageToolbar *)self addSubview:self->_audioRouteButton];
  v5 = [[VMRoundButton alloc] initWithType:2];
  dialRequestButton = self->_dialRequestButton;
  self->_dialRequestButton = v5;

  [(VMRoundButton *)self->_dialRequestButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMRoundButton *)self->_dialRequestButton addTarget:self action:"handleActionForButtonSender:event:" forControlEvents:64];
  [(VMMessageToolbar *)self addSubview:self->_dialRequestButton];
  v7 = [[VMRoundButton alloc] initWithType:3];
  trashButton = self->_trashButton;
  self->_trashButton = v7;

  [(VMRoundButton *)self->_trashButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMRoundButton *)self->_trashButton addTarget:self action:"handleActionForButtonSender:event:" forControlEvents:64];
  [(VMMessageToolbar *)self addSubview:self->_trashButton];
  v9 = [VMPlayerControlButton buttonWithState:0];
  playerControlButton = self->_playerControlButton;
  self->_playerControlButton = v9;

  [(VMPlayerControlButton *)self->_playerControlButton setTranslatesAutoresizingMaskIntoConstraints:0];
  [(VMPlayerControlButton *)self->_playerControlButton addTarget:self action:"handleActionForPlayerControlButtonSender:event:" forControlEvents:64];
  [(VMMessageToolbar *)self addSubview:self->_playerControlButton];
  if (TUCallScreeningRTTEnabled())
  {
    v11 = objc_alloc_init(VMRTTButton);
    rttButton = self->_rttButton;
    self->_rttButton = v11;

    [(VMRTTButton *)self->_rttButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(VMRTTButton *)self->_rttButton addTarget:self action:"handleActionForRTTButtonSender:event:" forControlEvents:64];
    [(VMMessageToolbar *)self addSubview:self->_rttButton];
  }

  [(VMMessageToolbar *)self updateButtonsState];
}

- (void)loadConstraints
{
  v98.receiver = self;
  v98.super_class = VMMessageToolbar;
  [(VMMessageToolbar *)&v98 loadConstraints];
  v96 = [NSMutableArray alloc];
  leadingAnchor = [(VMMessageToolbar *)self leadingAnchor];
  playerControlButton = [(VMMessageToolbar *)self playerControlButton];
  leadingAnchor2 = [playerControlButton leadingAnchor];
  v88 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:0.0];
  v100[0] = v88;
  topAnchor = [(VMMessageToolbar *)self topAnchor];
  playerControlButton2 = [(VMMessageToolbar *)self playerControlButton];
  topAnchor2 = [playerControlButton2 topAnchor];
  v81 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:-18.0];
  v100[1] = v81;
  bottomAnchor = [(VMMessageToolbar *)self bottomAnchor];
  playerControlButton3 = [(VMMessageToolbar *)self playerControlButton];
  bottomAnchor2 = [playerControlButton3 bottomAnchor];
  v77 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:16.0];
  v100[2] = v77;
  playerControlButton4 = [(VMMessageToolbar *)self playerControlButton];
  widthAnchor = [playerControlButton4 widthAnchor];
  [(VMMessageToolbar *)self playerControlButtonWidthLayoutConstraintConstant];
  v74 = [widthAnchor constraintEqualToConstant:?];
  v100[3] = v74;
  audioRouteButton = [(VMMessageToolbar *)self audioRouteButton];
  centerYAnchor = [audioRouteButton centerYAnchor];
  playerControlButton5 = [(VMMessageToolbar *)self playerControlButton];
  centerYAnchor2 = [playerControlButton5 centerYAnchor];
  v69 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v100[4] = v69;
  audioRouteButton2 = [(VMMessageToolbar *)self audioRouteButton];
  heightAnchor = [audioRouteButton2 heightAnchor];
  v66 = [heightAnchor constraintEqualToConstant:37.0];
  v100[5] = v66;
  audioRouteButton3 = [(VMMessageToolbar *)self audioRouteButton];
  bottomAnchor3 = [audioRouteButton3 bottomAnchor];
  playerControlButton6 = [(VMMessageToolbar *)self playerControlButton];
  bottomAnchor4 = [playerControlButton6 bottomAnchor];
  v61 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v100[6] = v61;
  audioRouteButton4 = [(VMMessageToolbar *)self audioRouteButton];
  trailingAnchor = [audioRouteButton4 trailingAnchor];
  dialRequestButton = [(VMMessageToolbar *)self dialRequestButton];
  leadingAnchor3 = [dialRequestButton leadingAnchor];
  v56 = [trailingAnchor constraintEqualToAnchor:leadingAnchor3 constant:-20.0];
  v100[7] = v56;
  audioRouteButton5 = [(VMMessageToolbar *)self audioRouteButton];
  widthAnchor2 = [audioRouteButton5 widthAnchor];
  v53 = [widthAnchor2 constraintEqualToConstant:37.0];
  v100[8] = v53;
  dialRequestButton2 = [(VMMessageToolbar *)self dialRequestButton];
  topAnchor3 = [dialRequestButton2 topAnchor];
  playerControlButton7 = [(VMMessageToolbar *)self playerControlButton];
  topAnchor4 = [playerControlButton7 topAnchor];
  v48 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v100[9] = v48;
  dialRequestButton3 = [(VMMessageToolbar *)self dialRequestButton];
  bottomAnchor5 = [dialRequestButton3 bottomAnchor];
  playerControlButton8 = [(VMMessageToolbar *)self playerControlButton];
  bottomAnchor6 = [playerControlButton8 bottomAnchor];
  v43 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v100[10] = v43;
  dialRequestButton4 = [(VMMessageToolbar *)self dialRequestButton];
  trailingAnchor2 = [dialRequestButton4 trailingAnchor];
  trashButton = [(VMMessageToolbar *)self trashButton];
  leadingAnchor4 = [trashButton leadingAnchor];
  v38 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor4 constant:-20.0];
  v100[11] = v38;
  dialRequestButton5 = [(VMMessageToolbar *)self dialRequestButton];
  widthAnchor3 = [dialRequestButton5 widthAnchor];
  audioRouteButton6 = [(VMMessageToolbar *)self audioRouteButton];
  widthAnchor4 = [audioRouteButton6 widthAnchor];
  v33 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v100[12] = v33;
  trashButton2 = [(VMMessageToolbar *)self trashButton];
  topAnchor5 = [trashButton2 topAnchor];
  playerControlButton9 = [(VMMessageToolbar *)self playerControlButton];
  topAnchor6 = [playerControlButton9 topAnchor];
  v28 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v100[13] = v28;
  trashButton3 = [(VMMessageToolbar *)self trashButton];
  bottomAnchor7 = [trashButton3 bottomAnchor];
  playerControlButton10 = [(VMMessageToolbar *)self playerControlButton];
  bottomAnchor8 = [playerControlButton10 bottomAnchor];
  v23 = [bottomAnchor7 constraintEqualToAnchor:bottomAnchor8];
  v100[14] = v23;
  trashButton4 = [(VMMessageToolbar *)self trashButton];
  widthAnchor5 = [trashButton4 widthAnchor];
  dialRequestButton6 = [(VMMessageToolbar *)self dialRequestButton];
  widthAnchor6 = [dialRequestButton6 widthAnchor];
  v6 = [widthAnchor5 constraintEqualToAnchor:widthAnchor6];
  v100[15] = v6;
  trashButton5 = [(VMMessageToolbar *)self trashButton];
  trailingAnchor3 = [trashButton5 trailingAnchor];
  trailingAnchor4 = [(VMMessageToolbar *)self trailingAnchor];
  v10 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v100[16] = v10;
  v11 = [NSArray arrayWithObjects:v100 count:17];
  v97 = [v96 initWithArray:v11];

  if (TUCallScreeningRTTEnabled())
  {
    rttButton = [(VMMessageToolbar *)self rttButton];
    topAnchor7 = [rttButton topAnchor];
    playerControlButton11 = [(VMMessageToolbar *)self playerControlButton];
    topAnchor8 = [playerControlButton11 topAnchor];
    v87 = [topAnchor7 constraintEqualToAnchor:topAnchor8];
    v99[0] = v87;
    rttButton2 = [(VMMessageToolbar *)self rttButton];
    bottomAnchor9 = [rttButton2 bottomAnchor];
    playerControlButton12 = [(VMMessageToolbar *)self playerControlButton];
    bottomAnchor10 = [playerControlButton12 bottomAnchor];
    v14 = [bottomAnchor9 constraintEqualToAnchor:bottomAnchor10];
    v99[1] = v14;
    rttButton3 = [(VMMessageToolbar *)self rttButton];
    leadingAnchor5 = [rttButton3 leadingAnchor];
    playerControlButton13 = [(VMMessageToolbar *)self playerControlButton];
    trailingAnchor5 = [playerControlButton13 trailingAnchor];
    v19 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor5 constant:20.0];
    v99[2] = v19;
    v20 = [NSArray arrayWithObjects:v99 count:3];
    [v97 addObjectsFromArray:v20];
  }

  [(VMMessageToolbar *)self setStandardConstraints:v97];
  standardConstraints = [(VMMessageToolbar *)self standardConstraints];
  [NSLayoutConstraint activateConstraints:standardConstraints];
}

- (void)unloadConstraints
{
  v4.receiver = self;
  v4.super_class = VMMessageToolbar;
  [(VMMessageToolbar *)&v4 unloadConstraints];
  standardConstraints = [(VMMessageToolbar *)self standardConstraints];
  [NSLayoutConstraint deactivateConstraints:standardConstraints];
}

- (void)setPlayerControlState:(int64_t)state
{
  if (state <= 2)
  {
    v4 = qword_1000A1428[state];
    playerControlButton = [(VMMessageToolbar *)self playerControlButton];
    [playerControlButton setPlayerState:v4 enabled:1];
  }
}

- (void)updateRTTButton
{
  if ([(VMMessageToolbar *)self _shouldShowRTTButton]&& ![(VMMessageToolbar *)self isRestricted])
  {
    v4 = 0;
    v3 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 1;
  }

  rttButton = [(VMMessageToolbar *)self rttButton];
  [rttButton setHidden:v4];

  rttButton2 = [(VMMessageToolbar *)self rttButton];
  [rttButton2 setEnabled:v3];
}

- (BOOL)_shouldShowRTTButton
{
  if (!TUCallScreeningRTTEnabled())
  {
    return 0;
  }

  delegate = [(VMMessageToolbar *)self delegate];
  v4 = [delegate conformsToProtocol:&OBJC_PROTOCOL___VMMessageToolbarDelegate];

  if (!v4)
  {
    return 0;
  }

  delegate2 = [(VMMessageToolbar *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = [delegate2 messageToolbarShouldShowRTTButton:self];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)handleActionForPlayerControlButtonSender:(id)sender event:(id)event
{
  senderCopy = sender;
  playerControlButton = [(VMMessageToolbar *)self playerControlButton];

  v6 = senderCopy;
  if (playerControlButton == senderCopy)
  {
    playerState = [senderCopy playerState];
    v8 = playerState == 1 ? 2 : playerState == 0;
    [senderCopy setPlayerState:playerState != 1 enabled:1];
    playerControlsView = [(VMMessageToolbar *)self playerControlsView];

    v6 = senderCopy;
    if (playerControlsView)
    {
      playerControlsView2 = [(VMMessageToolbar *)self playerControlsView];
      delegate = [playerControlsView2 delegate];

      if (objc_opt_respondsToSelector())
      {
        playerControlsView3 = [(VMMessageToolbar *)self playerControlsView];
        [delegate playbackControls:playerControlsView3 didRequestState:v8];
      }

      v6 = senderCopy;
    }
  }
}

- (void)handleActionForButtonSender:(id)sender event:(id)event
{
  senderCopy = sender;
  delegate = [(VMMessageToolbar *)self delegate];
  v6 = [delegate conformsToProtocol:&OBJC_PROTOCOL___VMMessageToolbarDelegate];

  if (v6)
  {
    delegate2 = [(VMMessageToolbar *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      audioRouteButton = [(VMMessageToolbar *)self audioRouteButton];

      if (audioRouteButton == senderCopy)
      {
        v11 = 1;
        goto LABEL_9;
      }

      dialRequestButton = [(VMMessageToolbar *)self dialRequestButton];

      if (dialRequestButton == senderCopy)
      {
        v11 = 2;
        goto LABEL_9;
      }

      trashButton = [(VMMessageToolbar *)self trashButton];

      if (trashButton == senderCopy)
      {
        v11 = 3;
LABEL_9:
        [delegate2 messageToolbar:self handleActionForButtonType:v11];
      }
    }
  }
}

- (void)handleActionForRTTButtonSender:(id)sender event:(id)event
{
  v5 = [(VMMessageToolbar *)self delegate:sender];
  v6 = [v5 conformsToProtocol:&OBJC_PROTOCOL___VMMessageToolbarDelegate];

  if (v6)
  {
    delegate = [(VMMessageToolbar *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate messageToolbarDidSelectRTTButton:self];
    }
  }
}

- (double)playerControlButtonWidthLayoutConstraintConstant
{
  playerControlButton = [(VMMessageToolbar *)self playerControlButton];
  playerState = [playerControlButton playerState];

  if (playerState == 1)
  {
    +[UIImage voicemailPlayGlyphImage];
  }

  else
  {
    +[UIImage voicemailPauseGlyphImage];
  }
  v4 = ;
  [v4 size];
  v6 = v5;

  return v6;
}

- (VMMessageToolbarDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (VMPlayerControlsView)playerControlsView
{
  WeakRetained = objc_loadWeakRetained(&self->_playerControlsView);

  return WeakRetained;
}

@end