@interface MTEpisodeLockup
+ (BOOL)useLayoutForSkinnyPhones;
+ (CGRect)frameForContentViewSize:(CGSize)size style:(unint64_t)style;
+ (CGSize)artworkSizeForStyle:(unint64_t)style;
+ (double)artworkHeightForStyle:(unint64_t)style sizeType:(unint64_t)type;
+ (double)descriptionMaxHeightForCurrentOrientation;
+ (double)estimatedHeightForWidth:(double)width showsArtwork:(BOOL)artwork;
+ (double)estimatedHeightForWidth:(double)width style:(unint64_t)style;
+ (double)leadingMarginForViewWidth:(double)width;
+ (double)maximumContentWidthForStyle:(unint64_t)style showsPlayState:(BOOL)state;
+ (id)defaultArtworkForStyle:(unint64_t)style;
+ (id)defaultArtworkWithSize:(CGSize)size;
+ (id)dependentPropertyKeys;
+ (id)descriptionFont;
+ (id)metadataFooterFont;
+ (id)metadataHeaderFont;
+ (id)mockEpisode;
+ (id)titleFont;
+ (unint64_t)descriptionNumberOfLinesForStyle:(unint64_t)style isTitleMultipleLines:(BOOL)lines;
+ (unint64_t)styleForWidth:(double)width showsArtwork:(BOOL)artwork;
+ (unint64_t)titleNumberOfLinesForStyle:(unint64_t)style;
- (BOOL)isLabelMultipleLinesWithFrame:(CGRect)frame font:(id)font;
- (BOOL)updateDisabledReason;
- (BOOL)updateIsCurrentPlayerItemState;
- (BOOL)updateTitleFontIfNeeded;
- (CGRect)actionButtonFrameForViewWidth:(double)width titleOriginY:(double)y;
- (CGRect)artworkFrameForStyle:(unint64_t)style forViewWidth:(double)width;
- (CGRect)buttonsFrameForActionButtonFrame:(CGRect)frame downloadButtonFrame:(CGRect)buttonFrame;
- (CGRect)descriptionButtonFrameForDescriptionFrame:(CGRect)frame;
- (CGRect)downloadButtonFrameForActionButtonFrame:(CGRect)frame titleOriginY:(double)y;
- (CGRect)explicitIconFrameForViewWidth:(double)width titleFrame:(CGRect)frame;
- (CGRect)footerFrameForDescriptionButtonFrame:(CGRect)frame descriptionFrame:(CGRect)descriptionFrame;
- (CGRect)iconsViewFrameForViewWidth:(double)width titleFrame:(CGRect)frame metadataFrame:(CGRect *)metadataFrame style:(unint64_t)style;
- (CGRect)metadataFrameForViewWidth:(double)width titleFrame:(CGRect)frame style:(unint64_t)style;
- (CGRect)moreButtonFrameForDescriptionFrame:(CGRect)frame;
- (CGRect)playStatusViewFrameForViewWidth:(double)width titleFrame:(CGRect)frame artworkFrame:(CGRect)artworkFrame;
- (CGSize)sizeThatFits:(CGSize)fits;
- (CGSize)titleSizeForViewWidth:(double)width titleOrigin:(CGPoint)origin artworkFrame:(CGRect)frame buttonViewFrame:(CGRect)viewFrame style:(unint64_t)style;
- (IMActionSheetAction)moreAction;
- (MTEpisodeArtworkView)artworkView;
- (MTEpisodeLockup)initWithFrame:(CGRect)frame;
- (MTEpisodeLockupDelegate)delegate;
- (MTEpisodeStateView)iconView;
- (MTNowPlayingIndicatorView)barsView;
- (MTTouchInsetsButton)descriptionButton;
- (MTTouchInsetsButton)moreButton;
- (UIButton)actionButton;
- (UIEdgeInsets)_layoutMargins;
- (UIEdgeInsets)_layoutMarginsForViewWidth:(double)width;
- (UIImageView)explicitIconView;
- (UIImageView)playStatusView;
- (UILabel)metadataLabel;
- (UITextView)descriptionTextView;
- (UITextView)footerTextView;
- (UITextView)titleTextView;
- (double)descriptionOriginForViewWidth:(CGFloat)width artworkFrame:(CGFloat)frame buttonViewFrame:(CGFloat)viewFrame titleFrame:(CGFloat)titleFrame metadataFrame:(uint64_t)metadataFrame iconViewFrame:(unint64_t)iconViewFrame style:(double)style;
- (double)descriptionWidthForViewWidth:(double)width titleFrame:(CGRect)frame style:(unint64_t)style;
- (double)exactDescriptionSizeForOrigin:(double)origin viewWidth:(double)width titleFrame:(double)frame actionButtonFrame:(double)buttonFrame downloadButtonFrame:(double)downloadButtonFrame style:(double)style;
- (double)heightForWidth:(double)width style:(unint64_t)style;
- (double)titleOriginXForViewWidth:(double)result artworkFrame:(CGRect)frame buttonFrame:(CGRect)buttonFrame style:(unint64_t)style;
- (double)titleOriginYForArtworkFrame:(CGRect)frame style:(unint64_t)style;
- (id)_currentDescriptionColor;
- (id)_currentDescriptionFont;
- (id)_currentTitleColor;
- (id)_currentTitleFont;
- (id)descriptionExclusionPathsForOrigin:(CGPoint)origin descriptionWidth:(double)width buttonsFrame:(CGRect)frame titleFrame:(CGRect)titleFrame;
- (id)hitTest:(CGPoint)test withEvent:(id)event;
- (id)titleExclusionPathsForButtonViewFrame:(CGRect)frame;
- (id)titleExclusionPathsForExplicitIconFrame:(CGRect)frame viewWidth:(double)width;
- (void)_setNumberOfLinesForDescription:(unint64_t)description;
- (void)airplaneModeChanged:(id)changed;
- (void)beginLoadingArtwork;
- (void)configureSubviews;
- (void)contentSizeCategoryDidChange:(id)change;
- (void)dealloc;
- (void)dismissActionSheetsAndPopovers;
- (void)fixEmptyTextContainers;
- (void)invalidateLayoutMargins;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)moreButtonTapped:(id)tapped;
- (void)playbackStateDidChange;
- (void)prepareForReuse;
- (void)reachabilityChangedFrom:(BOOL)from to:(BOOL)to;
- (void)setBounds:(CGRect)bounds;
- (void)setColorTheme:(id)theme;
- (void)setCurrentPlayerItem:(BOOL)item;
- (void)setDisabledReason:(int64_t)reason;
- (void)setEditing:(BOOL)editing;
- (void)setEpisode:(id)episode;
- (void)setExpanded:(BOOL)expanded;
- (void)setFrame:(CGRect)frame;
- (void)setShowsArtwork:(BOOL)artwork;
- (void)setShowsDescriptionButton:(BOOL)button;
- (void)setShowsExplicitIcon:(BOOL)icon;
- (void)setShowsFooterTextView:(BOOL)view;
- (void)setShowsMoreButton:(BOOL)button;
- (void)setShowsPlayState:(BOOL)state;
- (void)setShowsPubDate:(BOOL)date;
- (void)setStyle:(unint64_t)style;
- (void)setTitleImage:(id)image;
- (void)startObservingPlaybackState;
- (void)stopObservingPlaybackState;
- (void)update;
- (void)updateActionSheetsAndPopovers;
- (void)updateAssetStatusIcons;
- (void)updateColors;
- (void)updateColorsForBarsView:(id)view;
- (void)updateDescriptionText;
- (void)updateFooterText;
- (void)updateFooterTextViewVisbility;
- (void)updateIconView;
- (void)updateIcons;
- (void)updateMetadataText;
- (void)updateMoreButtonVisibility;
- (void)updatePlayStatusIcons;
- (void)updateStateForBarsView:(id)view;
- (void)updateTitleIncludingIcons;
@end

@implementation MTEpisodeLockup

+ (unint64_t)styleForWidth:(double)width showsArtwork:(BOOL)artwork
{
  v4 = 2;
  if (width > 472.0)
  {
    v4 = 3;
  }

  if (artwork)
  {
    return v4;
  }

  else
  {
    return width > 472.0;
  }
}

+ (double)estimatedHeightForWidth:(double)width showsArtwork:(BOOL)artwork
{
  v6 = [self styleForWidth:artwork showsArtwork:?];

  [self estimatedHeightForWidth:v6 style:width];
  return result;
}

+ (double)estimatedHeightForWidth:(double)width style:(unint64_t)style
{
  v7 = objc_opt_new();
  [v7 setStyle:style];
  mockEpisode = [self mockEpisode];
  [v7 setEpisode:mockEpisode];

  [v7 sizeThatFits:{width, 1.79769313e308}];
  v10 = v9;

  return v10;
}

