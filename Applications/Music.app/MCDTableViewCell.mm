@interface MCDTableViewCell
+ (id)cellForTableView:(id)a3 indexPath:(id)a4;
- (MCDTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UIActivityIndicatorView)activityIndicator;
- (id)accessibilityUserInputLabels;
- (void)_updateNowPlayingView;
- (void)configureWithAlbum:(id)a3 utterance:(id)a4 currentlyPlaying:(BOOL)a5 artworkScale:(double)a6 contentAvailable:(BOOL)a7;
- (void)configureWithArtist:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6;
- (void)configureWithAttributionArtwork:(id)a3 artworkScale:(double)a4;
- (void)configureWithComposer:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5;
- (void)configureWithGenre:(id)a3 artworkScale:(double)a4;
- (void)configureWithMovie:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6;
- (void)configureWithPlaylist:(id)a3 utterance:(id)a4 currentlyPlaying:(BOOL)a5 artworkScale:(double)a6 showCurator:(BOOL)a7 contentAvailable:(BOOL)a8;
- (void)configureWithRadioStation:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5;
- (void)configureWithRadioStation:(id)a3 utterance:(id)a4 currentlyPlaying:(BOOL)a5 artworkScale:(double)a6;
- (void)configureWithSong:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6;
- (void)configureWithTVEpisode:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setArtworkCatalog:(id)a3 andScale:(double)a4 fallbackImage:(id)a5;
- (void)setArtworkCatalogs:(id)a3 andScale:(double)a4 fallbackImage:(id)a5;
- (void)setArtworkImage:(id)a3;
- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4;
- (void)setLoading:(BOOL)a3;
- (void)setPlaceholderImage:(id)a3;
@end

@implementation MCDTableViewCell

- (MCDTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v21.receiver = self;
  v21.super_class = MCDTableViewCell;
  v4 = [(_MCDReusableCell *)&v21 initWithStyle:3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
    v6 = [(MCDTableViewCell *)v4 textLabel];
    [v6 setFont:v5];

    v7 = +[UIColor _labelColor];
    v8 = [(MCDTableViewCell *)v4 textLabel];
    [v8 setTextColor:v7];

    v9 = +[UIColor _carSystemFocusLabelColor];
    v10 = [(MCDTableViewCell *)v4 textLabel];
    [v10 setHighlightedTextColor:v9];

    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    v12 = [(MCDTableViewCell *)v4 detailTextLabel];
    [v12 setFont:v11];

    v13 = +[UIColor _carSystemSecondaryColor];
    v14 = [(MCDTableViewCell *)v4 detailTextLabel];
    [v14 setTextColor:v13];

    v15 = +[UIColor _carSystemFocusPrimaryColor];
    v16 = [(MCDTableViewCell *)v4 detailTextLabel];
    [v16 setHighlightedTextColor:v15];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v4 selector:"_updateNowPlayingView" name:MCDPlaybackStateChangedNotification object:0];

    if (_os_feature_enabled_impl())
    {
      v18 = [(MCDTableViewCell *)v4 textLabel];
      [v18 setAdjustsFontForContentSizeCategory:1];

      v19 = [(MCDTableViewCell *)v4 detailTextLabel];
      [v19 setAdjustsFontForContentSizeCategory:1];
    }
  }

  return v4;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = MCDTableViewCell;
  [(MCDTableViewCell *)&v4 dealloc];
}

+ (id)cellForTableView:(id)a3 indexPath:(id)a4
{
  v7.receiver = a1;
  v7.super_class = &OBJC_METACLASS___MCDTableViewCell;
  v4 = objc_msgSendSuper2(&v7, "cellForTableView:indexPath:", a3, a4);
  v5 = [v4 artworkImageView];
  [v5 removeFromSuperview];

  return v4;
}

- (void)setPlaceholderImage:(id)a3
{
  v5 = a3;
  if (self->_placeholderImage != v5)
  {
    artworkImage = self->_artworkImage;
    self->_artworkImage = 0;
    v7 = v5;

    objc_storeStrong(&self->_placeholderImage, a3);
    v5 = v7;
  }
}

