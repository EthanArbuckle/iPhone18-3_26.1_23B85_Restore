@interface MCDAlbumTracksCell
- (MCDAlbumTracksCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (NSString)title;
- (void)_updateNowPlayingView;
- (void)configureWithAlbumTrack:(id)track currentlyPlaying:(BOOL)playing album:(id)album contentAvailable:(BOOL)available;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setTitle:(id)title;
- (void)setTrackNumberText:(id)text;
@end

@implementation MCDAlbumTracksCell

- (MCDAlbumTracksCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v27.receiver = self;
  v27.super_class = MCDAlbumTracksCell;
  v4 = [(_MCDReusableCell *)&v27 initWithStyle:style reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    textLabel = [(MCDAlbumTracksCell *)v4 textLabel];
    [textLabel setFont:v5];

    v7 = +[UIColor labelColor];
    textLabel2 = [(MCDAlbumTracksCell *)v4 textLabel];
    [textLabel2 setTextColor:v7];

    v9 = +[UIColor _carSystemFocusLabelColor];
    textLabel3 = [(MCDAlbumTracksCell *)v4 textLabel];
    [textLabel3 setHighlightedTextColor:v9];

    v11 = [[UILabel alloc] initWithFrame:{CGRectZero.origin.x, CGRectZero.origin.y, CGRectZero.size.width, CGRectZero.size.height}];
    trackNumberLabel = v4->_trackNumberLabel;
    v4->_trackNumberLabel = v11;

    v13 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    [(UILabel *)v4->_trackNumberLabel setFont:v13];

    v14 = +[UIColor _carSystemSecondaryColor];
    [(UILabel *)v4->_trackNumberLabel setTextColor:v14];

    v15 = +[UIColor _carSystemFocusPrimaryColor];
    [(UILabel *)v4->_trackNumberLabel setHighlightedTextColor:v15];

    [(UILabel *)v4->_trackNumberLabel setTextAlignment:1];
    contentView = [(MCDAlbumTracksCell *)v4 contentView];
    [contentView addSubview:v4->_trackNumberLabel];

    v17 = sub_1000FE9A8();
    explicitLabel = v4->_explicitLabel;
    v4->_explicitLabel = v17;

    contentView2 = [(MCDAlbumTracksCell *)v4 contentView];
    [contentView2 addSubview:v4->_explicitLabel];

    v20 = MCDFavoriteIcon();
    favoriteIcon = v4->_favoriteIcon;
    v4->_favoriteIcon = v20;

    contentView3 = [(MCDAlbumTracksCell *)v4 contentView];
    [contentView3 addSubview:v4->_favoriteIcon];

    v23 = objc_alloc_init(_TtC5Music30CarPlayNowPlayingIndicatorView);
    currentlyPlayingView = v4->_currentlyPlayingView;
    v4->_currentlyPlayingView = &v23->super;

    [(UIView *)v4->_currentlyPlayingView setTag:1002];
    [(MCDAlbumTracksCell *)v4 addSubview:v4->_currentlyPlayingView];
    v25 = +[NSNotificationCenter defaultCenter];
    [v25 addObserver:v4 selector:"_updateNowPlayingView" name:MCDPlaybackStateChangedNotification object:0];
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDAlbumTracksCell;
  [(MCDAlbumTracksCell *)&v4 dealloc];
}

- (void)_updateNowPlayingView
{
  v7 = [(MCDAlbumTracksCell *)self viewWithTag:1002];
  v3 = +[_TtC5Music15CarPlayObserver shared];
  playerState = [v3 playerState];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    isCurrentlyPlaying = [(MCDAlbumTracksCell *)self isCurrentlyPlaying];
    if (playerState == 2)
    {
      v6 = isCurrentlyPlaying;
    }

    else
    {
      v6 = 0;
    }

    [v7 setIsPlaying:v6];
  }
}

- (void)configureWithAlbumTrack:(id)track currentlyPlaying:(BOOL)playing album:(id)album contentAvailable:(BOOL)available
{
  availableCopy = available;
  playingCopy = playing;
  trackCopy = track;
  title = [trackCopy title];
  v11 = title;
  if (!title)
  {
    v6 = MCDCarDisplayBundle();
    v11 = [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }

  textLabel = [(MCDAlbumTracksCell *)self textLabel];
  [textLabel setText:v11];

  if (!title)
  {
  }

  if ([trackCopy trackNumber])
  {
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [trackCopy trackNumber]);
    v14 = MCDFormattedNumberString();
    [(UILabel *)self->_trackNumberLabel setText:v14];
  }

  [(MCDAlbumTracksCell *)self setContentUnavailable:!availableCopy];
  [(MCDAlbumTracksCell *)self setCurrentlyPlaying:playingCopy];
  -[MCDAlbumTracksCell setExplicitContent:](self, "setExplicitContent:", [trackCopy isExplicitSong]);
  -[MCDAlbumTracksCell setFavorite:](self, "setFavorite:", [trackCopy isFavorite]);
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v9.receiver = self;
  v9.super_class = MCDAlbumTracksCell;
  [(_MCDReusableCell *)&v9 setHighlighted:highlighted animated:animated];
  currentlyPlayingView = self->_currentlyPlayingView;
  if (currentlyPlayingView)
  {
    v7 = currentlyPlayingView;
  }

  else
  {
    v7 = [(MCDAlbumTracksCell *)self viewWithTag:1002];
  }

  v8 = v7;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(UIView *)v8 setIsHighlighted:highlightedCopy];
  }
}

