@interface AVInfoPanelDescriptionView
+ (CGSize)layoutSize;
+ (UIImage)closedCaptioningBadgeImage;
- (AVInfoPanelDescriptionView)initWithFrame:(CGRect)a3;
- (void)_updateActionButtons;
- (void)setActions:(id)a3;
- (void)setContentMediaRatingText:(id)a3 image:(id)a4;
- (void)setDateText:(id)a3;
- (void)setDurationText:(id)a3;
- (void)setGenreText:(id)a3;
- (void)setPosterImage:(id)a3;
- (void)setSeasonEpisodeText:(id)a3;
- (void)setSecondaryTitleText:(id)a3;
- (void)setSummaryText:(id)a3;
- (void)setTextColor:(id)a3;
- (void)setTextFont:(id)a3;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setTitleTextColor:(id)a3;
- (void)setTomatoFreshness:(unint64_t)a3 rating:(float)a4 hidden:(BOOL)a5;
- (void)setViewingModeBadge:(int64_t)a3;
@end

@implementation AVInfoPanelDescriptionView

- (void)_updateActionButtons
{
  v35 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v3 = [(UIStackView *)self->_actionButtonsStackView arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        [(UIStackView *)self->_actionButtonsStackView removeArrangedSubview:v8];
        [v8 removeFromSuperview];
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v5);
  }

  v9 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = [(AVInfoPanelDescriptionView *)self actions];
  v10 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v26;
    do
    {
      for (j = 0; j != v11; ++j)
      {
        if (*v26 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v25 + 1) + 8 * j);
        v15 = [MEMORY[0x1E69DC740] grayButtonConfiguration];
        [v15 setImagePadding:8.0];
        v16 = [MEMORY[0x1E69DC888] whiteColor];
        [v15 setBaseForegroundColor:v16];

        v17 = [v15 background];
        [v17 setCornerRadius:16.0];

        [v15 setCornerStyle:3];
        [v15 setContentInsets:{16.0, 16.0, 16.0, 16.0}];
        [v15 setButtonSize:1];
        v18 = [MEMORY[0x1E69DC738] buttonWithConfiguration:v15 primaryAction:v14];
        [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v18 sizeToFit];
        v19 = [v18 widthAnchor];
        v20 = [v19 constraintEqualToConstant:180.0];
        [v9 addObject:v20];

        [(UIStackView *)self->_actionButtonsStackView addArrangedSubview:v18];
      }

      v11 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v11);
  }

  v21 = [(AVInfoPanelDescriptionView *)self actions];
  v22 = [v21 count];

  actionButtonsStackViewWidthConstraint = self->_actionButtonsStackViewWidthConstraint;
  if (v22)
  {
    [(NSLayoutConstraint *)actionButtonsStackViewWidthConstraint setConstant:196.0];
    [MEMORY[0x1E696ACD8] activateConstraints:v9];
  }

  else
  {
    [(NSLayoutConstraint *)actionButtonsStackViewWidthConstraint setConstant:0.0];
  }
}

- (void)setActions:(id)a3
{
  if (self->_actions != a3)
  {
    v4 = [a3 copy];
    actions = self->_actions;
    self->_actions = v4;

    [(AVInfoPanelDescriptionView *)self _updateActionButtons];
  }
}

- (void)setTitleFont:(id)a3
{
  v5 = a3;
  if (self->_titleFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleFont, a3);
    [(UILabel *)self->_titleLabel setFont:v6];
    v5 = v6;
  }
}

- (void)setTextFont:(id)a3
{
  v5 = a3;
  if (self->_textFont != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textFont, a3);
    [(UILabel *)self->_subtitleLabel setFont:v6];
    [(UILabel *)self->_seasonEpisodeLabel setFont:v6];
    [(AVTomatoRatingView *)self->_tomatoRatingView setFont:v6];
    [(UILabel *)self->_durationLabel setFont:v6];
    [(UILabel *)self->_genreLabel setFont:v6];
    [(UILabel *)self->_dateLabel setFont:v6];
    [(UILabel *)self->_mediaContentRatingLabel setFont:v6];
    v5 = [(UILabel *)self->_summaryView setFont:v6];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (void)setTitleTextColor:(id)a3
{
  v5 = a3;
  if (self->_titleTextColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleTextColor, a3);
    [(UILabel *)self->_titleLabel setTextColor:v6];
    v5 = v6;
  }
}