+ (unint64_t)titleNumberOfLinesForStyle:(unint64_t)style
{
  if (style == 2)
  {
    if ([self useLayoutForSkinnyPhones])
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (style)
  {
    return 2;
  }

  else if (+[MTEpisodeLockup useSelfSizingCells])
  {
    return 5;
  }

  else
  {
    return 2;
  }
}

+ (unint64_t)descriptionNumberOfLinesForStyle:(unint64_t)style isTitleMultipleLines:(BOOL)lines
{
  linesCopy = lines;
  if (style == 3)
  {
    v8 = !lines;
    v9 = 1;
LABEL_11:
    if (v8)
    {
      return v9 + 1;
    }

    else
    {
      return v9;
    }
  }

  if (style == 1)
  {
    v8 = !lines;
    v9 = 2;
    goto LABEL_11;
  }

  if (style)
  {
    return 3;
  }

  v5 = +[MTEpisodeLockup useSelfSizingCells];
  v6 = 2;
  if (!linesCopy)
  {
    v6 = 3;
  }

  if (v5)
  {
    return 4;
  }

  else
  {
    return v6;
  }
}

+ (double)maximumContentWidthForStyle:(unint64_t)style showsPlayState:(BOOL)state
{
  stateCopy = state;
  v7 = +[MTEpisodeLockup descriptionFont];
  [v7 readableWidth];
  IMRoundToPixel();
  v9 = v8;

  [self artworkSizeForStyle:style];
  v11 = v10 + 8.0;
  v12 = v10 <= 0.0;
  v13 = 0.0;
  if (v12)
  {
    v11 = 0.0;
  }

  if (stateCopy)
  {
    v13 = 24.0;
  }

  return v9 + v13 + v11;
}

+ (CGRect)frameForContentViewSize:(CGSize)size style:(unint64_t)style
{
  height = size.height;
  width = size.width;
  x = CGPointZero.x;
  y = CGPointZero.y;
  [MTEpisodeLockup maximumContentWidthForStyle:style];
  if (width > v8)
  {
    v9 = width - v8;
    IMRoundToPixel();
    x = CGPointZero.x + v10;
    width = width - v9;
  }

  v11 = x;
  v12 = y;
  v13 = width;
  v14 = height;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

+ (double)artworkHeightForStyle:(unint64_t)style sizeType:(unint64_t)type
{
  v7 = 0.0;
  if (![self showsArtworkForStyle:?])
  {
    return v7;
  }

  if (type == 1)
  {
    titleTextStyle = [self titleTextStyle];
    v9 = &UIContentSizeCategoryExtraExtraLarge;
  }

  else
  {
    if (type != 2)
    {
      titleFont = [self titleFont];
      descriptionFont = [self descriptionFont];
      goto LABEL_8;
    }

    titleTextStyle = [self titleTextStyle];
    v9 = &UIContentSizeCategorySmall;
  }

  v10 = *v9;
  titleFont = [UIFont mt_fontForTextStyle:titleTextStyle contentSizeCategoryName:*v9];

  descriptionTextStyle = [self descriptionTextStyle];
  descriptionFont = [UIFont mt_fontForTextStyle:descriptionTextStyle contentSizeCategoryName:v10];

LABEL_8:
  v14 = [self titleNumberOfLinesForStyle:style];
  v15 = 1.0;
  if (style == 3)
  {
    v15 = ([self descriptionNumberOfLinesForStyle:3 isTitleMultipleLines:1] + 2);
  }

  [titleFont lineHeight];
  v17 = v14 * v16 + 2.0;
  [descriptionFont lineHeight];
  v19 = v17 + v15 * v18;
  if (style != 3)
  {
    [titleFont mt_offsetFromCapHeightToAscent];
    v19 = v19 + v20;
  }

  v7 = v19 + 2.0 + -1.0;

  return v7;
}

+ (CGSize)artworkSizeForStyle:(unint64_t)style
{
  [self artworkHeightForStyle:style sizeType:0];
  v6 = v5;
  if (style == 3)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B9180;
    v15[3] = &unk_1004DB360;
    v15[4] = self;
    v15[5] = 3;
    if (qword_100583BA8 != -1)
    {
      dispatch_once(&qword_100583BA8, v15);
    }

    v9 = &qword_100583BA0;
    v10 = &qword_100571770;
  }

  else
  {
    v7 = 0.0;
    v8 = 0.0;
    if (style != 2)
    {
      goto LABEL_10;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B9134;
    block[3] = &unk_1004DB360;
    block[4] = self;
    block[5] = 2;
    if (qword_100583B98 != -1)
    {
      dispatch_once(&qword_100583B98, block);
    }

    v9 = &qword_100583B90;
    v10 = &qword_100571768;
  }

  v8 = *v10;
  v7 = *v9;
LABEL_10:
  if (v6 >= v7)
  {
    v7 = v6;
  }

  if (v7 >= v8)
  {
    v11 = v8;
  }

  else
  {
    v11 = v7;
  }

  if (qword_100583BB0 != -1)
  {
    sub_1003B2BC0();
  }

  v12 = ceil(v11 * *&qword_100571778) / *&qword_100571778;
  v13 = ceil(v11);
  if (*&qword_100571778 == 1.0)
  {
    v12 = v13;
  }

  v14 = v12;
  result.height = v14;
  result.width = v12;
  return result;
}

+ (id)defaultArtworkForStyle:(unint64_t)style
{
  [self artworkSizeForStyle:style];

  return [self defaultArtworkWithSize:?];
}

+ (id)defaultArtworkWithSize:(CGSize)size
{
  width = size.width;
  if (size.width < 1.0 || size.height < 1.0)
  {
    v7 = 0;
  }

  else
  {
    height = size.height;
    v6 = +[MTImageStore defaultStore];
    v7 = [v6 imageForKey:kMTLibraryDefaultImageKey size:{width, height}];
  }

  return v7;
}

+ (id)mockEpisode
{
  v2 = +[MTDB managedObjectModel];
  entitiesByName = [v2 entitiesByName];
  v4 = [entitiesByName objectForKeyedSubscript:kMTEpisodeEntityName];

  v5 = [[MTEpisode alloc] initWithEntity:v4 insertIntoManagedObjectContext:0];
  [v5 setTitle:@"This is a really long title that will always reach the maximum number of lines even when the maximum number of lines is really large and when the text size is really small. Really... we promise it will be long enough to always reach the maximum. We promise... "];
  v6 = [@"This is a really long description that will always reach the maximum number of lines even when the maximum number of lines is really large and when the text size is really small. Really... we promise it will be long enough to always reach the maximum. We promise... " stringByAppendingString:@"This is a really long description that will always reach the maximum number of lines even when the maximum number of lines is really large and when the text size is really small. Really... we promise it will be long enough to always reach the maximum. We promise... "];
  v7 = kEpisodeDescription;
  [v5 willChangeValueForKey:kEpisodeDescription];
  [v5 setPrimitiveValue:v6 forKey:v7];
  [v5 didChangeValueForKey:v7];
  [v5 setUuid:@"mockEpisodeUuid"];
  title = [v5 title];
  title2 = [v5 title];
  v10 = [title stringByAppendingString:title2];
  [v5 setTitle:v10];

  title3 = [v5 title];
  [v5 setCleanedTitle:title3];

  v12 = +[NSDate date];
  [v12 timeIntervalSinceReferenceDate];
  [v5 setPubDate:?];

  [v5 setDuration:3600.0];
  [v5 setByteSize:52428800];
  [v5 setExternalType:0];
  [v5 setVideo:0];
  [v5 setAudio:1];
  [v5 setExplicit:1];
  v13 = kEpisodePlayState;
  [v5 willChangeValueForKey:kEpisodePlayState];
  [v5 setPrimitiveValue:&off_100500DA8 forKey:v13];
  [v5 didChangeValueForKey:v13];

  return v5;
}

+ (id)dependentPropertyKeys
{
  v4[0] = kEpisodeUuid;
  v4[1] = kEpisodeGuid;
  v4[2] = kEpisodeTitle;
  v4[3] = kEpisodeCleanedTitle;
  v4[4] = kEpisodeDescription;
  v4[5] = kEpisodeEnclosureUrl;
  v4[6] = kEpisodeFeedDeleted;
  v4[7] = kEpisodeAssetURL;
  v4[8] = kEpisodeSuppressAutoDownload;
  v4[9] = kEpisodePubDate;
  v4[10] = kEpisodeDuration;
  v4[11] = kEpisodeAudio;
  v4[12] = kEpisodeVideo;
  v4[13] = kEpisodeExternalType;
  v4[14] = kEpisodeUti;
  v4[15] = kEpisodeExplicit;
  v4[16] = kEpisodeIsFromiTunesSync;
  v4[17] = kEpisodePlayState;
  v4[18] = kEpisodePlayStateManuallySet;
  v4[19] = kEpisodeBackCatalog;
  v2 = [NSArray arrayWithObjects:v4 count:20];

  return v2;
}

+ (BOOL)useLayoutForSkinnyPhones
{
  v2 = +[UIScreen mainScreen];
  [v2 _referenceBounds];
  v4 = v3;

  return v4 < 375.0;
}

+ (double)leadingMarginForViewWidth:(double)width
{
  v3 = [UIView mt_areMarginsGenerousForWidth:width];
  result = 32.0;
  if (!v3)
  {
    return 28.0;
  }

  return result;
}

+ (double)descriptionMaxHeightForCurrentOrientation
{
  v2 = +[UIScreen mainScreen];
  [v2 bounds];
  v4 = v3;

  v5 = 0.4;
  if (v4 < 737.0)
  {
    v5 = 0.5;
  }

  return v4 * v5;
}

+ (id)titleFont
{
  titleTextStyle = [self titleTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:titleTextStyle];

  return v3;
}

+ (id)metadataHeaderFont
{
  descriptionTextStyle = [self descriptionTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:descriptionTextStyle addingSymbolicTraits:2];

  return v3;
}

+ (id)descriptionFont
{
  descriptionTextStyle = [self descriptionTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:descriptionTextStyle];

  return v3;
}

+ (id)metadataFooterFont
{
  footerTextStyle = [self footerTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:footerTextStyle];

  return v3;
}

- (MTEpisodeLockup)initWithFrame:(CGRect)frame
{
  v12.receiver = self;
  v12.super_class = MTEpisodeLockup;
  v3 = [(MTEpisodeLockup *)&v12 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = +[NSMutableDictionary dictionary];
    sizeCache = v3->_sizeCache;
    v3->_sizeCache = v4;

    v6 = objc_opt_new();
    actionController = v3->_actionController;
    v3->_actionController = v6;

    v3->_showsPubDate = 1;
    v3->_showsPlayState = 1;
    [(MTEpisodeLockup *)v3 configureSubviews];
    v3->_initialized = 1;
    v3->_shouldShowNowPlaying = 1;
    v8 = +[MTReachability sharedInstance];
    [v8 addObserver:v3];

    v9 = +[NSNotificationCenter defaultCenter];
    [v9 addObserver:v3 selector:"airplaneModeChanged:" name:@"MTAirplaneModeChangedNotification" object:0];

    v10 = +[NSNotificationCenter defaultCenter];
    [v10 addObserver:v3 selector:"contentSizeCategoryDidChange:" name:UIContentSizeCategoryDidChangeNotification object:0];
  }

  return v3;
}

- (void)dealloc
{
  v3 = +[MTReachability sharedInstance];
  [v3 removeObserver:self];

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = MTEpisodeLockup;
  [(MTEpisodeLockup *)&v5 dealloc];
}

- (void)configureSubviews
{
  layer = [(MTEpisodeLockup *)self layer];
  [layer setAllowsGroupOpacity:0];

  if ([(MTEpisodeLockup *)self showsPlayState])
  {
    playStatusView = [(MTEpisodeLockup *)self playStatusView];
    [(MTEpisodeLockup *)self addSubview:playStatusView];
  }

  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  [(MTEpisodeLockup *)self addSubview:titleTextView];

  metadataLabel = [(MTEpisodeLockup *)self metadataLabel];
  [(MTEpisodeLockup *)self addSubview:metadataLabel];

  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  [(MTEpisodeLockup *)self addSubview:descriptionTextView];

  if ([(MTEpisodeLockup *)self isExpanded])
  {
    footerTextView = [(MTEpisodeLockup *)self footerTextView];
    [(MTEpisodeLockup *)self addSubview:footerTextView];
  }

  actionButton = [(MTEpisodeLockup *)self actionButton];
  [(MTEpisodeLockup *)self addSubview:actionButton];

  if (![(MTEpisodeLockup *)self isExpanded])
  {
    moreButton = [(MTEpisodeLockup *)self moreButton];
    [(MTEpisodeLockup *)self addSubview:moreButton];
  }

  [(MTEpisodeLockup *)self updateColors];
  [(MTEpisodeLockup *)self setStyle:0];

  [(MTEpisodeLockup *)self setShowsMoreButton:1];
}

- (MTEpisodeArtworkView)artworkView
{
  artworkView = self->_artworkView;
  if (!artworkView)
  {
    v4 = objc_opt_new();
    v5 = self->_artworkView;
    self->_artworkView = v4;

    [(MTEpisodeArtworkView *)self->_artworkView setCurrentPlayerItem:[(MTEpisodeLockup *)self isCurrentPlayerItem]];
    artworkView = self->_artworkView;
  }

  return artworkView;
}

- (UIImageView)playStatusView
{
  playStatusView = self->_playStatusView;
  if (!playStatusView)
  {
    v4 = objc_alloc_init(UIImageView);
    v5 = self->_playStatusView;
    self->_playStatusView = v4;

    playStatusView = self->_playStatusView;
  }

  return playStatusView;
}

- (UIImageView)explicitIconView
{
  explicitIconView = self->_explicitIconView;
  if (!explicitIconView)
  {
    v4 = [UIImageView alloc];
    v5 = +[MTEpisodeStateView explicitIcon];
    v6 = [v4 initWithImage:v5];
    v7 = self->_explicitIconView;
    self->_explicitIconView = v6;

    [(UIImageView *)self->_explicitIconView sizeToFit];
    explicitIconView = self->_explicitIconView;
  }

  return explicitIconView;
}

- (MTEpisodeStateView)iconView
{
  iconView = self->_iconView;
  if (!iconView)
  {
    v4 = objc_opt_new();
    v5 = self->_iconView;
    self->_iconView = v4;

    [(MTEpisodeStateView *)self->_iconView setVerticalLayout:0];
    iconView = self->_iconView;
  }

  return iconView;
}

- (MTTouchInsetsButton)moreButton
{
  moreButton = self->_moreButton;
  if (!moreButton)
  {
    v4 = [MTTouchInsetsButton buttonWithType:1];
    v5 = self->_moreButton;
    self->_moreButton = v4;

    v6 = self->_moreButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"more..." value:&stru_1004F3018 table:0];
    [(MTTouchInsetsButton *)v6 setTitle:v8 forState:0];

    titleLabel = [(MTTouchInsetsButton *)self->_moreButton titleLabel];
    v10 = +[MTEpisodeLockup descriptionFont];
    [titleLabel setFont:v10];

    [(MTTouchInsetsButton *)self->_moreButton addTarget:self action:"moreButtonTapped:" forControlEvents:64];
    [(MTTouchInsetsButton *)self->_moreButton setTouchInsets:-16.0, -8.0, -8.0, -12.0];
    titleLabel2 = [(MTTouchInsetsButton *)self->_moreButton titleLabel];
    [titleLabel2 sizeToFit];

    v12 = self->_moreButton;
    titleLabel3 = [(MTTouchInsetsButton *)v12 titleLabel];
    [titleLabel3 bounds];
    [(MTTouchInsetsButton *)v12 setFrame:?];

    moreButton = self->_moreButton;
  }

  return moreButton;
}

- (MTTouchInsetsButton)descriptionButton
{
  descriptionButton = self->_descriptionButton;
  if (!descriptionButton)
  {
    v4 = [MTTouchInsetsButton buttonWithType:1];
    v5 = self->_descriptionButton;
    self->_descriptionButton = v4;

    v6 = self->_descriptionButton;
    v7 = +[NSBundle mainBundle];
    v8 = [v7 localizedStringForKey:@"show full description" value:&stru_1004F3018 table:0];
    [(MTTouchInsetsButton *)v6 setTitle:v8 forState:0];

    titleLabel = [(MTTouchInsetsButton *)self->_descriptionButton titleLabel];
    v10 = +[MTEpisodeLockup descriptionFont];
    [titleLabel setFont:v10];

    [(MTTouchInsetsButton *)self->_descriptionButton setTouchInsets:-16.0, -8.0, -8.0, -12.0];
    titleLabel2 = [(MTTouchInsetsButton *)self->_descriptionButton titleLabel];
    [titleLabel2 sizeToFit];

    v12 = self->_descriptionButton;
    titleLabel3 = [(MTTouchInsetsButton *)v12 titleLabel];
    [titleLabel3 bounds];
    [(MTTouchInsetsButton *)v12 setFrame:?];

    descriptionButton = self->_descriptionButton;
  }

  return descriptionButton;
}

- (UIButton)actionButton
{
  moreAction = [(MTEpisodeLockup *)self moreAction];
  button = [moreAction button];

  return button;
}

- (IMActionSheetAction)moreAction
{
  moreAction = self->_moreAction;
  if (!moreAction)
  {
    v4 = +[MTMoreActionSheetAction action];
    v5 = self->_moreAction;
    self->_moreAction = v4;

    objc_initWeak(&location, self);
    v6 = self->_moreAction;
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1000BA23C;
    v12 = &unk_1004D8260;
    objc_copyWeak(&v13, &location);
    [(IMAction *)v6 setActionBlock:&v9];
    v7 = [(MTEpisodeLockup *)self actionController:v9];
    [(IMAction *)self->_moreAction setController:v7];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
    moreAction = self->_moreAction;
  }

  return moreAction;
}

- (UITextView)titleTextView
{
  titleTextView = self->_titleTextView;
  if (!titleTextView)
  {
    v4 = objc_opt_new();
    v5 = self->_titleTextView;
    self->_titleTextView = v4;

    [(UITextView *)self->_titleTextView setEditable:0];
    [(UITextView *)self->_titleTextView setScrollEnabled:0];
    [(UITextView *)self->_titleTextView setUserInteractionEnabled:0];
    v6 = +[UIColor clearColor];
    [(UITextView *)self->_titleTextView setBackgroundColor:v6];

    [(UITextView *)self->_titleTextView setDataDetectorTypes:0];
    titleFont = [objc_opt_class() titleFont];
    [(UITextView *)self->_titleTextView setFont:titleFont];

    [(UITextView *)self->_titleTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    textContainer = [(UITextView *)self->_titleTextView textContainer];
    [textContainer setLineFragmentPadding:0.0];

    textContainer2 = [(UITextView *)self->_titleTextView textContainer];
    [textContainer2 setWidthTracksTextView:1];

    textContainer3 = [(UITextView *)self->_titleTextView textContainer];
    [textContainer3 setHeightTracksTextView:1];

    textContainer4 = [(UITextView *)self->_titleTextView textContainer];
    [textContainer4 setLineBreakMode:4];

    titleTextView = self->_titleTextView;
  }

  return titleTextView;
}

- (UITextView)descriptionTextView
{
  descriptionTextView = self->_descriptionTextView;
  if (!descriptionTextView)
  {
    v4 = objc_opt_new();
    v5 = self->_descriptionTextView;
    self->_descriptionTextView = v4;

    [(UITextView *)self->_descriptionTextView setEditable:0];
    [(UITextView *)self->_descriptionTextView setScrollEnabled:0];
    [(UITextView *)self->_descriptionTextView setClipsToBounds:0];
    [(UITextView *)self->_descriptionTextView setUserInteractionEnabled:0];
    v6 = +[UIColor clearColor];
    [(UITextView *)self->_descriptionTextView setBackgroundColor:v6];

    textContainer = [(UITextView *)self->_descriptionTextView textContainer];
    [textContainer setLineBreakMode:4];

    textContainer2 = [(UITextView *)self->_descriptionTextView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    textContainer3 = [(UITextView *)self->_descriptionTextView textContainer];
    [textContainer3 setHeightTracksTextView:1];

    textContainer4 = [(UITextView *)self->_descriptionTextView textContainer];
    [textContainer4 setWidthTracksTextView:1];

    [(UITextView *)self->_descriptionTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(UITextView *)self->_descriptionTextView setDataDetectorTypes:0];
    v11 = self->_descriptionTextView;
    v12 = +[MTEpisodeLockup descriptionFont];
    [(UITextView *)v11 setFont:v12];

    descriptionTextView = self->_descriptionTextView;
  }

  return descriptionTextView;
}

- (UILabel)metadataLabel
{
  metadataLabel = self->_metadataLabel;
  if (!metadataLabel)
  {
    v4 = objc_alloc_init(UILabel);
    v5 = self->_metadataLabel;
    self->_metadataLabel = v4;

    v6 = +[UIColor clearColor];
    [(UILabel *)self->_metadataLabel setBackgroundColor:v6];

    v7 = self->_metadataLabel;
    v8 = +[MTEpisodeLockup metadataHeaderFont];
    [(UILabel *)v7 setFont:v8];

    metadataLabel = self->_metadataLabel;
  }

  return metadataLabel;
}

- (UITextView)footerTextView
{
  footerTextView = self->_footerTextView;
  if (!footerTextView)
  {
    v4 = objc_opt_new();
    v5 = self->_footerTextView;
    self->_footerTextView = v4;

    [(UITextView *)self->_footerTextView setEditable:0];
    [(UITextView *)self->_footerTextView setScrollEnabled:0];
    [(UITextView *)self->_footerTextView setClipsToBounds:0];
    [(UITextView *)self->_footerTextView setUserInteractionEnabled:0];
    v6 = +[UIColor clearColor];
    [(UITextView *)self->_footerTextView setBackgroundColor:v6];

    textContainer = [(UITextView *)self->_footerTextView textContainer];
    [textContainer setLineBreakMode:4];

    textContainer2 = [(UITextView *)self->_footerTextView textContainer];
    [textContainer2 setLineFragmentPadding:0.0];

    textContainer3 = [(UITextView *)self->_footerTextView textContainer];
    [textContainer3 setHeightTracksTextView:1];

    textContainer4 = [(UITextView *)self->_footerTextView textContainer];
    [textContainer4 setWidthTracksTextView:1];

    [(UITextView *)self->_footerTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    [(UITextView *)self->_footerTextView setDataDetectorTypes:0];
    v11 = self->_footerTextView;
    v12 = +[MTEpisodeLockup metadataFooterFont];
    [(UITextView *)v11 setFont:v12];

    footerTextView = self->_footerTextView;
  }

  return footerTextView;
}

- (MTNowPlayingIndicatorView)barsView
{
  barsView = self->_barsView;
  if (!barsView)
  {
    v4 = objc_opt_new();
    v5 = self->_barsView;
    self->_barsView = v4;

    [(MTNowPlayingIndicatorView *)self->_barsView setBounceStyle:1];
    [(MTNowPlayingIndicatorView *)self->_barsView setNumberOfLevels:4];
    v6 = +[UIScreen mainScreen];
    [v6 scale];
    v8 = v7;

    [(MTNowPlayingIndicatorView *)self->_barsView setLevelCornerRadius:1.0 / v8];
    [(MTEpisodeLockup *)self updateColorsForBarsView:self->_barsView];
    barsView = self->_barsView;
  }

  return barsView;
}

- (void)setColorTheme:(id)theme
{
  themeCopy = theme;
  colorTheme = self->_colorTheme;
  if (colorTheme != themeCopy)
  {
    v8 = themeCopy;
    v7 = [(MTColorTheme *)colorTheme isEqual:themeCopy];
    themeCopy = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_colorTheme, theme);
      [(MTEpisodeLockup *)self updateColors];
      themeCopy = v8;
    }
  }
}

- (void)updateColors
{
  colorTheme = [(MTEpisodeLockup *)self colorTheme];
  v20 = [UIColor tintColorForTheme:colorTheme];

  colorTheme2 = [(MTEpisodeLockup *)self colorTheme];
  v5 = [UIColor primaryTextColorForTheme:colorTheme2];

  colorTheme3 = [(MTEpisodeLockup *)self colorTheme];
  v7 = [UIColor secondaryTextColorForTheme:colorTheme3];

  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  [titleTextView setTextColor:v5];

  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  [descriptionTextView setTextColor:v7];

  footerTextView = [(MTEpisodeLockup *)self footerTextView];
  [footerTextView setTextColor:v7];

  metadataLabel = [(MTEpisodeLockup *)self metadataLabel];
  [metadataLabel setTextColor:v7];

  iconView = [(MTEpisodeLockup *)self iconView];
  colorTheme4 = [(MTEpisodeLockup *)self colorTheme];
  [iconView setColorTheme:colorTheme4];

  actionController = [(MTEpisodeLockup *)self actionController];
  colorTheme5 = [(MTEpisodeLockup *)self colorTheme];
  [actionController setColorTheme:colorTheme5];

  actionButton = [(MTEpisodeLockup *)self actionButton];
  [actionButton setTintColor:v20];

  descriptionTextView2 = [(MTEpisodeLockup *)self descriptionTextView];
  [descriptionTextView2 setTintColor:v20];

  moreButton = [(MTEpisodeLockup *)self moreButton];
  [moreButton setTintColor:v20];

  descriptionButton = [(MTEpisodeLockup *)self descriptionButton];
  [descriptionButton setTintColor:v20];

  [(MTEpisodeLockup *)self updateColorsForBarsView:self->_barsView];
  [(MTEpisodeLockup *)self updatePlayStatusIcons];
}

- (void)updateColorsForBarsView:(id)view
{
  if (view)
  {
    viewCopy = view;
    colorTheme = [(MTEpisodeLockup *)self colorTheme];
    v5 = [UIColor barsTintColorForTheme:colorTheme];
    [viewCopy setTintColor:v5];
  }
}

- (void)moreButtonTapped:(id)tapped
{
  tappedCopy = tapped;
  delegate = [(MTEpisodeLockup *)self delegate];
  [delegate lockup:self moreButtonTapped:tappedCopy];
}

- (void)airplaneModeChanged:(id)changed
{
  if (![(MTEpisodeLockup *)self updateDisabledReason])
  {
    episode = [(MTEpisodeLockup *)self episode];

    if (episode)
    {

      [(MTEpisodeLockup *)self updateIcons];
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)change
{
  [(MTTouchInsetsButton *)self->_moreButton removeFromSuperview];
  moreButton = self->_moreButton;
  self->_moreButton = 0;

  if ([(MTEpisodeLockup *)self showsMoreButton])
  {
    self->_showsMoreButton = 0;

    [(MTEpisodeLockup *)self setShowsMoreButton:1];
  }
}

- (void)reachabilityChangedFrom:(BOOL)from to:(BOOL)to
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000BAE04;
  v4[3] = &unk_1004D9E80;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)setEpisode:(id)episode
{
  objc_storeStrong(&self->_episode, episode);
  if (episode)
  {

    [(MTEpisodeLockup *)self update];
  }
}

- (void)setEditing:(BOOL)editing
{
  if (self->_editing != editing)
  {
    self->_editing = editing;
    [(MTEpisodeLockup *)self updateMoreButtonVisibility];
  }
}

- (void)setCurrentPlayerItem:(BOOL)item
{
  if (self->_currentPlayerItem != item)
  {
    itemCopy = item;
    self->_currentPlayerItem = item;
    [(MTEpisodeArtworkView *)self->_artworkView setCurrentPlayerItem:?];
    [(MTEpisodeLockup *)self updatePlayStatusIcons];
    [(MTEpisodeLockup *)self updateIconView];
    if (itemCopy)
    {

      [(MTEpisodeLockup *)self startObservingPlaybackState];
    }

    else
    {

      [(MTEpisodeLockup *)self stopObservingPlaybackState];
    }
  }
}

- (void)setExpanded:(BOOL)expanded
{
  if (self->_expanded != expanded)
  {
    self->_expanded = expanded;
    [(MTEpisodeLockup *)self updateMoreButtonVisibility];
    if (expanded)
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_class() descriptionNumberOfLinesForStyle:-[MTEpisodeLockup style](self isTitleMultipleLines:{"style"), 1}];
    }

    [(MTEpisodeLockup *)self _setNumberOfLinesForDescription:v6];
    episode = [(MTEpisodeLockup *)self episode];

    if (episode)
    {
      [(MTEpisodeLockup *)self updateDescriptionText];
    }

    [(MTEpisodeLockup *)self updateFooterTextViewVisbility];

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)setStyle:(unint64_t)style
{
  if (self->_style != style || !self->_initialized)
  {
    self->_style = style;
    [(MTEpisodeLockup *)self setShowsArtwork:[MTEpisodeLockup showsArtworkForStyle:style]];
    v5 = [objc_opt_class() titleNumberOfLinesForStyle:style];
    titleTextView = [(MTEpisodeLockup *)self titleTextView];
    textContainer = [titleTextView textContainer];
    [textContainer setMaximumNumberOfLines:v5];

    [(MTEpisodeLockup *)self updateTitleFontIfNeeded];
    [(MTEpisodeLockup *)self invalidateSizeMetrics];

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)setShowsPubDate:(BOOL)date
{
  if (self->_showsPubDate != date)
  {
    self->_showsPubDate = date;
    [(MTEpisodeLockup *)self updateDescriptionText];
  }
}

- (void)setShowsPlayState:(BOOL)state
{
  if (self->_showsPlayState == state)
  {
    return;
  }

  stateCopy = state;
  self->_showsPlayState = state;
  playStatusView = [(MTEpisodeLockup *)self playStatusView];
  superview = [playStatusView superview];

  if (stateCopy)
  {
    if (superview != self)
    {
      playStatusView2 = [(MTEpisodeLockup *)self playStatusView];
      [(MTEpisodeLockup *)self addSubview:playStatusView2];
LABEL_7:
    }
  }

  else if (superview)
  {
    playStatusView2 = [(MTEpisodeLockup *)self playStatusView];
    [playStatusView2 removeFromSuperview];
    goto LABEL_7;
  }

  [(MTEpisodeLockup *)self updateIcons];
}

- (void)prepareForReuse
{
  [(MTEpisodeLockup *)self setEpisode:0];
  [(MTEpisodeLockup *)self setExpanded:0];
  [(MTEpisodeLockup *)self setDelegate:0];
  actionController = [(MTEpisodeLockup *)self actionController];
  [actionController prepareForReuse];

  [(MTEpisodeLockup *)self setDisabledReason:0];
  [(MTEpisodeLockup *)self invalidateSizeMetrics];
  [(MTEpisodeLockup *)self invalidateLayoutMargins];
  self->_shouldShowNowPlaying = 1;
  [(MTEpisodeLockup *)self setCurrentPlayerItem:0];
  artworkView = [(MTEpisodeLockup *)self artworkView];
  artwork = [artworkView artwork];

  if (artwork)
  {
    v7 = [objc_opt_class() defaultArtworkForStyle:{-[MTEpisodeLockup style](self, "style")}];
    artworkView2 = [(MTEpisodeLockup *)self artworkView];
    [artworkView2 setArtwork:v7];
  }
}

- (void)invalidateLayoutMargins
{
  v2 = *&UIEdgeInsetsZero.bottom;
  *&self->__layoutMargins.top = *&UIEdgeInsetsZero.top;
  *&self->__layoutMargins.bottom = v2;
}

- (void)updateActionSheetsAndPopovers
{
  moreAction = [(MTEpisodeLockup *)self moreAction];
  sub_1000BB420(moreAction, moreAction);

  actionController = [(MTEpisodeLockup *)self actionController];
  [actionController updateActionSheetsAndPopovers];
}

- (void)dismissActionSheetsAndPopovers
{
  moreAction = [(MTEpisodeLockup *)self moreAction];
  sub_1000BB4F8(moreAction, moreAction);

  actionController = [(MTEpisodeLockup *)self actionController];
  [actionController dismissActionSheetsAndPopovers];
}

- (id)hitTest:(CGPoint)test withEvent:(id)event
{
  y = test.y;
  x = test.x;
  eventCopy = event;
  v15.receiver = self;
  v15.super_class = MTEpisodeLockup;
  v8 = [(MTEpisodeLockup *)&v15 hitTest:eventCopy withEvent:x, y];
  moreButton = [(MTEpisodeLockup *)self moreButton];

  if (v8 == moreButton)
  {
    actionButton = [(MTEpisodeLockup *)self actionButton];
    actionButton2 = [(MTEpisodeLockup *)self actionButton];
    [(MTEpisodeLockup *)self convertPoint:actionButton2 toView:x, y];
    v12 = [actionButton hitTest:eventCopy withEvent:?];

    if (v12)
    {
      v13 = v12;

      v8 = v13;
    }
  }

  return v8;
}

- (void)layoutSubviews
{
  v135.receiver = self;
  v135.super_class = MTEpisodeLockup;
  [(MTEpisodeLockup *)&v135 layoutSubviews];
  [(MTEpisodeLockup *)self bounds];
  v4 = v3;
  if ([(MTEpisodeLockup *)self showsArtwork])
  {
    [(MTEpisodeLockup *)self artworkFrameForStyle:[(MTEpisodeLockup *)self style] forViewWidth:v4];
    x = v5;
    y = v7;
    width = v9;
    height = v11;
    artworkView = [(MTEpisodeLockup *)self artworkView];
    [artworkView setFrame:{x, y, width, height}];
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  v125 = width;
  v127 = x;
  [(MTEpisodeLockup *)self titleOriginYForArtworkFrame:[(MTEpisodeLockup *)self style] style:x, y, width, height];
  v126 = y;
  v15 = v14;
  v16 = v4;
  v17 = v4;
  v18 = v15;
  v113 = v15;
  [(MTEpisodeLockup *)self actionButtonFrameForViewWidth:v17 titleOriginY:?];
  v20 = v19;
  v22 = v21;
  v24 = v23;
  v26 = v25;
  actionButton = [(MTEpisodeLockup *)self actionButton];
  [actionButton setFrame:{v20, v22, v24, v26}];

  [(MTEpisodeLockup *)self downloadButtonFrameForActionButtonFrame:v20 titleOriginY:v22, v24, v26, v18];
  v123 = v22;
  v124 = v20;
  v121 = v28;
  v122 = v24;
  v115 = v26;
  v119 = v30;
  v120 = v29;
  v118 = v31;
  [(MTEpisodeLockup *)self buttonsFrameForActionButtonFrame:v20 downloadButtonFrame:v22, v24, v26];
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  [(MTEpisodeLockup *)self titleOriginXForViewWidth:[(MTEpisodeLockup *)self style] artworkFrame:v16 buttonFrame:v127 style:y, v125, height, v32, v34, v36, v38];
  v128 = v40;
  v129 = v16;
  v114 = v39;
  v116 = v35;
  v117 = v33;
  [(MTEpisodeLockup *)self titleSizeForViewWidth:[(MTEpisodeLockup *)self style] titleOrigin:v16 artworkFrame:v40 buttonViewFrame:v113 style:v127, y, v125, height, v33, v35, v37, v39];
  v42 = v41;
  v44 = v43;
  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  [titleTextView setFrame:{v128, v113, v42, v44}];

  v46 = v44;
  v47 = v42;
  [(MTEpisodeLockup *)self playStatusViewFrameForViewWidth:v16 titleFrame:v128 artworkFrame:v113, v42, v46, *&v127, *&y, *&v125, *&height];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  playStatusView = [(MTEpisodeLockup *)self playStatusView];
  [playStatusView setFrame:{v49, v51, v53, v55}];

  barsView = [(MTEpisodeLockup *)self barsView];
  superview = [barsView superview];

  if (superview)
  {
    barsView2 = [(MTEpisodeLockup *)self barsView];
    [barsView2 setFrame:{v49, v51, v53, v55}];
  }

  [(MTEpisodeLockup *)self metadataFrameForViewWidth:[(MTEpisodeLockup *)self style] titleFrame:v129 style:v128, v113, v47, v46];
  v132 = v60;
  *&v133 = v61;
  *(&v133 + 1) = v62;
  v134 = v63;
  [(MTEpisodeLockup *)self iconsViewFrameForViewWidth:&v132 titleFrame:[(MTEpisodeLockup *)self style] metadataFrame:v129 style:v128, v113, v47, v46];
  v65 = v64;
  v67 = v66;
  v69 = v68;
  v71 = v70;
  iconView = [(MTEpisodeLockup *)self iconView];
  superview2 = [iconView superview];

  if (superview2)
  {
    iconView2 = [(MTEpisodeLockup *)self iconView];
    [iconView2 setFrame:{v65, v67, v69, v71}];
  }

  metadataLabel = [(MTEpisodeLockup *)self metadataLabel];
  [metadataLabel setFrame:{v132, v133, v134}];

  style = [(MTEpisodeLockup *)self style];
  [(MTEpisodeLockup *)self descriptionOriginForViewWidth:style artworkFrame:v129 buttonViewFrame:v127 titleFrame:v126 metadataFrame:v125 iconViewFrame:height style:v117, v116, v37, v114, *&v128, *&v113, *&v47, *&v46, *&v132, v133, *&v134, *&v65, *&v67, *&v69, *&v71];
  v78 = v77;
  v80 = v79;
  [(MTEpisodeLockup *)self exactDescriptionSizeForOrigin:[(MTEpisodeLockup *)self style] viewWidth:v77 titleFrame:v79 actionButtonFrame:v129 downloadButtonFrame:v128 style:v113, v47, v46, *&v124, *&v123, *&v122, *&v115, v121, v120, v119, v118];
  v82 = v81;
  v84 = v83;
  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  [descriptionTextView frame];
  v137.origin.x = v86;
  v137.origin.y = v87;
  v137.size.width = v88;
  v137.size.height = v89;
  v136.origin.x = v78;
  v136.origin.y = v80;
  v136.size.width = v82;
  v136.size.height = v84;
  v90 = CGRectEqualToRect(v136, v137);

  if (!v90)
  {
    descriptionTextView2 = [(MTEpisodeLockup *)self descriptionTextView];
    [descriptionTextView2 setFrame:{v78, v80, v82, v84}];
  }

  [(MTEpisodeLockup *)self fixEmptyTextContainers];
  if ([(MTEpisodeLockup *)self showsMoreButton])
  {
    [(MTEpisodeLockup *)self moreButtonFrameForDescriptionFrame:v78, v80, v82, v84];
    v131[0] = _NSConcreteStackBlock;
    v131[1] = 3221225472;
    v131[2] = sub_1000BBD60;
    v131[3] = &unk_1004DB388;
    v131[4] = self;
    v131[5] = v92;
    v131[6] = v93;
    v131[7] = v94;
    v131[8] = v95;
    [UIView performWithoutAnimation:v131];
  }

  [(MTEpisodeLockup *)self descriptionButtonFrameForDescriptionFrame:v78, v80, v82, v84];
  v97 = v96;
  v99 = v98;
  v101 = v100;
  v103 = v102;
  if ([(MTEpisodeLockup *)self showsDescriptionButton])
  {
    v130[0] = _NSConcreteStackBlock;
    v130[1] = 3221225472;
    v130[2] = sub_1000BBDCC;
    v130[3] = &unk_1004DB388;
    v130[4] = self;
    *&v130[5] = v97;
    *&v130[6] = v99;
    *&v130[7] = v101;
    *&v130[8] = v103;
    [UIView performWithoutAnimation:v130];
  }

  if ([(MTEpisodeLockup *)self showsFooterTextView])
  {
    [(MTEpisodeLockup *)self footerFrameForDescriptionButtonFrame:v97 descriptionFrame:v99, v101, v103, v78, v80, v82, v84];
    v105 = v104;
    v107 = v106;
    v109 = v108;
    v111 = v110;
    footerTextView = [(MTEpisodeLockup *)self footerTextView];
    [footerTextView setFrame:{v105, v107, v109, v111}];
  }
}

- (CGRect)explicitIconFrameForViewWidth:(double)width titleFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v10 = +[MTEpisodeLockup titleFont];
  explicitIconView = [(MTEpisodeLockup *)self explicitIconView];
  [explicitIconView frame];
  v13 = v12;
  v15 = v14;

  _isRTL = [(MTEpisodeLockup *)self _isRTL];
  widthCopy = width;
  v17 = x;
  v18 = y;
  widthCopy2 = width;
  v20 = height;
  if (_isRTL)
  {
    v21 = CGRectGetMinX(*&v17) - v13;
    [(MTEpisodeLockup *)self _layoutMargins];
    if (v21 >= v22)
    {
      v23 = v21;
    }

    else
    {
      v23 = v22;
    }
  }

  else
  {
    MaxX = CGRectGetMaxX(*&v17);
    [(MTEpisodeLockup *)self _layoutMargins];
    if (MaxX >= width - v25 - v13)
    {
      v23 = width - v25 - v13;
    }

    else
    {
      v23 = MaxX;
    }
  }

  v63.origin.x = x;
  v63.origin.y = y;
  v63.size.width = width;
  v63.size.height = height;
  MaxY = CGRectGetMaxY(v63);
  [v10 im_distanceFromLastBaselineToBottom];
  v28 = v27;
  [v10 lineHeight];
  v30 = (v29 - v15) * 0.5;
  if (qword_100583BB0 != -1)
  {
    sub_1003B2BE8();
  }

  v31 = ceil(v30 * *&qword_100571778) / *&qword_100571778;
  v32 = ceil(v30);
  if (*&qword_100571778 == 1.0)
  {
    v33 = v32;
  }

  else
  {
    v33 = v31;
  }

  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  layoutManager = [titleTextView layoutManager];
  v36 = [layoutManager numberOfGlyphs] - 1;

  if (v36)
  {
    v61 = v28;
    v37 = MaxY;
    titleTextView2 = [(MTEpisodeLockup *)self titleTextView];
    layoutManager2 = [titleTextView2 layoutManager];
    [layoutManager2 lineFragmentRectForGlyphAtIndex:v36 effectiveRange:0];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    _isRTL2 = [(MTEpisodeLockup *)self _isRTL];
    v49 = v41;
    v50 = v43;
    v51 = v45;
    v52 = v47;
    if (_isRTL2)
    {
      v53 = CGRectGetMinX(*&v49) + -5.0 - v13;
      [(MTEpisodeLockup *)self _layoutMargins];
      if (v53 >= v54)
      {
        v23 = v53;
      }

      else
      {
        v23 = v54;
      }
    }

    else
    {
      v55 = CGRectGetMaxX(*&v49) + 5.0;
      [(MTEpisodeLockup *)self _layoutMargins];
      if (v55 >= widthCopy - v56 - v13)
      {
        v23 = widthCopy - v56 - v13;
      }

      else
      {
        v23 = v55;
      }
    }

    MaxY = v37;
    v28 = v61;
  }

  v57 = v23;
  v58 = MaxY - v28 - v33;
  v59 = v13;
  v60 = v15;
  result.size.height = v60;
  result.size.width = v59;
  result.origin.y = v58;
  result.origin.x = v57;
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  style = [(MTEpisodeLockup *)self style];
  if ([(MTEpisodeLockup *)self isExpanded])
  {
    v7 = @"e";
  }

  else
  {
    v7 = @"c";
  }

  v19.width = width;
  v19.height = height;
  v8 = NSStringFromCGSize(v19);
  v9 = [NSString stringWithFormat:@"%lu-%@-%@", style, v7, v8];

  v10 = [(NSMutableDictionary *)self->_sizeCache objectForKeyedSubscript:v9];
  v11 = v10;
  if (v10)
  {
    [v10 CGSizeValue];
    width = v12;
    v14 = v13;
  }

  else
  {
    [(MTEpisodeLockup *)self _layoutMarginsForViewWidth:width];
    [(MTEpisodeLockup *)self set_layoutMargins:?];
    [(MTEpisodeLockup *)self heightForWidth:[(MTEpisodeLockup *)self style] style:width];
    v14 = v15;
    v16 = [NSValue valueWithCGSize:width, v15];
    [(NSMutableDictionary *)self->_sizeCache setObject:v16 forKeyedSubscript:v9];
  }

  v17 = width;
  v18 = v14;
  result.height = v18;
  result.width = v17;
  return result;
}

- (void)fixEmptyTextContainers
{
  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  textContainer = [descriptionTextView textContainer];
  [textContainer size];
  v6 = v5;
  v8 = v7;

  descriptionTextView2 = [(MTEpisodeLockup *)self descriptionTextView];
  [descriptionTextView2 frame];
  v11 = v10;
  v13 = v12;

  if (v6 != v11 || v8 != v13)
  {
    descriptionTextView3 = [(MTEpisodeLockup *)self descriptionTextView];
    textContainer2 = [descriptionTextView3 textContainer];
    [textContainer2 setSize:{v11, v13}];
  }

  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  textContainer3 = [titleTextView textContainer];
  [textContainer3 size];
  v20 = v19;
  v22 = v21;

  titleTextView2 = [(MTEpisodeLockup *)self titleTextView];
  [titleTextView2 frame];
  v25 = v24;
  v27 = v26;

  if (v20 != v25 || v22 != v27)
  {
    titleTextView3 = [(MTEpisodeLockup *)self titleTextView];
    textContainer4 = [titleTextView3 textContainer];
    [textContainer4 setSize:{v25, v27}];
  }
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  [(MTEpisodeLockup *)self frame];
  if (v8 != width)
  {
    self->_descriptionSize = CGSizeZero;
    [(MTEpisodeLockup *)self invalidateLayoutMargins];
  }

  v9.receiver = self;
  v9.super_class = MTEpisodeLockup;
  [(MTEpisodeLockup *)&v9 setFrame:x, y, width, height];
}

- (void)setBounds:(CGRect)bounds
{
  height = bounds.size.height;
  width = bounds.size.width;
  y = bounds.origin.y;
  x = bounds.origin.x;
  [(MTEpisodeLockup *)self bounds];
  if (v8 != width)
  {
    self->_descriptionSize = CGSizeZero;
    [(MTEpisodeLockup *)self invalidateLayoutMargins];
  }

  v9.receiver = self;
  v9.super_class = MTEpisodeLockup;
  [(MTEpisodeLockup *)&v9 setBounds:x, y, width, height];
}

- (void)layoutMarginsDidChange
{
  [(MTEpisodeLockup *)self invalidateLayoutMargins];

  [(MTEpisodeLockup *)self setNeedsLayout];
}

- (UIEdgeInsets)_layoutMargins
{
  p_layoutMargins = &self->__layoutMargins;
  v3 = *&self->__layoutMargins.top;
  v4 = *&self->__layoutMargins.bottom;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v3, *&UIEdgeInsetsZero.top), vceqq_f64(v4, *&UIEdgeInsetsZero.bottom)))))
  {
    [(MTEpisodeLockup *)self bounds];
    [(MTEpisodeLockup *)self _layoutMarginsForViewWidth:v8];
    p_layoutMargins->top = v3.f64[0];
    p_layoutMargins->left = left;
    p_layoutMargins->bottom = v4.f64[0];
    p_layoutMargins->right = right;
  }

  else
  {
    left = self->__layoutMargins.left;
    right = self->__layoutMargins.right;
  }

  result.bottom = v4.f64[0];
  result.top = v3.f64[0];
  result.right = right;
  result.left = left;
  return result;
}

