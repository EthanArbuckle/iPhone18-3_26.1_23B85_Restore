@interface AVTStickerRecentsOverlayView
+ (id)disclosureOverlayView;
+ (id)overlayViewForMemojiCreation;
+ (id)standardOverlayView;
+ (id)stickerButtonImage;
- (AVTStickerRecentsOverlayDelegate)delegate;
- (AVTStickerRecentsOverlayView)initWithFrame:(CGRect)a3 title:(id)a4 subtitle:(id)a5 buttonTitle:(id)a6 image:(id)a7;
- (id)appropriateLayout;
- (void)didTapCloseButton:(id)a3;
- (void)didTapContentView:(id)a3;
- (void)didTapContinueButton:(id)a3;
- (void)dismissAnimatedWithDuration:(double)a3;
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
  v3 = [a1 alloc];
  v4 = AVTAvatarUIBundle();
  v5 = [v4 localizedStringForKey:@"STICKER_RECENTS_SPLASH_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  v6 = AVTAvatarUIBundle();
  v7 = [v6 localizedStringForKey:@"STICKER_RECENTS_SPLASH_MESSAGE" value:&stru_1F39618F0 table:@"Localized"];
  v8 = AVTAvatarUIBundle();
  v9 = [v8 localizedStringForKey:@"STICKER_RECENTS_SPLASH_CONTINUE_BUTTON_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  v10 = [a1 stickerButtonImage];
  v11 = [v3 initWithFrame:v5 title:v7 subtitle:v9 buttonTitle:v10 image:{0.0, 0.0, 50.0, 50.0}];

  return v11;
}

+ (id)standardOverlayView
{
  v3 = [a1 alloc];
  v4 = AVTAvatarUIBundle();
  v5 = [v4 localizedStringForKey:@"STICKER_RECENTS_SPLASH_TITLE" value:&stru_1F39618F0 table:@"Localized"];
  v6 = AVTAvatarUIBundle();
  v7 = [v6 localizedStringForKey:@"STICKER_RECENTS_SPLASH_MESSAGE" value:&stru_1F39618F0 table:@"Localized"];
  v8 = [a1 stickerButtonImage];
  v9 = [v3 initWithFrame:v5 title:v7 subtitle:0 buttonTitle:v8 image:{0.0, 0.0, 50.0, 50.0}];

  return v9;
}

+ (id)disclosureOverlayView
{
  v3 = [a1 alloc];
  v4 = [a1 stickerButtonImage];
  v5 = [v3 initWithFrame:@"Warning" title:@"Only send to disclosed individuals" subtitle:0 buttonTitle:v4 image:{0.0, 0.0, 50.0, 50.0}];

  return v5;
}

- (AVTStickerRecentsOverlayView)initWithFrame:(CGRect)a3 title:(id)a4 subtitle:(id)a5 buttonTitle:(id)a6 image:(id)a7
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v74[1] = *MEMORY[0x1E69E9840];
  v15 = a4;
  v16 = a5;
  v17 = a7;
  v18 = [MEMORY[0x1E69DC730] effectWithBlurRadius:6.0];
  v73.receiver = self;
  v73.super_class = AVTStickerRecentsOverlayView;
  v19 = [(AVTStickerRecentsOverlayView *)&v73 initWithEffect:v18];
  v20 = v19;
  if (v19)
  {
    [(AVTStickerRecentsOverlayView *)v19 setFrame:x, y, width, height];
    v21 = [v15 copy];
    title = v20->_title;
    v20->_title = v21;

    v23 = [v16 copy];
    subtitle = v20->_subtitle;
    v20->_subtitle = v23;

    objc_storeStrong(&v20->_image, a7);
    v25 = objc_alloc(MEMORY[0x1E69DD250]);
    v26 = *MEMORY[0x1E695F058];
    v27 = *(MEMORY[0x1E695F058] + 8);
    v28 = *(MEMORY[0x1E695F058] + 16);
    v29 = *(MEMORY[0x1E695F058] + 24);
    v30 = [v25 initWithFrame:{*MEMORY[0x1E695F058], v27, v28, v29}];
    centeredContainerView = v20->_centeredContainerView;
    v20->_centeredContainerView = v30;

    [(UIView *)v20->_centeredContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v32 = [(AVTStickerRecentsOverlayView *)v20 contentView];
    [v32 addSubview:v20->_centeredContainerView];

    v33 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v17];
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
    v38 = [v15 copy];
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
    v42 = [v16 copy];
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
    if (a6)
    {
      v45 = [MEMORY[0x1E69DC738] buttonWithType:1];
      continueButton = v20->_continueButton;
      v20->_continueButton = v45;

      v47 = +[AVTUIFontRepository keyboardRecentsSplashContinueButtonFont];
      v48 = [(UIButton *)v20->_continueButton titleLabel];
      [v48 setFont:v47];

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
      v56 = [MEMORY[0x1E69DC888] secondaryLabelColor];
      v74[0] = v56;
      v57 = [MEMORY[0x1E695DEC8] arrayWithObjects:v74 count:1];
      v58 = [v55 _configurationWithHierarchicalColors:v57];

      v59 = [v58 configurationByApplyingConfiguration:v54];
      v60 = [MEMORY[0x1E69DCAB8] systemImageNamed:@"xmark.circle.fill"];
      [(UIButton *)v20->_closeButton setImage:v60 forState:0];
      [(UIButton *)v20->_closeButton setPreferredSymbolConfiguration:v59 forImageInState:0];
      [(UIButton *)v20->_closeButton addTarget:v20 action:sel_didTapCloseButton_ forControlEvents:64];
      v61 = [(AVTStickerRecentsOverlayView *)v20 contentView];
      [v61 addSubview:v20->_closeButton];

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

      v68 = [(AVTStickerRecentsOverlayView *)v20 contentView];
      [v68 addGestureRecognizer:v20->_tapGestureRecognizer];

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

- (void)didTapContentView:(id)a3
{
  v4 = [(AVTStickerRecentsOverlayView *)self delegate];
  [v4 overlayDidTapContentView:self];
}

- (void)didTapContinueButton:(id)a3
{
  v4 = [(AVTStickerRecentsOverlayView *)self delegate];
  [v4 overlayDidTapContinueButton:self];
}

- (void)didTapCloseButton:(id)a3
{
  v4 = [(AVTStickerRecentsOverlayView *)self delegate];
  [v4 overlayDidTapCloseButton:self];
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
  v3 = [(AVTStickerRecentsOverlayView *)self appropriateLayout];
  v4 = self->_centeredContainerView;
  v5 = [(UIView *)v4 topAnchor];
  v6 = [(AVTStickerRecentsOverlayView *)self contentView];
  v7 = [v6 topAnchor];
  [v3 imageToTopPadding];
  v8 = [v5 constraintGreaterThanOrEqualToAnchor:v7 constant:?];
  containerTopConstraint = self->_containerTopConstraint;
  self->_containerTopConstraint = v8;

  v10 = [(UIView *)v4 leadingAnchor];
  v11 = [(AVTStickerRecentsOverlayView *)self contentView];
  v12 = [v11 leadingAnchor];
  [v3 horizontalEdgePadding];
  v13 = [v10 constraintEqualToAnchor:v12 constant:?];
  containerLeadingConstraint = self->_containerLeadingConstraint;
  self->_containerLeadingConstraint = v13;

  v15 = [(UIView *)v4 trailingAnchor];
  v16 = [(AVTStickerRecentsOverlayView *)self contentView];
  v17 = [v16 trailingAnchor];
  [v3 horizontalEdgePadding];
  v19 = [v15 constraintEqualToAnchor:v17 constant:-v18];
  containerTrailingConstraint = self->_containerTrailingConstraint;
  self->_containerTrailingConstraint = v19;

  v21 = [(UIImageView *)self->_imageView heightAnchor];
  [v3 imageHeight];
  v22 = [v21 constraintEqualToConstant:?];
  imageHeightConstraint = self->_imageHeightConstraint;
  self->_imageHeightConstraint = v22;

  v24 = [(UILabel *)self->_titleLabel topAnchor];
  v25 = [(UIImageView *)self->_imageView bottomAnchor];
  [v3 imageToTitlePadding];
  v26 = [v24 constraintEqualToAnchor:v25 constant:?];
  imageToTitleConstraint = self->_imageToTitleConstraint;
  self->_imageToTitleConstraint = v26;

  v28 = [(UILabel *)self->_subtitleLabel topAnchor];
  v29 = [(UILabel *)self->_titleLabel bottomAnchor];
  v108 = v3;
  [v3 titleToSubtitlePadding];
  v30 = [v28 constraintEqualToAnchor:v29 constant:?];
  titleToSubtitleConstraint = self->_titleToSubtitleConstraint;
  self->_titleToSubtitleConstraint = v30;

  v32 = self->_containerLeadingConstraint;
  v110 = MEMORY[0x1E695DF70];
  v114[0] = self->_containerTopConstraint;
  v114[1] = v32;
  v114[2] = self->_containerTrailingConstraint;
  v104 = [(UIView *)v4 bottomAnchor];
  v106 = [(AVTStickerRecentsOverlayView *)self contentView];
  v102 = [v106 bottomAnchor];
  v100 = [v104 constraintLessThanOrEqualToAnchor:v102];
  v114[3] = v100;
  v96 = [(UIView *)v4 centerYAnchor];
  v98 = [(AVTStickerRecentsOverlayView *)self contentView];
  v94 = [v98 centerYAnchor];
  v92 = [v96 constraintEqualToAnchor:v94];
  v33 = self->_imageHeightConstraint;
  v114[4] = v92;
  v114[5] = v33;
  v90 = [(UIImageView *)self->_imageView topAnchor];
  v88 = [(UIView *)v4 topAnchor];
  v86 = [v90 constraintEqualToAnchor:v88];
  v114[6] = v86;
  v84 = [(UIImageView *)self->_imageView centerXAnchor];
  v82 = [(UIView *)v4 centerXAnchor];
  v80 = [v84 constraintEqualToAnchor:v82];
  v114[7] = v80;
  v78 = [(UIImageView *)self->_imageView widthAnchor];
  v76 = [(UIView *)v4 widthAnchor];
  v74 = [v78 constraintEqualToAnchor:v76];
  v34 = self->_imageToTitleConstraint;
  v114[8] = v74;
  v114[9] = v34;
  v72 = [(UILabel *)self->_titleLabel leadingAnchor];
  v70 = [(UIView *)v4 leadingAnchor];
  v69 = [v72 constraintEqualToAnchor:v70];
  v114[10] = v69;
  v68 = [(UILabel *)self->_titleLabel trailingAnchor];
  v67 = [(UIView *)v4 trailingAnchor];
  v66 = [v68 constraintEqualToAnchor:v67];
  v114[11] = v66;
  v35 = [(UILabel *)self->_titleLabel heightAnchor];
  v36 = [v35 constraintEqualToConstant:30.0];
  v37 = self->_titleToSubtitleConstraint;
  v114[12] = v36;
  v114[13] = v37;
  v38 = [(UILabel *)self->_subtitleLabel leadingAnchor];
  v39 = [(UIView *)v4 leadingAnchor];
  v40 = [v38 constraintEqualToAnchor:v39];
  v114[14] = v40;
  v41 = [(UILabel *)self->_subtitleLabel trailingAnchor];
  v112 = v4;
  v42 = [(UIView *)v4 trailingAnchor];
  v43 = [v41 constraintEqualToAnchor:v42];
  v114[15] = v43;
  v44 = [MEMORY[0x1E695DEC8] arrayWithObjects:v114 count:16];
  v111 = [v110 arrayWithArray:v44];

  subtitleLabel = self->_subtitleLabel;
  if (self->_continueButton)
  {
    v46 = [(UILabel *)subtitleLabel heightAnchor];
    v47 = [v46 constraintEqualToConstant:0.0];
    hideSubtitleConstraint = self->_hideSubtitleConstraint;
    self->_hideSubtitleConstraint = v47;

    [(NSLayoutConstraint *)self->_hideSubtitleConstraint setActive:0];
    v49 = [(UIButton *)self->_continueButton topAnchor];
    v50 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    [v108 subtitleToButtonPadding];
    v51 = [v49 constraintEqualToAnchor:v50 constant:?];

    LODWORD(v52) = 1144750080;
    v73 = v51;
    [v51 setPriority:v52];
    v107 = [(UIButton *)self->_closeButton widthAnchor];
    v105 = [v107 constraintEqualToConstant:30.0];
    v113[0] = v105;
    v103 = [(UIButton *)self->_closeButton heightAnchor];
    v101 = [v103 constraintEqualToConstant:30.0];
    v113[1] = v101;
    v97 = [(UIButton *)self->_closeButton trailingAnchor];
    v99 = [(AVTStickerRecentsOverlayView *)self contentView];
    v95 = [v99 trailingAnchor];
    v93 = [v97 constraintEqualToAnchor:v95];
    v113[2] = v93;
    v89 = [(UIButton *)self->_closeButton topAnchor];
    v91 = [(AVTStickerRecentsOverlayView *)self contentView];
    v87 = [v91 topAnchor];
    v85 = [v89 constraintEqualToAnchor:v87];
    v113[3] = v85;
    v113[4] = v51;
    v83 = [(UIButton *)self->_continueButton topAnchor];
    v109 = [(UILabel *)self->_subtitleLabel bottomAnchor];
    v81 = [v83 constraintGreaterThanOrEqualToAnchor:v109];
    v113[5] = v81;
    v79 = [(UIButton *)self->_continueButton leadingAnchor];
    v77 = [(UIView *)v112 leadingAnchor];
    v75 = [v79 constraintEqualToAnchor:v77];
    v113[6] = v75;
    v71 = [(UIButton *)self->_continueButton trailingAnchor];
    v53 = [(UIView *)v112 trailingAnchor];
    v54 = [v71 constraintEqualToAnchor:v53];
    v113[7] = v54;
    v55 = [(UIButton *)self->_continueButton heightAnchor];
    v56 = [(UIImageView *)self->_imageView heightAnchor];
    v57 = [v55 constraintEqualToAnchor:v56];
    v113[8] = v57;
    v58 = [(UIButton *)self->_continueButton bottomAnchor];
    v59 = [(UIView *)v112 bottomAnchor];
    v60 = [v58 constraintLessThanOrEqualToAnchor:v59];
    v113[9] = v60;
    v61 = [MEMORY[0x1E695DEC8] arrayWithObjects:v113 count:10];
    [v111 addObjectsFromArray:v61];

    v62 = v73;
  }

  else
  {
    v63 = [(UILabel *)subtitleLabel bottomAnchor];
    v64 = [(UIView *)v112 bottomAnchor];
    v62 = [v63 constraintLessThanOrEqualToAnchor:v64];

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
  v3 = [(AVTStickerRecentsOverlayView *)self currentLayout];
  [v3 imageToTopPadding];
  [(NSLayoutConstraint *)self->_containerTopConstraint setConstant:?];
  [v3 horizontalEdgePadding];
  [(NSLayoutConstraint *)self->_containerLeadingConstraint setConstant:?];
  [v3 horizontalEdgePadding];
  [(NSLayoutConstraint *)self->_containerTrailingConstraint setConstant:-v4];
  [v3 imageHeight];
  [(NSLayoutConstraint *)self->_imageHeightConstraint setConstant:?];
  [v3 imageToTitlePadding];
  [(NSLayoutConstraint *)self->_imageToTitleConstraint setConstant:?];
  [v3 titleToSubtitlePadding];
  [(NSLayoutConstraint *)self->_titleToSubtitleConstraint setConstant:?];
  if (self->_hideSubtitleConstraint)
  {
    v5 = [(AVTStickerRecentsOverlayView *)self contentView];
    [v5 bounds];
    [(NSLayoutConstraint *)self->_hideSubtitleConstraint setActive:v6 < 130.0];
  }
}

- (void)layoutSubviews
{
  v6.receiver = self;
  v6.super_class = AVTStickerRecentsOverlayView;
  [(AVTStickerRecentsOverlayView *)&v6 layoutSubviews];
  v3 = [(AVTStickerRecentsOverlayView *)self appropriateLayout];
  [(AVTStickerRecentsOverlayView *)self bounds];
  if (v4 > 0.0)
  {
    v5 = [(AVTStickerRecentsOverlayView *)self currentLayout];

    if (v3 != v5)
    {
      [(AVTStickerRecentsOverlayView *)self setCurrentLayout:v3];
      [(AVTStickerRecentsOverlayView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)dismissAnimatedWithDuration:(double)a3
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __60__AVTStickerRecentsOverlayView_dismissAnimatedWithDuration___block_invoke;
  v3[3] = &unk_1E7F3A9B8;
  v3[4] = self;
  [MEMORY[0x1E69DD250] animateWithDuration:v3 animations:0 completion:a3];
}

- (AVTStickerRecentsOverlayDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end