- (void)setTextColor:(id)a3
{
  v5 = a3;
  if (self->_textColor != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_textColor, a3);
    [(UILabel *)self->_subtitleLabel setTextColor:v6];
    [(UILabel *)self->_seasonEpisodeLabel setTextColor:v6];
    [(AVTomatoRatingView *)self->_tomatoRatingView setTextColor:v6];
    [(UILabel *)self->_durationLabel setTextColor:v6];
    [(UILabel *)self->_genreLabel setTextColor:v6];
    [(UILabel *)self->_dateLabel setTextColor:v6];
    [(UILabel *)self->_mediaContentRatingLabel setTextColor:v6];
    [(UIImageView *)self->_mediaContentRatingImageView setTintColor:v6];
    [(UIImageView *)self->_viewingModeBadgeImageView setTintColor:v6];
    [(UIImageView *)self->_closedCaptionBadge setTintColor:v6];
    v5 = [(UILabel *)self->_summaryView setTextColor:v6];
  }

  MEMORY[0x1EEE66BE0](v5);
}

- (AVInfoPanelDescriptionView)initWithFrame:(CGRect)a3
{
  v105.receiver = self;
  v105.super_class = AVInfoPanelDescriptionView;
  v3 = [(AVInfoPanelDescriptionView *)&v105 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v4 setAlignment:3];
    [v4 setAxis:0];
    [v4 setDistribution:3];
    [v4 setSpacing:16.0];
    [v4 setTranslatesAutoresizingMaskIntoConstraints:0];
    v101 = v4;
    [(AVInfoPanelDescriptionView *)v3 addSubview:v4];
    v5 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
    textFont = v3->_textFont;
    v3->_textFont = v5;

    v7 = [MEMORY[0x1E69DC888] blackColor];
    textColor = v3->_textColor;
    v3->_textColor = v7;

    v9 = [MEMORY[0x1E69DB878] _preferredFontForTextStyle:*MEMORY[0x1E69DDD40] weight:*MEMORY[0x1E69DB980]];
    titleFont = v3->_titleFont;
    v3->_titleFont = v9;

    v11 = [MEMORY[0x1E69DC888] whiteColor];
    titleTextColor = v3->_titleTextColor;
    v3->_titleTextColor = v11;

    objc_initWeak(&location, v3);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __44__AVInfoPanelDescriptionView_initWithFrame___block_invoke;
    aBlock[3] = &unk_1E72089C8;
    objc_copyWeak(&v103, &location);
    v13 = _Block_copy(aBlock);
    v14 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    posterView = v3->_posterView;
    v3->_posterView = v14;

    v16 = v3->_posterView;
    v17 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v16 setBackgroundColor:v17];

    [(UIImageView *)v3->_posterView setContentMode:1];
    [(UIImageView *)v3->_posterView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIImageView *)v3->_posterView setAccessibilityIdentifier:@"AVPoster"];
    v18 = [(UIImageView *)v3->_posterView layer];
    [v18 setCornerRadius:16.0];

    [(UIImageView *)v3->_posterView setClipsToBounds:1];
    [v101 addArrangedSubview:v3->_posterView];
    v19 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    nextToPosterStackView = v3->_nextToPosterStackView;
    v3->_nextToPosterStackView = v19;

    [(UIStackView *)v3->_nextToPosterStackView setAlignment:1];
    [(UIStackView *)v3->_nextToPosterStackView setAxis:1];
    [(UIStackView *)v3->_nextToPosterStackView setDistribution:3];
    [(UIStackView *)v3->_nextToPosterStackView setSpacing:8.0];
    [(UIStackView *)v3->_nextToPosterStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [v101 addArrangedSubview:v3->_nextToPosterStackView];
    v21 = v13[2](v13);
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v21;

    v23 = v3->_titleLabel;
    v24 = [(AVInfoPanelDescriptionView *)v3 titleFont];
    [(UILabel *)v23 setFont:v24];

    v25 = v3->_titleLabel;
    v26 = [(AVInfoPanelDescriptionView *)v3 titleTextColor];
    [(UILabel *)v25 setTextColor:v26];

    [(UILabel *)v3->_titleLabel setLineBreakMode:4];
    [(UILabel *)v3->_titleLabel setAccessibilityIdentifier:@"AVTitle"];
    [(UILabel *)v3->_titleLabel _setTextAlignmentFollowsWritingDirection:1];
    [(UIStackView *)v3->_nextToPosterStackView addArrangedSubview:v3->_titleLabel];
    v27 = v13[2](v13);
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v27;

    [(UILabel *)v3->_subtitleLabel setAccessibilityIdentifier:@"AVSubtitle"];
    [(UILabel *)v3->_subtitleLabel _setTextAlignmentFollowsWritingDirection:1];
    [(UIStackView *)v3->_nextToPosterStackView addArrangedSubview:v3->_subtitleLabel];
    v29 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    [v29 setAlignment:3];
    [v29 setAxis:0];
    [v29 setDistribution:3];
    [v29 setSpacing:8.0];
    v30 = v13[2](v13);
    seasonEpisodeLabel = v3->_seasonEpisodeLabel;
    v3->_seasonEpisodeLabel = v30;

    [(UILabel *)v3->_seasonEpisodeLabel setAccessibilityIdentifier:@"AVSeasonEpisode"];
    [v29 addArrangedSubview:v3->_seasonEpisodeLabel];
    v32 = objc_alloc_init(AVTomatoRatingView);
    tomatoRatingView = v3->_tomatoRatingView;
    v3->_tomatoRatingView = v32;

    v34 = v3->_tomatoRatingView;
    v35 = [(AVInfoPanelDescriptionView *)v3 textFont];
    [(AVTomatoRatingView *)v34 setFont:v35];

    v36 = v3->_tomatoRatingView;
    v37 = [(AVInfoPanelDescriptionView *)v3 textColor];
    [(AVTomatoRatingView *)v36 setTextColor:v37];

    [v29 addArrangedSubview:v3->_tomatoRatingView];
    v38 = v13[2](v13);
    durationLabel = v3->_durationLabel;
    v3->_durationLabel = v38;

    [(UILabel *)v3->_durationLabel setAccessibilityIdentifier:@"AVDuration"];
    [v29 addArrangedSubview:v3->_durationLabel];
    v40 = v13[2](v13);
    genreLabel = v3->_genreLabel;
    v3->_genreLabel = v40;

    [(UILabel *)v3->_genreLabel setAccessibilityIdentifier:@"AVGenre"];
    [v29 addArrangedSubview:v3->_genreLabel];
    v42 = v13[2](v13);
    dateLabel = v3->_dateLabel;
    v3->_dateLabel = v42;

    [(UILabel *)v3->_dateLabel setAccessibilityIdentifier:@"AVDate"];
    [v29 addArrangedSubview:v3->_dateLabel];
    v44 = v13[2](v13);
    mediaContentRatingLabel = v3->_mediaContentRatingLabel;
    v3->_mediaContentRatingLabel = v44;

    [(UILabel *)v3->_mediaContentRatingLabel setAccessibilityIdentifier:@"AVMediaContentRatingLabel"];
    [v29 addArrangedSubview:v3->_mediaContentRatingLabel];
    v46 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    mediaContentRatingImageView = v3->_mediaContentRatingImageView;
    v3->_mediaContentRatingImageView = v46;

    v48 = v3->_mediaContentRatingImageView;
    v49 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v48 setBackgroundColor:v49];

    [(UIImageView *)v3->_mediaContentRatingImageView setContentMode:1];
    v50 = v3->_mediaContentRatingImageView;
    v51 = [(AVInfoPanelDescriptionView *)v3 textColor];
    [(UIImageView *)v50 setTintColor:v51];

    [(UIImageView *)v3->_mediaContentRatingImageView setAccessibilityIdentifier:@"AVMediaContentRatingImage"];
    [v29 addArrangedSubview:v3->_mediaContentRatingImageView];
    v52 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    viewingModeBadgeImageView = v3->_viewingModeBadgeImageView;
    v3->_viewingModeBadgeImageView = v52;

    v54 = v3->_viewingModeBadgeImageView;
    v55 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v54 setBackgroundColor:v55];

    [(UIImageView *)v3->_viewingModeBadgeImageView setContentMode:1];
    v56 = v3->_viewingModeBadgeImageView;
    v57 = [(AVInfoPanelDescriptionView *)v3 textColor];
    [(UIImageView *)v56 setTintColor:v57];

    [(UIImageView *)v3->_viewingModeBadgeImageView setAccessibilityIdentifier:@"AVViewingModeImage"];
    [v29 addArrangedSubview:v3->_viewingModeBadgeImageView];
    v58 = objc_alloc_init(MEMORY[0x1E69DCAE0]);
    closedCaptionBadge = v3->_closedCaptionBadge;
    v3->_closedCaptionBadge = v58;

    v60 = v3->_closedCaptionBadge;
    v61 = [MEMORY[0x1E69DC888] clearColor];
    [(UIImageView *)v60 setBackgroundColor:v61];

    [(UIImageView *)v3->_closedCaptionBadge setContentMode:1];
    v62 = v3->_closedCaptionBadge;
    v63 = [objc_opt_class() closedCaptioningBadgeImage];
    [(UIImageView *)v62 setImage:v63];

    v64 = v3->_closedCaptionBadge;
    v65 = [(AVInfoPanelDescriptionView *)v3 textColor];
    [(UIImageView *)v64 setTintColor:v65];

    [(UIImageView *)v3->_closedCaptionBadge setAccessibilityIdentifier:@"AVClosedCaptions"];
    [v29 addArrangedSubview:v3->_closedCaptionBadge];
    v66 = v13[2](v13);
    summaryView = v3->_summaryView;
    v3->_summaryView = v66;

    [(UILabel *)v3->_summaryView setNumberOfLines:5];
    [(UILabel *)v3->_summaryView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_summaryView setAccessibilityIdentifier:@"AVSummary"];
    [(UIStackView *)v3->_nextToPosterStackView addArrangedSubview:v3->_summaryView];
    [(UIStackView *)v3->_nextToPosterStackView addArrangedSubview:v29];
    v68 = objc_alloc_init(MEMORY[0x1E69DCF90]);
    actionButtonsStackView = v3->_actionButtonsStackView;
    v3->_actionButtonsStackView = v68;

    [(UIStackView *)v3->_actionButtonsStackView setAlignment:1];
    [(UIStackView *)v3->_actionButtonsStackView setAxis:1];
    [(UIStackView *)v3->_actionButtonsStackView setDistribution:3];
    [(UIStackView *)v3->_actionButtonsStackView setSpacing:12.0];
    [(UIStackView *)v3->_actionButtonsStackView setTranslatesAutoresizingMaskIntoConstraints:0];
    v70 = [(UIStackView *)v3->_actionButtonsStackView widthAnchor];
    v71 = [v70 constraintEqualToConstant:0.0];
    actionButtonsStackViewWidthConstraint = v3->_actionButtonsStackViewWidthConstraint;
    v3->_actionButtonsStackViewWidthConstraint = v71;

    [v101 addArrangedSubview:v3->_actionButtonsStackView];
    v73 = [MEMORY[0x1E695DF70] array];
    v74 = [v101 centerXAnchor];
    v75 = [(AVInfoPanelDescriptionView *)v3 centerXAnchor];
    v76 = [v74 constraintEqualToAnchor:v75];
    [v73 addObject:v76];

    v77 = [v101 centerYAnchor];
    v78 = [(AVInfoPanelDescriptionView *)v3 centerYAnchor];
    v79 = [v77 constraintEqualToAnchor:v78];
    [v73 addObject:v79];

    [objc_opt_class() layoutSize];
    v81 = v80;
    v82 = [v101 widthAnchor];
    v83 = [v82 constraintLessThanOrEqualToConstant:v81];
    [v73 addObject:v83];

    v84 = [(AVInfoPanelDescriptionView *)v3 heightAnchor];
    v85 = [v101 heightAnchor];
    v86 = [v84 constraintEqualToAnchor:v85];
    [v73 addObject:v86];

    v87 = [(AVInfoPanelDescriptionView *)v3 widthAnchor];
    v88 = [v101 widthAnchor];
    v89 = [v87 constraintEqualToAnchor:v88];
    [v73 addObject:v89];

    [v73 addObject:v3->_actionButtonsStackViewWidthConstraint];
    v90 = [(AVInfoPanelDescriptionView *)v3 textFont];
    [v90 lineHeight];
    v92 = v91;

    v93 = [(UIImageView *)v3->_viewingModeBadgeImageView heightAnchor];
    v94 = [v93 constraintEqualToConstant:v92];
    [v73 addObject:v94];

    v95 = [(UIImageView *)v3->_viewingModeBadgeImageView widthAnchor];
    v96 = [v95 constraintEqualToConstant:0.0];
    viewingModeBadgeWidthConstraint = v3->_viewingModeBadgeWidthConstraint;
    v3->_viewingModeBadgeWidthConstraint = v96;

    [v73 addObject:v3->_viewingModeBadgeWidthConstraint];
    v98 = [(UIImageView *)v3->_mediaContentRatingImageView heightAnchor];
    v99 = [v98 constraintEqualToConstant:v92];
    [v73 addObject:v99];

    [MEMORY[0x1E696ACD8] activateConstraints:v73];
    [(AVInfoPanelDescriptionView *)v3 _updateActionButtons];

    objc_destroyWeak(&v103);
    objc_destroyWeak(&location);
  }

  return v3;
}

