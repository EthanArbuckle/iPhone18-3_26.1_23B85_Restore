@interface SiriAcousticIdHeaderView
- (SiriAcousticIdHeaderView)initWithFrame:(CGRect)frame;
- (SiriAcousticIdHeaderViewDelegate)delegate;
- (void)openButtonTapped:(id)tapped;
- (void)playButtonTapped:(id)tapped;
- (void)setAlbumArt:(id)art;
- (void)setArtistString:(id)string;
- (void)setButtonLayout:(int64_t)layout;
- (void)setPlayButtonState:(int64_t)state;
- (void)setSemanticContentAttribute:(int64_t)attribute;
- (void)setSongTitle:(id)title;
- (void)updateConstraints;
@end

@implementation SiriAcousticIdHeaderView

- (SiriAcousticIdHeaderView)initWithFrame:(CGRect)frame
{
  v32.receiver = self;
  v32.super_class = SiriAcousticIdHeaderView;
  v3 = [(SiriAcousticIdHeaderView *)&v32 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    albumArt = v3->_albumArt;
    v3->_albumArt = 0;

    v6 = +[SiriSharedUIContentLabel labelWithMediumWeightRegularFont];
    songTitleLabel = v4->_songTitleLabel;
    v4->_songTitleLabel = v6;

    [(UILabel *)v4->_songTitleLabel setNumberOfLines:2];
    [(UILabel *)v4->_songTitleLabel setLineBreakMode:4];
    [(UILabel *)v4->_songTitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SiriAcousticIdHeaderView *)v4 addSubview:v4->_songTitleLabel];
    v8 = +[SiriSharedUIContentLabel labelWithLightWeightSubtextFont];
    artistNameLabel = v4->_artistNameLabel;
    v4->_artistNameLabel = v8;

    [(UILabel *)v4->_artistNameLabel setNumberOfLines:1];
    [(UILabel *)v4->_artistNameLabel setLineBreakMode:4];
    [(UILabel *)v4->_artistNameLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SiriAcousticIdHeaderView *)v4 addSubview:v4->_artistNameLabel];
    v10 = [NSBundle bundleForClass:objc_opt_class()];
    v11 = [[SKUIItemOfferButton alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    openButton = v4->_openButton;
    v4->_openButton = v11;

    v13 = v4->_openButton;
    v14 = [v10 siriUILocalizedStringForKey:@"OPEN"];
    [(SKUIItemOfferButton *)v13 setTitle:v14];

    [(SKUIItemOfferButton *)v4->_openButton setFillStyle:0];
    v15 = v4->_openButton;
    v16 = +[UIColor siriui_textColor];
    [(SKUIItemOfferButton *)v15 setTintColor:v16];

    v17 = v4->_openButton;
    v18 = +[UIColor clearColor];
    [(SKUIItemOfferButton *)v17 setBackgroundColor:v18];

    [(SKUIItemOfferButton *)v4->_openButton setShowsConfirmationState:0];
    [(SKUIItemOfferButton *)v4->_openButton addTarget:v4 action:"openButtonTapped:" forControlEvents:64];
    [(SKUIItemOfferButton *)v4->_openButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SiriAcousticIdHeaderView *)v4 addSubview:v4->_openButton];
    [(SKUIItemOfferButton *)v4->_openButton sizeToFit];
    v19 = v4->_openButton;
    [(SKUIItemOfferButton *)v19 frame];
    v21 = [NSLayoutConstraint constraintWithItem:v19 attribute:7 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v20];
    [(SiriAcousticIdHeaderView *)v4 addConstraint:v21];

    v22 = v4->_openButton;
    [(SKUIItemOfferButton *)v22 frame];
    v24 = [NSLayoutConstraint constraintWithItem:v22 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:v23];
    [(SiriAcousticIdHeaderView *)v4 addConstraint:v24];

    v25 = objc_alloc_init(SKUIPlayButton);
    playButton = v4->_playButton;
    v4->_playButton = v25;

    v27 = v4->_playButton;
    v28 = +[UIColor siriui_textColor];
    [(SKUIPlayButton *)v27 setTintColor:v28];

    [(SKUIPlayButton *)v4->_playButton setBackgroundType:0];
    [(SKUIPlayButton *)v4->_playButton setStyle:1];
    [(SKUIPlayButton *)v4->_playButton sizeToFit];
    [(SKUIPlayButton *)v4->_playButton addTarget:v4 action:"playButtonTapped:" forControlEvents:64];
    [(SKUIPlayButton *)v4->_playButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SiriAcousticIdHeaderView *)v4 addSubview:v4->_playButton];
    v29 = +[SiriUIKeyline keylineWithDefaultInsets];
    keyline = v4->_keyline;
    v4->_keyline = v29;

    [(SiriUIKeyline *)v4->_keyline setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SiriAcousticIdHeaderView *)v4 addSubview:v4->_keyline];
    [(SiriAcousticIdHeaderView *)v4 setNeedsUpdateConstraints];
  }

  return v4;
}