- (void)setArtworkImage:(id)a3
{
  v5 = a3;
  if (self->_artworkImage != v5)
  {
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = 0;
    v7 = v5;

    objc_storeStrong(&self->_artworkImage, a3);
    v5 = v7;
  }
}

- (UIActivityIndicatorView)activityIndicator
{
  activityIndicator = self->_activityIndicator;
  if (!activityIndicator)
  {
    v4 = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:21];
    v5 = self->_activityIndicator;
    self->_activityIndicator = v4;

    activityIndicator = self->_activityIndicator;
  }

  return activityIndicator;
}

- (void)setLoading:(BOOL)a3
{
  if (a3)
  {
    v4 = [(MCDTableViewCell *)self activityIndicator];
    [(MCDTableViewCell *)self setAccessoryView:v4];

    v5 = [(MCDTableViewCell *)self activityIndicator];
    [v5 startAnimating];
  }

  else
  {
    [(MCDTableViewCell *)self setAccessoryView:0];
    v5 = [(MCDTableViewCell *)self activityIndicator];
    [v5 stopAnimating];
  }
}

- (void)setArtworkCatalog:(id)a3 andScale:(double)a4 fallbackImage:(id)a5
{
  v8 = a3;
  v9 = v8;
  if (v8)
  {
    v12 = v8;
    v10 = a5;
    v11 = [NSArray arrayWithObjects:&v12 count:1];
    [(MCDTableViewCell *)self setArtworkCatalogs:v11 andScale:v10 fallbackImage:a4, v12];
  }

  else
  {
    v11 = a5;
    [(MCDTableViewCell *)self setArtworkCatalogs:0 andScale:v11 fallbackImage:a4];
  }
}

- (void)setArtworkCatalogs:(id)a3 andScale:(double)a4 fallbackImage:(id)a5
{
  v9 = a3;
  v10 = a5;
  v11 = v10;
  if (v9 || !v10)
  {
    if (!v9)
    {
      [(MCDTableViewCell *)self setArtworkImage:0];
    }
  }

  else
  {
    [(MCDTableViewCell *)self setPlaceholderImage:v10];
  }

  if (self->_artworkCatalogs != v9)
  {
    objc_storeStrong(&self->_artworkCatalogs, a3);
    v12 = [(NSArray *)v9 count];
    v13 = v12 == 1;
    if (v12 == 1)
    {
      v14 = 0;
    }

    else
    {
      v14 = objc_opt_new();
    }

    objc_storeStrong(&self->_artworkImages, v14);
    if (v12 != 1)
    {
    }

    [(_MCDReusableCell *)self sizeForArtwork];
    v16 = v15;
    v18 = v17;
    [(MCDTableViewCell *)self setPlaceholderImage:v11];
    artworkCatalogs = self->_artworkCatalogs;
    v20 = _NSConcreteStackBlock;
    v21 = 3221225472;
    v22 = sub_1000FE344;
    v23 = &unk_1010985B8;
    v26 = v16;
    v27 = v18;
    v28 = a4;
    v24 = self;
    v29 = v13;
    v25 = v11;
    [(NSArray *)artworkCatalogs enumerateObjectsUsingBlock:&v20];
  }

  [(MCDTableViewCell *)self setNeedsLayout:v20];
}

- (void)_updateNowPlayingView
{
  if ([(MCDTableViewCell *)self isCurrentlyPlaying])
  {
    v5 = [(MCDTableViewCell *)self viewWithTag:1002];
    v3 = +[_TtC5Music15CarPlayObserver shared];
    v4 = [v3 playerState];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setIsPlaying:v4 == 2];
    }
  }
}