- (UIEdgeInsets)_layoutMarginsForViewWidth:(double)width
{
  [objc_opt_class() leadingMarginForViewWidth:width];
  v6 = v5;
  v7 = *&self->__layoutMargins.top;
  v8 = *&self->__layoutMargins.bottom;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *&UIEdgeInsetsZero.top), vceqq_f64(v8, *&UIEdgeInsetsZero.bottom)))))
  {
    [MTEpisodeLockup maximumContentWidthForStyle:[(MTEpisodeLockup *)self style]];
    v12 = v11;
    [(MTEpisodeLockup *)self mt_layoutMarginsForWidth:width];
    v14 = v13;
    v20 = v16;
    v21 = v15;
    right = v17;
    if ([(MTEpisodeLockup *)self showsPlayState]&& v13 < v6)
    {
      left = v6;
    }

    else
    {
      left = v14;
    }

    if (width - left - right > v12)
    {
      IMRoundToPixel();
      left = v18;
      right = v18;
    }

    v8.f64[0] = v20;
    v7.f64[0] = v21;
    self->__layoutMargins.top = v21;
    self->__layoutMargins.left = left;
    self->__layoutMargins.bottom = v20;
    self->__layoutMargins.right = right;
  }

  else
  {
    left = self->__layoutMargins.left;
    right = self->__layoutMargins.right;
  }

  v19 = right;
  result.bottom = v8.f64[0];
  result.top = v7.f64[0];
  result.right = v19;
  result.left = left;
  return result;
}