- (void)setAlbumArt:(id)art
{
  artCopy = art;
  albumArt = [(SiriAcousticIdHeaderView *)self albumArt];
  v6 = [albumArt isEqual:artCopy];

  if ((v6 & 1) == 0)
  {
    [(SiriUIDownloadableImageView *)self->_albumArtImageView removeFromSuperview];
    objc_storeStrong(&self->_albumArt, art);
    if (self->_albumArt)
    {
      v7 = [SiriUIDownloadableImageView alloc];
      v8 = [NSBundle bundleForClass:objc_opt_class()];
      v9 = [v7 initWithImageURL:artCopy placeHolderImageName:@"album-art-placeholder" placeHolderImageBundle:v8];
      albumArtImageView = self->_albumArtImageView;
      self->_albumArtImageView = v9;

      [(SiriUIDownloadableImageView *)self->_albumArtImageView setUserInteractionEnabled:0];
      [(SiriUIDownloadableImageView *)self->_albumArtImageView sizeToFit];
      [(SiriUIDownloadableImageView *)self->_albumArtImageView setTranslatesAutoresizingMaskIntoConstraints:0];
      [(SiriAcousticIdHeaderView *)self addSubview:self->_albumArtImageView];
      [(SiriAcousticIdHeaderView *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setSongTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_songTitle isEqualToString:?])
  {
    v4 = [titleCopy copy];
    songTitle = self->_songTitle;
    self->_songTitle = v4;

    [(UILabel *)self->_songTitleLabel setText:self->_songTitle];
  }
}

- (void)setArtistString:(id)string
{
  stringCopy = string;
  if (![(NSString *)self->_artistString isEqualToString:?])
  {
    v4 = [stringCopy copy];
    artistString = self->_artistString;
    self->_artistString = v4;

    [(UILabel *)self->_artistNameLabel setText:self->_artistString];
  }
}

- (void)setButtonLayout:(int64_t)layout
{
  self->_buttonLayout = layout;
  if (layout <= 2)
  {
    v5 = 3u >> (layout & 7);
    [(SKUIItemOfferButton *)self->_openButton setHidden:(layout & 1) == 0];
    playButton = self->_playButton;

    [(SKUIPlayButton *)playButton setHidden:v5 & 1];
  }
}

- (void)setPlayButtonState:(int64_t)state
{
  self->_playButtonState = state;
  superview = [(SKUIPlayButton *)self->_playButton superview];

  if (superview)
  {
    switch(state)
    {
      case 2:
        playButton = self->_playButton;

        [(SKUIPlayButton *)playButton showPlayIndicator:0];
        break;
      case 1:
        [(SKUIPlayButton *)self->_playButton showPlayIndicator:1];
        v7 = self->_playButton;

        [(SKUIPlayButton *)v7 hideProgressAnimated:?];
        break;
      case 0:
        [(SKUIPlayButton *)self->_playButton showPlayIndicator:0];
        v6 = self->_playButton;

        [(SKUIPlayButton *)v6 beginIndeterminateAnimation];
        break;
    }
  }
}

- (void)openButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 headerViewOpenButtonWasTapped:self];
  }
}

- (void)playButtonTapped:(id)tapped
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 headerViewPlayButtonWasTapped:self];
  }
}

