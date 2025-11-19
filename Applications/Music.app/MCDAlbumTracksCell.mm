@interface MCDAlbumTracksCell
- (MCDAlbumTracksCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (NSString)title;
- (void)_updateNowPlayingView;
- (void)configureWithAlbumTrack:(id)a3 currentlyPlaying:(BOOL)a4 album:(id)a5 contentAvailable:(BOOL)a6;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setTitle:(id)a3;
- (void)setTrackNumberText:(id)a3;
@end

@implementation MCDAlbumTracksCell

- (MCDAlbumTracksCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v27.receiver = self;
  v27.super_class = MCDAlbumTracksCell;
  v4 = [(_MCDReusableCell *)&v27 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIFont preferredFontForTextStyle:UIFontTextStyleSubheadline];
    v6 = [(MCDAlbumTracksCell *)v4 textLabel];
    [v6 setFont:v5];

    v7 = +[UIColor labelColor];
    v8 = [(MCDAlbumTracksCell *)v4 textLabel];
    [v8 setTextColor:v7];

    v9 = +[UIColor _carSystemFocusLabelColor];
    v10 = [(MCDAlbumTracksCell *)v4 textLabel];
    [v10 setHighlightedTextColor:v9];

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
    v16 = [(MCDAlbumTracksCell *)v4 contentView];
    [v16 addSubview:v4->_trackNumberLabel];

    v17 = sub_1000FE9A8();
    explicitLabel = v4->_explicitLabel;
    v4->_explicitLabel = v17;

    v19 = [(MCDAlbumTracksCell *)v4 contentView];
    [v19 addSubview:v4->_explicitLabel];

    v20 = MCDFavoriteIcon();
    favoriteIcon = v4->_favoriteIcon;
    v4->_favoriteIcon = v20;

    v22 = [(MCDAlbumTracksCell *)v4 contentView];
    [v22 addSubview:v4->_favoriteIcon];

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
  v4 = [v3 playerState];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(MCDAlbumTracksCell *)self isCurrentlyPlaying];
    if (v4 == 2)
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }

    [v7 setIsPlaying:v6];
  }
}

- (void)configureWithAlbumTrack:(id)a3 currentlyPlaying:(BOOL)a4 album:(id)a5 contentAvailable:(BOOL)a6
{
  v7 = a6;
  v8 = a4;
  v15 = a3;
  v10 = [v15 title];
  v11 = v10;
  if (!v10)
  {
    v6 = MCDCarDisplayBundle();
    v11 = [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }

  v12 = [(MCDAlbumTracksCell *)self textLabel];
  [v12 setText:v11];

  if (!v10)
  {
  }

  if ([v15 trackNumber])
  {
    v13 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 trackNumber]);
    v14 = MCDFormattedNumberString();
    [(UILabel *)self->_trackNumberLabel setText:v14];
  }

  [(MCDAlbumTracksCell *)self setContentUnavailable:!v7];
  [(MCDAlbumTracksCell *)self setCurrentlyPlaying:v8];
  -[MCDAlbumTracksCell setExplicitContent:](self, "setExplicitContent:", [v15 isExplicitSong]);
  -[MCDAlbumTracksCell setFavorite:](self, "setFavorite:", [v15 isFavorite]);
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = MCDAlbumTracksCell;
  [(_MCDReusableCell *)&v9 setHighlighted:a3 animated:a4];
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
    [(UIView *)v8 setIsHighlighted:v4];
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

  v5 = [(MCDAlbumTracksCell *)self contentView];
  [v5 setAlpha:v3];

  v6 = [(MCDAlbumTracksCell *)self contentView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = [(MCDAlbumTracksCell *)self isCurrentlyPlaying];
  [(UIView *)self->_currentlyPlayingView setHidden:v15 ^ 1];
  [(UILabel *)self->_trackNumberLabel setHidden:v15];
  y = CGRectZero.origin.y;
  v17 = [(UILabel *)self->_trackNumberLabel font];
  [v17 lineHeight];
  v19 = v18;

  v20 = [(MCDAlbumTracksCell *)self effectiveUserInterfaceLayoutDirection];
  v21 = [(MCDAlbumTracksCell *)self textLabel];
  [v21 frame];
  sub_1000FCF00(v20, v22, v23, v24, v25, v8, v10, v12, v14);

  v66.origin.x = 12.0;
  v66.size.width = 21.0;
  v66.origin.y = y;
  v66.size.height = v19;
  v26 = CGRectGetMaxX(v66) + 12.0;
  v27 = floorf(v26);
  v28 = v12 - (v27 + 12.0);
  v29 = floorf(v28);
  v30 = [(MCDAlbumTracksCell *)self textLabel];
  v31 = [v30 font];
  [v31 lineHeight];
  v33 = v32;

  v34 = (v14 - v33) * 0.5;
  v35 = floorf(v34);
  v36 = [(MCDAlbumTracksCell *)self contentView];
  v37 = sub_1000FCFE0(v36, v27, v35, v29, v33);
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v44 = [(MCDAlbumTracksCell *)self textLabel];
  [v44 setFrame:{v37, v39, v41, v43}];

  v45 = [(MCDAlbumTracksCell *)self textLabel];
  v46 = [v45 font];
  [v46 ascender];
  v48 = v47 + v35;

  v49 = [(UILabel *)self->_trackNumberLabel font];
  [v49 ascender];
  *&v50 = v48 - v50;
  v51 = floorf(*&v50);

  v52 = [(MCDAlbumTracksCell *)self contentView];
  [(UILabel *)self->_trackNumberLabel setFrame:sub_1000FCFE0(v52, 12.0, v51, 21.0, v19)];

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
  v2 = [(MCDAlbumTracksCell *)self textLabel];
  v3 = [v2 text];

  return v3;
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  v4 = [(MCDAlbumTracksCell *)self title];
  v5 = [v4 isEqualToString:v7];

  if ((v5 & 1) == 0)
  {
    v6 = [(MCDAlbumTracksCell *)self textLabel];
    [v6 setText:v7];

    [(MCDAlbumTracksCell *)self setNeedsLayout];
  }
}

- (void)setTrackNumberText:(id)a3
{
  v6 = a3;
  v4 = [(MCDAlbumTracksCell *)self trackNumberText];
  v5 = [v4 isEqualToString:v6];

  if ((v5 & 1) == 0)
  {
    [(UILabel *)self->_trackNumberLabel setText:v6];
    [(MCDAlbumTracksCell *)self setNeedsLayout];
  }
}

@end