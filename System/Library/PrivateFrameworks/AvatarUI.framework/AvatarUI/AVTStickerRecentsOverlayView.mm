@interface AVTStickerRecentsOverlayView
+ (id)disclosureOverlayView;
+ (id)overlayViewForMemojiCreation;
+ (id)standardOverlayView;
+ (id)stickerButtonImage;
- (AVTStickerRecentsOverlayDelegate)delegate;
- (AVTStickerRecentsOverlayView)initWithFrame:(CGRect)frame title:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle image:(id)image;
- (id)appropriateLayout;
- (void)didTapCloseButton:(id)button;
- (void)didTapContentView:(id)view;
- (void)didTapContinueButton:(id)button;
- (void)dismissAnimatedWithDuration:(double)duration;
- (void)layoutSubviews;
- (void)setupConstraints;
- (void)updateConstraints;
@end

@implementation AVTStickerRecentsOverlayView

+ (id)stickerButtonImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v4 = [v2 imageNamed:@"stickers_button" inBundle:v3 compatibleWithTraitCollection:0];

  return v4;
}

+ (id)overlayViewForMemojiCreation
{
  v3 = [self alloc];
  v4 = AVTAvatarUIBundle();
  v5 = [v4 localizedStringForKey:@"STICKER_RECENTS_SPLASH_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  v6 = AVTAvatarUIBundle();
  v7 = [v6 localizedStringForKey:@"STICKER_RECENTS_SPLASH_MESSAGE" value:&stru_1F39618F0 table:@"Localized"];
  v8 = AVTAvatarUIBundle();
  v9 = [v8 localizedStringForKey:@"STICKER_RECENTS_SPLASH_CONTINUE_BUTTON_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  stickerButtonImage = [self stickerButtonImage];
  v11 = [v3 initWithFrame:v5 title:v7 subtitle:v9 buttonTitle:stickerButtonImage image:{0.0, 0.0, 50.0, 50.0}];

  return v11;
}

+ (id)standardOverlayView
{
  v3 = [self alloc];
  v4 = AVTAvatarUIBundle();
  v5 = [v4 localizedStringForKey:@"STICKER_RECENTS_SPLASH_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  v6 = AVTAvatarUIBundle();
  v7 = [v6 localizedStringForKey:@"STICKER_RECENTS_SPLASH_MESSAGE" value:&stru_1F39618F0 table:@"Localized"];
  stickerButtonImage = [self stickerButtonImage];
  v9 = [v3 initWithFrame:v5 title:v7 subtitle:0 buttonTitle:stickerButtonImage image:{0.0, 0.0, 50.0, 50.0}];

  return v9;
}

+ (id)disclosureOverlayView
{
  v3 = [self alloc];
  stickerButtonImage = [self stickerButtonImage];
  v5 = [v3 initWithFrame:@"Warning" title:@"Only send to disclosed individuals" subtitle:0 buttonTitle:stickerButtonImage image:{0.0, 0.0, 50.0, 50.0}];

  return v5;
}

- (AVTStickerRecentsOverlayView)initWithFrame:(CGRect)frame title:(id)title subtitle:(id)subtitle buttonTitle:(id)buttonTitle image:(id)image
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v74[1] = *MEMORY[0x1E69E9840];
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  v18 = [MEMORY[0x1E69DC730] effectWithBlurRadius:6.0];
  v73.receiver = self;
  v73.super_class = AVTStickerRecentsOverlayView;
  v19 = [(AVTStickerRecentsOverlayView *)&v73 initWithEffect:v18];
  v20 = v19;
  if (v19)
  {
    [(AVTStickerRecentsOverlayView *)v19 setFrame:x, y, width, height];
    v21 = [titleCopy copy];
    title = v20->_title;
    v20->_title = v21;

    v23 = [subtitleCopy copy];
    subtitle = v20->_subtitle;
    v20->_subtitle = v23;

    objc_storeStrong(&v20->_image, image);
    v25 = objc_alloc(MEMORY[0x1E69DD250]);
    v26 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    v28 = *(MEMORY[0x1E695F058] + 16);
    v29 = *(MEMORY[0x1E695F058] + 24);
    v30 = [v25 initWithFrame:{*MEMORY[0x1E695F058], v27, v28, v29}];
    centeredContainerView = v20->_centeredContainerView;
    v20->_centeredContainerView = v30;

    [(UIView *)v20->_centeredContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    contentView = [(AVTStickerRecentsOverlayView *)v20 contentView];
    [contentView addSubview:v20->_centeredContainerView];

    v33 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:imageCopy];
    imageView = v20->_imageView;
    v20->_imageView = v33;

    [(UIImageView *)v20->_imageView setAccessibilityIgnoresInvertColors:1];
    [(UIImageView *)v20->_imageView setContentMode:1];
    [(UIImageView *)v20->_imageView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v20->_centeredContainerView addSubview:v20->_imageView];
    v35 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v26, v27, v28, v29}];
    titleLabel = v20->_titleLabel;
    v20->_titleLabel = v35;

    v37 = +[AVTUIFontRepository keyboardRecentsSplashTitleFont];
    [(UILabel *)v20->_titleLabel setFont:v37];

    [(UILabel *)v20->_titleLabel setTextAlignment:1];
    v38 = [titleCopy copy];
    [(UILabel *)v20->_titleLabel setText:v38];

    [(UILabel *)v20->_titleLabel setMinimumScaleFactor:0.5];
    [(UILabel *)v20->_titleLabel setAdjustsFontSizeToFitWidth:1];
    [(UILabel *)v20->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v20->_centeredContainerView addSubview:v20->_titleLabel];
    v39 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v26, v27, v28, v29}];
    subtitleLabel = v20->_subtitleLabel;
    v20->_subtitleLabel = v39;

    v41 = +[AVTUIFontRepository keyboardRecentsSplashSubtitleFont];
    [(UILabel *)v20->_subtitleLabel setFont:v41];

    [(UILabel *)v20->_subtitleLabel setTextAlignment:1];
    v42 = [subtitleCopy copy];
    [(UILabel *)v20->_subtitleLabel setText:v42];

    [(UILabel *)v20->_subtitleLabel setNumberOfLines:0];
    [(UILabel *)v20->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v20->_subtitleLabel setMinimumScaleFactor:0.5];
    [(UILabel *)v20->_subtitleLabel setAdjustsFontSizeToFitWidth:1];
    LODWORD(v43) = 1144766464;
    [(UILabel *)v20->_subtitleLabel setContentCompressionResistancePriority:1 forAxis:v43];
    LODWORD(v44) = 1148846080;
    [(UILabel *)v20->_subtitleLabel setContentHuggingPriority:1 forAxis:v44];
    [(UIView *)v20->_centeredContainerView addSubview:v20->_subtitleLabel];
    if (buttonTitle)
    {
      v45 = [MEMORY[0x1E69DC738] buttonWithType:1];
      continueButton = v20->_continueButton;
      v20->_continueButton = v45;

      v47 = +[AVTUIFontRepository keyboardRecentsSplashContinueButtonFont];
      titleLabel = [(UIButton *)v20->_continueButton titleLabel];
      [titleLabel setFont:v47];

      [(UIButton *)v20->_continueButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v49 = v20->_continueButton;
      v50 = AVTAvatarUIBundle();
      v51 = [v50 localizedStringForKey:@"STICKER_RECENTS_SPLASH_CONTINUE_BUTTON_TITLE" value:&stru_1F39618F0 table:@"Localized"];
      [(UIButton *)v49 setTitle:v51 forState:0];

      [(UIButton *)v20->_continueButton addTarget:v20 action:sel_didTapContinueButton_ forControlEvents:64];
      [(UIView *)v20->_centeredContainerView addSubview:v20->_continueButton];
      v52 = objc_alloc_init(MEMORY[0x1E69DC738]);
      closeButton = v20->_closeButton;
      v20->_closeButton = v52;

      [(UIButton *)v20->_closeButton setTranslatesAutoresizingMaskIntoConstraints:0];
      v54 = [MEMORY[0x1E69DCAD8] configurationWithTextStyle:*MEMORY[0x1E69DDDB8] scale:2];
      v55 = MEMORY[0x1E69DCAD8];
      secondaryLabelColor = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v74[0] = secondaryLabelColor;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
      v58 = [v55 _configurationWithHierarchicalColors:v57];

      v59 = [v58 configurationByApplyingConfiguration:v54];
      v60 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
      [(UIButton *)v20->_closeButton setImage:v60 forState:0];
      [(UIButton *)v20->_closeButton setPreferredSymbolConfiguration:v59 forImageInState:0];
      [(UIButton *)v20->_closeButton addTarget:v20 action:sel_didTapCloseButton_ forControlEvents:64];
      contentView2 = [(AVTStickerRecentsOverlayView *)v20 contentView];
      [contentView2 addSubview:v20->_closeButton];

      v62 = +[AVTStickerRecentsOverlayViewLayout buttonsPortraitLayout];
      portraitLayout = v20->_portraitLayout;
      v20->_portraitLayout = v62;

      v64 = +[AVTStickerRecentsOverlayViewLayout buttonsLandscapeLayout];
      landscapeLayout = v20->_landscapeLayout;
      v20->_landscapeLayout = v64;
    }

    else
    {
      v66 = [objc_alloc(MEMORY[0x1E69DD060]) initWithTarget:v20 action:sel_didTapContentView_];
      tapGestureRecognizer = v20->_tapGestureRecognizer;
      v20->_tapGestureRecognizer = v66;

      contentView3 = [(AVTStickerRecentsOverlayView *)v20 contentView];
      [contentView3 addGestureRecognizer:v20->_tapGestureRecognizer];

      v69 = +[AVTStickerRecentsOverlayViewLayout standardPortraitLayout];
      v70 = v20->_portraitLayout;
      v20->_portraitLayout = v69;

      v71 = +[AVTStickerRecentsOverlayViewLayout standardLandscapeLayout];
      v54 = v20->_landscapeLayout;
      v20->_landscapeLayout = v71;
    }

    [(AVTStickerRecentsOverlayView *)v20 setupConstraints];
  }

  return v20;
}