- (void)updateConstraints
{
  v28.receiver = self;
  v28.super_class = SiriAcousticIdHeaderView;
  [(SiriAcousticIdHeaderView *)&v28 updateConstraints];
  v30[0] = &off_8670;
  v29[0] = @"albumArtWidth";
  v29[1] = @"snippetInsetL";
  v3 = SiriUIPlatterStyle[32];
  v4 = [NSNumber numberWithDouble:v3];
  v30[1] = v4;
  v29[2] = @"snippetInsetR";
  v5 = SiriUIPlatterStyle[34];
  v6 = [NSNumber numberWithDouble:v5];
  v30[2] = v6;
  v29[3] = @"songTitleLeadingMargin";
  v7 = [NSNumber numberWithDouble:v3 + 56.0 + 15.0];
  v30[3] = v7;
  v29[4] = @"playButtonTrailingMargin";
  v8 = [NSNumber numberWithDouble:v5];
  v30[4] = v8;
  v29[5] = @"openButtonTrailingMargin";
  v9 = [NSNumber numberWithDouble:v5];
  v30[5] = v9;
  v29[6] = @"snippetInsetT";
  v10 = [NSNumber numberWithDouble:SiriUIPlatterStyle[31]];
  v30[6] = v10;
  v29[7] = @"snippetInsetB";
  v11 = [NSNumber numberWithDouble:SiriUIPlatterStyle[33]];
  v30[7] = v11;
  v30[8] = &off_8680;
  v29[8] = @"albumArtGutter";
  v29[9] = @"songInfoBaselineVerticalSpace";
  v30[9] = &off_8690;
  v12 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:10];

  if (!self->_hasConstraints)
  {
    v13 = _NSDictionaryOfVariableBindings(@"_openButton, _playButton, _songTitleLabel, _artistNameLabel, _keyline", self->_openButton, self->_playButton, self->_songTitleLabel, self->_artistNameLabel, self->_keyline, 0);
    v14 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-songTitleLeadingMargin-[_songTitleLabel]-[_openButton]-openButtonTrailingMargin-|", 0, v12, v13);
    [(SiriAcousticIdHeaderView *)self addConstraints:v14];

    v15 = [NSLayoutConstraint constraintWithItem:self->_artistNameLabel attribute:5 relatedBy:0 toItem:self->_songTitleLabel attribute:5 multiplier:1.0 constant:0.0];
    [(SiriAcousticIdHeaderView *)self addConstraint:v15];

    v16 = [NSLayoutConstraint constraintWithItem:self->_artistNameLabel attribute:7 relatedBy:0 toItem:self->_songTitleLabel attribute:7 multiplier:1.0 constant:0.0];
    [(SiriAcousticIdHeaderView *)self addConstraint:v16];

    v17 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:[_playButton]-playButtonTrailingMargin-|" options:0 metrics:v12 views:v13];
    [(SiriAcousticIdHeaderView *)self addConstraints:v17];

    v18 = [NSLayoutConstraint constraintWithItem:self->_playButton attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [(SiriAcousticIdHeaderView *)self addConstraint:v18];

    v19 = [NSLayoutConstraint constraintWithItem:self->_openButton attribute:10 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:0.0];
    [(SiriAcousticIdHeaderView *)self addConstraint:v19];

    v20 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:[_songTitleLabel]-songInfoBaselineVerticalSpace-[_artistNameLabel]-(>=snippetInsetB)-|", 0, v12, v13);
    [(SiriAcousticIdHeaderView *)self addConstraints:v20];

    v21 = [NSLayoutConstraint constraintWithItem:self->_songTitleLabel attribute:11 relatedBy:0 toItem:self attribute:10 multiplier:1.0 constant:-3.0];
    [(SiriAcousticIdHeaderView *)self addConstraint:v21];

    v22 = [NSLayoutConstraint constraintsWithVisualFormat:@"V:[_keyline]|" options:0 metrics:v12 views:v13];
    [(SiriAcousticIdHeaderView *)self addConstraints:v22];

    v23 = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|[_keyline]|" options:0 metrics:v12 views:v13];
    [(SiriAcousticIdHeaderView *)self addConstraints:v23];

    self->_hasConstraints = 1;
  }

  albumArtImageView = self->_albumArtImageView;
  if (albumArtImageView && !self->_hasAlbumArtConstraint)
  {
    v25 = _NSDictionaryOfVariableBindings(@"_albumArtImageView, _songTitleLabel", albumArtImageView, self->_songTitleLabel, 0);
    v26 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"H:|-snippetInsetL-[_albumArtImageView(==albumArtWidth)]", 0, v12, v25);
    [(SiriAcousticIdHeaderView *)self addConstraints:v26];

    v27 = +[NSLayoutConstraint constraintsWithVisualFormat:options:metrics:views:](NSLayoutConstraint, "constraintsWithVisualFormat:options:metrics:views:", @"V:|-snippetInsetT-[_albumArtImageView(==albumArtWidth)]", 0, v12, v25);
    [(SiriAcousticIdHeaderView *)self addConstraints:v27];

    self->_hasAlbumArtConstraint = 1;
  }
}

- (void)setSemanticContentAttribute:(int64_t)attribute
{
  v5.receiver = self;
  v5.super_class = SiriAcousticIdHeaderView;
  [(SiriAcousticIdHeaderView *)&v5 setSemanticContentAttribute:attribute];
  constraints = [(SiriAcousticIdHeaderView *)self constraints];
  [(SiriAcousticIdHeaderView *)self removeConstraints:constraints];
  [(SiriAcousticIdHeaderView *)self addConstraints:constraints];
}

- (SiriAcousticIdHeaderViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end