- (double)heightForWidth:(double)width style:(unint64_t)style
{
  [MTEpisodeLockup artworkFrameForStyle:"artworkFrameForStyle:forViewWidth:" forViewWidth:?];
  v114 = v7;
  v94 = v8;
  v109 = v9;
  v11 = v10;
  [(MTEpisodeLockup *)self titleOriginYForArtworkFrame:style style:?];
  v93 = v12;
  [(MTEpisodeLockup *)self actionButtonFrameForViewWidth:width titleOriginY:v12];
  v14 = v13;
  v105 = v15;
  v107 = v13;
  v16 = v15;
  v18 = v17;
  v101 = v19;
  v103 = v17;
  v20 = v19;
  [MTEpisodeLockup downloadButtonFrameForActionButtonFrame:"downloadButtonFrameForActionButtonFrame:titleOriginY:" titleOriginY:?];
  v99 = v22;
  v100 = v21;
  v97 = v24;
  v98 = v23;
  [(MTEpisodeLockup *)self buttonsFrameForActionButtonFrame:v14 downloadButtonFrame:v16, v18, v20, v21, v22, v23, v24];
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v111 = v31;
  v95 = v29;
  v96 = v27;
  v113 = v11;
  [(MTEpisodeLockup *)self titleOriginXForViewWidth:style artworkFrame:width buttonFrame:v114 style:v11, v94, v109, v25, v27, v29, v31];
  v92 = v30;
  v33 = v32;
  [(MTEpisodeLockup *)self titleSizeForViewWidth:style titleOrigin:width artworkFrame:v26 buttonViewFrame:v28 style:v92, v111];
  v35 = v34;
  v37 = v36;
  [(MTEpisodeLockup *)self metadataFrameForViewWidth:style titleFrame:width style:v33, v93, v34, v36];
  v115 = v38;
  *&v116 = v39;
  *(&v116 + 1) = v40;
  v117 = v41;
  [(MTEpisodeLockup *)self iconsViewFrameForViewWidth:&v115 titleFrame:style metadataFrame:width style:v33, v93, v35, v37];
  [(MTEpisodeLockup *)self descriptionOriginForViewWidth:style artworkFrame:width buttonViewFrame:v114 titleFrame:v113 metadataFrame:v94 iconViewFrame:v109 style:v26, v96, v95, v111, *&v33, *&v93, *&v35, *&v37, v115, v116, v117, v42, v43, v44, v45];
  v47 = v46;
  v49 = v48;
  [(MTEpisodeLockup *)self exactDescriptionSizeForOrigin:style viewWidth:*&v107 titleFrame:*&v105 actionButtonFrame:*&v103 downloadButtonFrame:*&v101 style:*&v100, *&v99, *&v98, *&v97];
  v51 = v50;
  v112 = v52;
  [(MTEpisodeLockup *)self moreButtonFrameForDescriptionFrame:v49, v47];
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v118.origin.y = v113;
  v118.origin.x = v114;
  v118.size.width = v94;
  v118.size.height = v109;
  CGRectGetMaxY(v118);
  v119.origin.x = v54;
  v119.origin.y = v56;
  v119.size.width = v58;
  v119.size.height = v60;
  if (!CGRectIsEmpty(v119))
  {
    v120.origin.x = v54;
    v120.origin.y = v56;
    v120.size.width = v58;
    v120.size.height = v60;
    CGRectGetMaxY(v120);
  }

  v61 = v47;
  v62 = +[MTEpisodeLockup descriptionFont];
  [v62 mt_offsetFromLastBaselineToBottom];

  if ([(MTEpisodeLockup *)self isExpanded])
  {
    descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
    [descriptionTextView frame];
    v125.origin.x = v64;
    v125.origin.y = v65;
    v125.size.width = v66;
    v125.size.height = v67;
    v121.origin.x = v49;
    v121.origin.y = v47;
    v121.size.width = v112;
    v121.size.height = v51;
    v68 = CGRectEqualToRect(v121, v125);

    if (!v68)
    {
      descriptionTextView2 = [(MTEpisodeLockup *)self descriptionTextView];
      [descriptionTextView2 setFrame:{v49, v47, v112, v51}];
    }

    [(MTEpisodeLockup *)self descriptionButtonFrameForDescriptionFrame:v49, v47, v112, v51];
    v71 = v70;
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v106 = v72;
    v108 = v70;
    v102 = v76;
    v104 = v74;
    if ([(MTEpisodeLockup *)self showsFooterTextView])
    {
      [(MTEpisodeLockup *)self footerFrameForDescriptionButtonFrame:v71 descriptionFrame:v73, v75, v77, v49, v61, v112, v51];
      v79 = v78;
      y = v80;
      v82 = v61;
      width = v83;
      height = v85;
      footerTextView = [(MTEpisodeLockup *)self footerTextView];
      x = v79;
      [footerTextView setFrame:{v79, y, width, height}];
    }

    else
    {
      y = CGRectZero.origin.y;
      x = CGRectZero.origin.x;
      v82 = v61;
      width = CGRectZero.size.width;
      height = CGRectZero.size.height;
    }

    v122.origin.x = v49;
    v122.origin.y = v82;
    v122.size.width = v112;
    v122.size.height = v51;
    if (CGRectGetHeight(v122) > 0.0)
    {
      v123.origin.y = v106;
      v123.origin.x = v108;
      v123.size.height = v102;
      v123.size.width = v104;
      CGRectGetMaxY(v123);
    }

    v124.origin.x = x;
    v124.origin.y = y;
    v124.size.width = width;
    v124.size.height = height;
    CGRectGetMaxY(v124);
  }

  titleFont = [objc_opt_class() titleFont];
  [titleFont _scaledValueForValue:8.0];
  v89 = 100.0;
  if (style > 1)
  {
    if (style == 3 || style == 2)
    {
      goto LABEL_17;
    }
  }

  else if (style <= 1)
  {
LABEL_17:
    IMRoundToPixel();
    v89 = v90;
  }

  return v89;
}

