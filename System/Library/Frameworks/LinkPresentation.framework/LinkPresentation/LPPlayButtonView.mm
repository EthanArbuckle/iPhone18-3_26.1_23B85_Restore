@interface LPPlayButtonView
- (BOOL)isLyricStyle;
- (LPPlayButtonView)initWithHost:(id)host playbackInformation:(id)information style:(id)style properties:(id)properties;
- (id)theme;
- (void)buildSubviewsIfNeeded;
- (void)dealloc;
- (void)installAudioButton;
- (void)installDisablediTunesButton;
- (void)installPlaceholderButton;
- (void)installPreviewButton;
- (void)installiTunesButton;
- (void)layoutComponentView;
- (void)updateButton;
- (void)updateButtonForAudioBook;
- (void)updateButtonForAudioFile;
- (void)updateButtonForPodcast;
- (void)updateButtonForRadio;
- (void)updateButtonForSongOrAlbum;
@end

@implementation LPPlayButtonView

- (LPPlayButtonView)initWithHost:(id)host playbackInformation:(id)information style:(id)style properties:(id)properties
{
  informationCopy = information;
  styleCopy = style;
  propertiesCopy = properties;
  v18.receiver = self;
  v18.super_class = LPPlayButtonView;
  v14 = [(LPComponentView *)&v18 initWithHost:host];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_style, style);
    objc_storeStrong(&v15->_properties, properties);
    objc_storeStrong(&v15->_playbackInformation, information);
    v16 = v15;
  }

  return v15;
}

- (void)buildSubviewsIfNeeded
{
  if (!self->_hasBuilt)
  {
    [(LPPlayButtonView *)self updateButton];
    objc_initWeak(&location, self);
    v3 = +[LPiTunesStoreInformation shared];
    v4 = MEMORY[0x1E69E9820];
    v5 = 3221225472;
    v6 = __41__LPPlayButtonView_buildSubviewsIfNeeded__block_invoke;
    v7 = &unk_1E7A35D40;
    objc_copyWeak(&v8, &location);
    [v3 registerForStoreAvailablityChangesWithToken:self handler:&v4];

    if ([(LPPlayButtonPresentationProperties *)self->_properties disabled:v4])
    {
      [(LPPlayButtonControl *)self->_button setEnabled:0];
    }

    self->_hasBuilt = 1;
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

void __41__LPPlayButtonView_buildSubviewsIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updateButton];
}

- (void)dealloc
{
  v3 = +[LPiTunesStoreInformation shared];
  [v3 unregisterForStoreAvailablityChangesWithToken:self];

  v4.receiver = self;
  v4.super_class = LPPlayButtonView;
  [(LPPlayButtonView *)&v4 dealloc];
}

- (BOOL)isLyricStyle
{
  selfCopy = self;
  host = [(LPComponentView *)self host];
  LOBYTE(selfCopy) = [host rendererStyleForComponentView:selfCopy] == 42;

  return selfCopy;
}

- (id)theme
{
  accentColor = [(LPPlayButtonPresentationProperties *)self->_properties accentColor];

  if (accentColor)
  {
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __25__LPPlayButtonView_theme__block_invoke;
    v15[3] = &unk_1E7A36E10;
    v15[4] = self;
    v4 = __25__LPPlayButtonView_theme__block_invoke(v15);
    v5 = [LPAudioPlayButtonTheme alloc];
    accentColor2 = [(LPPlayButtonPresentationProperties *)self->_properties accentColor];
    defaultTheme = [(LPAudioPlayButtonStyle *)self->_style defaultTheme];
    outerBorderColor = [defaultTheme outerBorderColor];
    v9 = [(LPAudioPlayButtonTheme *)v5 initWithKeyColor:v4 secondaryColor:accentColor2 outerBorderColor:outerBorderColor useInvertedInactiveState:0];

    goto LABEL_16;
  }

  type = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation type];
  if (type > 6)
  {
LABEL_11:
    if (type)
    {
      defaultTheme2 = [(LPAudioPlayButtonStyle *)self->_style defaultTheme];
      goto LABEL_15;
    }

    isLyricStyle = [(LPPlayButtonView *)self isLyricStyle];
    style = self->_style;
    if (isLyricStyle)
    {
      defaultTheme2 = [(LPAudioPlayButtonStyle *)style lyricExcerptTheme];
      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (((1 << type) & 0x26) != 0)
  {
    style = self->_style;
LABEL_8:
    defaultTheme2 = [(LPAudioPlayButtonStyle *)style appleMusicTheme];
    goto LABEL_15;
  }

  if (((1 << type) & 0x18) == 0)
  {
    if (type == 6)
    {
      defaultTheme2 = [(LPAudioPlayButtonStyle *)self->_style audioBookTheme];
      goto LABEL_15;
    }

    goto LABEL_11;
  }

  defaultTheme2 = [(LPAudioPlayButtonStyle *)self->_style podcastsTheme];
LABEL_15:
  v9 = defaultTheme2;
LABEL_16:

  return v9;
}

id __25__LPPlayButtonView_theme__block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 480) accentColor];
  v2 = [v1 _lp_luminosityLevelForUserInterfaceStyle];

  if (v2)
  {
    if (v2 == 1)
    {
      v3 = [MEMORY[0x1E69DC888] whiteColor];
    }
  }

  else
  {
    v3 = [MEMORY[0x1E69DC888] blackColor];
  }

  return v3;
}