- (void)layoutSubviews
{
  v65.receiver = self;
  v65.super_class = MCDAlbumTracksCell;
  [(MCDAlbumTracksCell *)&v65 layoutSubviews];
  v3 = 1.0;
  if ([(MCDAlbumTracksCell *)self isContentUnavailable])
  {
    UIInterfaceGetContentDisabledAlpha();
    v3 = v4;
  }

  contentView = [(MCDAlbumTracksCell *)self contentView];
  [contentView setAlpha:v3];

  contentView2 = [(MCDAlbumTracksCell *)self contentView];
  [contentView2 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  isCurrentlyPlaying = [(MCDAlbumTracksCell *)self isCurrentlyPlaying];
  [(UIView *)self->_currentlyPlayingView setHidden:isCurrentlyPlaying ^ 1];
  [(UILabel *)self->_trackNumberLabel setHidden:isCurrentlyPlaying];
  y = CGRectZero.origin.y;
  font = [(UILabel *)self->_trackNumberLabel font];
  [font lineHeight];
  v19 = v18;

  effectiveUserInterfaceLayoutDirection = [(MCDAlbumTracksCell *)self effectiveUserInterfaceLayoutDirection];
  textLabel = [(MCDAlbumTracksCell *)self textLabel];
  [textLabel frame];
  sub_1000FCF00(effectiveUserInterfaceLayoutDirection, v22, v23, v24, v25, v8, v10, v12, v14);

  v66.origin.x = 12.0;
  v66.size.width = 21.0;
  v66.origin.y = y;
  v66.size.height = v19;
  v26 = CGRectGetMaxX(v66) + 12.0;
  v27 = floorf(v26);
  v28 = v12 - (v27 + 12.0);
  v29 = floorf(v28);
  textLabel2 = [(MCDAlbumTracksCell *)self textLabel];
  font2 = [textLabel2 font];
  [font2 lineHeight];
  v33 = v32;

  v34 = (v14 - v33) * 0.5;
  v35 = floorf(v34);
  contentView3 = [(MCDAlbumTracksCell *)self contentView];
  v37 = sub_1000FCFE0(contentView3, v27, v35, v29, v33);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  textLabel3 = [(MCDAlbumTracksCell *)self textLabel];
  [textLabel3 setFrame:{v37, v39, v41, v43}];

  textLabel4 = [(MCDAlbumTracksCell *)self textLabel];
  font3 = [textLabel4 font];
  [font3 ascender];
  v48 = v47 + v35;

  font4 = [(UILabel *)self->_trackNumberLabel font];
  [font4 ascender];
  *&v50 = v48 - v50;
  v51 = floorf(*&v50);

  contentView4 = [(MCDAlbumTracksCell *)self contentView];
  [(UILabel *)self->_trackNumberLabel setFrame:sub_1000FCFE0(contentView4, 12.0, v51, 21.0, v19)];

  v53 = objc_alloc_init(NSMutableArray);
  if ([(MCDAlbumTracksCell *)self isExplicitContent])
  {
    [v53 addObject:self->_explicitLabel];
  }

  else
  {
    [(UILabel *)self->_explicitLabel setHidden:1];
  }

  if ([(MCDAlbumTracksCell *)self isFavorite])
  {
    [v53 addObject:self->_favoriteIcon];
  }

  else
  {
    [(UIImageView *)self->_favoriteIcon setHidden:1];
  }

  [(_MCDReusableCell *)self layoutBadges:v53];
  [(UIView *)self->_currentlyPlayingView frame];
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v61 = v60;
  [(UILabel *)self->_trackNumberLabel frame];
  MidX = CGRectGetMidX(v67);
  v68.origin.x = v55;
  v68.origin.y = v57;
  v68.size.width = v59;
  v68.size.height = v61;
  v63 = MidX - CGRectGetWidth(v68) * 0.5;
  [(MCDAlbumTracksCell *)self bounds];
  MidY = CGRectGetMidY(v69);
  v70.origin.x = v63;
  v70.origin.y = v57;
  v70.size.width = v59;
  v70.size.height = v61;
  [(UIView *)self->_currentlyPlayingView setFrame:v63, MidY - CGRectGetHeight(v70) * 0.5, v59, v61];
  [(MCDAlbumTracksCell *)self _updateNowPlayingView];
}

- (NSString)title
{
  textLabel = [(MCDAlbumTracksCell *)self textLabel];
  text = [textLabel text];

  return text;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  title = [(MCDAlbumTracksCell *)self title];
  v5 = [title isEqualToString:titleCopy];

  if ((v5 & 1) == 0)
  {
    textLabel = [(MCDAlbumTracksCell *)self textLabel];
    [textLabel setText:titleCopy];

    [(MCDAlbumTracksCell *)self setNeedsLayout];
  }
}

- (void)setTrackNumberText:(id)text
{
  textCopy = text;
  trackNumberText = [(MCDAlbumTracksCell *)self trackNumberText];
  v5 = [trackNumberText isEqualToString:textCopy];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_trackNumberLabel setText:textCopy];
    [(MCDAlbumTracksCell *)self setNeedsLayout];
  }
}

@end