AVDarkModeCompatibleLabel *__44__AVInfoPanelDescriptionView_initWithFrame___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(AVDarkModeCompatibleLabel);
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained textFont];
  [(AVDarkModeCompatibleLabel *)v2 setFont:v4];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 textColor];
  [(AVDarkModeCompatibleLabel *)v2 setTextColor:v6];

  [(AVDarkModeCompatibleLabel *)v2 setOpaque:0];
  [(AVDarkModeCompatibleLabel *)v2 setLineBreakMode:4];

  return v2;
}

+ (CGSize)layoutSize
{
  v2 = 800.0;
  v3 = 148.0;
  result.height = v3;
  result.width = v2;
  return result;
}

+ (UIImage)closedCaptioningBadgeImage
{
  v2 = MEMORY[0x1E69DCAB8];
  v3 = AVBundle();
  v4 = [v2 imageNamed:@"cc_mask" inBundle:v3 compatibleWithTraitCollection:0];

  v5 = [v4 imageWithBaselineOffsetFromBottom:1.0];

  v6 = [v5 imageWithRenderingMode:2];

  return v6;
}

- (void)setViewingModeBadge:(int64_t)a3
{
  v26 = *MEMORY[0x1E69E9840];
  if (a3 == 2)
  {
    v5 = 0;
    v6 = @"Badge2";
  }

  else if (a3 == 1)
  {
    v5 = 0;
    v6 = @"Badge1";
  }

  else
  {
    v6 = 0;
    v5 = 1;
  }

  v7 = _AVLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 136315650;
    v21 = "[AVInfoPanelDescriptionView(Facade) setViewingModeBadge:]";
    v22 = 2048;
    v23 = a3;
    v24 = 2114;
    v25 = v6;
    _os_log_impl(&dword_18B49C000, v7, OS_LOG_TYPE_DEFAULT, "%s viewingModeBadge %ld ==> image %{public}@", &v20, 0x20u);
  }

  if (v5)
  {
    v8 = 0;
  }

  else
  {
    v9 = MEMORY[0x1E69DCAB8];
    v10 = AVBundle();
    v11 = [v9 imageNamed:v6 inBundle:v10 compatibleWithTraitCollection:0];
    v8 = [v11 imageWithRenderingMode:2];
  }

  [(UIImageView *)self->_viewingModeBadgeImageView setImage:v8];
  if (v8)
  {
    [v8 size];
    v14 = v12 / v13;
    v15 = [(AVInfoPanelDescriptionView *)self textFont];
    [v15 lineHeight];
    v17 = v16;

    viewingModeBadgeWidthConstraint = self->_viewingModeBadgeWidthConstraint;
    v19 = v14 * v17;
  }

  else
  {
    viewingModeBadgeWidthConstraint = self->_viewingModeBadgeWidthConstraint;
    v19 = 0.0;
  }

  [(NSLayoutConstraint *)viewingModeBadgeWidthConstraint setConstant:v19];
  [(UIImageView *)self->_viewingModeBadgeImageView setHidden:v8 == 0];
}

