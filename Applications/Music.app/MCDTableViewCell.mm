@interface MCDTableViewCell
+ (id)cellForTableView:(id)view indexPath:(id)path;
- (MCDTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (UIActivityIndicatorView)activityIndicator;
- (id)accessibilityUserInputLabels;
- (void)_updateNowPlayingView;
- (void)configureWithAlbum:(id)album utterance:(id)utterance currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available;
- (void)configureWithArtist:(id)artist currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available;
- (void)configureWithAttributionArtwork:(id)artwork artworkScale:(double)scale;
- (void)configureWithComposer:(id)composer currentlyPlaying:(BOOL)playing artworkScale:(double)scale;
- (void)configureWithGenre:(id)genre artworkScale:(double)scale;
- (void)configureWithMovie:(id)movie currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available;
- (void)configureWithPlaylist:(id)playlist utterance:(id)utterance currentlyPlaying:(BOOL)playing artworkScale:(double)scale showCurator:(BOOL)curator contentAvailable:(BOOL)available;
- (void)configureWithRadioStation:(id)station currentlyPlaying:(BOOL)playing artworkScale:(double)scale;
- (void)configureWithRadioStation:(id)station utterance:(id)utterance currentlyPlaying:(BOOL)playing artworkScale:(double)scale;
- (void)configureWithSong:(id)song currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available;
- (void)configureWithTVEpisode:(id)episode currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available;
- (void)dealloc;
- (void)layoutSubviews;
- (void)setArtworkCatalog:(id)catalog andScale:(double)scale fallbackImage:(id)image;
- (void)setArtworkCatalogs:(id)catalogs andScale:(double)scale fallbackImage:(id)image;
- (void)setArtworkImage:(id)image;
- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated;
- (void)setLoading:(BOOL)loading;
- (void)setPlaceholderImage:(id)image;
@end

@implementation MCDTableViewCell

- (MCDTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v21.receiver = self;
  v21.super_class = MCDTableViewCell;
  v4 = [(_MCDReusableCell *)&v21 initWithStyle:3 reuseIdentifier:identifier];
  if (v4)
  {
    v5 = [UIFont _preferredFontForTextStyle:UIFontTextStyleCallout weight:UIFontWeightMedium];
    textLabel = [(MCDTableViewCell *)v4 textLabel];
    [textLabel setFont:v5];

    v7 = +[UIColor _labelColor];
    textLabel2 = [(MCDTableViewCell *)v4 textLabel];
    [textLabel2 setTextColor:v7];

    v9 = +[UIColor _carSystemFocusLabelColor];
    textLabel3 = [(MCDTableViewCell *)v4 textLabel];
    [textLabel3 setHighlightedTextColor:v9];

    v11 = [UIFont preferredFontForTextStyle:UIFontTextStyleCaption1];
    detailTextLabel = [(MCDTableViewCell *)v4 detailTextLabel];
    [detailTextLabel setFont:v11];

    v13 = +[UIColor _carSystemSecondaryColor];
    detailTextLabel2 = [(MCDTableViewCell *)v4 detailTextLabel];
    [detailTextLabel2 setTextColor:v13];

    v15 = +[UIColor _carSystemFocusPrimaryColor];
    detailTextLabel3 = [(MCDTableViewCell *)v4 detailTextLabel];
    [detailTextLabel3 setHighlightedTextColor:v15];

    v17 = +[NSNotificationCenter defaultCenter];
    [v17 addObserver:v4 selector:"_updateNowPlayingView" name:MCDPlaybackStateChangedNotification object:0];

    if (_os_feature_enabled_impl())
    {
      textLabel4 = [(MCDTableViewCell *)v4 textLabel];
      [textLabel4 setAdjustsFontForContentSizeCategory:1];

      detailTextLabel4 = [(MCDTableViewCell *)v4 detailTextLabel];
      [detailTextLabel4 setAdjustsFontForContentSizeCategory:1];
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

+ (id)cellForTableView:(id)view indexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = &OBJC_METACLASS___MCDTableViewCell;
  v4 = objc_msgSendSuper2(&v7, "cellForTableView:indexPath:", view, path);
  artworkImageView = [v4 artworkImageView];
  [artworkImageView removeFromSuperview];

  return v4;
}

- (void)setPlaceholderImage:(id)image
{
  imageCopy = image;
  if (self->_placeholderImage != imageCopy)
  {
    artworkImage = self->_artworkImage;
    self->_artworkImage = 0;
    v7 = imageCopy;

    objc_storeStrong(&self->_placeholderImage, image);
    imageCopy = v7;
  }
}

- (void)setArtworkImage:(id)image
{
  imageCopy = image;
  if (self->_artworkImage != imageCopy)
  {
    placeholderImage = self->_placeholderImage;
    self->_placeholderImage = 0;
    v7 = imageCopy;

    objc_storeStrong(&self->_artworkImage, image);
    imageCopy = v7;
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

- (void)setLoading:(BOOL)loading
{
  if (loading)
  {
    activityIndicator = [(MCDTableViewCell *)self activityIndicator];
    [(MCDTableViewCell *)self setAccessoryView:activityIndicator];

    activityIndicator2 = [(MCDTableViewCell *)self activityIndicator];
    [activityIndicator2 startAnimating];
  }

  else
  {
    [(MCDTableViewCell *)self setAccessoryView:0];
    activityIndicator2 = [(MCDTableViewCell *)self activityIndicator];
    [activityIndicator2 stopAnimating];
  }
}

- (void)setArtworkCatalog:(id)catalog andScale:(double)scale fallbackImage:(id)image
{
  catalogCopy = catalog;
  v9 = catalogCopy;
  if (catalogCopy)
  {
    v12 = catalogCopy;
    imageCopy = image;
    imageCopy2 = [NSArray arrayWithObjects:&v12 count:1];
    [(MCDTableViewCell *)self setArtworkCatalogs:imageCopy2 andScale:imageCopy fallbackImage:scale, v12];
  }

  else
  {
    imageCopy2 = image;
    [(MCDTableViewCell *)self setArtworkCatalogs:0 andScale:imageCopy2 fallbackImage:scale];
  }
}

- (void)setArtworkCatalogs:(id)catalogs andScale:(double)scale fallbackImage:(id)image
{
  catalogsCopy = catalogs;
  imageCopy = image;
  v11 = imageCopy;
  if (catalogsCopy || !imageCopy)
  {
    if (!catalogsCopy)
    {
      [(MCDTableViewCell *)self setArtworkImage:0];
    }
  }

  else
  {
    [(MCDTableViewCell *)self setPlaceholderImage:imageCopy];
  }

  if (self->_artworkCatalogs != catalogsCopy)
  {
    objc_storeStrong(&self->_artworkCatalogs, catalogs);
    v12 = [(NSArray *)catalogsCopy count];
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
    scaleCopy = scale;
    selfCopy = self;
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
    playerState = [v3 playerState];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setIsPlaying:playerState == 2];
    }
  }
}

- (void)setHighlighted:(BOOL)highlighted animated:(BOOL)animated
{
  highlightedCopy = highlighted;
  v10.receiver = self;
  v10.super_class = MCDTableViewCell;
  [(_MCDReusableCell *)&v10 setHighlighted:highlighted animated:animated];
  if ([(MCDTableViewCell *)self selectionStyle])
  {
    artworkImageView = [(_MCDReusableCell *)self artworkImageView];
    [artworkImageView setHighlighted:highlightedCopy];
  }

  v7 = [(MCDTableViewCell *)self viewWithTag:1002];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v7 setIsHighlighted:highlightedCopy];
  }

  favoriteIcon = self->_favoriteIcon;
  if (highlightedCopy)
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

  contentView = [(MCDTableViewCell *)self contentView];
  [contentView setAlpha:v3];

  v6 = objc_alloc_init(NSMutableArray);
  isExplicitContent = [(MCDTableViewCell *)self isExplicitContent];
  explicitLabel = self->_explicitLabel;
  if (isExplicitContent)
  {
    if (!explicitLabel)
    {
      v9 = sub_1000FE9A8();
      v10 = self->_explicitLabel;
      self->_explicitLabel = v9;

      contentView2 = [(MCDTableViewCell *)self contentView];
      [contentView2 addSubview:self->_explicitLabel];

      explicitLabel = self->_explicitLabel;
    }

    [v6 addObject:explicitLabel];
  }

  else
  {
    [(UILabel *)self->_explicitLabel setHidden:1];
  }

  isFavorite = [(MCDTableViewCell *)self isFavorite];
  favoriteIcon = self->_favoriteIcon;
  if (isFavorite)
  {
    if (!favoriteIcon)
    {
      v14 = MCDFavoriteIcon();
      v15 = self->_favoriteIcon;
      self->_favoriteIcon = v14;

      contentView3 = [(MCDTableViewCell *)self contentView];
      [contentView3 addSubview:self->_favoriteIcon];

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
    artworkImage = [(MCDTableViewCell *)self artworkImage];

    if (artworkImage)
    {
      artworkImage2 = [(MCDTableViewCell *)self artworkImage];

      if (!artworkImage2)
      {
        goto LABEL_25;
      }

      artworkImage3 = [(MCDTableViewCell *)self artworkImage];
      v21 = [MCDTableViewController addAlbumArtViewWithImage:artworkImage3 radiusKind:[(_MCDReusableCell *)self artworkRadiusKind] toCell:self];
    }

    else
    {
      placeholderImage = [(MCDTableViewCell *)self placeholderImage];

      if (!placeholderImage)
      {
        [MCDTableViewController removeImageFromCell:self];
        goto LABEL_25;
      }

      artworkImage3 = [(MCDTableViewCell *)self placeholderImage];
      v23 = +[UIColor tintColor];
      v24 = +[UIColor _carSystemFocusLabelColor];
      [MCDTableViewController setPlaceholderImage:artworkImage3 tintColor:v23 highlightedTintColor:v24 toCell:self];
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

- (void)configureWithPlaylist:(id)playlist utterance:(id)utterance currentlyPlaying:(BOOL)playing artworkScale:(double)scale showCurator:(BOOL)curator contentAvailable:(BOOL)available
{
  availableCopy = available;
  curatorCopy = curator;
  playingCopy = playing;
  playlistCopy = playlist;
  utteranceCopy = utterance;
  v15 = utteranceCopy;
  if (utteranceCopy && [utteranceCopy length])
  {
    textLabel = [(MCDTableViewCell *)self textLabel];
    [textLabel setText:v15];

    textLabel2 = [(MCDTableViewCell *)self textLabel];
    [textLabel2 setNumberOfLines:2];

    detailTextLabel = [(MCDTableViewCell *)self detailTextLabel];
    [detailTextLabel setText:0];
LABEL_7:

    goto LABEL_8;
  }

  name = [playlistCopy name];
  textLabel3 = [(MCDTableViewCell *)self textLabel];
  [textLabel3 setText:name];

  detailTextLabel = [(MCDTableViewCell *)self textLabel];
  [detailTextLabel setNumberOfLines:1];

  if ([playlistCopy type] == 7 || objc_msgSend(playlistCopy, "type") == 8)
  {
    detailTextLabel = [playlistCopy lastModifiedDateComponents];
    lastUpdatedDateString = [detailTextLabel lastUpdatedDateString];
    detailTextLabel2 = [(MCDTableViewCell *)self detailTextLabel];
    [detailTextLabel2 setText:lastUpdatedDateString];

    goto LABEL_7;
  }

  if (curatorCopy)
  {
    detailTextLabel = [playlistCopy curator];
    name2 = [detailTextLabel name];
  }

  else
  {
    name2 = 0;
  }

  detailTextLabel3 = [(MCDTableViewCell *)self detailTextLabel];
  [detailTextLabel3 setText:name2];

  if (curatorCopy)
  {

    goto LABEL_7;
  }

LABEL_8:
  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [playlistCopy isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDTableViewCell *)self setContentUnavailable:!availableCopy];
  type = [playlistCopy type];
  if (type == 1)
  {
    artworkCatalog = [playlistCopy artworkCatalog];
    v25 = +[UIImage smartPlaylistPlaceholder];
  }

  else if (type == 2)
  {
    artworkCatalog = [playlistCopy artworkCatalog];
    v25 = +[UIImage geniusPlaylistPlaceholder];
  }

  else
  {
    if (type == 3)
    {
      artworkCatalog = +[UIImage playlistFolderPlaceholder];
      [(MCDTableViewCell *)self setPlaceholderImage:artworkCatalog];
      goto LABEL_21;
    }

    artworkCatalog2 = [playlistCopy artworkCatalog];
    v27 = artworkCatalog2;
    if (artworkCatalog2)
    {
      v28 = artworkCatalog2;
    }

    else
    {
      v28 = [playlistCopy tracksTiledArtworkCatalogWithRows:2 columns:2];
    }

    artworkCatalog = v28;

    v25 = +[UIImage playlistPlaceholder];
  }

  v30 = v25;
  [(MCDTableViewCell *)self setArtworkCatalog:artworkCatalog andScale:v25 fallbackImage:scale];

LABEL_21:
  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithArtist:(id)artist currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available
{
  availableCopy = available;
  playingCopy = playing;
  artistCopy = artist;
  name = [artistCopy name];
  v12 = [name length];
  if (v12)
  {
    [artistCopy name];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"UNKNOWN_ALBUM_ARTIST" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  textLabel = [(MCDTableViewCell *)self textLabel];
  [textLabel setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [artistCopy isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDTableViewCell *)self setContentUnavailable:!availableCopy];
  artworkCatalog = [artistCopy artworkCatalog];
  v16 = +[UIImage artistPlaceholder];
  [(MCDTableViewCell *)self setArtworkCatalog:artworkCatalog andScale:v16 fallbackImage:scale];

  [(_MCDReusableCell *)self setArtworkRadiusKind:1];
}

- (void)configureWithComposer:(id)composer currentlyPlaying:(BOOL)playing artworkScale:(double)scale
{
  playingCopy = playing;
  name = [composer name];
  textLabel = [(MCDTableViewCell *)self textLabel];
  [textLabel setText:name];

  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];

  [(MCDTableViewCell *)self setNeedsLayout];
}

- (void)configureWithAlbum:(id)album utterance:(id)utterance currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available
{
  availableCopy = available;
  playingCopy = playing;
  albumCopy = album;
  utteranceCopy = utterance;
  v13 = utteranceCopy;
  if (utteranceCopy && [utteranceCopy length])
  {
    textLabel = [(MCDTableViewCell *)self textLabel];
    [textLabel setText:v13];

    textLabel2 = [(MCDTableViewCell *)self textLabel];
    [textLabel2 setNumberOfLines:2];

    detailTextLabel = [(MCDTableViewCell *)self detailTextLabel];
    [detailTextLabel setText:0];
  }

  else
  {
    representativeTitle = [albumCopy representativeTitle];
    v18 = representativeTitle;
    if (representativeTitle)
    {
      title = representativeTitle;
    }

    else
    {
      title = [albumCopy title];
    }

    detailTextLabel = title;

    v20 = [detailTextLabel length];
    v21 = detailTextLabel;
    if (!v20)
    {
      v18 = MCDCarDisplayBundle();
      v21 = [v18 localizedStringForKey:@"Unknown Album" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    }

    textLabel3 = [(MCDTableViewCell *)self textLabel];
    [textLabel3 setText:v21];

    if (!v20)
    {
    }

    textLabel4 = [(MCDTableViewCell *)self textLabel];
    [textLabel4 setNumberOfLines:1];

    if ([albumCopy isCompilation])
    {
      artist = +[NSBundle mainBundle];
      [artist localizedStringForKey:@"Various Artists" value:&stru_101107168 table:0];
    }

    else
    {
      artist = [albumCopy artist];
      [artist name];
    }
    v25 = ;
    detailTextLabel2 = [(MCDTableViewCell *)self detailTextLabel];
    [detailTextLabel2 setText:v25];
  }

  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [albumCopy isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDTableViewCell *)self setContentUnavailable:!availableCopy];
  artworkCatalog = [albumCopy artworkCatalog];
  v28 = [UIImage _systemImageNamed:@"music.square.stack"];
  [(MCDTableViewCell *)self setArtworkCatalog:artworkCatalog andScale:v28 fallbackImage:scale];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithSong:(id)song currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available
{
  availableCopy = available;
  playingCopy = playing;
  songCopy = song;
  title = [songCopy title];
  v12 = [title length];
  if (v12)
  {
    [songCopy title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  textLabel = [(MCDTableViewCell *)self textLabel];
  [textLabel setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  artist = [songCopy artist];
  name = [artist name];

  detailTextLabel = [(MCDTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:name];

  -[MCDTableViewCell setExplicitContent:](self, "setExplicitContent:", [songCopy isExplicitSong]);
  -[MCDTableViewCell setFavorite:](self, "setFavorite:", [songCopy isFavorite]);
  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDTableViewCell *)self setContentUnavailable:!availableCopy];
  artworkCatalog = [songCopy artworkCatalog];
  v19 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:artworkCatalog andScale:v19 fallbackImage:scale];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithGenre:(id)genre artworkScale:(double)scale
{
  name = [genre name];
  textLabel = [(MCDTableViewCell *)self textLabel];
  [textLabel setText:name];

  [(MCDTableViewCell *)self setNeedsLayout];
}

- (void)configureWithMovie:(id)movie currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available
{
  availableCopy = available;
  playingCopy = playing;
  movieCopy = movie;
  title = [movieCopy title];
  v12 = [title length];
  if (v12)
  {
    [movieCopy title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  textLabel = [(MCDTableViewCell *)self textLabel];
  [textLabel setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  detailTextLabel = [(MCDTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:0];

  [(MCDTableViewCell *)self setExplicitContent:MPModelMovieIsRestricted()];
  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDTableViewCell *)self setContentUnavailable:!availableCopy];
  artworkCatalog = [movieCopy artworkCatalog];
  v17 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:artworkCatalog andScale:v17 fallbackImage:scale];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithTVEpisode:(id)episode currentlyPlaying:(BOOL)playing artworkScale:(double)scale contentAvailable:(BOOL)available
{
  availableCopy = available;
  playingCopy = playing;
  episodeCopy = episode;
  title = [episodeCopy title];
  v12 = [title length];
  if (v12)
  {
    [episodeCopy title];
  }

  else
  {
    v6 = MCDCarDisplayBundle();
    [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
  }
  v13 = ;
  textLabel = [(MCDTableViewCell *)self textLabel];
  [textLabel setText:v13];

  if (!v12)
  {

    v13 = v6;
  }

  show = [episodeCopy show];
  title2 = [show title];

  detailTextLabel = [(MCDTableViewCell *)self detailTextLabel];
  [detailTextLabel setText:title2];

  [(MCDTableViewCell *)self setExplicitContent:MPModelTVEpisodeIsRestricted()];
  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDTableViewCell *)self setContentUnavailable:!availableCopy];
  artworkCatalog = [episodeCopy artworkCatalog];
  v19 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:artworkCatalog andScale:v19 fallbackImage:scale];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithRadioStation:(id)station currentlyPlaying:(BOOL)playing artworkScale:(double)scale
{
  [(MCDTableViewCell *)self configureWithRadioStation:station utterance:0 currentlyPlaying:playing artworkScale:scale];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithRadioStation:(id)station utterance:(id)utterance currentlyPlaying:(BOOL)playing artworkScale:(double)scale
{
  playingCopy = playing;
  stationCopy = station;
  utteranceCopy = utterance;
  v12 = utteranceCopy;
  if (utteranceCopy && [utteranceCopy length])
  {
    textLabel = [(MCDTableViewCell *)self textLabel];
    [textLabel setText:v12];

    textLabel2 = [(MCDTableViewCell *)self textLabel];
    [textLabel2 setNumberOfLines:2];

    detailTextLabel = [(MCDTableViewCell *)self detailTextLabel];
    [detailTextLabel setText:0];
  }

  else
  {
    name = [stationCopy name];
    v17 = [name length];
    if (v17)
    {
      [stationCopy name];
    }

    else
    {
      v6 = MCDCarDisplayBundle();
      [v6 localizedStringForKey:@"Unknown Title" value:&stru_101107168 table:@"MusicCarDisplayUI"];
    }
    v18 = ;
    textLabel3 = [(MCDTableViewCell *)self textLabel];
    [textLabel3 setText:v18];

    if (!v17)
    {

      v18 = v6;
    }

    textLabel4 = [(MCDTableViewCell *)self textLabel];
    [textLabel4 setNumberOfLines:1];

    detailTextLabel = [stationCopy shortEditorNotes];
    editorNotes = detailTextLabel;
    if (!detailTextLabel)
    {
      editorNotes = [stationCopy editorNotes];
    }

    detailTextLabel2 = [(MCDTableViewCell *)self detailTextLabel];
    [detailTextLabel2 setText:editorNotes];

    if (!detailTextLabel)
    {
    }
  }

  [(MCDTableViewCell *)self setCurrentlyPlaying:playingCopy];
  [(MCDTableViewCell *)self setContentUnavailable:0];
  artworkCatalog = [stationCopy artworkCatalog];
  v24 = [UIImage _systemImageNamed:@"music.note"];
  [(MCDTableViewCell *)self setArtworkCatalog:artworkCatalog andScale:v24 fallbackImage:scale];

  [(_MCDReusableCell *)self setArtworkRadiusKind:0];
}

- (void)configureWithAttributionArtwork:(id)artwork artworkScale:(double)scale
{
  artworkCopy = artwork;
  if (artworkCopy)
  {
    accessoryView = [(MCDTableViewCell *)self accessoryView];
    if (accessoryView && (v8 = accessoryView, [(MCDTableViewCell *)self accessoryView], v9 = objc_claimAutoreleasedReturnValue(), objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), v9, v8, (isKindOfClass & 1) != 0))
    {
      accessoryView2 = [(MCDTableViewCell *)self accessoryView];
    }

    else
    {
      accessoryView2 = objc_opt_new();
      [accessoryView2 setFrame:{0.0, 0.0, 30.0, 30.0}];
      layer = [accessoryView2 layer];
      [layer setCornerRadius:15.0];

      [accessoryView2 setClipsToBounds:1];
      [(MCDTableViewCell *)self setAccessoryView:accessoryView2];
    }

    [accessoryView2 frame];
    [artworkCopy setFittingSize:{v13, v14}];
    [artworkCopy setDestinationScale:scale];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [artworkCopy setCacheIdentifier:v16 forRequestingContext:self];

    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1001061DC;
    v18[3] = &unk_101098860;
    v19 = accessoryView2;
    v17 = accessoryView2;
    [artworkCopy setDestination:v17 configurationBlock:v18];
  }

  else
  {
    [(MCDTableViewCell *)self setAccessoryView:0];
  }
}

- (id)accessibilityUserInputLabels
{
  v3 = objc_alloc_init(NSMutableArray);
  textLabel = [(MCDTableViewCell *)self textLabel];
  text = [textLabel text];

  if (text)
  {
    textLabel2 = [(MCDTableViewCell *)self textLabel];
    text2 = [textLabel2 text];
    [v3 addObject:text2];
  }

  detailTextLabel = [(MCDTableViewCell *)self detailTextLabel];
  text3 = [detailTextLabel text];

  if (text3)
  {
    detailTextLabel2 = [(MCDTableViewCell *)self detailTextLabel];
    text4 = [detailTextLabel2 text];
    [v3 addObject:text4];
  }

  v12 = [v3 copy];

  return v12;
}

@end