- (CGRect)artworkFrameForStyle:(unint64_t)style forViewWidth:(double)width
{
  if ((style & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [objc_opt_class() artworkSizeForStyle:style];
    width = v7;
    height = v9;
    _isRTL = [(MTEpisodeLockup *)self _isRTL];
    [(MTEpisodeLockup *)self _layoutMargins];
    x = width - v12 - width;
    if (!_isRTL)
    {
      x = v12;
    }

    y = 8.0;
    if (style == 2)
    {
      y = 16.0;
    }
  }

  else
  {
    x = CGRectZero.origin.x;
    y = CGRectZero.origin.y;
    width = CGRectZero.size.width;
    height = CGRectZero.size.height;
  }

  widthCopy = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = widthCopy;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)titleOriginXForViewWidth:(double)result artworkFrame:(CGRect)frame buttonFrame:(CGRect)buttonFrame style:(unint64_t)style
{
  if (style - 2 < 2)
  {
    height = frame.size.height;
    width = frame.size.width;
    y = frame.origin.y;
    x = frame.origin.x;
    if (![(MTEpisodeLockup *)self _isRTL])
    {
      v13 = x;
      v14 = y;
      v15 = width;
      v16 = height;
      return CGRectGetMaxX(*&v13) + 8.0;
    }
  }

  else
  {
    if (style > 1)
    {
      return result;
    }

    if (![(MTEpisodeLockup *)self _isRTL:result])
    {
      [(MTEpisodeLockup *)self _layoutMargins];
      return v7;
    }
  }

  if (CGRectIsEmpty(buttonFrame))
  {
    [(MTEpisodeLockup *)self _layoutMargins];
    return v12;
  }

  v13 = buttonFrame.origin.x;
  v14 = buttonFrame.origin.y;
  v15 = buttonFrame.size.width;
  v16 = buttonFrame.size.height;
  return CGRectGetMaxX(*&v13) + 8.0;
}

- (CGSize)titleSizeForViewWidth:(double)width titleOrigin:(CGPoint)origin artworkFrame:(CGRect)frame buttonViewFrame:(CGRect)viewFrame style:(unint64_t)style
{
  y = origin.y;
  x = origin.x;
  v10 = [objc_opt_class() showsArtworkForStyle:style];
  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  [titleTextView frame];
  v13 = v12;
  v15 = v14;

  if (x != v13 || y != v15)
  {
    titleTextView2 = [(MTEpisodeLockup *)self titleTextView];
    [titleTextView2 frame];
    v19 = v18;
    v21 = v20;
    titleTextView3 = [(MTEpisodeLockup *)self titleTextView];
    [titleTextView3 setFrame:{x, y, v19, v21}];
  }

  v23 = [(MTEpisodeLockup *)self titleExclusionPathsForButtonViewFrame:viewFrame.origin.x, viewFrame.origin.y, viewFrame.size.width, viewFrame.size.height];
  titleTextView4 = [(MTEpisodeLockup *)self titleTextView];
  textContainer = [titleTextView4 textContainer];
  [textContainer setExclusionPaths:v23];

  LODWORD(titleTextView4) = CGRectIsEmpty(viewFrame);
  _isRTL = [(MTEpisodeLockup *)self _isRTL];
  if (titleTextView4)
  {
    if (!_isRTL)
    {
      [(MTEpisodeLockup *)self _layoutMargins];
      v32 = width - v33;
      goto LABEL_16;
    }

    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!_isRTL)
    {
      v27 = viewFrame.origin.x;
      v28 = viewFrame.origin.y;
      width = viewFrame.size.width;
      height = viewFrame.size.height;
      goto LABEL_15;
    }

    if (v10)
    {
LABEL_9:
      v27 = frame.origin.x;
      v28 = frame.origin.y;
      width = frame.size.width;
      height = frame.size.height;
LABEL_15:
      v32 = CGRectGetMinX(*&v27) + -8.0;
      goto LABEL_16;
    }
  }

  [(MTEpisodeLockup *)self _layoutMargins];
  v32 = width - v31;
LABEL_16:
  v34 = v32 - x;
  titleTextView5 = [(MTEpisodeLockup *)self titleTextView];
  [titleTextView5 sizeThatFits:{v34, 1.79769313e308}];
  v37 = v36;

  v38 = v34;
  v39 = v37;
  result.height = v39;
  result.width = v38;
  return result;
}

- (double)titleOriginYForArtworkFrame:(CGRect)frame style:(unint64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  _currentTitleFont = [(MTEpisodeLockup *)self _currentTitleFont];
  v11 = _currentTitleFont;
  if (style > 1)
  {
    if (style == 2)
    {
      [_currentTitleFont mt_offsetFromCapHeightToAscent];
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      CGRectGetMinY(v15);
      goto LABEL_11;
    }

    if (style == 3)
    {
      v14.origin.x = x;
      v14.origin.y = y;
      v14.size.width = width;
      v14.size.height = height;
      CGRectGetMinY(v14);
      [v11 mt_offsetFromCapHeightToAscent];
      goto LABEL_11;
    }
  }

  else
  {
    if (!style)
    {
      [_currentTitleFont mt_offsetFromCapHeightToAscent];
      goto LABEL_11;
    }

    if (style == 1)
    {
      [_currentTitleFont mt_offsetFromCapHeightToAscent];
LABEL_11:
      IMRoundToPixel();
      v4 = v12;
    }
  }

  return v4;
}

- (double)descriptionOriginForViewWidth:(CGFloat)width artworkFrame:(CGFloat)frame buttonViewFrame:(CGFloat)viewFrame titleFrame:(CGFloat)titleFrame metadataFrame:(uint64_t)metadataFrame iconViewFrame:(unint64_t)iconViewFrame style:(double)style
{
  _currentTitleFont = [self _currentTitleFont];
  v32 = +[MTEpisodeLockup metadataHeaderFont];
  v58.origin.x = a20;
  v58.origin.y = a21;
  v58.size.width = a22;
  v58.size.height = a23;
  Height = CGRectGetHeight(v58);
  v59.origin.x = a24;
  v59.origin.y = a25;
  v59.size.width = a26;
  v59.size.height = a27;
  v34 = CGRectGetHeight(v59);
  if (Height >= v34)
  {
    v34 = Height;
  }

  if (v34 <= 0.0)
  {
    v35 = _currentTitleFont;
  }

  else
  {
    v35 = v32;
  }

  v36 = v35;
  if (iconViewFrame < 2)
  {
LABEL_9:
    [_currentTitleFont lineHeight];
    [v36 mt_offsetFromLastBaselineToBottom];
    [v32 mt_offsetFromFirstBaselineToTop];
    v60.origin.x = a16;
    v60.origin.y = a17;
    v60.size.width = a18;
    v60.size.height = a19;
    MaxY = CGRectGetMaxY(v60);
    v61.origin.x = a20;
    v61.origin.y = a21;
    v61.size.width = a22;
    v61.size.height = a23;
    if (CGRectGetHeight(v61) > 0.0)
    {
      v62.origin.x = a20;
      v62.origin.y = a21;
      v62.size.width = a22;
      v62.size.height = a23;
      MaxY = CGRectGetMaxY(v62);
    }

    v63.origin.x = a24;
    v63.origin.y = a25;
    v63.size.width = a26;
    v63.size.height = a27;
    if (CGRectGetMaxY(v63) > MaxY)
    {
      iconView = [self iconView];
      isNotEmpty = [iconView isNotEmpty];

      if (isNotEmpty)
      {
        v40 = +[UIScreen mainScreen];
        [v40 scale];

        v64.origin.x = a24;
        v64.origin.y = a25;
        v64.size.width = a26;
        v64.size.height = a27;
        CGRectGetMaxY(v64);
      }
    }

    IMRoundToPixel();
    if ([self _isRTL])
    {
      [self descriptionWidthForViewWidth:iconViewFrame titleFrame:a2 style:{a16, a17, a18, a19}];
      v42 = v41;
      v65.origin.x = a16;
      v65.origin.y = a17;
      v65.size.width = a18;
      v65.size.height = a19;
      MinX = CGRectGetMaxX(v65) - v42;
    }

    else
    {
      v66.origin.x = a16;
      v66.origin.y = a17;
      v66.size.width = a18;
      v66.size.height = a19;
      MinX = CGRectGetMinX(v66);
    }

    goto LABEL_29;
  }

  if (iconViewFrame != 2)
  {
    if (iconViewFrame != 3)
    {
      MinX = CGPointZero.x;
      goto LABEL_29;
    }

    goto LABEL_9;
  }

  _isRTL = [self _isRTL];
  widthCopy = width;
  frameCopy = frame;
  if (_isRTL)
  {
    widthCopy = a12;
    frameCopy = a13;
  }

  else
  {
    a14 = viewFrame;
  }

  if (!_isRTL)
  {
    a15 = titleFrame;
  }

  v55 = CGRectGetMinX(*&widthCopy);
  iconView2 = [self iconView];
  if ([iconView2 isNotEmpty])
  {
    v67.origin.x = a24;
    v67.origin.y = a25;
    v67.size.width = a26;
    v67.size.height = a27;
    CGRectGetMaxY(v67);
  }

  v68.origin.x = a20;
  v68.origin.y = a21;
  v68.size.width = a22;
  v68.size.height = a23;
  if (CGRectGetHeight(v68) > 0.0)
  {
    v69.origin.x = a20;
    v69.origin.y = a21;
    v69.size.width = a22;
    v69.size.height = a23;
    CGRectGetMaxY(v69);
    [v32 mt_offsetFromLastBaselineToBottom];
  }

  v70.origin.x = a16;
  v70.origin.y = a17;
  v70.size.width = a18;
  v70.size.height = a19;
  CGRectGetMaxY(v70);
  [_currentTitleFont mt_offsetFromLastBaselineToBottom];
  v71.origin.x = width;
  v71.origin.y = frame;
  v71.size.width = viewFrame;
  v71.size.height = titleFrame;
  CGRectGetMaxY(v71);
  v50 = +[MTEpisodeLockup metadataFooterFont];
  [v50 mt_offsetFromCapHeightToAscent];
  IMRoundToPixel();

  MinX = v55;
LABEL_29:

  return MinX;
}