- (void)setContentMediaRatingText:(id)a3 image:(id)a4
{
  mediaContentRatingLabel = self->_mediaContentRatingLabel;
  v7 = a4;
  [(UILabel *)mediaContentRatingLabel setText:a3];
  [(UIImageView *)self->_mediaContentRatingImageView setImage:v7];

  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a3 == 0;
  }

  [(UIImageView *)self->_mediaContentRatingImageView setHidden:v7 == 0];
  v9 = self->_mediaContentRatingLabel;

  [(UILabel *)v9 setHidden:v8];
}

- (void)setTomatoFreshness:(unint64_t)a3 rating:(float)a4 hidden:(BOOL)a5
{
  v5 = a5;
  [(AVTomatoRatingView *)self->_tomatoRatingView setTomatoFreshness:a3];
  *&v8 = a4;
  [(AVTomatoRatingView *)self->_tomatoRatingView setTomatoRating:v8];
  tomatoRatingView = self->_tomatoRatingView;

  [(AVTomatoRatingView *)tomatoRatingView setHidden:v5];
}

- (void)setDateText:(id)a3
{
  v5 = a3;
  v4 = self->_dateLabel;
  [(UILabel *)v4 setText:v5];
  -[UILabel setHidden:](v4, "setHidden:", [v5 length] == 0);
}