- (void)installPlaceholderButton
{
  button = self->_button;
  if (button)
  {
    [(LPPlayButtonControl *)button removeFromSuperview];
  }

  v4 = [LPPlaceholderPlayButtonControl alloc];
  style = self->_style;
  theme = [(LPPlayButtonView *)self theme];
  v7 = [(LPPlaceholderPlayButtonControl *)v4 initWithStyle:style theme:theme];
  v8 = self->_button;
  self->_button = v7;

  v9 = self->_button;

  [(LPPlayButtonView *)self addSubview:v9];
}

- (void)installiTunesButton
{
  if (self)
  {
    v3 = *a2;
    v4 = 138412290;
    v5 = v3;
    _os_log_impl(&dword_1AE886000, log, OS_LOG_TYPE_DEFAULT, "Trying to install an iTunes button with no store identifier or persistent identifier or preview url %@; this violates the invariant", &v4, 0xCu);
  }

  abort();
}

- (void)installDisablediTunesButton
{
  if ([(LPPlayButtonView *)self isLyricStyle])
  {

    [(LPPlayButtonView *)self installPlaceholderButton];
  }

  else
  {
    [(LPPlayButtonView *)self installiTunesButton];
    [(LPPlayButtonControl *)self->_button setEnabled:0];

    [(LPPlayButtonView *)self setUserInteractionEnabled:0];
  }
}

- (void)installPreviewButton
{
  if ([(LPPlayButtonView *)self isLyricStyle])
  {

    [(LPPlayButtonView *)self installPlaceholderButton];
  }

  else
  {
    button = self->_button;
    if (button)
    {
      [(LPPlayButtonControl *)button removeFromSuperview];
    }

    v4 = [LPAudio alloc];
    previewURL = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation previewURL];
    v6 = objc_alloc_init(LPAudioProperties);
    v14 = [(LPAudio *)v4 initWithStreamingURL:previewURL properties:v6];

    v7 = [LPStreamingAudioPlayButtonControl alloc];
    style = self->_style;
    theme = [(LPPlayButtonView *)self theme];
    host = [(LPComponentView *)self host];
    v11 = [host componentView:self playerForAudio:v14];
    v12 = [(LPStreamingAudioPlayButtonControl *)v7 initWithAudio:v14 style:style theme:theme player:v11];
    v13 = self->_button;
    self->_button = v12;

    [(LPPlayButtonControl *)self->_button installRecognizersOnView:self];
    [(LPPlayButtonView *)self addSubview:self->_button];
  }
}

- (void)updateButtonForSongOrAlbum
{
  v3 = +[LPiTunesStoreInformation shared];
  storefrontIdentifier = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storefrontIdentifier];
  v5 = [v3 userStateForMediaStorefrontIdentifier:storefrontIdentifier];

  if (v5 == 4)
  {
LABEL_13:

    [(LPPlayButtonView *)self installPlaceholderButton];
    return;
  }

  if (!v5)
  {

    [(LPPlayButtonView *)self installDisablediTunesButton];
    return;
  }

  if ([(LPInlineMediaPlaybackInformation *)self->_playbackInformation type]== 5)
  {
    goto LABEL_7;
  }

  availability = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation availability];
  if (availability < 2)
  {
    if (v5 == 1)
    {
LABEL_7:

      [(LPPlayButtonView *)self installiTunesButton];
      return;
    }
  }

  else if (availability != 2)
  {
    if (availability != 3)
    {
      return;
    }

    goto LABEL_13;
  }

  [(LPPlayButtonView *)self installPreviewButton];
}

