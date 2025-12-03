@interface MCDRankedContentCell
- (MCDRankedContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (id)accessibilityUserInputLabels;
- (void)_updateNowPlayingView;
- (void)configureWithAlbum:(id)album currentlyPlaying:(BOOL)playing artworkScale:(double)scale ranking:(int64_t)ranking;
- (void)configureWithSong:(id)song currentlyPlaying:(BOOL)playing artworkScale:(double)scale ranking:(int64_t)ranking;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation MCDRankedContentCell

- (MCDRankedContentCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v7.receiver = self;
  v7.super_class = MCDRankedContentCell;
  v4 = [(_MCDReusableCell *)&v7 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:v4 selector:"_updateNowPlayingView" name:MCDPlaybackStateChangedNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDRankedContentCell;
  [(MCDRankedContentCell *)&v4 dealloc];
}

- (void)_updateNowPlayingView
{
  if ([(MCDRankedContentCell *)self isCurrentlyPlaying])
  {
    v5 = [(MCDRankedContentCell *)self viewWithTag:1002];
    v3 = +[_TtC5Music15CarPlayObserver shared];
    playerState = [v3 playerState];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setIsPlaying:playerState == 2];
    }
  }
}

- (void)layoutSubviews
{
  v65.receiver = self;
  v65.super_class = MCDRankedContentCell;
  [(MCDRankedContentCell *)&v65 layoutSubviews];
  v3 = objc_alloc_init(NSMutableArray);
  isExplicitContent = [(MCDRankedContentCell *)self isExplicitContent];
  explicitLabel = self->_explicitLabel;
  if (isExplicitContent)
  {
    if (!explicitLabel)
    {
      v6 = sub_1000FE9A8();
      v7 = self->_explicitLabel;
      self->_explicitLabel = v6;

      contentView = [(MCDRankedContentCell *)self contentView];
      [contentView addSubview:self->_explicitLabel];

      explicitLabel = self->_explicitLabel;
    }

    [(UILabel *)explicitLabel setHidden:0];
    [v3 addObject:self->_explicitLabel];
  }

  else
  {
    [(UILabel *)explicitLabel setHidden:1];
  }

  isFavorite = [(MCDRankedContentCell *)self isFavorite];
  favoriteIcon = self->_favoriteIcon;
  if (isFavorite)
  {
    if (!favoriteIcon)
    {
      v11 = MCDFavoriteIcon();
      v12 = self->_favoriteIcon;
      self->_favoriteIcon = v11;

      contentView2 = [(MCDRankedContentCell *)self contentView];
      [contentView2 addSubview:self->_favoriteIcon];

      favoriteIcon = self->_favoriteIcon;
    }

    [(UIImageView *)favoriteIcon setHidden:0];
    [v3 addObject:self->_favoriteIcon];
  }

  else
  {
    [(UIImageView *)favoriteIcon setHidden:1];
  }

  [(_MCDReusableCell *)self layoutBadges:v3];
  v14 = [(MCDRankedContentCell *)self viewWithTag:1001];
  v59 = 0;
  v60 = &v59;
  v61 = 0x3032000000;
  v62 = sub_100100040;
  v63 = sub_100100050;
  artworkImageView = [(_MCDReusableCell *)self artworkImageView];
  v15 = [(MCDRankedContentCell *)self viewWithTag:1002];
  contentView3 = [(MCDRankedContentCell *)self contentView];
  [contentView3 bounds];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;

  if ([(MCDRankedContentCell *)self isCurrentlyPlaying])
  {
    [v14 removeFromSuperview];
    if (!v15)
    {
      v15 = objc_alloc_init(_TtC5Music30CarPlayNowPlayingIndicatorView);
      [(CarPlayNowPlayingIndicatorView *)v15 setTag:1002];
    }

    [(CarPlayNowPlayingIndicatorView *)v15 frame];
    CGRectGetWidth(v66);
    UIRectCenteredYInRect();
    v26 = v25;
    v28 = v27;
    v30 = v29;
    v32 = v31;
    contentView4 = [(MCDRankedContentCell *)self contentView];
    [(CarPlayNowPlayingIndicatorView *)v15 setFrame:sub_1000FCFE0(contentView4, v26, v28, v30, v32)];

    [(MCDRankedContentCell *)self addSubview:v15];
    [(MCDRankedContentCell *)self _updateNowPlayingView];
  }

  else
  {
    [(CarPlayNowPlayingIndicatorView *)v15 removeFromSuperview];
    if (!v14)
    {
      v14 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
      v34 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
      [v14 setFont:v34];

      v35 = +[UIColor _labelColor];
      [v14 setTextColor:v35];

      v36 = +[UIColor _carSystemFocusLabelColor];
      [v14 setHighlightedTextColor:v36];

      [v14 setTag:1001];
    }

    v37 = objc_alloc_init(NSNumberFormatter);
    [v37 setNumberStyle:1];
    v38 = [NSNumber numberWithInteger:[(MCDRankedContentCell *)self ranking]];
    v39 = [v37 stringFromNumber:v38];
    [v14 setText:v39];

    [v14 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    UIRectCenteredYInRect();
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;
    contentView5 = [(MCDRankedContentCell *)self contentView];
    [v14 setFrame:{sub_1000FCFE0(contentView5, v41, v43, v45, v47)}];

    [(MCDRankedContentCell *)self addSubview:v14];
  }

  if ([(MCDRankedContentCell *)self isCurrentlyPlaying]|| ([(MCDRankedContentCell *)self artworkCatalog], v49 = objc_claimAutoreleasedReturnValue(), v49, v49))
  {
    [(MCDRankedContentCell *)self setSeparatorInset:0.0, 87.0, 0.0, 0.0];
    artworkCatalog = [(MCDRankedContentCell *)self artworkCatalog];

    if (artworkCatalog)
    {
      artworkCatalog2 = [(MCDRankedContentCell *)self artworkCatalog];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      [artworkCatalog2 setCacheIdentifier:v53 forRequestingContext:self];

      objc_initWeak(&location, self);
      artworkCatalog3 = [(MCDRankedContentCell *)self artworkCatalog];
      v55 = objc_loadWeakRetained(&location);
      v56[0] = _NSConcreteStackBlock;
      v56[1] = 3221225472;
      v56[2] = sub_100100058;
      v56[3] = &unk_1010985E0;
      objc_copyWeak(v57, &location);
      v57[1] = v18;
      v57[2] = v20;
      v57[3] = v22;
      v57[4] = v24;
      v56[4] = self;
      v56[5] = &v59;
      [artworkCatalog3 setDestination:v55 configurationBlock:v56];

      objc_destroyWeak(v57);
      objc_destroyWeak(&location);
    }

    else
    {
      [(CarPlayNowPlayingIndicatorView *)v15 removeFromSuperview];
      [v60[5] removeFromSuperview];
    }
  }

  _Block_object_dispose(&v59, 8);
}

- (void)configureWithSong:(id)song currentlyPlaying:(BOOL)playing artworkScale:(double)scale ranking:(int64_t)ranking
{
  playingCopy = playing;
  songCopy = song;
  title = [songCopy title];
  v11 = [title length];
  if (v11)
  {
    [songCopy title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v12 = ;
  textLabel = [(MCDRankedContentCell *)self textLabel];
  [textLabel setText:v12];

  if (!v11)
  {

    v12 = v6;
  }

  artist = [songCopy artist];
  name = [artist name];

  if ([songCopy shouldShowComposer])
  {
    composer = [songCopy composer];
    name2 = [composer name];

    if (name2)
    {
      composer2 = [songCopy composer];
      name3 = [composer2 name];

      name = name3;
    }
  }

  detailTextLabel = [(MCDRankedContentCell *)self detailTextLabel];
  [detailTextLabel setText:name];

  -[MCDRankedContentCell setExplicitContent:](self, "setExplicitContent:", [songCopy isExplicitSong]);
  -[MCDRankedContentCell setFavorite:](self, "setFavorite:", [songCopy isFavorite]);
  [(MCDRankedContentCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDRankedContentCell *)self setRanking:ranking];
  artworkCatalog = [songCopy artworkCatalog];
  [(MCDRankedContentCell *)self setArtworkCatalog:artworkCatalog];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithAlbum:(id)album currentlyPlaying:(BOOL)playing artworkScale:(double)scale ranking:(int64_t)ranking
{
  playingCopy = playing;
  albumCopy = album;
  title = [albumCopy title];
  v11 = [title length];
  if (v11)
  {
    [albumCopy title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Album" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v12 = ;
  textLabel = [(MCDRankedContentCell *)self textLabel];
  [textLabel setText:v12];

  if (!v11)
  {

    v12 = v6;
  }

  artist = [albumCopy artist];
  name = [artist name];
  detailTextLabel = [(MCDRankedContentCell *)self detailTextLabel];
  [detailTextLabel setText:name];

  -[MCDRankedContentCell setFavorite:](self, "setFavorite:", [albumCopy isFavorite]);
  [(MCDRankedContentCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDRankedContentCell *)self setRanking:ranking];
  artworkCatalog = [albumCopy artworkCatalog];
  [(MCDRankedContentCell *)self setArtworkCatalog:artworkCatalog];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  textLabel = [(MCDRankedContentCell *)self textLabel];
  text = [textLabel text];

  if (text)
  {
    textLabel2 = [(MCDRankedContentCell *)self textLabel];
    text2 = [textLabel2 text];
    [v3 addObject:text2];
  }

  detailTextLabel = [(MCDRankedContentCell *)self detailTextLabel];
  text3 = [detailTextLabel text];

  if (text3)
  {
    detailTextLabel2 = [(MCDRankedContentCell *)self detailTextLabel];
    text4 = [detailTextLabel2 text];
    [v3 addObject:text4];
  }

  v12 = [v3 copy];

  return v12;
}

@end