- (void)didTapContentView:(id)view
{
  delegate = [(AVTStickerRecentsOverlayView *)self delegate];
  [delegate overlayDidTapContentView:self];
}

- (void)didTapContinueButton:(id)button
{
  delegate = [(AVTStickerRecentsOverlayView *)self delegate];
  [delegate overlayDidTapContinueButton:self];
}

- (void)didTapCloseButton:(id)button
{
  delegate = [(AVTStickerRecentsOverlayView *)self delegate];
  [delegate overlayDidTapCloseButton:self];
}

- (id)appropriateLayout
{
  [(AVTStickerRecentsOverlayView *)self bounds];
  v4 = v3;
  [(AVTStickerRecentsOverlayView *)self bounds];
  v5 = &OBJC_IVAR___AVTStickerRecentsOverlayView__portraitLayout;
  if (v4 > v6)
  {
    v5 = &OBJC_IVAR___AVTStickerRecentsOverlayView__landscapeLayout;
  }

  v7 = *(&self->super.super.super.super.isa + *v5);

  return v7;
}

- (void)setupConstraints
{
  v114[16] = *MEMORY[0x1E69E9840];
  appropriateLayout = [(AVTStickerRecentsOverlayView *)self appropriateLayout];
  v4 = self->_centeredContainerView;
  topAnchor = [(UIView *)v4 topAnchor];
  contentView = [(AVTStickerRecentsOverlayView *)self contentView];
  topAnchor2 = [contentView topAnchor];
  [appropriateLayout imageToTopPadding];
  v8 = [topAnchor constraintGreaterThanOrEqualToAnchor:topAnchor2 constant:?];
  containerTopConstraint = self->_containerTopConstraint;
  self->_containerTopConstraint = v8;

  leadingAnchor = [(UIView *)v4 leadingAnchor];
  contentView2 = [(AVTStickerRecentsOverlayView *)self contentView];
  leadingAnchor2 = [contentView2 leadingAnchor];
  [appropriateLayout horizontalEdgePadding];
  v13 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
  containerLeadingConstraint = self->_containerLeadingConstraint;
  self->_containerLeadingConstraint = v13;

  trailingAnchor = [(UIView *)v4 trailingAnchor];
  contentView3 = [(AVTStickerRecentsOverlayView *)self contentView];
  trailingAnchor2 = [contentView3 trailingAnchor];
  [appropriateLayout horizontalEdgePadding];
  v19 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v18];
  containerTrailingConstraint = self->_containerTrailingConstraint;
  self->_containerTrailingConstraint = v19;

  heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
  [appropriateLayout imageHeight];
  v22 = [heightAnchor constraintEqualToConstant:?];
  imageHeightConstraint = self->_imageHeightConstraint;
  self->_imageHeightConstraint = v22;

  topAnchor3 = [(UILabel *)self->_titleLabel topAnchor];
  bottomAnchor = [(UIImageView *)self->_imageView bottomAnchor];
  [appropriateLayout imageToTitlePadding];
  v26 = [topAnchor3 constraintEqualToAnchor:bottomAnchor constant:?];
  imageToTitleConstraint = self->_imageToTitleConstraint;
  self->_imageToTitleConstraint = v26;

  topAnchor4 = [(UILabel *)self->_subtitleLabel topAnchor];
  bottomAnchor2 = [(UILabel *)self->_titleLabel bottomAnchor];
  v108 = appropriateLayout;
  [appropriateLayout titleToSubtitlePadding];
  v30 = [topAnchor4 constraintEqualToAnchor:bottomAnchor2 constant:?];
  titleToSubtitleConstraint = self->_titleToSubtitleConstraint;
  self->_titleToSubtitleConstraint = v30;

  v32 = self->_containerLeadingConstraint;
  v110 = MEMORY[0x1E695DF70];
  v114[0] = self->_containerTopConstraint;
  v114[1] = v32;
  v114[2] = self->_containerTrailingConstraint;
  bottomAnchor3 = [(UIView *)v4 bottomAnchor];
  contentView4 = [(AVTStickerRecentsOverlayView *)self contentView];
  bottomAnchor4 = [contentView4 bottomAnchor];
  v100 = [bottomAnchor3 constraintLessThanOrEqualToAnchor:bottomAnchor4];
  v114[3] = v100;
  centerYAnchor = [(UIView *)v4 centerYAnchor];
  contentView5 = [(AVTStickerRecentsOverlayView *)self contentView];
  centerYAnchor2 = [contentView5 centerYAnchor];
  v92 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v33 = self->_imageHeightConstraint;
  v114[4] = v92;
  v114[5] = v33;
  topAnchor5 = [(UIImageView *)self->_imageView topAnchor];
  topAnchor6 = [(UIView *)v4 topAnchor];
  v86 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v114[6] = v86;
  centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
  centerXAnchor2 = [(UIView *)v4 centerXAnchor];
  v80 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v114[7] = v80;
  widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
  widthAnchor2 = [(UIView *)v4 widthAnchor];
  v74 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
  v34 = self->_imageToTitleConstraint;
  v114[8] = v74;
  v114[9] = v34;
  leadingAnchor3 = [(UILabel *)self->_titleLabel leadingAnchor];
  leadingAnchor4 = [(UIView *)v4 leadingAnchor];
  v69 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
  v114[10] = v69;
  trailingAnchor3 = [(UILabel *)self->_titleLabel trailingAnchor];
  trailingAnchor4 = [(UIView *)v4 trailingAnchor];
  v66 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4];
  v114[11] = v66;
  heightAnchor2 = [(UILabel *)self->_titleLabel heightAnchor];
  v36 = [heightAnchor2 constraintEqualToConstant:30.0];
  v37 = self->_titleToSubtitleConstraint;
  v114[12] = v36;
  v114[13] = v37;
  leadingAnchor5 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  leadingAnchor6 = [(UIView *)v4 leadingAnchor];
  v40 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v114[14] = v40;
  trailingAnchor5 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v112 = v4;
  trailingAnchor6 = [(UIView *)v4 trailingAnchor];
  v43 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v114[15] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:16];
  v111 = [v110 arrayWithArray:v44];

  subtitleLabel = self->_subtitleLabel;
  if (self->_continueButton)
  {
    heightAnchor3 = [(UILabel *)subtitleLabel heightAnchor];
    v47 = [heightAnchor3 constraintEqualToConstant:0.0];
    hideSubtitleConstraint = self->_hideSubtitleConstraint;
    self->_hideSubtitleConstraint = v47;

    [(NSLayoutConstraint *)self->_hideSubtitleConstraint setActive:0];
    topAnchor7 = [(UIButton *)self->_continueButton topAnchor];
    bottomAnchor5 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    [v108 subtitleToButtonPadding];
    v51 = [topAnchor7 constraintEqualToAnchor:bottomAnchor5 constant:?];

    LODWORD(v52) = 1144750080;
    v73 = v51;
    [v51 setPriority:v52];
    widthAnchor3 = [(UIButton *)self->_closeButton widthAnchor];
    v105 = [widthAnchor3 constraintEqualToConstant:30.0];
    v113[0] = v105;
    heightAnchor4 = [(UIButton *)self->_closeButton heightAnchor];
    v101 = [heightAnchor4 constraintEqualToConstant:30.0];
    v113[1] = v101;
    trailingAnchor7 = [(UIButton *)self->_closeButton trailingAnchor];
    contentView6 = [(AVTStickerRecentsOverlayView *)self contentView];
    trailingAnchor8 = [contentView6 trailingAnchor];
    v93 = [trailingAnchor7 constraintEqualToAnchor:trailingAnchor8];
    v113[2] = v93;
    topAnchor8 = [(UIButton *)self->_closeButton topAnchor];
    contentView7 = [(AVTStickerRecentsOverlayView *)self contentView];
    topAnchor9 = [contentView7 topAnchor];
    v85 = [topAnchor8 constraintEqualToAnchor:topAnchor9];
    v113[3] = v85;
    v113[4] = v51;
    topAnchor10 = [(UIButton *)self->_continueButton topAnchor];
    bottomAnchor6 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    v81 = [topAnchor10 constraintGreaterThanOrEqualToAnchor:bottomAnchor6];
    v113[5] = v81;
    leadingAnchor7 = [(UIButton *)self->_continueButton leadingAnchor];
    leadingAnchor8 = [(UIView *)v112 leadingAnchor];
    v75 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8];
    v113[6] = v75;
    trailingAnchor9 = [(UIButton *)self->_continueButton trailingAnchor];
    trailingAnchor10 = [(UIView *)v112 trailingAnchor];
    v54 = [trailingAnchor9 constraintEqualToAnchor:trailingAnchor10];
    v113[7] = v54;
    heightAnchor5 = [(UIButton *)self->_continueButton heightAnchor];
    heightAnchor6 = [(UIImageView *)self->_imageView heightAnchor];
    v57 = [heightAnchor5 constraintEqualToAnchor:heightAnchor6];
    v113[8] = v57;
    bottomAnchor7 = [(UIButton *)self->_continueButton bottomAnchor];
    bottomAnchor8 = [(UIView *)v112 bottomAnchor];
    v60 = [bottomAnchor7 constraintLessThanOrEqualToAnchor:bottomAnchor8];
    v113[9] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:10];
    [v111 addObjectsFromArray:v61];

    v62 = v73;
  }

  else
  {
    bottomAnchor9 = [(UILabel *)subtitleLabel bottomAnchor];
    bottomAnchor10 = [(UIView *)v112 bottomAnchor];
    v62 = [bottomAnchor9 constraintLessThanOrEqualToAnchor:bottomAnchor10];

    LODWORD(v65) = 1148846080;
    [v62 setPriority:v65];
    [v111 addObject:v62];
  }

  [MEMORY[0x1E696ACD8] activateConstraints:v111];
  [(AVTStickerRecentsOverlayView *)self setLayoutConstraints:v111];
}