- (void)setGenreText:(id)a3
{
  v5 = a3;
  v4 = self->_genreLabel;
  [(UILabel *)v4 setText:v5];
  -[UILabel setHidden:](v4, "setHidden:", [v5 length] == 0);
}

- (void)setDurationText:(id)a3
{
  v5 = a3;
  v4 = self->_durationLabel;
  [(UILabel *)v4 setText:v5];
  -[UILabel setHidden:](v4, "setHidden:", [v5 length] == 0);
}

- (void)setSeasonEpisodeText:(id)a3
{
  v5 = a3;
  v4 = self->_seasonEpisodeLabel;
  [(UILabel *)v4 setText:v5];
  -[UILabel setHidden:](v4, "setHidden:", [v5 length] == 0);
}

- (void)setSecondaryTitleText:(id)a3
{
  v5 = a3;
  v4 = self->_subtitleLabel;
  [(UILabel *)v4 setText:v5];
  -[UILabel setHidden:](v4, "setHidden:", [v5 length] == 0);
}

- (void)setTitleText:(id)a3
{
  v5 = a3;
  v4 = self->_titleLabel;
  [(UILabel *)v4 setText:v5];
  -[UILabel setHidden:](v4, "setHidden:", [v5 length] == 0);
}

- (void)setSummaryText:(id)a3
{
  summaryView = self->_summaryView;
  v5 = a3;
  [(UILabel *)summaryView setText:v5];
  v6 = [v5 length];

  v7 = self->_summaryView;

  [(UILabel *)v7 setHidden:v6 == 0];
}