- (double)exactDescriptionSizeForOrigin:(double)origin viewWidth:(double)width titleFrame:(double)frame actionButtonFrame:(double)buttonFrame downloadButtonFrame:(double)downloadButtonFrame style:(double)style
{
  _currentTitleFont = [self _currentTitleFont];
  v32 = [self isLabelMultipleLinesWithFrame:_currentTitleFont font:{frame, buttonFrame, downloadButtonFrame, style}];

  if ([self isExpanded])
  {
    v33 = 0;
  }

  else
  {
    v33 = [objc_opt_class() descriptionNumberOfLinesForStyle:a10 isTitleMultipleLines:v32];
  }

  [self _setNumberOfLinesForDescription:v33];
  v34 = self + 3;
  v35 = self[3];
  if (v35 == CGSizeZero.width && self[4] == CGSizeZero.height)
  {
    [self buttonsFrameForActionButtonFrame:a12 downloadButtonFrame:{a13, a14, a15, a16, a17, a18, a19}];
    v38 = v37;
    v59 = v40;
    v60 = v39;
    v58 = v41;
    [self descriptionWidthForViewWidth:a10 titleFrame:width style:{frame, buttonFrame, downloadButtonFrame, style}];
    v35 = v42;
    v43 = [self descriptionExclusionPathsForOrigin:a2 descriptionWidth:origin buttonsFrame:v42 titleFrame:{v38, v60, v59, v58, *&frame, *&buttonFrame, *&downloadButtonFrame, *&style}];
    descriptionTextView = [self descriptionTextView];
    textContainer = [descriptionTextView textContainer];
    [textContainer setExclusionPaths:v43];

    [objc_opt_class() descriptionMaxHeightForCurrentOrientation];
    v47 = v46;
    descriptionTextView2 = [self descriptionTextView];
    [descriptionTextView2 sizeThatFits:{v35, v47}];
    v50 = v49;

    v51 = v50 > v47;
    if (v50 <= v47)
    {
      v47 = v50;
    }

    [self setShowsDescriptionButton:v51];
    if (v47 > 0.0)
    {
      descriptionTextView3 = [self descriptionTextView];
      text = [descriptionTextView3 text];
      if ([text length])
      {
      }

      else
      {
        descriptionTextView4 = [self descriptionTextView];
        attributedText = [descriptionTextView4 attributedText];
        v56 = [attributedText length];

        if (!v56)
        {
          v47 = 0.0;
        }
      }
    }

    *v34 = v35;
    v34[1] = v47;
  }

  return v35;
}

- (double)descriptionWidthForViewWidth:(double)width titleFrame:(CGRect)frame style:(unint64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  result = 0.0;
  if (style > 1)
  {
    if (style == 3)
    {
LABEL_8:
      _isRTL = [(MTEpisodeLockup *)self _isRTL];
      v15 = x;
      v16 = y;
      widthCopy = width;
      v18 = height;
      if (_isRTL)
      {
        MaxX = CGRectGetMaxX(*&v15);
      }

      else
      {
        MaxX = width - CGRectGetMinX(*&v15);
      }

      goto LABEL_11;
    }

    if (style != 2)
    {
      return result;
    }

LABEL_7:
    [(MTEpisodeLockup *)self _layoutMargins];
    MaxX = width - v12;
LABEL_11:
    [(MTEpisodeLockup *)self _layoutMargins];
    return MaxX - v19;
  }

  if (!style)
  {
    goto LABEL_7;
  }

  if (style == 1)
  {
    goto LABEL_8;
  }

  return result;
}

- (id)titleExclusionPathsForButtonViewFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectIsEmpty(frame))
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    titleTextView = [(MTEpisodeLockup *)self titleTextView];
    [titleTextView convertRect:self fromView:{x, y, width, height}];
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v17 = v16;

    v18 = [UIBezierPath bezierPathWithRect:v11 + -5.0, v13, v15 + 5.0, v17];
    v19 = v18;
    if (v18)
    {
      v21 = v18;
      v8 = [NSArray arrayWithObjects:&v21 count:1];
    }

    else
    {
      v8 = &__NSArray0__struct;
    }
  }

  return v8;
}

- (id)titleExclusionPathsForExplicitIconFrame:(CGRect)frame viewWidth:(double)width
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (CGRectIsEmpty(frame))
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    titleTextView = [(MTEpisodeLockup *)self titleTextView];
    [titleTextView convertRect:self fromView:{x, y, width, height}];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    if ([(MTEpisodeLockup *)self _isRTL])
    {
      v27.origin.x = v13;
      v27.origin.y = v15;
      v27.size.width = v17;
      v27.size.height = v19;
      v20 = CGRectGetMaxX(v27) + 5.0;
      v21 = 0.0;
    }

    else
    {
      v21 = v13 + -5.0;
      v28.origin.x = v21;
      v28.origin.y = v15;
      v28.size.width = v17;
      v28.size.height = v19;
      v20 = width - CGRectGetMinX(v28);
    }

    v22 = [UIBezierPath bezierPathWithRect:v21, v15, v20, v19];
    v23 = v22;
    if (v22)
    {
      v25 = v22;
      v10 = [NSArray arrayWithObjects:&v25 count:1];
    }

    else
    {
      v10 = &__NSArray0__struct;
    }
  }

  return v10;
}

- (id)descriptionExclusionPathsForOrigin:(CGPoint)origin descriptionWidth:(double)width buttonsFrame:(CGRect)frame titleFrame:(CGRect)titleFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = origin.y;
  v12 = origin.x;
  if (CGRectIsEmpty(frame) || (v19.size.height = 1.79769313e308, v19.origin.x = v12, v19.origin.y = v11, v19.size.width = width, v22.origin.x = x, v22.origin.y = y, v22.size.width = width, v22.size.height = height, !CGRectIntersectsRect(v19, v22)))
  {
    v13 = 0;
  }

  else
  {
    v20.origin.x = x;
    v20.origin.y = y;
    v20.size.width = width;
    v20.size.height = height;
    v21 = CGRectOffset(v20, -v12, -v11);
    v13 = [UIBezierPath bezierPathWithRect:v21.origin.x, v21.origin.y, v21.size.width, v21.size.height];
  }

  v14 = +[NSMutableArray array];
  v15 = v14;
  if (v13)
  {
    [v14 addObject:v13];
  }

  v16 = [v15 copy];

  return v16;
}

- (BOOL)isLabelMultipleLinesWithFrame:(CGRect)frame font:(id)font
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  fontCopy = font;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetHeight(v16);
  [fontCopy lineHeight];
  v11 = v10;

  v12 = v11 * 1.5;
  if (qword_100583BB0 != -1)
  {
    sub_1003B2BE8();
  }

  v13 = floor(v12 * *&qword_100571778) / *&qword_100571778;
  v14 = floor(v12);
  if (*&qword_100571778 == 1.0)
  {
    v13 = v14;
  }

  return v9 >= v13;
}

- (CGRect)metadataFrameForViewWidth:(double)width titleFrame:(CGRect)frame style:(unint64_t)style
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  MinX = CGRectGetMinX(frame);
  v46.origin.x = x;
  v46.origin.y = y;
  widthCopy = width;
  rect = height;
  v46.size.width = width;
  v46.size.height = height;
  v12 = MinX;
  MaxX = CGRectGetMaxX(v46);
  if ([(MTEpisodeLockup *)self _isRTL])
  {
    v14 = MaxX;
  }

  else
  {
    v14 = width - v12;
  }

  metadataLabel = [(MTEpisodeLockup *)self metadataLabel];
  attributedText = [metadataLabel attributedText];
  if ([attributedText length])
  {

LABEL_7:
    metadataLabel2 = [(MTEpisodeLockup *)self metadataLabel];
    [metadataLabel2 sizeThatFits:{v14, 1.79769313e308}];
    v22 = v21;
    v24 = v23;

    goto LABEL_8;
  }

  metadataLabel3 = [(MTEpisodeLockup *)self metadataLabel];
  text = [metadataLabel3 text];
  v19 = [text length];

  if (v19)
  {
    goto LABEL_7;
  }

  v22 = CGSizeZero.width;
  v24 = CGSizeZero.height;
LABEL_8:
  v25 = +[MTEpisodeLockup titleFont];
  v26 = +[MTEpisodeLockup metadataHeaderFont];
  [v25 lineHeight];
  [v25 mt_offsetFromLastBaselineToBottom];
  [v26 mt_offsetFromFirstBaselineToTop];
  if (qword_100583BB0 != -1)
  {
    sub_1003B2BE8();
  }

  v27 = ceil(v22 * *&qword_100571778) / *&qword_100571778;
  v28 = ceil(v22);
  if (*&qword_100571778 == 1.0)
  {
    v29 = v28;
  }

  else
  {
    v29 = v27;
  }

  v30 = ceil(v24 * *&qword_100571778) / *&qword_100571778;
  v31 = ceil(v24);
  if (*&qword_100571778 == 1.0)
  {
    v32 = v31;
  }

  else
  {
    v32 = v30;
  }

  _isRTL = [(MTEpisodeLockup *)self _isRTL];
  v34 = widthCopy;
  if (_isRTL)
  {
    v12 = MaxX - v29;
  }

  v35 = x;
  v36 = y;
  v37 = rect;
  CGRectGetMaxY(*(&v34 - 2));
  IMRoundToPixel();
  v39 = v38;

  v40 = v12;
  v41 = v39;
  v42 = v29;
  v43 = v32;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGRect)moreButtonFrameForDescriptionFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  if (![(MTEpisodeLockup *)self showsMoreButton])
  {
    MinX = CGRectZero.origin.x;
    v12 = CGRectZero.origin.y;
    v13 = CGRectZero.size.width;
    v14 = CGRectZero.size.height;
    goto LABEL_11;
  }

  v8 = +[MTEpisodeLockup metadataHeaderFont];
  [v8 lineHeight];
  [v8 mt_offsetFromLastBaselineToBottom];
  [v8 mt_offsetFromFirstBaselineToTop];
  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  attributedText = [descriptionTextView attributedText];
  if ([attributedText length])
  {
  }

  else
  {
    descriptionTextView2 = [(MTEpisodeLockup *)self descriptionTextView];
    text = [descriptionTextView2 text];
    v17 = [text length];

    if (!v17)
    {
      v32.origin.x = x;
      v32.origin.y = y;
      v32.size.width = width;
      v32.size.height = height;
      CGRectGetMinY(v32);
      goto LABEL_7;
    }
  }

  v31.origin.x = x;
  v31.origin.y = y;
  v31.size.width = width;
  v31.size.height = height;
  CGRectGetMaxY(v31);
LABEL_7:
  moreButton = [(MTEpisodeLockup *)self moreButton];
  [moreButton frame];
  v13 = v19;
  v14 = v20;

  _isRTL = [(MTEpisodeLockup *)self _isRTL];
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  if (_isRTL)
  {
    MinX = CGRectGetMaxX(*&v22) - v13;
  }

  else
  {
    MinX = CGRectGetMinX(*&v22);
  }

  IMRoundToPixel();
  v12 = v26;

LABEL_11:
  v27 = MinX;
  v28 = v12;
  v29 = v13;
  v30 = v14;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (CGRect)iconsViewFrameForViewWidth:(double)width titleFrame:(CGRect)frame metadataFrame:(CGRect *)metadataFrame style:(unint64_t)style
{
  v9 = [MTEpisodeLockup titleFont:metadataFrame];
  v10 = +[MTEpisodeLockup metadataHeaderFont];
  metadataLabel = [(MTEpisodeLockup *)self metadataLabel];
  attributedText = [metadataLabel attributedText];
  if ([attributedText length])
  {

LABEL_4:
    v49 = NSFontAttributeName;
    v50 = v10;
    v16 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [@" " sizeWithAttributes:v16];
    v18 = v17;

    MaxY = CGRectGetMaxY(*metadataFrame);
    [v10 mt_offsetFromLastBaselineToBottom];
    v21 = MaxY - v20;
    v22 = 0.0;
    goto LABEL_5;
  }

  metadataLabel2 = [(MTEpisodeLockup *)self metadataLabel];
  text = [metadataLabel2 text];
  v15 = [text length];

  if (v15)
  {
    goto LABEL_4;
  }

  MinY = CGRectGetMinY(*metadataFrame);
  [v10 mt_offsetFromFirstBaselineToTop];
  v21 = MinY + v47;
  [v9 mt_leftMargin];
  v22 = v48;
  v18 = 0.0;
LABEL_5:
  iconView = [(MTEpisodeLockup *)self iconView];
  [iconView frame];
  v25 = v24;
  v27 = v26;

  _isRTL = [(MTEpisodeLockup *)self _isRTL];
  x = metadataFrame->origin.x;
  y = metadataFrame->origin.y;
  width = metadataFrame->size.width;
  height = metadataFrame->size.height;
  if (_isRTL)
  {
    v33 = CGRectGetMinX(*&x) - v25 - v18 - v22;
  }

  else
  {
    v33 = v22 + v18 + CGRectGetMaxX(*&x);
  }

  if ([(MTEpisodeLockup *)self _isRTL])
  {
    [(MTEpisodeLockup *)self _layoutMargins];
    v35 = v34 - v33;
    if (v34 - v33 > 0.0)
    {
      metadataFrame->origin.x = v35 + metadataFrame->origin.x;
LABEL_12:
      metadataFrame->size.width = metadataFrame->size.width - v35;
    }
  }

  else
  {
    v51.origin.x = v33;
    v51.origin.y = v21 - v27;
    v51.size.width = v25;
    v51.size.height = v27;
    v36 = CGRectGetMaxX(v51) - width;
    [(MTEpisodeLockup *)self _layoutMargins];
    v35 = v36 + v37;
    if (v36 + v37 > 0.0)
    {
      goto LABEL_12;
    }
  }

  UIPointRoundToViewScale();
  v39 = v38;
  v41 = v40;

  v42 = v39;
  v43 = v41;
  v44 = v25;
  v45 = v27;
  result.size.height = v45;
  result.size.width = v44;
  result.origin.y = v43;
  result.origin.x = v42;
  return result;
}