- (void)setHighlighted:(BOOL)a3 animated:(BOOL)a4
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = MCDTableViewCell;
  [(_MCDReusableCell *)&v10 setHighlighted:a3 animated:a4];
  if ([(MCDTableViewCell *)self selectionStyle])
  {
    v6 = [(_MCDReusableCell *)self artworkImageView];
    [v6 setHighlighted:v4];
  }

  v7 = [(MCDTableViewCell *)self viewWithTag:1002];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setIsHighlighted:v4];
  }

  favoriteIcon = self->_favoriteIcon;
  if (v4)
  {
    +[UIColor systemGray3Color];
  }

  else
  {
    +[UIColor secondaryLabelColor];
  }
  v9 = ;
  [(UIImageView *)favoriteIcon setTintColor:v9];
}

- (void)layoutSubviews
{
  v25.receiver = self;
  v25.super_class = MCDTableViewCell;
  [(MCDTableViewCell *)&v25 layoutSubviews];
  v3 = 1.0;
  if ([(MCDTableViewCell *)self isContentUnavailable])
  {
    UIInterfaceGetContentDisabledAlpha();
    v3 = v4;
  }

  v5 = [(MCDTableViewCell *)self contentView];
  [v5 setAlpha:v3];

  v6 = objc_alloc_init(NSMutableArray);
  v7 = [(MCDTableViewCell *)self isExplicitContent];
  explicitLabel = self->_explicitLabel;
  if (v7)
  {
    if (!explicitLabel)
    {
      v9 = sub_1000FE9A8();
      v10 = self->_explicitLabel;
      self->_explicitLabel = v9;

      v11 = [(MCDTableViewCell *)self contentView];
      [v11 addSubview:self->_explicitLabel];

      explicitLabel = self->_explicitLabel;
    }

    [v6 addObject:explicitLabel];
  }

  else
  {
    [(UILabel *)self->_explicitLabel setHidden:1];
  }

  v12 = [(MCDTableViewCell *)self isFavorite];
  favoriteIcon = self->_favoriteIcon;
  if (v12)
  {
    if (!favoriteIcon)
    {
      v14 = MCDFavoriteIcon();
      v15 = self->_favoriteIcon;
      self->_favoriteIcon = v14;

      v16 = [(MCDTableViewCell *)self contentView];
      [v16 addSubview:self->_favoriteIcon];

      favoriteIcon = self->_favoriteIcon;
    }

    [v6 addObject:favoriteIcon];
  }

  else
  {
    [(UIImageView *)self->_favoriteIcon setHidden:1];
  }

  [(_MCDReusableCell *)self layoutBadges:v6];
  v17 = [(MCDTableViewCell *)self viewWithTag:1002];
  if (![(MCDTableViewCell *)self isCurrentlyPlaying])
  {
    [(CarPlayNowPlayingIndicatorView *)v17 removeFromSuperview];
    v18 = [(MCDTableViewCell *)self artworkImage];

    if (v18)
    {
      v19 = [(MCDTableViewCell *)self artworkImage];

      if (!v19)
      {
        goto LABEL_25;
      }

      v20 = [(MCDTableViewCell *)self artworkImage];
      v21 = [MCDTableViewController addAlbumArtViewWithImage:v20 radiusKind:[(_MCDReusableCell *)self artworkRadiusKind] toCell:self];
    }

    else
    {
      v22 = [(MCDTableViewCell *)self placeholderImage];

      if (!v22)
      {
        [MCDTableViewController removeImageFromCell:self];
        goto LABEL_25;
      }

      v20 = [(MCDTableViewCell *)self placeholderImage];
      v23 = +[UIColor tintColor];
      v24 = +[UIColor _carSystemFocusLabelColor];
      [MCDTableViewController setPlaceholderImage:v20 tintColor:v23 highlightedTintColor:v24 toCell:self];
    }

    goto LABEL_25;
  }

  if (!v17)
  {
    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [(CarPlayNowPlayingIndicatorView *)v17 removeFromSuperview];

LABEL_17:
    v17 = objc_alloc_init(_TtC5Music30CarPlayNowPlayingIndicatorView);
    [(CarPlayNowPlayingIndicatorView *)v17 setTag:1002];
  }

  [MCDTableViewController addLeadingView:v17 toCell:self];
  [(MCDTableViewCell *)self _updateNowPlayingView];
LABEL_25:
}