- (void)setPosterImage:(id)a3
{
  v26 = a3;
  if (self->_posterViewHeightConstraint)
  {
    posterViewWidthConstraint = self->_posterViewWidthConstraint;
    if (posterViewWidthConstraint)
    {
      [(NSLayoutConstraint *)posterViewWidthConstraint setActive:0];
      [(NSLayoutConstraint *)self->_posterViewHeightConstraint setActive:0];
    }
  }

  [(UIStackView *)self->_nextToPosterStackView systemLayoutSizeFittingSize:*MEMORY[0x1E69DE098], *(MEMORY[0x1E69DE098] + 8)];
  v6 = v5;
  v7 = [(AVInfoPanelDescriptionView *)self textFont];
  [v7 lineHeight];
  v9 = v8;

  v10 = [(AVInfoPanelDescriptionView *)self textFont];
  [v10 lineHeight];
  v12 = v11;

  if (v26 && v6 > v12 * 3.0)
  {
    if (v9 * 5.0 >= v6)
    {
      v6 = v9 * 5.0;
    }

    [(UIImageView *)self->_posterView setImage:v26];
    v13 = [(UIImageView *)self->_posterView image];
    [v13 size];
    v15 = v14;
    v16 = [(UIImageView *)self->_posterView image];
    [v16 size];
    v18 = v15 / v17;

    v19 = [(UIImageView *)self->_posterView heightAnchor];
    v20 = [v19 constraintEqualToConstant:v6];
    posterViewHeightConstraint = self->_posterViewHeightConstraint;
    self->_posterViewHeightConstraint = v20;

    v22 = [(UIImageView *)self->_posterView widthAnchor];
    v23 = [(UIImageView *)self->_posterView heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23 multiplier:v18];
    v25 = self->_posterViewWidthConstraint;
    self->_posterViewWidthConstraint = v24;

    [(NSLayoutConstraint *)self->_posterViewHeightConstraint setActive:1];
    [(NSLayoutConstraint *)self->_posterViewWidthConstraint setActive:1];
  }

  else
  {
    [(UIImageView *)self->_posterView setImage:0];
    [(UIImageView *)self->_posterView setHidden:1];
  }
}

@end