- (CGRect)playStatusViewFrameForViewWidth:(double)width titleFrame:(CGRect)frame artworkFrame:(CGRect)artworkFrame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;

  if ([(MTEpisodeLockup *)self showsPlayState])
  {
    [objc_opt_class() leadingMarginForViewWidth:width];
    IMRoundToPixel();
    v15 = v14;
    _isRTL = [(MTEpisodeLockup *)self _isRTL];
    showsArtwork = [(MTEpisodeLockup *)self showsArtwork];
    if (showsArtwork)
    {
      v18 = artworkFrame.size.height;
    }

    else
    {
      v18 = height;
    }

    if (showsArtwork)
    {
      widthCopy = artworkFrame.size.width;
    }

    else
    {
      widthCopy = width;
    }

    v20 = artworkFrame.origin.x;
    if (showsArtwork)
    {
      v21 = artworkFrame.origin.y;
    }

    else
    {
      v21 = y;
    }

    if (!showsArtwork)
    {
      v20 = x;
    }

    if (_isRTL)
    {
      v22 = v15 + CGRectGetMaxX(*(&v18 - 3));
    }

    else
    {
      v22 = CGRectGetMinX(*(&v18 - 3)) + -14.0 - v15;
    }

    v30.origin.x = x;
    v30.origin.y = y;
    v30.size.width = width;
    v30.size.height = height;
    CGRectGetMinY(v30);
    _currentTitleFont = [(MTEpisodeLockup *)self _currentTitleFont];
    [_currentTitleFont mt_offsetFromCapHeightToAscent];
    IMRoundToPixel();
    v23 = v27 - (1.0 / v13 + 1.0 / v13);

    v25 = 14.0;
    v24 = 14.0;
  }

  else
  {
    v22 = CGRectZero.origin.x;
    v23 = CGRectZero.origin.y;
    v24 = CGRectZero.size.width;
    v25 = CGRectZero.size.height;
  }

  v28 = v22;
  v29 = v23;
  result.size.height = v25;
  result.size.width = v24;
  result.origin.y = v29;
  result.origin.x = v28;
  return result;
}

- (CGRect)downloadButtonFrameForActionButtonFrame:(CGRect)frame titleOriginY:(double)y
{
  x = CGRectZero.origin.x;
  y = CGRectZero.origin.y;
  width = CGRectZero.size.width;
  height = CGRectZero.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGRect)actionButtonFrameForViewWidth:(double)width titleOriginY:(double)y
{
  actionButton = [(MTEpisodeLockup *)self actionButton];
  [actionButton frame];
  v8 = v7;
  v10 = v9;

  v11 = +[MTEpisodeLockup titleFont];
  if ([(MTEpisodeLockup *)self _isRTL])
  {
    [(MTEpisodeLockup *)self _layoutMargins];
    v13 = v12;
  }

  else
  {
    [(MTEpisodeLockup *)self _layoutMargins];
    v13 = width - v8 - v14;
  }

  [v11 mt_offsetFromCapHeightToAscent];
  [v11 capHeight];
  IMRoundToPixel();
  v16 = v15;

  v17 = v13;
  v18 = v16;
  v19 = v8;
  v20 = v10;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)buttonsFrameForActionButtonFrame:(CGRect)frame downloadButtonFrame:(CGRect)buttonFrame
{
  height = buttonFrame.size.height;
  width = buttonFrame.size.width;
  y = buttonFrame.origin.y;
  x = buttonFrame.origin.x;
  v8 = frame.size.height;
  v9 = frame.size.width;
  v10 = frame.origin.y;
  v11 = frame.origin.x;
  if (!CGRectIsEmpty(buttonFrame))
  {
    v16.origin.x = v11;
    v16.origin.y = v10;
    v16.size.width = v9;
    v16.size.height = v8;
    v19.origin.x = x;
    v19.origin.y = y;
    v19.size.width = width;
    v19.size.height = height;
    v17 = CGRectUnion(v16, v19);
    v11 = v17.origin.x;
    v10 = v17.origin.y;
    v9 = v17.size.width;
    v8 = v17.size.height;
  }

  v12 = v11;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  result.size.height = v15;
  result.size.width = v14;
  result.origin.y = v13;
  result.origin.x = v12;
  return result;
}

- (CGRect)descriptionButtonFrameForDescriptionFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  MinY = CGRectGetMinY(frame);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (CGRectGetHeight(v45) > 0.0)
  {
    descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
    descriptionTextView2 = [(MTEpisodeLockup *)self descriptionTextView];
    layoutManager = [descriptionTextView2 layoutManager];
    [descriptionTextView _lastGlyphBaselineRightPointWithLayoutManager:layoutManager];
    v13 = v12;
    v15 = v14;

    descriptionTextView3 = [(MTEpisodeLockup *)self descriptionTextView];
    [(MTEpisodeLockup *)self convertPoint:descriptionTextView3 fromView:v13, v15];
    v18 = v17;

    MinY = v18 + 2.0;
  }

  v19 = +[MTEpisodeLockup metadataHeaderFont];
  [v19 lineHeight];
  v21 = v20;
  [v19 mt_offsetFromLastBaselineToBottom];
  [v19 mt_offsetFromFirstBaselineToTop];
  if ([(MTEpisodeLockup *)self showsDescriptionButton])
  {
    descriptionButton = [(MTEpisodeLockup *)self descriptionButton];
    [descriptionButton frame];
    v24 = v23;
    v44 = v25;
  }

  else
  {
    v24 = CGSizeZero.width;
    v44 = CGSizeZero.height;
  }

  _isRTL = [(MTEpisodeLockup *)self _isRTL];
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  if (_isRTL)
  {
    MaxX = CGRectGetMaxX(*&v27);
    v32 = height;
    v33 = v24;
    MinX = MaxX - v24;
  }

  else
  {
    MinX = CGRectGetMinX(*&v27);
    v32 = height;
    v33 = v24;
  }

  v35 = x;
  v36 = y;
  v37 = width;
  CGRectGetMaxY(*(&v32 - 3));
  IMRoundToPixel();
  [v19 mt_offsetFromFirstBaselineToTop];
  v39 = MinY + v21 - v38;

  v40 = MinX;
  v41 = v39;
  v42 = v33;
  v43 = v44;
  result.size.height = v43;
  result.size.width = v42;
  result.origin.y = v41;
  result.origin.x = v40;
  return result;
}

- (CGRect)footerFrameForDescriptionButtonFrame:(CGRect)frame descriptionFrame:(CGRect)descriptionFrame
{
  height = descriptionFrame.size.height;
  width = descriptionFrame.size.width;
  y = descriptionFrame.origin.y;
  x = descriptionFrame.origin.x;
  v7 = frame.size.height;
  v8 = frame.size.width;
  v9 = frame.origin.y;
  v10 = frame.origin.x;
  v12 = +[MTEpisodeLockup descriptionFont];
  v13 = +[MTEpisodeLockup metadataFooterFont];
  v32.origin.x = v10;
  v32.origin.y = v9;
  v32.size.width = v8;
  v32.size.height = v7;
  CGRectGetHeight(v32);
  v33.origin.x = v10;
  v33.origin.y = v9;
  v33.size.width = v8;
  v33.size.height = v7;
  v14 = CGRectGetHeight(v33);
  v15 = v14 <= 0.0;
  if (v14 <= 0.0)
  {
    v16 = x;
  }

  else
  {
    v16 = v10;
  }

  if (v15)
  {
    v17 = y;
  }

  else
  {
    v17 = v9;
  }

  if (v15)
  {
    v18 = width;
  }

  else
  {
    v18 = v8;
  }

  if (v15)
  {
    v19 = height;
  }

  else
  {
    v19 = v7;
  }

  CGRectGetMaxY(*&v16);
  [v13 _scaledValueForValue:26.0];
  [v12 mt_offsetFromLastBaselineToBottom];
  [v13 mt_offsetFromFirstBaselineToTop];
  v34.origin.x = x;
  v34.origin.y = y;
  v34.size.width = width;
  v34.size.height = height;
  MinX = CGRectGetMinX(v34);
  IMRoundToPixel();
  v22 = v21;
  if ([(MTEpisodeLockup *)self showsFooterTextView])
  {
    v35.origin.x = x;
    v35.origin.y = y;
    v35.size.width = width;
    v35.size.height = height;
    v23 = CGRectGetWidth(v35);
    footerTextView = [(MTEpisodeLockup *)self footerTextView];
    [footerTextView sizeThatFits:{v23, 1.79769313e308}];
    v26 = v25;
  }

  else
  {
    v23 = CGRectZero.size.width;
    v26 = CGRectZero.size.height;
  }

  v27 = MinX;
  v28 = v22;
  v29 = v23;
  v30 = v26;
  result.size.height = v30;
  result.size.width = v29;
  result.origin.y = v28;
  result.origin.x = v27;
  return result;
}

- (void)update
{
  [(MTEpisodeLockup *)self invalidateSizeMetrics];
  if (![(MTEpisodeLockup *)self updateTitleFontIfNeeded]|| ([(MTEpisodeLockup *)self titleImage], v3 = objc_claimAutoreleasedReturnValue(), v3, !v3))
  {
    [(MTEpisodeLockup *)self updateTitleIncludingIcons];
  }

  if (![(MTEpisodeLockup *)self updateDisabledReason])
  {
    [(MTEpisodeLockup *)self updateDescriptionText];
  }

  artworkView = [(MTEpisodeLockup *)self artworkView];

  if (artworkView)
  {
    [(MTEpisodeLockup *)self beginLoadingArtwork];
  }

  [(MTEpisodeLockup *)self updateIcons];

  [(MTEpisodeLockup *)self setNeedsLayout];
}

- (void)updateMetadataText
{
  if ([(MTEpisodeLockup *)self showsPubDate])
  {
    v3 = 7;
  }

  else
  {
    v3 = 5;
  }

  v7 = +[MTEpisodeDescriptionCache sharedInstance];
  episode = [(MTEpisodeLockup *)self episode];
  v5 = [v7 descriptionForEpisode:episode options:v3];
  metadataLabel = [(MTEpisodeLockup *)self metadataLabel];
  [metadataLabel setAttributedText:v5];
}

- (void)updateFooterText
{
  if ([(MTEpisodeLockup *)self isExpanded])
  {
    episode = [(MTEpisodeLockup *)self episode];
    if ([episode isPartiallyPlayed])
    {
      episode2 = [(MTEpisodeLockup *)self episode];
      [episode2 timeRemaining];
      v6 = v5 > 0.0;
    }

    else
    {
      v6 = 0;
    }

    v7 = +[MTEpisodeDescriptionCache sharedInstance];
    episode3 = [(MTEpisodeLockup *)self episode];
    v13 = [v7 metadataFooterForEpisode:episode3 includingDuration:v6];

    if ([v13 length])
    {
      v9 = [[NSMutableAttributedString alloc] initWithAttributedString:v13];
    }

    else
    {
      v9 = 0;
    }

    _currentDescriptionColor = [(MTEpisodeLockup *)self _currentDescriptionColor];
    [v9 im_addAttribute:NSForegroundColorAttributeName value:_currentDescriptionColor];

    v11 = [v9 copy];
    footerTextView = [(MTEpisodeLockup *)self footerTextView];
    [footerTextView setAttributedText:v11];
  }
}

