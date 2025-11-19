@interface MCDRankedContentCell
- (MCDRankedContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)accessibilityUserInputLabels;
- (void)_updateNowPlayingView;
- (void)configureWithAlbum:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 ranking:(int64_t)a6;
- (void)configureWithSong:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 ranking:(int64_t)a6;
- (void)dealloc;
- (void)layoutSubviews;
@end

@implementation MCDRankedContentCell

- (MCDRankedContentCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v7.receiver = self;
  v7.super_class = MCDRankedContentCell;
  v4 = [(_MCDReusableCell *)&v7 initWithStyle:3 reuseIdentifier:a4];
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
    v4 = [v3 playerState];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setIsPlaying:v4 == 2];
    }
  }
}

- (void)layoutSubviews
{
  v65.receiver = self;
  v65.super_class = MCDRankedContentCell;
  [(MCDRankedContentCell *)&v65 layoutSubviews];
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(MCDRankedContentCell *)self isExplicitContent];
  explicitLabel = self->_explicitLabel;
  if (v4)
  {
    if (!explicitLabel)
    {
      v6 = sub_1000FE9A8();
      v7 = self->_explicitLabel;
      self->_explicitLabel = v6;

      v8 = [(MCDRankedContentCell *)self contentView];
      [v8 addSubview:self->_explicitLabel];

      explicitLabel = self->_explicitLabel;
    }

    [(UILabel *)explicitLabel setHidden:0];
    [v3 addObject:self->_explicitLabel];
  }

  else
  {
    [(UILabel *)explicitLabel setHidden:1];
  }

  v9 = [(MCDRankedContentCell *)self isFavorite];
  favoriteIcon = self->_favoriteIcon;
  if (v9)
  {
    if (!favoriteIcon)
    {
      v11 = MCDFavoriteIcon();
      v12 = self->_favoriteIcon;
      self->_favoriteIcon = v11;

      v13 = [(MCDRankedContentCell *)self contentView];
      [v13 addSubview:self->_favoriteIcon];

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
  v64 = [(_MCDReusableCell *)self artworkImageView];
  v15 = [(MCDRankedContentCell *)self viewWithTag:1002];
  v16 = [(MCDRankedContentCell *)self contentView];
  [v16 bounds];
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
    v33 = [(MCDRankedContentCell *)self contentView];
    [(CarPlayNowPlayingIndicatorView *)v15 setFrame:sub_1000FCFE0(v33, v26, v28, v30, v32)];

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
    v48 = [(MCDRankedContentCell *)self contentView];
    [v14 setFrame:{sub_1000FCFE0(v48, v41, v43, v45, v47)}];

    [(MCDRankedContentCell *)self addSubview:v14];
  }

  if ([(MCDRankedContentCell *)self isCurrentlyPlaying]|| ([(MCDRankedContentCell *)self artworkCatalog], v49 = objc_claimAutoreleasedReturnValue(), v49, v49))
  {
    [(MCDRankedContentCell *)self setSeparatorInset:0.0, 87.0, 0.0, 0.0];
    v50 = [(MCDRankedContentCell *)self artworkCatalog];

    if (v50)
    {
      v51 = [(MCDRankedContentCell *)self artworkCatalog];
      v52 = objc_opt_class();
      v53 = NSStringFromClass(v52);
      [v51 setCacheIdentifier:v53 forRequestingContext:self];

      objc_initWeak(&location, self);
      v54 = [(MCDRankedContentCell *)self artworkCatalog];
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
      [v54 setDestination:v55 configurationBlock:v56];

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

- (void)configureWithSong:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 ranking:(int64_t)a6
{
  v8 = a4;
  v22 = a3;
  v10 = [v22 title];
  v11 = [v10 length];
  if (v11)
  {
    [v22 title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v12 = ;
  v13 = [(MCDRankedContentCell *)self textLabel];
  [v13 setText:v12];

  if (!v11)
  {

    v12 = v6;
  }

  v14 = [v22 artist];
  v15 = [v14 name];

  if ([v22 shouldShowComposer])
  {
    v16 = [v22 composer];
    v17 = [v16 name];

    if (v17)
    {
      v18 = [v22 composer];
      v19 = [v18 name];

      v15 = v19;
    }
  }

  v20 = [(MCDRankedContentCell *)self detailTextLabel];
  [v20 setText:v15];

  -[MCDRankedContentCell setExplicitContent:](self, "setExplicitContent:", [v22 isExplicitSong]);
  -[MCDRankedContentCell setFavorite:](self, "setFavorite:", [v22 isFavorite]);
  [(MCDRankedContentCell *)self setCurrentlyPlaying:v8];
  [(MCDRankedContentCell *)self setRanking:a6];
  v21 = [v22 artworkCatalog];
  [(MCDRankedContentCell *)self setArtworkCatalog:v21];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithAlbum:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 ranking:(int64_t)a6
{
  v8 = a4;
  v18 = a3;
  v10 = [v18 title];
  v11 = [v10 length];
  if (v11)
  {
    [v18 title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Album" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v12 = ;
  v13 = [(MCDRankedContentCell *)self textLabel];
  [v13 setText:v12];

  if (!v11)
  {

    v12 = v6;
  }

  v14 = [v18 artist];
  v15 = [v14 name];
  v16 = [(MCDRankedContentCell *)self detailTextLabel];
  [v16 setText:v15];

  -[MCDRankedContentCell setFavorite:](self, "setFavorite:", [v18 isFavorite]);
  [(MCDRankedContentCell *)self setCurrentlyPlaying:v8];
  [(MCDRankedContentCell *)self setRanking:a6];
  v17 = [v18 artworkCatalog];
  [(MCDRankedContentCell *)self setArtworkCatalog:v17];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(MCDRankedContentCell *)self textLabel];
  v5 = [v4 text];

  if (v5)
  {
    v6 = [(MCDRankedContentCell *)self textLabel];
    v7 = [v6 text];
    [v3 addObject:v7];
  }

  v8 = [(MCDRankedContentCell *)self detailTextLabel];
  v9 = [v8 text];

  if (v9)
  {
    v10 = [(MCDRankedContentCell *)self detailTextLabel];
    v11 = [v10 text];
    [v3 addObject:v11];
  }

  v12 = [v3 copy];

  return v12;
}

@end