- (void)configureWithPlaylist:(id)a3 utterance:(id)a4 currentlyPlaying:(BOOL)a5 artworkScale:(double)a6 showCurator:(BOOL)a7 contentAvailable:(BOOL)a8
{
  v8 = a8;
  v9 = a7;
  v11 = a5;
  v32 = a3;
  v14 = a4;
  v15 = v14;
  if (v14 && [v14 length])
  {
    v16 = [(MCDTableViewCell *)self textLabel];
    [v16 setText:v15];

    v17 = [(MCDTableViewCell *)self textLabel];
    [v17 setNumberOfLines:2];

    v18 = [(MCDTableViewCell *)self detailTextLabel];
    [v18 setText:0];
LABEL_7:

    goto LABEL_8;
  }

  v19 = [v32 name];
  v20 = [(MCDTableViewCell *)self textLabel];
  [v20 setText:v19];

  v18 = [(MCDTableViewCell *)self textLabel];
  [v18 setNumberOfLines:1];

  if ([v32 type] == 7 || objc_msgSend(v32, "type") == 8)
  {
    v18 = [v32 lastModifiedDateComponents];
    v21 = [v18 lastUpdatedDateString];
    v22 = [(MCDTableViewCell *)self detailTextLabel];
    [v22 setText:v21];

    goto LABEL_7;
  }

  if (v9)
  {
    v18 = [v32 curator];
    v29 = [v18 name];
  }

  else
  {
    v29 = 0;
  }

  v31 = [(MCDTableViewCell *)self detailTextLabel];
  [v31 setText:v29];

  if (v9)
  {

    goto LABEL_7;
  }

LABEL_8:
  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [v32 isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:v11];
  [(MCDTableViewCell *)self setContentUnavailable:!v8];
  v23 = [v32 type];
  if (v23 == 1)
  {
    v24 = [v32 artworkCatalog];
    v25 = +[UIImage smartPlaylistPlaceholder];
  }

  else if (v23 == 2)
  {
    v24 = [v32 artworkCatalog];
    v25 = +[UIImage geniusPlaylistPlaceholder];
  }

  else
  {
    if (v23 == 3)
    {
      v24 = +[UIImage playlistFolderPlaceholder];
      [(MCDTableViewCell *)self setPlaceholderImage:v24];
      goto LABEL_21;
    }

    v26 = [v32 artworkCatalog];
    v27 = v26;
    if (v26)
    {
      v28 = v26;
    }

    else
    {
      v28 = [v32 tracksTiledArtworkCatalogWithRows:2 columns:2];
    }

    v24 = v28;

    v25 = +[UIImage playlistPlaceholder];
  }

  v30 = v25;
  [(MCDTableViewCell *)self setArtworkCatalog:v24 andScale:v25 fallbackImage:a6];

LABEL_21:
  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithArtist:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6
{
  v7 = a6;
  v9 = a4;
  v17 = a3;
  v11 = [v17 name];
  v12 = [v11 length];
  if (v12)
  {
    [v17 name];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"UNKNOWN_ALBUM_ARTIST" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  v14 = [(MCDTableViewCell *)self textLabel];
  [v14 setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [v17 isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:v9];
  [(MCDTableViewCell *)self setContentUnavailable:!v7];
  v15 = [v17 artworkCatalog];
  v16 = +[UIImage artistPlaceholder];
  [(MCDTableViewCell *)self setArtworkCatalog:v15 andScale:v16 fallbackImage:a5];

  [(_MCDReusableCell *)self setArtworkRadiusKind:1];
}

- (void)configureWithComposer:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5
{
  v5 = a4;
  v7 = [a3 name];
  v8 = [(MCDTableViewCell *)self textLabel];
  [v8 setText:v7];

  [(MCDTableViewCell *)self setCurrentlyPlaying:v5];

  [(MCDTableViewCell *)self setNeedsLayout];
}

- (void)configureWithAlbum:(id)a3 utterance:(id)a4 currentlyPlaying:(BOOL)a5 artworkScale:(double)a6 contentAvailable:(BOOL)a7
{
  v7 = a7;
  v9 = a5;
  v29 = a3;
  v12 = a4;
  v13 = v12;
  if (v12 && [v12 length])
  {
    v14 = [(MCDTableViewCell *)self textLabel];
    [v14 setText:v13];

    v15 = [(MCDTableViewCell *)self textLabel];
    [v15 setNumberOfLines:2];

    v16 = [(MCDTableViewCell *)self detailTextLabel];
    [v16 setText:0];
  }

  else
  {
    v17 = [v29 representativeTitle];
    v18 = v17;
    if (v17)
    {
      v19 = v17;
    }

    else
    {
      v19 = [v29 title];
    }

    v16 = v19;

    v20 = [v16 length];
    v21 = v16;
    if (!v20)
    {
      v18 = MCDCarDisplayBundle();
      v21 = [v18 localizedStringForKey:@"Unknown Album" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    }

    v22 = [(MCDTableViewCell *)self textLabel];
    [v22 setText:v21];

    if (!v20)
    {
    }

    v23 = [(MCDTableViewCell *)self textLabel];
    [v23 setNumberOfLines:1];

    if ([v29 isCompilation])
    {
      v24 = +[NSBundle mainBundle];
      [v24 localizedStringForKey:@"Various Artists" value:&stru_101107168 table:0];
    }

    else
    {
      v24 = [v29 artist];
      [v24 name];
    }
    v25 = ;
    v26 = [(MCDTableViewCell *)self detailTextLabel];
    [v26 setText:v25];
  }

  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [v29 isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:v9];
  [(MCDTableViewCell *)self setContentUnavailable:!v7];
  v27 = [v29 artworkCatalog];
  v28 = [UIImage _systemImageNamed:@"music.square.stack"];
  [(MCDTableViewCell *)self setArtworkCatalog:v27 andScale:v28 fallbackImage:a6];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithSong:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6
{
  v7 = a6;
  v9 = a4;
  v20 = a3;
  v11 = [v20 title];
  v12 = [v11 length];
  if (v12)
  {
    [v20 title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  v14 = [(MCDTableViewCell *)self textLabel];
  [v14 setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  v15 = [v20 artist];
  v16 = [v15 name];

  v17 = [(MCDTableViewCell *)self detailTextLabel];
  [v17 setText:v16];

  -[MCDTableViewCell setExplicitContent:](self, "setExplicitContent:", [v20 isExplicitSong]);
  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [v20 isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:v9];
  [(MCDTableViewCell *)self setContentUnavailable:!v7];
  v18 = [v20 artworkCatalog];
  v19 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:v18 andScale:v19 fallbackImage:a5];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithGenre:(id)a3 artworkScale:(double)a4
{
  v5 = [a3 name];
  v6 = [(MCDTableViewCell *)self textLabel];
  [v6 setText:v5];

  [(MCDTableViewCell *)self setNeedsLayout];
}

- (void)configureWithMovie:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6
{
  v7 = a6;
  v9 = a4;
  v18 = a3;
  v11 = [v18 title];
  v12 = [v11 length];
  if (v12)
  {
    [v18 title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  v14 = [(MCDTableViewCell *)self textLabel];
  [v14 setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  v15 = [(MCDTableViewCell *)self detailTextLabel];
  [v15 setText:0];

  [(MCDTableViewCell *)self setExplicitContent:MPModelMovieIsRestricted()];
  [(MCDTableViewCell *)self setCurrentlyPlaying:v9];
  [(MCDTableViewCell *)self setContentUnavailable:!v7];
  v16 = [v18 artworkCatalog];
  v17 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:v16 andScale:v17 fallbackImage:a5];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithTVEpisode:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5 contentAvailable:(BOOL)a6
{
  v7 = a6;
  v9 = a4;
  v20 = a3;
  v11 = [v20 title];
  v12 = [v11 length];
  if (v12)
  {
    [v20 title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  v14 = [(MCDTableViewCell *)self textLabel];
  [v14 setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  v15 = [v20 show];
  v16 = [v15 title];

  v17 = [(MCDTableViewCell *)self detailTextLabel];
  [v17 setText:v16];

  [(MCDTableViewCell *)self setExplicitContent:MPModelTVEpisodeIsRestricted()];
  [(MCDTableViewCell *)self setCurrentlyPlaying:v9];
  [(MCDTableViewCell *)self setContentUnavailable:!v7];
  v18 = [v20 artworkCatalog];
  v19 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:v18 andScale:v19 fallbackImage:a5];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithRadioStation:(id)a3 currentlyPlaying:(BOOL)a4 artworkScale:(double)a5
{
  [(MCDTableViewCell *)self configureWithRadioStation:a3 utterance:0 currentlyPlaying:a4 artworkScale:a5];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithRadioStation:(id)a3 utterance:(id)a4 currentlyPlaying:(BOOL)a5 artworkScale:(double)a6
{
  v8 = a5;
  v25 = a3;
  v11 = a4;
  v12 = v11;
  if (v11 && [v11 length])
  {
    v13 = [(MCDTableViewCell *)self textLabel];
    [v13 setText:v12];

    v14 = [(MCDTableViewCell *)self textLabel];
    [v14 setNumberOfLines:2];

    v15 = [(MCDTableViewCell *)self detailTextLabel];
    [v15 setText:0];
  }

  else
  {
    v16 = [v25 name];
    v17 = [v16 length];
    if (v17)
    {
      [v25 name];
    }

    else
    {
      v6 = MCDCarDisplayBundle();
      [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    }
    v18 = ;
    v19 = [(MCDTableViewCell *)self textLabel];
    [v19 setText:v18];

    if (!v17)
    {

      v18 = v6;
    }

    v20 = [(MCDTableViewCell *)self textLabel];
    [v20 setNumberOfLines:1];

    v15 = [v25 shortEditorNotes];
    v21 = v15;
    if (!v15)
    {
      v21 = [v25 editorNotes];
    }

    v22 = [(MCDTableViewCell *)self detailTextLabel];
    [v22 setText:v21];

    if (!v15)
    {
    }
  }

  [(MCDTableViewCell *)self setCurrentlyPlaying:v8];
  [(MCDTableViewCell *)self setContentUnavailable:0];
  v23 = [v25 artworkCatalog];
  v24 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:v23 andScale:v24 fallbackImage:a6];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithAttributionArtwork:(id)a3 artworkScale:(double)a4
{
  v6 = a3;
  if (v6)
  {
    v7 = [(MCDTableViewCell *)self accessoryView];
    if (v7 && (v8 = v7, [(MCDTableViewCell *)self accessoryView], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8, (isKindOfClass & 1) != 0))
    {
      v11 = [(MCDTableViewCell *)self accessoryView];
    }

    else
    {
      v11 = objc_opt_new();
      [v11 setFrame:{0.0, 0.0, 30.0, 30.0}];
      v12 = [v11 layer];
      [v12 setCornerRadius:15.0];

      [v11 setClipsToBounds:1];
      [(MCDTableViewCell *)self setAccessoryView:v11];
    }

    [v11 frame];
    [v6 setFittingSize:{v13, v14}];
    [v6 setDestinationScale:a4];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [v6 setCacheIdentifier:v16 forRequestingContext:self];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001061DC;
    v18[3] = &unk_101098860;
    v19 = v11;
    v17 = v11;
    [v6 setDestination:v17 configurationBlock:v18];
  }

  else
  {
    [(MCDTableViewCell *)self setAccessoryView:0];
  }
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = [(MCDTableViewCell *)self textLabel];
  v5 = [v4 text];

  if (v5)
  {
    v6 = [(MCDTableViewCell *)self textLabel];
    v7 = [v6 text];
    [v3 addObject:v7];
  }

  v8 = [(MCDTableViewCell *)self detailTextLabel];
  v9 = [v8 text];

  if (v9)
  {
    v10 = [(MCDTableViewCell *)self detailTextLabel];
    v11 = [v10 text];
    [v3 addObject:v11];
  }

  v12 = [v3 copy];

  return v12;
}

@end