- (void)updateButtonForRadio
{
  v3 = +[LPiTunesStoreInformation shared];
  storefrontIdentifier = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation storefrontIdentifier];
  v5 = [v3 userStateForMediaStorefrontIdentifier:storefrontIdentifier];

  if ((v5 - 2) >= 3)
  {
    if (v5)
    {
      if (v5 == 1)
      {

        [(LPPlayButtonView *)self installiTunesButton];
      }
    }

    else
    {

      [(LPPlayButtonView *)self installDisablediTunesButton];
    }
  }

  else
  {

    [(LPPlayButtonView *)self installPlaceholderButton];
  }
}

- (void)updateButtonForAudioBook
{
  if (appIsAvailable(14))
  {

    [(LPPlayButtonView *)self installiTunesButton];
  }

  else
  {

    [(LPPlayButtonView *)self installPlaceholderButton];
  }
}

- (void)updateButtonForPodcast
{
  if ([(LPInlineMediaPlaybackInformation *)self->_playbackInformation isAvailableForAnonymousDownload]&& (appIsAvailable(15) & 1) != 0)
  {

    [(LPPlayButtonView *)self installiTunesButton];
  }

  else
  {

    [(LPPlayButtonView *)self installPlaceholderButton];
  }
}

- (void)installAudioButton
{
  button = self->_button;
  if (button)
  {
    [(LPPlayButtonControl *)button removeFromSuperview];
  }

  v4 = [LPStreamingAudioPlayButtonControl alloc];
  audio = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation audio];
  style = self->_style;
  theme = [(LPPlayButtonView *)self theme];
  host = [(LPComponentView *)self host];
  audio2 = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation audio];
  v10 = [host componentView:self playerForAudio:audio2];
  v11 = [(LPStreamingAudioPlayButtonControl *)v4 initWithAudio:audio style:style theme:theme player:v10];
  v12 = self->_button;
  self->_button = v11;

  [(LPPlayButtonControl *)self->_button installRecognizersOnView:self];
  [(LPPlayButtonView *)self addSubview:self->_button];

  [(UIView *)self _lp_setNeedsLayout];
}

- (void)updateButtonForAudioFile
{
  audio = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation audio];

  if (audio)
  {

    [(LPPlayButtonView *)self installAudioButton];
  }

  else
  {

    [(LPPlayButtonView *)self installPlaceholderButton];
  }
}

- (void)updateButton
{
  [(LPPlayButtonView *)self setUserInteractionEnabled:1];
  type = [(LPInlineMediaPlaybackInformation *)self->_playbackInformation type];
  if (type <= 4)
  {
    if (type >= 2)
    {
      if ((type - 3) >= 2)
      {
        if (type == 2)
        {

          [(LPPlayButtonView *)self updateButtonForRadio];
        }
      }

      else
      {

        [(LPPlayButtonView *)self updateButtonForPodcast];
      }

      return;
    }

    goto LABEL_10;
  }

  switch(type)
  {
    case 7:

      [(LPPlayButtonView *)self updateButtonForAudioFile];
      break;
    case 6:

      [(LPPlayButtonView *)self updateButtonForAudioBook];
      break;
    case 5:
LABEL_10:

      [(LPPlayButtonView *)self updateButtonForSongOrAlbum];
      return;
    default:
      return;
  }
}

- (void)layoutComponentView
{
  [(LPPlayButtonView *)self buildSubviewsIfNeeded];
  [(LPPlayButtonView *)self bounds];
  top = self->_contentInset.top;
  left = self->_contentInset.left;
  v6 = v5 + left;
  v8 = v7 + top;
  v10 = v9 - (left + self->_contentInset.right);
  button = self->_button;
  v13 = v12 - (top + self->_contentInset.bottom);

  [(LPPlayButtonControl *)button setFrame:v6, v8, v10, v13];
}

@end