- (void)updateConstraints
{
  v7.receiver = self;
  v7.super_class = AVTStickerRecentsOverlayView;
  [(AVTStickerRecentsOverlayView *)&v7 updateConstraints];
  currentLayout = [(AVTStickerRecentsOverlayView *)self currentLayout];
  [currentLayout imageToTopPadding];
  [(NSLayoutConstraint *)self->_containerTopConstraint setConstant:?];
  [currentLayout horizontalEdgePadding];
  [(NSLayoutConstraint *)self->_containerLeadingConstraint setConstant:?];
  [currentLayout horizontalEdgePadding];
  [(NSLayoutConstraint *)self->_containerTrailingConstraint setConstant:-v4];
  [currentLayout imageHeight];
  [(NSLayoutConstraint *)self->_imageHeightConstraint setConstant:?];
  [currentLayout imageToTitlePadding];
  [(NSLayoutConstraint *)self->_imageToTitleConstraint setConstant:?];
  [currentLayout titleToSubtitlePadding];
  [(NSLayoutConstraint *)self->_titleToSubtitleConstraint setConstant:?];
  if (self->_hideSubtitleConstraint)
  {
    contentView = [(AVTStickerRecentsOverlayView *)self contentView];
    [contentView bounds];
    [(NSLayoutConstraint *)self->_hideSubtitleConstraint setActive:v6 < 130.0];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = AVTStickerRecentsOverlayView;
  [(AVTStickerRecentsOverlayView *)&v6 layoutSubviews];
  appropriateLayout = [(AVTStickerRecentsOverlayView *)self appropriateLayout];
  [(AVTStickerRecentsOverlayView *)self bounds];
  if (v4 > 0.0)
  {
    currentLayout = [(AVTStickerRecentsOverlayView *)self currentLayout];

    if (appropriateLayout != currentLayout)
    {
      [(AVTStickerRecentsOverlayView *)self setCurrentLayout:appropriateLayout];
      [(AVTStickerRecentsOverlayView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)dismissAnimatedWithDuration:(double)duration
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__AVTStickerRecentsOverlayView_dismissAnimatedWithDuration___block_invoke;
  v3[3] = &unk_1E7F3A9B8;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0 completion:duration];
}

- (AVTStickerRecentsOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end