- (void)updateDescriptionText
{
  episode = [(MTEpisodeLockup *)self episode];

  if (episode)
  {
    [(MTEpisodeLockup *)self updateMetadataText];
    v4 = +[MTEpisodeDescriptionCache sharedInstance];
    episode2 = [(MTEpisodeLockup *)self episode];
    v10 = [v4 descriptionForEpisode:episode2 options:16];

    if ([v10 length])
    {
      v6 = [[NSMutableAttributedString alloc] initWithAttributedString:v10];
    }

    else
    {
      v6 = 0;
    }

    _currentDescriptionColor = [(MTEpisodeLockup *)self _currentDescriptionColor];
    [v6 addAttribute:NSForegroundColorAttributeName value:_currentDescriptionColor range:{0, objc_msgSend(v10, "length")}];

    v8 = [v6 copy];
    descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
    [descriptionTextView setAttributedText:v8];

    [(MTEpisodeLockup *)self updateFooterText];
    [(MTEpisodeLockup *)self invalidateSizeMetrics];
    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (BOOL)updateDisabledReason
{
  episode = [(MTEpisodeLockup *)self episode];
  reasonForNotPlayable = [episode reasonForNotPlayable];

  disabledReason = [(MTEpisodeLockup *)self disabledReason];
  if (disabledReason != reasonForNotPlayable)
  {
    [(MTEpisodeLockup *)self setDisabledReason:reasonForNotPlayable];
  }

  return disabledReason != reasonForNotPlayable;
}

- (void)setDisabledReason:(int64_t)reason
{
  if (self->_disabledReason != reason)
  {
    self->_disabledReason = reason;
    if (reason)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    else
    {
      v4 = 1.0;
    }

    [(MTEpisodeLockup *)self setAlpha:v4];
    episode = [(MTEpisodeLockup *)self episode];

    if (episode)
    {
      [(MTEpisodeLockup *)self updateDescriptionText];
      [(MTEpisodeLockup *)self updateIcons];
    }

    if ([(MTEpisodeLockup *)self isExpanded])
    {
      delegate = [(MTEpisodeLockup *)self delegate];
      [delegate lockupDidChangeSize:self];
    }
  }
}

- (void)setShowsArtwork:(BOOL)artwork
{
  if (self->_showsArtwork != artwork)
  {
    v15 = v5;
    v16 = v4;
    v17 = v3;
    self->_showsArtwork = artwork;
    if (artwork)
    {
      v10 = [objc_opt_class() defaultArtworkForStyle:{-[MTEpisodeLockup style](self, "style")}];
      artworkView = [(MTEpisodeLockup *)self artworkView];
      [artworkView setArtwork:v10];

      artworkView2 = [(MTEpisodeLockup *)self artworkView];
      [artworkView2 sizeToFit];

      artworkView3 = [(MTEpisodeLockup *)self artworkView];
      [(MTEpisodeLockup *)self addSubview:artworkView3];

      [(MTEpisodeLockup *)self beginLoadingArtwork];
    }

    else
    {
      artworkView4 = [(MTEpisodeLockup *)self artworkView];
      [artworkView4 removeFromSuperview];

      [(MTEpisodeLockup *)self setArtworkView:0];
    }

    [(MTEpisodeLockup *)self updatePlayStatusIcons:v6];

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)beginLoadingArtwork
{
  superview = [(MTEpisodeArtworkView *)self->_artworkView superview];
  if (superview)
  {
    v4 = superview;
    episode = [(MTEpisodeLockup *)self episode];
    podcastUuid = [episode podcastUuid];
    v7 = [podcastUuid length];

    if (v7)
    {
      [objc_opt_class() artworkSizeForStyle:{-[MTEpisodeLockup style](self, "style")}];
      v10 = v9;
      if (v9 >= 0.100000001)
      {
        v11 = v8;
        if (v8 >= 0.100000001)
        {
          episode2 = [(MTEpisodeLockup *)self episode];
          podcastUuid2 = [episode2 podcastUuid];

          v14 = +[MTImageStore defaultStore];
          v15 = [v14 imageInMemoryForKey:podcastUuid2 size:{v10, v11}];

          if (v15)
          {
            artworkView = [(MTEpisodeLockup *)self artworkView];
            [artworkView setArtwork:v15];
          }

          else
          {
            objc_initWeak(&location, self);
            v17 = +[MTImageStore defaultStore];
            v18[0] = _NSConcreteStackBlock;
            v18[1] = 3221225472;
            v18[2] = sub_1000BF244;
            v18[3] = &unk_1004DB3B0;
            objc_copyWeak(&v19, &location);
            [v17 asyncImageForKey:podcastUuid2 size:v18 completionHandler:{v10, v11}];

            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

- (void)setShowsMoreButton:(BOOL)button
{
  if (self->_showsMoreButton != button)
  {
    buttonCopy = button;
    self->_showsMoreButton = button;
    moreButton = [(MTEpisodeLockup *)self moreButton];
    v7 = moreButton;
    if (buttonCopy)
    {
      [(MTEpisodeLockup *)self addSubview:moreButton];
    }

    else
    {
      [moreButton removeFromSuperview];
    }

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)updateMoreButtonVisibility
{
  if ([(MTEpisodeLockup *)self isExpanded])
  {
    v3 = 0;
  }

  else
  {
    v3 = [(MTEpisodeLockup *)self isEditing]^ 1;
  }

  [(MTEpisodeLockup *)self setShowsMoreButton:v3];
}

- (void)setShowsDescriptionButton:(BOOL)button
{
  if (self->_showsDescriptionButton != button)
  {
    buttonCopy = button;
    self->_showsDescriptionButton = button;
    descriptionButton = [(MTEpisodeLockup *)self descriptionButton];
    v7 = descriptionButton;
    if (buttonCopy)
    {
      [(MTEpisodeLockup *)self addSubview:descriptionButton];
    }

    else
    {
      [descriptionButton removeFromSuperview];
    }

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)setShowsFooterTextView:(BOOL)view
{
  if (self->_showsFooterTextView != view)
  {
    viewCopy = view;
    self->_showsFooterTextView = view;
    footerTextView = [(MTEpisodeLockup *)self footerTextView];
    v7 = footerTextView;
    if (viewCopy)
    {
      [(MTEpisodeLockup *)self addSubview:footerTextView];
    }

    else
    {
      [footerTextView removeFromSuperview];
    }

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)updateFooterTextViewVisbility
{
  if ([(MTEpisodeLockup *)self isExpanded])
  {
    footerTextView = [(MTEpisodeLockup *)self footerTextView];
    attributedText = [footerTextView attributedText];
    -[MTEpisodeLockup setShowsFooterTextView:](self, "setShowsFooterTextView:", [attributedText length] != 0);
  }

  else
  {

    [(MTEpisodeLockup *)self setShowsFooterTextView:0];
  }
}

- (BOOL)updateTitleFontIfNeeded
{
  titleFont = [objc_opt_class() titleFont];
  _currentTitleFont = [(MTEpisodeLockup *)self _currentTitleFont];
  v5 = [titleFont isEqual:_currentTitleFont];

  if ((v5 & 1) == 0)
  {
    titleTextView = [(MTEpisodeLockup *)self titleTextView];
    [titleTextView setFont:titleFont];

    titleImage = [(MTEpisodeLockup *)self titleImage];

    if (titleImage)
    {
      [(MTEpisodeLockup *)self updateTitleIncludingIcons];
    }
  }

  return v5 ^ 1;
}

- (void)setTitleImage:(id)image
{
  imageCopy = image;
  if (self->_titleImage != imageCopy)
  {
    v6 = imageCopy;
    objc_storeStrong(&self->_titleImage, image);
    [(MTEpisodeLockup *)self updateTitleIncludingIcons];
    imageCopy = v6;
  }
}

- (void)updateTitleIncludingIcons
{
  titleImage = [(MTEpisodeLockup *)self titleImage];

  if (titleImage)
  {
    episode3 = objc_opt_new();
    titleImage2 = [(MTEpisodeLockup *)self titleImage];
    [episode3 setImage:titleImage2];

    bestTitle3 = objc_alloc_init(NSMutableAttributedString);
    episode = [(MTEpisodeLockup *)self episode];
    bestTitle = [episode bestTitle];

    if (bestTitle)
    {
      v9 = [NSAttributedString alloc];
      episode2 = [(MTEpisodeLockup *)self episode];
      bestTitle2 = [episode2 bestTitle];
      v12 = [v9 initWithString:bestTitle2];
      [bestTitle3 appendAttributedString:v12];
    }

    v13 = [[NSAttributedString alloc] initWithString:@" "];
    [bestTitle3 appendAttributedString:v13];

    v14 = [NSAttributedString attributedStringWithAttachment:episode3];
    [bestTitle3 appendAttributedString:v14];

    v20[0] = NSFontAttributeName;
    _currentTitleFont = [(MTEpisodeLockup *)self _currentTitleFont];
    v21[0] = _currentTitleFont;
    v20[1] = NSForegroundColorAttributeName;
    _currentTitleColor = [(MTEpisodeLockup *)self _currentTitleColor];
    v21[1] = _currentTitleColor;
    titleTextView2 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

    [bestTitle3 addAttributes:titleTextView2 range:{0, objc_msgSend(bestTitle3, "length")}];
    v18 = [[NSAttributedString alloc] initWithAttributedString:bestTitle3];
    titleTextView = [(MTEpisodeLockup *)self titleTextView];
    [titleTextView setAttributedText:v18];
  }

  else
  {
    episode3 = [(MTEpisodeLockup *)self episode];
    bestTitle3 = [episode3 bestTitle];
    titleTextView2 = [(MTEpisodeLockup *)self titleTextView];
    [titleTextView2 setText:bestTitle3];
  }

  [(MTEpisodeLockup *)self setNeedsLayout];
}

- (void)startObservingPlaybackState
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"updatePlayStatusIcons" name:IMAVPlayerNotification_StateDidChange object:0];
}

- (void)stopObservingPlaybackState
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:IMAVPlayerNotification_StateDidChange object:0];
}

- (void)playbackStateDidChange
{
  if ([(MTEpisodeLockup *)self isCurrentPlayerItem])
  {

    [(MTEpisodeLockup *)self updatePlayStatusIcons];
  }
}

- (void)updateIcons
{
  episode = [(MTEpisodeLockup *)self episode];
  -[MTEpisodeLockup setShowsExplicitIcon:](self, "setShowsExplicitIcon:", [episode isExplicit]);

  if (![(MTEpisodeLockup *)self updateIsCurrentPlayerItemState])
  {
    [(MTEpisodeLockup *)self updatePlayStatusIcons];
  }

  [(MTEpisodeLockup *)self updateAssetStatusIcons];
  iconView = [(MTEpisodeLockup *)self iconView];
  episode2 = [(MTEpisodeLockup *)self episode];
  [iconView setVideo:{objc_msgSend(episode2, "isVideo")}];

  [(MTEpisodeLockup *)self updateIconView];
}

- (BOOL)updateIsCurrentPlayerItemState
{
  v3 = +[MTPlayerController defaultInstance];
  episode = [(MTEpisodeLockup *)self episode];
  uuid = [episode uuid];
  v6 = [v3 isPlayingEpisodeUuid:uuid];

  v7 = v6 ^ [(MTEpisodeLockup *)self isCurrentPlayerItem];
  if (v7 == 1)
  {
    [(MTEpisodeLockup *)self setCurrentPlayerItem:v6];
  }

  return v7;
}

- (void)updatePlayStatusIcons
{
  if ([(MTEpisodeLockup *)self showsPlayState]&& ![(MTEpisodeLockup *)self showsArtwork]&& [(MTEpisodeLockup *)self shouldShowNowPlaying])
  {
    isCurrentPlayerItem = [(MTEpisodeLockup *)self isCurrentPlayerItem];
  }

  else
  {
    isCurrentPlayerItem = 0;
  }

  v12 = 0;
  if ([(MTEpisodeLockup *)self showsPlayState]&& (isCurrentPlayerItem & 1) == 0)
  {
    episode = [(MTEpisodeLockup *)self episode];
    colorTheme = [(MTEpisodeLockup *)self colorTheme];
    v12 = [episode playStatusImageForTheme:colorTheme];
  }

  playStatusView = [(MTEpisodeLockup *)self playStatusView];
  [playStatusView setImage:v12];

  playStatusView2 = [(MTEpisodeLockup *)self playStatusView];
  [playStatusView2 sizeToFit];

  if (isCurrentPlayerItem)
  {
    barsView = [(MTEpisodeLockup *)self barsView];
    superview = [barsView superview];

    if (superview != self)
    {
      barsView2 = [(MTEpisodeLockup *)self barsView];
      [(MTEpisodeLockup *)self addSubview:barsView2];
    }

    [(MTEpisodeLockup *)self updateStateForBarsView:self->_barsView];
  }

  else
  {
    superview2 = [(MTNowPlayingIndicatorView *)self->_barsView superview];

    if (superview2)
    {
      [(MTNowPlayingIndicatorView *)self->_barsView setPlaybackState:0];
      [(MTNowPlayingIndicatorView *)self->_barsView removeFromSuperview];
    }
  }

  [(MTEpisodeLockup *)self setNeedsLayout];
}

- (void)updateStateForBarsView:(id)view
{
  viewCopy = view;
  if ([(MTEpisodeLockup *)self isCurrentPlayerItem])
  {
    v4 = +[MTPlayerController defaultInstance];
    isTargetPlaying = [v4 isTargetPlaying];

    if (isTargetPlaying)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  [viewCopy setPlaybackState:v6];
}

- (void)updateAssetStatusIcons
{
  episode = [(MTEpisodeLockup *)self episode];
  isExternalType = [episode isExternalType];

  if (isExternalType)
  {
    v5 = 1;
    goto LABEL_8;
  }

  v6 = +[MTReachability sharedInstance];
  if ([v6 isReachable])
  {
    episode2 = [(MTEpisodeLockup *)self episode];
    feedDeleted = [episode2 feedDeleted];

    if (!feedDeleted)
    {
      v5 = 2;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v5 = 3;
LABEL_8:
  iconView = [(MTEpisodeLockup *)self iconView];
  [iconView setAssetStatus:v5];
}

- (void)updateIconView
{
  iconView = [(MTEpisodeLockup *)self iconView];
  isNotEmpty = [iconView isNotEmpty];

  iconView2 = [(MTEpisodeLockup *)self iconView];
  v6 = iconView2;
  if (!isNotEmpty)
  {
    superview = [iconView2 superview];

    if (!superview)
    {
      return;
    }

    iconView3 = [(MTEpisodeLockup *)self iconView];
    [iconView3 removeFromSuperview];
    goto LABEL_6;
  }

  [iconView2 updateSizeIfNeeded];

  iconView4 = [(MTEpisodeLockup *)self iconView];
  superview2 = [iconView4 superview];

  if (superview2 != self)
  {
    iconView3 = [(MTEpisodeLockup *)self iconView];
    [(MTEpisodeLockup *)self addSubview:iconView3];
LABEL_6:
  }

  [(MTEpisodeLockup *)self setNeedsLayout];
}

- (void)setShowsExplicitIcon:(BOOL)icon
{
  if (self->_showsExplicitIcon != icon)
  {
    iconCopy = icon;
    self->_showsExplicitIcon = icon;
    iconView = [(MTEpisodeLockup *)self iconView];
    [iconView setExplicit:iconCopy];
  }
}

- (id)_currentTitleFont
{
  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  font = [titleTextView font];
  v4 = font;
  if (font)
  {
    titleFont = font;
  }

  else
  {
    titleFont = [objc_opt_class() titleFont];
  }

  v6 = titleFont;

  return v6;
}

- (id)_currentDescriptionFont
{
  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  font = [descriptionTextView font];
  v4 = font;
  if (font)
  {
    descriptionFont = font;
  }

  else
  {
    descriptionFont = [objc_opt_class() descriptionFont];
  }

  v6 = descriptionFont;

  return v6;
}

- (id)_currentTitleColor
{
  titleTextView = [(MTEpisodeLockup *)self titleTextView];
  textColor = [titleTextView textColor];
  v5 = textColor;
  if (textColor)
  {
    v6 = textColor;
  }

  else
  {
    colorTheme = [(MTEpisodeLockup *)self colorTheme];
    v6 = [UIColor primaryTextColorForTheme:colorTheme];
  }

  return v6;
}

- (id)_currentDescriptionColor
{
  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  textColor = [descriptionTextView textColor];
  v5 = textColor;
  if (textColor)
  {
    v6 = textColor;
  }

  else
  {
    colorTheme = [(MTEpisodeLockup *)self colorTheme];
    v6 = [UIColor secondaryTextColorForTheme:colorTheme];
  }

  return v6;
}

- (void)_setNumberOfLinesForDescription:(unint64_t)description
{
  descriptionTextView = [(MTEpisodeLockup *)self descriptionTextView];
  textContainer = [descriptionTextView textContainer];
  maximumNumberOfLines = [textContainer maximumNumberOfLines];

  if (maximumNumberOfLines != description)
  {
    descriptionTextView2 = [(MTEpisodeLockup *)self descriptionTextView];
    textContainer2 = [descriptionTextView2 textContainer];
    [textContainer2 setMaximumNumberOfLines:description];

    descriptionTextView3 = [(MTEpisodeLockup *)self descriptionTextView];
    layoutManager = [descriptionTextView3 layoutManager];
    descriptionTextView4 = [(MTEpisodeLockup *)self descriptionTextView];
    textContainer3 = [descriptionTextView4 textContainer];
    [layoutManager textContainerChangedGeometry:textContainer3];

    self->_descriptionSize = CGSizeZero;
  }
}

- (MTEpisodeLockupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end