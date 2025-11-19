@interface MTEpisodeLockup
+ (BOOL)useLayoutForSkinnyPhones;
+ (CGRect)frameForContentViewSize:(CGSize)a3 style:(unint64_t)a4;
+ (CGSize)artworkSizeForStyle:(unint64_t)a3;
+ (double)artworkHeightForStyle:(unint64_t)a3 sizeType:(unint64_t)a4;
+ (double)descriptionMaxHeightForCurrentOrientation;
+ (double)estimatedHeightForWidth:(double)a3 showsArtwork:(BOOL)a4;
+ (double)estimatedHeightForWidth:(double)a3 style:(unint64_t)a4;
+ (double)leadingMarginForViewWidth:(double)a3;
+ (double)maximumContentWidthForStyle:(unint64_t)a3 showsPlayState:(BOOL)a4;
+ (id)defaultArtworkForStyle:(unint64_t)a3;
+ (id)defaultArtworkWithSize:(CGSize)a3;
+ (id)dependentPropertyKeys;
+ (id)descriptionFont;
+ (id)metadataFooterFont;
+ (id)metadataHeaderFont;
+ (id)mockEpisode;
+ (id)titleFont;
+ (unint64_t)descriptionNumberOfLinesForStyle:(unint64_t)a3 isTitleMultipleLines:(BOOL)a4;
+ (unint64_t)styleForWidth:(double)a3 showsArtwork:(BOOL)a4;
+ (unint64_t)titleNumberOfLinesForStyle:(unint64_t)a3;
- (BOOL)isLabelMultipleLinesWithFrame:(CGRect)a3 font:(id)a4;
- (BOOL)updateDisabledReason;
- (BOOL)updateIsCurrentPlayerItemState;
- (BOOL)updateTitleFontIfNeeded;
- (CGRect)actionButtonFrameForViewWidth:(double)a3 titleOriginY:(double)a4;
- (CGRect)artworkFrameForStyle:(unint64_t)a3 forViewWidth:(double)a4;
- (CGRect)buttonsFrameForActionButtonFrame:(CGRect)a3 downloadButtonFrame:(CGRect)a4;
- (CGRect)descriptionButtonFrameForDescriptionFrame:(CGRect)a3;
- (CGRect)downloadButtonFrameForActionButtonFrame:(CGRect)a3 titleOriginY:(double)a4;
- (CGRect)explicitIconFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4;
- (CGRect)footerFrameForDescriptionButtonFrame:(CGRect)a3 descriptionFrame:(CGRect)a4;
- (CGRect)iconsViewFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4 metadataFrame:(CGRect *)a5 style:(unint64_t)a6;
- (CGRect)metadataFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4 style:(unint64_t)a5;
- (CGRect)moreButtonFrameForDescriptionFrame:(CGRect)a3;
- (CGRect)playStatusViewFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4 artworkFrame:(CGRect)a5;
- (CGSize)sizeThatFits:(CGSize)a3;
- (CGSize)titleSizeForViewWidth:(double)a3 titleOrigin:(CGPoint)a4 artworkFrame:(CGRect)a5 buttonViewFrame:(CGRect)a6 style:(unint64_t)a7;
- (IMActionSheetAction)moreAction;
- (MTEpisodeArtworkView)artworkView;
- (MTEpisodeLockup)initWithFrame:(CGRect)a3;
- (MTEpisodeLockupDelegate)delegate;
- (MTEpisodeStateView)iconView;
- (MTNowPlayingIndicatorView)barsView;
- (MTTouchInsetsButton)descriptionButton;
- (MTTouchInsetsButton)moreButton;
- (UIButton)actionButton;
- (UIEdgeInsets)_layoutMargins;
- (UIEdgeInsets)_layoutMarginsForViewWidth:(double)a3;
- (UIImageView)explicitIconView;
- (UIImageView)playStatusView;
- (UILabel)metadataLabel;
- (UITextView)descriptionTextView;
- (UITextView)footerTextView;
- (UITextView)titleTextView;
- (double)descriptionOriginForViewWidth:(CGFloat)a3 artworkFrame:(CGFloat)a4 buttonViewFrame:(CGFloat)a5 titleFrame:(CGFloat)a6 metadataFrame:(uint64_t)a7 iconViewFrame:(unint64_t)a8 style:(double)a9;
- (double)descriptionWidthForViewWidth:(double)a3 titleFrame:(CGRect)a4 style:(unint64_t)a5;
- (double)exactDescriptionSizeForOrigin:(double)a3 viewWidth:(double)a4 titleFrame:(double)a5 actionButtonFrame:(double)a6 downloadButtonFrame:(double)a7 style:(double)a8;
- (double)heightForWidth:(double)a3 style:(unint64_t)a4;
- (double)titleOriginXForViewWidth:(double)result artworkFrame:(CGRect)a4 buttonFrame:(CGRect)a5 style:(unint64_t)a6;
- (double)titleOriginYForArtworkFrame:(CGRect)a3 style:(unint64_t)a4;
- (id)_currentDescriptionColor;
- (id)_currentDescriptionFont;
- (id)_currentTitleColor;
- (id)_currentTitleFont;
- (id)descriptionExclusionPathsForOrigin:(CGPoint)a3 descriptionWidth:(double)a4 buttonsFrame:(CGRect)a5 titleFrame:(CGRect)a6;
- (id)hitTest:(CGPoint)a3 withEvent:(id)a4;
- (id)titleExclusionPathsForButtonViewFrame:(CGRect)a3;
- (id)titleExclusionPathsForExplicitIconFrame:(CGRect)a3 viewWidth:(double)a4;
- (void)_setNumberOfLinesForDescription:(unint64_t)a3;
- (void)airplaneModeChanged:(id)a3;
- (void)beginLoadingArtwork;
- (void)configureSubviews;
- (void)contentSizeCategoryDidChange:(id)a3;
- (void)dealloc;
- (void)dismissActionSheetsAndPopovers;
- (void)fixEmptyTextContainers;
- (void)invalidateLayoutMargins;
- (void)layoutMarginsDidChange;
- (void)layoutSubviews;
- (void)moreButtonTapped:(id)a3;
- (void)playbackStateDidChange;
- (void)prepareForReuse;
- (void)reachabilityChangedFrom:(BOOL)a3 to:(BOOL)a4;
- (void)setBounds:(CGRect)a3;
- (void)setColorTheme:(id)a3;
- (void)setCurrentPlayerItem:(BOOL)a3;
- (void)setDisabledReason:(int64_t)a3;
- (void)setEditing:(BOOL)a3;
- (void)setEpisode:(id)a3;
- (void)setExpanded:(BOOL)a3;
- (void)setFrame:(CGRect)a3;
- (void)setShowsArtwork:(BOOL)a3;
- (void)setShowsDescriptionButton:(BOOL)a3;
- (void)setShowsExplicitIcon:(BOOL)a3;
- (void)setShowsFooterTextView:(BOOL)a3;
- (void)setShowsMoreButton:(BOOL)a3;
- (void)setShowsPlayState:(BOOL)a3;
- (void)setShowsPubDate:(BOOL)a3;
- (void)setStyle:(unint64_t)a3;
- (void)setTitleImage:(id)a3;
- (void)startObservingPlaybackState;
- (void)stopObservingPlaybackState;
- (void)update;
- (void)updateActionSheetsAndPopovers;
- (void)updateAssetStatusIcons;
- (void)updateColors;
- (void)updateColorsForBarsView:(id)a3;
- (void)updateDescriptionText;
- (void)updateFooterText;
- (void)updateFooterTextViewVisbility;
- (void)updateIconView;
- (void)updateIcons;
- (void)updateMetadataText;
- (void)updateMoreButtonVisibility;
- (void)updatePlayStatusIcons;
- (void)updateStateForBarsView:(id)a3;
- (void)updateTitleIncludingIcons;
@end

@implementation MTEpisodeLockup

+ (unint64_t)styleForWidth:(double)a3 showsArtwork:(BOOL)a4
{
  v4 = 2;
  if (a3 > 472.0)
  {
    v4 = 3;
  }

  if (a4)
  {
    return v4;
  }

  else
  {
    return a3 > 472.0;
  }
}

+ (double)estimatedHeightForWidth:(double)a3 showsArtwork:(BOOL)a4
{
  v6 = [a1 styleForWidth:a4 showsArtwork:?];

  [a1 estimatedHeightForWidth:v6 style:a3];
  return result;
}

+ (double)estimatedHeightForWidth:(double)a3 style:(unint64_t)a4
{
  v7 = objc_opt_new();
  [v7 setStyle:a4];
  v8 = [a1 mockEpisode];
  [v7 setEpisode:v8];

  [v7 sizeThatFits:{a3, 1.79769313e308}];
  v10 = v9;

  return v10;
}

+ (unint64_t)titleNumberOfLinesForStyle:(unint64_t)a3
{
  if (a3 == 2)
  {
    if ([a1 useLayoutForSkinnyPhones])
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }

  else if (a3)
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

+ (unint64_t)descriptionNumberOfLinesForStyle:(unint64_t)a3 isTitleMultipleLines:(BOOL)a4
{
  v4 = a4;
  if (a3 == 3)
  {
    v8 = !a4;
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

  if (a3 == 1)
  {
    v8 = !a4;
    v9 = 2;
    goto LABEL_11;
  }

  if (a3)
  {
    return 3;
  }

  v5 = +[MTEpisodeLockup useSelfSizingCells];
  v6 = 2;
  if (!v4)
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

+ (double)maximumContentWidthForStyle:(unint64_t)a3 showsPlayState:(BOOL)a4
{
  v4 = a4;
  v7 = +[MTEpisodeLockup descriptionFont];
  [v7 readableWidth];
  IMRoundToPixel();
  v9 = v8;

  [a1 artworkSizeForStyle:a3];
  v11 = v10 + 8.0;
  v12 = v10 <= 0.0;
  v13 = 0.0;
  if (v12)
  {
    v11 = 0.0;
  }

  if (v4)
  {
    v13 = 24.0;
  }

  return v9 + v13 + v11;
}

+ (CGRect)frameForContentViewSize:(CGSize)a3 style:(unint64_t)a4
{
  height = a3.height;
  width = a3.width;
  x = CGPointZero.x;
  y = CGPointZero.y;
  [MTEpisodeLockup maximumContentWidthForStyle:a4];
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

+ (double)artworkHeightForStyle:(unint64_t)a3 sizeType:(unint64_t)a4
{
  v7 = 0.0;
  if (![a1 showsArtworkForStyle:?])
  {
    return v7;
  }

  if (a4 == 1)
  {
    v8 = [a1 titleTextStyle];
    v9 = &UIContentSizeCategoryExtraExtraLarge;
  }

  else
  {
    if (a4 != 2)
    {
      v11 = [a1 titleFont];
      v13 = [a1 descriptionFont];
      goto LABEL_8;
    }

    v8 = [a1 titleTextStyle];
    v9 = &UIContentSizeCategorySmall;
  }

  v10 = *v9;
  v11 = [UIFont mt_fontForTextStyle:v8 contentSizeCategoryName:*v9];

  v12 = [a1 descriptionTextStyle];
  v13 = [UIFont mt_fontForTextStyle:v12 contentSizeCategoryName:v10];

LABEL_8:
  v14 = [a1 titleNumberOfLinesForStyle:a3];
  v15 = 1.0;
  if (a3 == 3)
  {
    v15 = ([a1 descriptionNumberOfLinesForStyle:3 isTitleMultipleLines:1] + 2);
  }

  [v11 lineHeight];
  v17 = v14 * v16 + 2.0;
  [v13 lineHeight];
  v19 = v17 + v15 * v18;
  if (a3 != 3)
  {
    [v11 mt_offsetFromCapHeightToAscent];
    v19 = v19 + v20;
  }

  v7 = v19 + 2.0 + -1.0;

  return v7;
}

+ (CGSize)artworkSizeForStyle:(unint64_t)a3
{
  [a1 artworkHeightForStyle:a3 sizeType:0];
  v6 = v5;
  if (a3 == 3)
  {
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B9180;
    v15[3] = &unk_1004DB360;
    v15[4] = a1;
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
    if (a3 != 2)
    {
      goto LABEL_10;
    }

    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000B9134;
    block[3] = &unk_1004DB360;
    block[4] = a1;
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

+ (id)defaultArtworkForStyle:(unint64_t)a3
{
  [a1 artworkSizeForStyle:a3];

  return [a1 defaultArtworkWithSize:?];
}

+ (id)defaultArtworkWithSize:(CGSize)a3
{
  width = a3.width;
  if (a3.width < 1.0 || a3.height < 1.0)
  {
    v7 = 0;
  }

  else
  {
    height = a3.height;
    v6 = +[MTImageStore defaultStore];
    v7 = [v6 imageForKey:kMTLibraryDefaultImageKey size:{width, height}];
  }

  return v7;
}

+ (id)mockEpisode
{
  v2 = +[MTDB managedObjectModel];
  v3 = [v2 entitiesByName];
  v4 = [v3 objectForKeyedSubscript:kMTEpisodeEntityName];

  v5 = [[MTEpisode alloc] initWithEntity:v4 insertIntoManagedObjectContext:0];
  [v5 setTitle:@"This is a really long title that will always reach the maximum number of lines even when the maximum number of lines is really large and when the text size is really small. Really... we promise it will be long enough to always reach the maximum. We promise... "];
  v6 = [@"This is a really long description that will always reach the maximum number of lines even when the maximum number of lines is really large and when the text size is really small. Really... we promise it will be long enough to always reach the maximum. We promise... " stringByAppendingString:@"This is a really long description that will always reach the maximum number of lines even when the maximum number of lines is really large and when the text size is really small. Really... we promise it will be long enough to always reach the maximum. We promise... "];
  v7 = kEpisodeDescription;
  [v5 willChangeValueForKey:kEpisodeDescription];
  [v5 setPrimitiveValue:v6 forKey:v7];
  [v5 didChangeValueForKey:v7];
  [v5 setUuid:@"mockEpisodeUuid"];
  v8 = [v5 title];
  v9 = [v5 title];
  v10 = [v8 stringByAppendingString:v9];
  [v5 setTitle:v10];

  v11 = [v5 title];
  [v5 setCleanedTitle:v11];

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

+ (double)leadingMarginForViewWidth:(double)a3
{
  v3 = [UIView mt_areMarginsGenerousForWidth:a3];
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
  v2 = [a1 titleTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:v2];

  return v3;
}

+ (id)metadataHeaderFont
{
  v2 = [a1 descriptionTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:v2 addingSymbolicTraits:2];

  return v3;
}

+ (id)descriptionFont
{
  v2 = [a1 descriptionTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:v2];

  return v3;
}

+ (id)metadataFooterFont
{
  v2 = [a1 footerTextStyle];
  v3 = [UIFont mt_preferredFontForTextStyle:v2];

  return v3;
}

- (MTEpisodeLockup)initWithFrame:(CGRect)a3
{
  v12.receiver = self;
  v12.super_class = MTEpisodeLockup;
  v3 = [(MTEpisodeLockup *)&v12 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
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
  v3 = [(MTEpisodeLockup *)self layer];
  [v3 setAllowsGroupOpacity:0];

  if ([(MTEpisodeLockup *)self showsPlayState])
  {
    v4 = [(MTEpisodeLockup *)self playStatusView];
    [(MTEpisodeLockup *)self addSubview:v4];
  }

  v5 = [(MTEpisodeLockup *)self titleTextView];
  [(MTEpisodeLockup *)self addSubview:v5];

  v6 = [(MTEpisodeLockup *)self metadataLabel];
  [(MTEpisodeLockup *)self addSubview:v6];

  v7 = [(MTEpisodeLockup *)self descriptionTextView];
  [(MTEpisodeLockup *)self addSubview:v7];

  if ([(MTEpisodeLockup *)self isExpanded])
  {
    v8 = [(MTEpisodeLockup *)self footerTextView];
    [(MTEpisodeLockup *)self addSubview:v8];
  }

  v9 = [(MTEpisodeLockup *)self actionButton];
  [(MTEpisodeLockup *)self addSubview:v9];

  if (![(MTEpisodeLockup *)self isExpanded])
  {
    v10 = [(MTEpisodeLockup *)self moreButton];
    [(MTEpisodeLockup *)self addSubview:v10];
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

    v9 = [(MTTouchInsetsButton *)self->_moreButton titleLabel];
    v10 = +[MTEpisodeLockup descriptionFont];
    [v9 setFont:v10];

    [(MTTouchInsetsButton *)self->_moreButton addTarget:self action:"moreButtonTapped:" forControlEvents:64];
    [(MTTouchInsetsButton *)self->_moreButton setTouchInsets:-16.0, -8.0, -8.0, -12.0];
    v11 = [(MTTouchInsetsButton *)self->_moreButton titleLabel];
    [v11 sizeToFit];

    v12 = self->_moreButton;
    v13 = [(MTTouchInsetsButton *)v12 titleLabel];
    [v13 bounds];
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

    v9 = [(MTTouchInsetsButton *)self->_descriptionButton titleLabel];
    v10 = +[MTEpisodeLockup descriptionFont];
    [v9 setFont:v10];

    [(MTTouchInsetsButton *)self->_descriptionButton setTouchInsets:-16.0, -8.0, -8.0, -12.0];
    v11 = [(MTTouchInsetsButton *)self->_descriptionButton titleLabel];
    [v11 sizeToFit];

    v12 = self->_descriptionButton;
    v13 = [(MTTouchInsetsButton *)v12 titleLabel];
    [v13 bounds];
    [(MTTouchInsetsButton *)v12 setFrame:?];

    descriptionButton = self->_descriptionButton;
  }

  return descriptionButton;
}

- (UIButton)actionButton
{
  v2 = [(MTEpisodeLockup *)self moreAction];
  v3 = [v2 button];

  return v3;
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
    v7 = [objc_opt_class() titleFont];
    [(UITextView *)self->_titleTextView setFont:v7];

    [(UITextView *)self->_titleTextView setTextContainerInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
    v8 = [(UITextView *)self->_titleTextView textContainer];
    [v8 setLineFragmentPadding:0.0];

    v9 = [(UITextView *)self->_titleTextView textContainer];
    [v9 setWidthTracksTextView:1];

    v10 = [(UITextView *)self->_titleTextView textContainer];
    [v10 setHeightTracksTextView:1];

    v11 = [(UITextView *)self->_titleTextView textContainer];
    [v11 setLineBreakMode:4];

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

    v7 = [(UITextView *)self->_descriptionTextView textContainer];
    [v7 setLineBreakMode:4];

    v8 = [(UITextView *)self->_descriptionTextView textContainer];
    [v8 setLineFragmentPadding:0.0];

    v9 = [(UITextView *)self->_descriptionTextView textContainer];
    [v9 setHeightTracksTextView:1];

    v10 = [(UITextView *)self->_descriptionTextView textContainer];
    [v10 setWidthTracksTextView:1];

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

    v7 = [(UITextView *)self->_footerTextView textContainer];
    [v7 setLineBreakMode:4];

    v8 = [(UITextView *)self->_footerTextView textContainer];
    [v8 setLineFragmentPadding:0.0];

    v9 = [(UITextView *)self->_footerTextView textContainer];
    [v9 setHeightTracksTextView:1];

    v10 = [(UITextView *)self->_footerTextView textContainer];
    [v10 setWidthTracksTextView:1];

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

- (void)setColorTheme:(id)a3
{
  v5 = a3;
  colorTheme = self->_colorTheme;
  if (colorTheme != v5)
  {
    v8 = v5;
    v7 = [(MTColorTheme *)colorTheme isEqual:v5];
    v5 = v8;
    if ((v7 & 1) == 0)
    {
      objc_storeStrong(&self->_colorTheme, a3);
      [(MTEpisodeLockup *)self updateColors];
      v5 = v8;
    }
  }
}

- (void)updateColors
{
  v3 = [(MTEpisodeLockup *)self colorTheme];
  v20 = [UIColor tintColorForTheme:v3];

  v4 = [(MTEpisodeLockup *)self colorTheme];
  v5 = [UIColor primaryTextColorForTheme:v4];

  v6 = [(MTEpisodeLockup *)self colorTheme];
  v7 = [UIColor secondaryTextColorForTheme:v6];

  v8 = [(MTEpisodeLockup *)self titleTextView];
  [v8 setTextColor:v5];

  v9 = [(MTEpisodeLockup *)self descriptionTextView];
  [v9 setTextColor:v7];

  v10 = [(MTEpisodeLockup *)self footerTextView];
  [v10 setTextColor:v7];

  v11 = [(MTEpisodeLockup *)self metadataLabel];
  [v11 setTextColor:v7];

  v12 = [(MTEpisodeLockup *)self iconView];
  v13 = [(MTEpisodeLockup *)self colorTheme];
  [v12 setColorTheme:v13];

  v14 = [(MTEpisodeLockup *)self actionController];
  v15 = [(MTEpisodeLockup *)self colorTheme];
  [v14 setColorTheme:v15];

  v16 = [(MTEpisodeLockup *)self actionButton];
  [v16 setTintColor:v20];

  v17 = [(MTEpisodeLockup *)self descriptionTextView];
  [v17 setTintColor:v20];

  v18 = [(MTEpisodeLockup *)self moreButton];
  [v18 setTintColor:v20];

  v19 = [(MTEpisodeLockup *)self descriptionButton];
  [v19 setTintColor:v20];

  [(MTEpisodeLockup *)self updateColorsForBarsView:self->_barsView];
  [(MTEpisodeLockup *)self updatePlayStatusIcons];
}

- (void)updateColorsForBarsView:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v6 = [(MTEpisodeLockup *)self colorTheme];
    v5 = [UIColor barsTintColorForTheme:v6];
    [v4 setTintColor:v5];
  }
}

- (void)moreButtonTapped:(id)a3
{
  v4 = a3;
  v5 = [(MTEpisodeLockup *)self delegate];
  [v5 lockup:self moreButtonTapped:v4];
}

- (void)airplaneModeChanged:(id)a3
{
  if (![(MTEpisodeLockup *)self updateDisabledReason])
  {
    v4 = [(MTEpisodeLockup *)self episode];

    if (v4)
    {

      [(MTEpisodeLockup *)self updateIcons];
    }
  }
}

- (void)contentSizeCategoryDidChange:(id)a3
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

- (void)reachabilityChangedFrom:(BOOL)a3 to:(BOOL)a4
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

- (void)setEpisode:(id)a3
{
  objc_storeStrong(&self->_episode, a3);
  if (a3)
  {

    [(MTEpisodeLockup *)self update];
  }
}

- (void)setEditing:(BOOL)a3
{
  if (self->_editing != a3)
  {
    self->_editing = a3;
    [(MTEpisodeLockup *)self updateMoreButtonVisibility];
  }
}

- (void)setCurrentPlayerItem:(BOOL)a3
{
  if (self->_currentPlayerItem != a3)
  {
    v3 = a3;
    self->_currentPlayerItem = a3;
    [(MTEpisodeArtworkView *)self->_artworkView setCurrentPlayerItem:?];
    [(MTEpisodeLockup *)self updatePlayStatusIcons];
    [(MTEpisodeLockup *)self updateIconView];
    if (v3)
    {

      [(MTEpisodeLockup *)self startObservingPlaybackState];
    }

    else
    {

      [(MTEpisodeLockup *)self stopObservingPlaybackState];
    }
  }
}

- (void)setExpanded:(BOOL)a3
{
  if (self->_expanded != a3)
  {
    self->_expanded = a3;
    [(MTEpisodeLockup *)self updateMoreButtonVisibility];
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = [objc_opt_class() descriptionNumberOfLinesForStyle:-[MTEpisodeLockup style](self isTitleMultipleLines:{"style"), 1}];
    }

    [(MTEpisodeLockup *)self _setNumberOfLinesForDescription:v6];
    v7 = [(MTEpisodeLockup *)self episode];

    if (v7)
    {
      [(MTEpisodeLockup *)self updateDescriptionText];
    }

    [(MTEpisodeLockup *)self updateFooterTextViewVisbility];

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)setStyle:(unint64_t)a3
{
  if (self->_style != a3 || !self->_initialized)
  {
    self->_style = a3;
    [(MTEpisodeLockup *)self setShowsArtwork:[MTEpisodeLockup showsArtworkForStyle:a3]];
    v5 = [objc_opt_class() titleNumberOfLinesForStyle:a3];
    v6 = [(MTEpisodeLockup *)self titleTextView];
    v7 = [v6 textContainer];
    [v7 setMaximumNumberOfLines:v5];

    [(MTEpisodeLockup *)self updateTitleFontIfNeeded];
    [(MTEpisodeLockup *)self invalidateSizeMetrics];

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)setShowsPubDate:(BOOL)a3
{
  if (self->_showsPubDate != a3)
  {
    self->_showsPubDate = a3;
    [(MTEpisodeLockup *)self updateDescriptionText];
  }
}

- (void)setShowsPlayState:(BOOL)a3
{
  if (self->_showsPlayState == a3)
  {
    return;
  }

  v4 = a3;
  self->_showsPlayState = a3;
  v6 = [(MTEpisodeLockup *)self playStatusView];
  v7 = [v6 superview];

  if (v4)
  {
    if (v7 != self)
    {
      v8 = [(MTEpisodeLockup *)self playStatusView];
      [(MTEpisodeLockup *)self addSubview:v8];
LABEL_7:
    }
  }

  else if (v7)
  {
    v8 = [(MTEpisodeLockup *)self playStatusView];
    [v8 removeFromSuperview];
    goto LABEL_7;
  }

  [(MTEpisodeLockup *)self updateIcons];
}

- (void)prepareForReuse
{
  [(MTEpisodeLockup *)self setEpisode:0];
  [(MTEpisodeLockup *)self setExpanded:0];
  [(MTEpisodeLockup *)self setDelegate:0];
  v3 = [(MTEpisodeLockup *)self actionController];
  [v3 prepareForReuse];

  [(MTEpisodeLockup *)self setDisabledReason:0];
  [(MTEpisodeLockup *)self invalidateSizeMetrics];
  [(MTEpisodeLockup *)self invalidateLayoutMargins];
  self->_shouldShowNowPlaying = 1;
  [(MTEpisodeLockup *)self setCurrentPlayerItem:0];
  v4 = [(MTEpisodeLockup *)self artworkView];
  v5 = [v4 artwork];

  if (v5)
  {
    v7 = [objc_opt_class() defaultArtworkForStyle:{-[MTEpisodeLockup style](self, "style")}];
    v6 = [(MTEpisodeLockup *)self artworkView];
    [v6 setArtwork:v7];
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
  v3 = [(MTEpisodeLockup *)self moreAction];
  sub_1000BB420(v3, v3);

  v4 = [(MTEpisodeLockup *)self actionController];
  [v4 updateActionSheetsAndPopovers];
}

- (void)dismissActionSheetsAndPopovers
{
  v3 = [(MTEpisodeLockup *)self moreAction];
  sub_1000BB4F8(v3, v3);

  v4 = [(MTEpisodeLockup *)self actionController];
  [v4 dismissActionSheetsAndPopovers];
}

- (id)hitTest:(CGPoint)a3 withEvent:(id)a4
{
  y = a3.y;
  x = a3.x;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = MTEpisodeLockup;
  v8 = [(MTEpisodeLockup *)&v15 hitTest:v7 withEvent:x, y];
  v9 = [(MTEpisodeLockup *)self moreButton];

  if (v8 == v9)
  {
    v10 = [(MTEpisodeLockup *)self actionButton];
    v11 = [(MTEpisodeLockup *)self actionButton];
    [(MTEpisodeLockup *)self convertPoint:v11 toView:x, y];
    v12 = [v10 hitTest:v7 withEvent:?];

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
    v13 = [(MTEpisodeLockup *)self artworkView];
    [v13 setFrame:{x, y, width, height}];
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
  v27 = [(MTEpisodeLockup *)self actionButton];
  [v27 setFrame:{v20, v22, v24, v26}];

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
  v45 = [(MTEpisodeLockup *)self titleTextView];
  [v45 setFrame:{v128, v113, v42, v44}];

  v46 = v44;
  v47 = v42;
  [(MTEpisodeLockup *)self playStatusViewFrameForViewWidth:v16 titleFrame:v128 artworkFrame:v113, v42, v46, *&v127, *&y, *&v125, *&height];
  v49 = v48;
  v51 = v50;
  v53 = v52;
  v55 = v54;
  v56 = [(MTEpisodeLockup *)self playStatusView];
  [v56 setFrame:{v49, v51, v53, v55}];

  v57 = [(MTEpisodeLockup *)self barsView];
  v58 = [v57 superview];

  if (v58)
  {
    v59 = [(MTEpisodeLockup *)self barsView];
    [v59 setFrame:{v49, v51, v53, v55}];
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
  v72 = [(MTEpisodeLockup *)self iconView];
  v73 = [v72 superview];

  if (v73)
  {
    v74 = [(MTEpisodeLockup *)self iconView];
    [v74 setFrame:{v65, v67, v69, v71}];
  }

  v75 = [(MTEpisodeLockup *)self metadataLabel];
  [v75 setFrame:{v132, v133, v134}];

  v76 = [(MTEpisodeLockup *)self style];
  [(MTEpisodeLockup *)self descriptionOriginForViewWidth:v76 artworkFrame:v129 buttonViewFrame:v127 titleFrame:v126 metadataFrame:v125 iconViewFrame:height style:v117, v116, v37, v114, *&v128, *&v113, *&v47, *&v46, *&v132, v133, *&v134, *&v65, *&v67, *&v69, *&v71];
  v78 = v77;
  v80 = v79;
  [(MTEpisodeLockup *)self exactDescriptionSizeForOrigin:[(MTEpisodeLockup *)self style] viewWidth:v77 titleFrame:v79 actionButtonFrame:v129 downloadButtonFrame:v128 style:v113, v47, v46, *&v124, *&v123, *&v122, *&v115, v121, v120, v119, v118];
  v82 = v81;
  v84 = v83;
  v85 = [(MTEpisodeLockup *)self descriptionTextView];
  [v85 frame];
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
    v91 = [(MTEpisodeLockup *)self descriptionTextView];
    [v91 setFrame:{v78, v80, v82, v84}];
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
    v112 = [(MTEpisodeLockup *)self footerTextView];
    [v112 setFrame:{v105, v107, v109, v111}];
  }
}

- (CGRect)explicitIconFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = +[MTEpisodeLockup titleFont];
  v11 = [(MTEpisodeLockup *)self explicitIconView];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  v16 = [(MTEpisodeLockup *)self _isRTL];
  v62 = a3;
  v17 = x;
  v18 = y;
  v19 = width;
  v20 = height;
  if (v16)
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
    if (MaxX >= a3 - v25 - v13)
    {
      v23 = a3 - v25 - v13;
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

  v34 = [(MTEpisodeLockup *)self titleTextView];
  v35 = [v34 layoutManager];
  v36 = [v35 numberOfGlyphs] - 1;

  if (v36)
  {
    v61 = v28;
    v37 = MaxY;
    v38 = [(MTEpisodeLockup *)self titleTextView];
    v39 = [v38 layoutManager];
    [v39 lineFragmentRectForGlyphAtIndex:v36 effectiveRange:0];
    v41 = v40;
    v43 = v42;
    v45 = v44;
    v47 = v46;

    v48 = [(MTEpisodeLockup *)self _isRTL];
    v49 = v41;
    v50 = v43;
    v51 = v45;
    v52 = v47;
    if (v48)
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
      if (v55 >= v62 - v56 - v13)
      {
        v23 = v62 - v56 - v13;
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

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(MTEpisodeLockup *)self style];
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
  v9 = [NSString stringWithFormat:@"%lu-%@-%@", v6, v7, v8];

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
  v3 = [(MTEpisodeLockup *)self descriptionTextView];
  v4 = [v3 textContainer];
  [v4 size];
  v6 = v5;
  v8 = v7;

  v9 = [(MTEpisodeLockup *)self descriptionTextView];
  [v9 frame];
  v11 = v10;
  v13 = v12;

  if (v6 != v11 || v8 != v13)
  {
    v15 = [(MTEpisodeLockup *)self descriptionTextView];
    v16 = [v15 textContainer];
    [v16 setSize:{v11, v13}];
  }

  v17 = [(MTEpisodeLockup *)self titleTextView];
  v18 = [v17 textContainer];
  [v18 size];
  v20 = v19;
  v22 = v21;

  v23 = [(MTEpisodeLockup *)self titleTextView];
  [v23 frame];
  v25 = v24;
  v27 = v26;

  if (v20 != v25 || v22 != v27)
  {
    v29 = [(MTEpisodeLockup *)self titleTextView];
    v28 = [v29 textContainer];
    [v28 setSize:{v25, v27}];
  }
}

- (void)setFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (void)setBounds:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (UIEdgeInsets)_layoutMarginsForViewWidth:(double)a3
{
  [objc_opt_class() leadingMarginForViewWidth:a3];
  v6 = v5;
  v7 = *&self->__layoutMargins.top;
  v8 = *&self->__layoutMargins.bottom;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v7, *&UIEdgeInsetsZero.top), vceqq_f64(v8, *&UIEdgeInsetsZero.bottom)))))
  {
    [MTEpisodeLockup maximumContentWidthForStyle:[(MTEpisodeLockup *)self style]];
    v12 = v11;
    [(MTEpisodeLockup *)self mt_layoutMarginsForWidth:a3];
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

    if (a3 - left - right > v12)
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

- (double)heightForWidth:(double)a3 style:(unint64_t)a4
{
  [MTEpisodeLockup artworkFrameForStyle:"artworkFrameForStyle:forViewWidth:" forViewWidth:?];
  v114 = v7;
  v94 = v8;
  v109 = v9;
  v11 = v10;
  [(MTEpisodeLockup *)self titleOriginYForArtworkFrame:a4 style:?];
  v93 = v12;
  [(MTEpisodeLockup *)self actionButtonFrameForViewWidth:a3 titleOriginY:v12];
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
  [(MTEpisodeLockup *)self titleOriginXForViewWidth:a4 artworkFrame:a3 buttonFrame:v114 style:v11, v94, v109, v25, v27, v29, v31];
  v92 = v30;
  v33 = v32;
  [(MTEpisodeLockup *)self titleSizeForViewWidth:a4 titleOrigin:a3 artworkFrame:v26 buttonViewFrame:v28 style:v92, v111];
  v35 = v34;
  v37 = v36;
  [(MTEpisodeLockup *)self metadataFrameForViewWidth:a4 titleFrame:a3 style:v33, v93, v34, v36];
  v115 = v38;
  *&v116 = v39;
  *(&v116 + 1) = v40;
  v117 = v41;
  [(MTEpisodeLockup *)self iconsViewFrameForViewWidth:&v115 titleFrame:a4 metadataFrame:a3 style:v33, v93, v35, v37];
  [(MTEpisodeLockup *)self descriptionOriginForViewWidth:a4 artworkFrame:a3 buttonViewFrame:v114 titleFrame:v113 metadataFrame:v94 iconViewFrame:v109 style:v26, v96, v95, v111, *&v33, *&v93, *&v35, *&v37, v115, v116, v117, v42, v43, v44, v45];
  v47 = v46;
  v49 = v48;
  [(MTEpisodeLockup *)self exactDescriptionSizeForOrigin:a4 viewWidth:*&v107 titleFrame:*&v105 actionButtonFrame:*&v103 downloadButtonFrame:*&v101 style:*&v100, *&v99, *&v98, *&v97];
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
    v63 = [(MTEpisodeLockup *)self descriptionTextView];
    [v63 frame];
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
      v69 = [(MTEpisodeLockup *)self descriptionTextView];
      [v69 setFrame:{v49, v47, v112, v51}];
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
      v87 = [(MTEpisodeLockup *)self footerTextView];
      x = v79;
      [v87 setFrame:{v79, y, width, height}];
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

  v88 = [objc_opt_class() titleFont];
  [v88 _scaledValueForValue:8.0];
  v89 = 100.0;
  if (a4 > 1)
  {
    if (a4 == 3 || a4 == 2)
    {
      goto LABEL_17;
    }
  }

  else if (a4 <= 1)
  {
LABEL_17:
    IMRoundToPixel();
    v89 = v90;
  }

  return v89;
}

- (CGRect)artworkFrameForStyle:(unint64_t)a3 forViewWidth:(double)a4
{
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    [objc_opt_class() artworkSizeForStyle:a3];
    width = v7;
    height = v9;
    v11 = [(MTEpisodeLockup *)self _isRTL];
    [(MTEpisodeLockup *)self _layoutMargins];
    x = a4 - v12 - width;
    if (!v11)
    {
      x = v12;
    }

    y = 8.0;
    if (a3 == 2)
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

  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (double)titleOriginXForViewWidth:(double)result artworkFrame:(CGRect)a4 buttonFrame:(CGRect)a5 style:(unint64_t)a6
{
  if (a6 - 2 < 2)
  {
    height = a4.size.height;
    width = a4.size.width;
    y = a4.origin.y;
    x = a4.origin.x;
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
    if (a6 > 1)
    {
      return result;
    }

    if (![(MTEpisodeLockup *)self _isRTL:result])
    {
      [(MTEpisodeLockup *)self _layoutMargins];
      return v7;
    }
  }

  if (CGRectIsEmpty(a5))
  {
    [(MTEpisodeLockup *)self _layoutMargins];
    return v12;
  }

  v13 = a5.origin.x;
  v14 = a5.origin.y;
  v15 = a5.size.width;
  v16 = a5.size.height;
  return CGRectGetMaxX(*&v13) + 8.0;
}

- (CGSize)titleSizeForViewWidth:(double)a3 titleOrigin:(CGPoint)a4 artworkFrame:(CGRect)a5 buttonViewFrame:(CGRect)a6 style:(unint64_t)a7
{
  y = a4.y;
  x = a4.x;
  v10 = [objc_opt_class() showsArtworkForStyle:a7];
  v11 = [(MTEpisodeLockup *)self titleTextView];
  [v11 frame];
  v13 = v12;
  v15 = v14;

  if (x != v13 || y != v15)
  {
    v17 = [(MTEpisodeLockup *)self titleTextView];
    [v17 frame];
    v19 = v18;
    v21 = v20;
    v22 = [(MTEpisodeLockup *)self titleTextView];
    [v22 setFrame:{x, y, v19, v21}];
  }

  v23 = [(MTEpisodeLockup *)self titleExclusionPathsForButtonViewFrame:a6.origin.x, a6.origin.y, a6.size.width, a6.size.height];
  v24 = [(MTEpisodeLockup *)self titleTextView];
  v25 = [v24 textContainer];
  [v25 setExclusionPaths:v23];

  LODWORD(v24) = CGRectIsEmpty(a6);
  v26 = [(MTEpisodeLockup *)self _isRTL];
  if (v24)
  {
    if (!v26)
    {
      [(MTEpisodeLockup *)self _layoutMargins];
      v32 = a3 - v33;
      goto LABEL_16;
    }

    if (v10)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (!v26)
    {
      v27 = a6.origin.x;
      v28 = a6.origin.y;
      width = a6.size.width;
      height = a6.size.height;
      goto LABEL_15;
    }

    if (v10)
    {
LABEL_9:
      v27 = a5.origin.x;
      v28 = a5.origin.y;
      width = a5.size.width;
      height = a5.size.height;
LABEL_15:
      v32 = CGRectGetMinX(*&v27) + -8.0;
      goto LABEL_16;
    }
  }

  [(MTEpisodeLockup *)self _layoutMargins];
  v32 = a3 - v31;
LABEL_16:
  v34 = v32 - x;
  v35 = [(MTEpisodeLockup *)self titleTextView];
  [v35 sizeThatFits:{v34, 1.79769313e308}];
  v37 = v36;

  v38 = v34;
  v39 = v37;
  result.height = v39;
  result.width = v38;
  return result;
}

- (double)titleOriginYForArtworkFrame:(CGRect)a3 style:(unint64_t)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = [(MTEpisodeLockup *)self _currentTitleFont];
  v11 = v10;
  if (a4 > 1)
  {
    if (a4 == 2)
    {
      [v10 mt_offsetFromCapHeightToAscent];
      v15.origin.x = x;
      v15.origin.y = y;
      v15.size.width = width;
      v15.size.height = height;
      CGRectGetMinY(v15);
      goto LABEL_11;
    }

    if (a4 == 3)
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
    if (!a4)
    {
      [v10 mt_offsetFromCapHeightToAscent];
      goto LABEL_11;
    }

    if (a4 == 1)
    {
      [v10 mt_offsetFromCapHeightToAscent];
LABEL_11:
      IMRoundToPixel();
      v4 = v12;
    }
  }

  return v4;
}

- (double)descriptionOriginForViewWidth:(CGFloat)a3 artworkFrame:(CGFloat)a4 buttonViewFrame:(CGFloat)a5 titleFrame:(CGFloat)a6 metadataFrame:(uint64_t)a7 iconViewFrame:(unint64_t)a8 style:(double)a9
{
  v31 = [a1 _currentTitleFont];
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
    v35 = v31;
  }

  else
  {
    v35 = v32;
  }

  v36 = v35;
  if (a8 < 2)
  {
LABEL_9:
    [v31 lineHeight];
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
      v38 = [a1 iconView];
      v39 = [v38 isNotEmpty];

      if (v39)
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
    if ([a1 _isRTL])
    {
      [a1 descriptionWidthForViewWidth:a8 titleFrame:a2 style:{a16, a17, a18, a19}];
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

  if (a8 != 2)
  {
    if (a8 != 3)
    {
      MinX = CGPointZero.x;
      goto LABEL_29;
    }

    goto LABEL_9;
  }

  v44 = [a1 _isRTL];
  v45 = a3;
  v46 = a4;
  if (v44)
  {
    v45 = a12;
    v46 = a13;
  }

  else
  {
    a14 = a5;
  }

  if (!v44)
  {
    a15 = a6;
  }

  v55 = CGRectGetMinX(*&v45);
  v49 = [a1 iconView];
  if ([v49 isNotEmpty])
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
  [v31 mt_offsetFromLastBaselineToBottom];
  v71.origin.x = a3;
  v71.origin.y = a4;
  v71.size.width = a5;
  v71.size.height = a6;
  CGRectGetMaxY(v71);
  v50 = +[MTEpisodeLockup metadataFooterFont];
  [v50 mt_offsetFromCapHeightToAscent];
  IMRoundToPixel();

  MinX = v55;
LABEL_29:

  return MinX;
}

- (double)exactDescriptionSizeForOrigin:(double)a3 viewWidth:(double)a4 titleFrame:(double)a5 actionButtonFrame:(double)a6 downloadButtonFrame:(double)a7 style:(double)a8
{
  v31 = [a1 _currentTitleFont];
  v32 = [a1 isLabelMultipleLinesWithFrame:v31 font:{a5, a6, a7, a8}];

  if ([a1 isExpanded])
  {
    v33 = 0;
  }

  else
  {
    v33 = [objc_opt_class() descriptionNumberOfLinesForStyle:a10 isTitleMultipleLines:v32];
  }

  [a1 _setNumberOfLinesForDescription:v33];
  v34 = a1 + 3;
  v35 = a1[3];
  if (v35 == CGSizeZero.width && a1[4] == CGSizeZero.height)
  {
    [a1 buttonsFrameForActionButtonFrame:a12 downloadButtonFrame:{a13, a14, a15, a16, a17, a18, a19}];
    v38 = v37;
    v59 = v40;
    v60 = v39;
    v58 = v41;
    [a1 descriptionWidthForViewWidth:a10 titleFrame:a4 style:{a5, a6, a7, a8}];
    v35 = v42;
    v43 = [a1 descriptionExclusionPathsForOrigin:a2 descriptionWidth:a3 buttonsFrame:v42 titleFrame:{v38, v60, v59, v58, *&a5, *&a6, *&a7, *&a8}];
    v44 = [a1 descriptionTextView];
    v45 = [v44 textContainer];
    [v45 setExclusionPaths:v43];

    [objc_opt_class() descriptionMaxHeightForCurrentOrientation];
    v47 = v46;
    v48 = [a1 descriptionTextView];
    [v48 sizeThatFits:{v35, v47}];
    v50 = v49;

    v51 = v50 > v47;
    if (v50 <= v47)
    {
      v47 = v50;
    }

    [a1 setShowsDescriptionButton:v51];
    if (v47 > 0.0)
    {
      v52 = [a1 descriptionTextView];
      v53 = [v52 text];
      if ([v53 length])
      {
      }

      else
      {
        v54 = [a1 descriptionTextView];
        v55 = [v54 attributedText];
        v56 = [v55 length];

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

- (double)descriptionWidthForViewWidth:(double)a3 titleFrame:(CGRect)a4 style:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  result = 0.0;
  if (a5 > 1)
  {
    if (a5 == 3)
    {
LABEL_8:
      v14 = [(MTEpisodeLockup *)self _isRTL];
      v15 = x;
      v16 = y;
      v17 = width;
      v18 = height;
      if (v14)
      {
        MaxX = CGRectGetMaxX(*&v15);
      }

      else
      {
        MaxX = a3 - CGRectGetMinX(*&v15);
      }

      goto LABEL_11;
    }

    if (a5 != 2)
    {
      return result;
    }

LABEL_7:
    [(MTEpisodeLockup *)self _layoutMargins];
    MaxX = a3 - v12;
LABEL_11:
    [(MTEpisodeLockup *)self _layoutMargins];
    return MaxX - v19;
  }

  if (!a5)
  {
    goto LABEL_7;
  }

  if (a5 == 1)
  {
    goto LABEL_8;
  }

  return result;
}

- (id)titleExclusionPathsForButtonViewFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    v8 = &__NSArray0__struct;
  }

  else
  {
    v9 = [(MTEpisodeLockup *)self titleTextView];
    [v9 convertRect:self fromView:{x, y, width, height}];
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

- (id)titleExclusionPathsForExplicitIconFrame:(CGRect)a3 viewWidth:(double)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  if (CGRectIsEmpty(a3))
  {
    v10 = &__NSArray0__struct;
  }

  else
  {
    v11 = [(MTEpisodeLockup *)self titleTextView];
    [v11 convertRect:self fromView:{x, y, width, height}];
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
      v20 = a4 - CGRectGetMinX(v28);
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

- (id)descriptionExclusionPathsForOrigin:(CGPoint)a3 descriptionWidth:(double)a4 buttonsFrame:(CGRect)a5 titleFrame:(CGRect)a6
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v11 = a3.y;
  v12 = a3.x;
  if (CGRectIsEmpty(a5) || (v19.size.height = 1.79769313e308, v19.origin.x = v12, v19.origin.y = v11, v19.size.width = a4, v22.origin.x = x, v22.origin.y = y, v22.size.width = width, v22.size.height = height, !CGRectIntersectsRect(v19, v22)))
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

- (BOOL)isLabelMultipleLinesWithFrame:(CGRect)a3 font:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = a4;
  v16.origin.x = x;
  v16.origin.y = y;
  v16.size.width = width;
  v16.size.height = height;
  v9 = CGRectGetHeight(v16);
  [v8 lineHeight];
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

- (CGRect)metadataFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4 style:(unint64_t)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  MinX = CGRectGetMinX(a4);
  v46.origin.x = x;
  v46.origin.y = y;
  v44 = width;
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
    v14 = a3 - v12;
  }

  v15 = [(MTEpisodeLockup *)self metadataLabel];
  v16 = [v15 attributedText];
  if ([v16 length])
  {

LABEL_7:
    v20 = [(MTEpisodeLockup *)self metadataLabel];
    [v20 sizeThatFits:{v14, 1.79769313e308}];
    v22 = v21;
    v24 = v23;

    goto LABEL_8;
  }

  v17 = [(MTEpisodeLockup *)self metadataLabel];
  v18 = [v17 text];
  v19 = [v18 length];

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

  v33 = [(MTEpisodeLockup *)self _isRTL];
  v34 = v44;
  if (v33)
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

- (CGRect)moreButtonFrameForDescriptionFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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
  v9 = [(MTEpisodeLockup *)self descriptionTextView];
  v10 = [v9 attributedText];
  if ([v10 length])
  {
  }

  else
  {
    v15 = [(MTEpisodeLockup *)self descriptionTextView];
    v16 = [v15 text];
    v17 = [v16 length];

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
  v18 = [(MTEpisodeLockup *)self moreButton];
  [v18 frame];
  v13 = v19;
  v14 = v20;

  v21 = [(MTEpisodeLockup *)self _isRTL];
  v22 = x;
  v23 = y;
  v24 = width;
  v25 = height;
  if (v21)
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

- (CGRect)iconsViewFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4 metadataFrame:(CGRect *)a5 style:(unint64_t)a6
{
  v9 = [MTEpisodeLockup titleFont:a5];
  v10 = +[MTEpisodeLockup metadataHeaderFont];
  v11 = [(MTEpisodeLockup *)self metadataLabel];
  v12 = [v11 attributedText];
  if ([v12 length])
  {

LABEL_4:
    v49 = NSFontAttributeName;
    v50 = v10;
    v16 = [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
    [@" " sizeWithAttributes:v16];
    v18 = v17;

    MaxY = CGRectGetMaxY(*a5);
    [v10 mt_offsetFromLastBaselineToBottom];
    v21 = MaxY - v20;
    v22 = 0.0;
    goto LABEL_5;
  }

  v13 = [(MTEpisodeLockup *)self metadataLabel];
  v14 = [v13 text];
  v15 = [v14 length];

  if (v15)
  {
    goto LABEL_4;
  }

  MinY = CGRectGetMinY(*a5);
  [v10 mt_offsetFromFirstBaselineToTop];
  v21 = MinY + v47;
  [v9 mt_leftMargin];
  v22 = v48;
  v18 = 0.0;
LABEL_5:
  v23 = [(MTEpisodeLockup *)self iconView];
  [v23 frame];
  v25 = v24;
  v27 = v26;

  v28 = [(MTEpisodeLockup *)self _isRTL];
  x = a5->origin.x;
  y = a5->origin.y;
  width = a5->size.width;
  height = a5->size.height;
  if (v28)
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
      a5->origin.x = v35 + a5->origin.x;
LABEL_12:
      a5->size.width = a5->size.width - v35;
    }
  }

  else
  {
    v51.origin.x = v33;
    v51.origin.y = v21 - v27;
    v51.size.width = v25;
    v51.size.height = v27;
    v36 = CGRectGetMaxX(v51) - a3;
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

- (CGRect)playStatusViewFrameForViewWidth:(double)a3 titleFrame:(CGRect)a4 artworkFrame:(CGRect)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v11 = +[UIScreen mainScreen];
  [v11 scale];
  v13 = v12;

  if ([(MTEpisodeLockup *)self showsPlayState])
  {
    [objc_opt_class() leadingMarginForViewWidth:a3];
    IMRoundToPixel();
    v15 = v14;
    v16 = [(MTEpisodeLockup *)self _isRTL];
    v17 = [(MTEpisodeLockup *)self showsArtwork];
    if (v17)
    {
      v18 = a5.size.height;
    }

    else
    {
      v18 = height;
    }

    if (v17)
    {
      v19 = a5.size.width;
    }

    else
    {
      v19 = width;
    }

    v20 = a5.origin.x;
    if (v17)
    {
      v21 = a5.origin.y;
    }

    else
    {
      v21 = y;
    }

    if (!v17)
    {
      v20 = x;
    }

    if (v16)
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
    v26 = [(MTEpisodeLockup *)self _currentTitleFont];
    [v26 mt_offsetFromCapHeightToAscent];
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

- (CGRect)downloadButtonFrameForActionButtonFrame:(CGRect)a3 titleOriginY:(double)a4
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

- (CGRect)actionButtonFrameForViewWidth:(double)a3 titleOriginY:(double)a4
{
  v6 = [(MTEpisodeLockup *)self actionButton];
  [v6 frame];
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
    v13 = a3 - v8 - v14;
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

- (CGRect)buttonsFrameForActionButtonFrame:(CGRect)a3 downloadButtonFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v8 = a3.size.height;
  v9 = a3.size.width;
  v10 = a3.origin.y;
  v11 = a3.origin.x;
  if (!CGRectIsEmpty(a4))
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

- (CGRect)descriptionButtonFrameForDescriptionFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  MinY = CGRectGetMinY(a3);
  v45.origin.x = x;
  v45.origin.y = y;
  v45.size.width = width;
  v45.size.height = height;
  if (CGRectGetHeight(v45) > 0.0)
  {
    v9 = [(MTEpisodeLockup *)self descriptionTextView];
    v10 = [(MTEpisodeLockup *)self descriptionTextView];
    v11 = [v10 layoutManager];
    [v9 _lastGlyphBaselineRightPointWithLayoutManager:v11];
    v13 = v12;
    v15 = v14;

    v16 = [(MTEpisodeLockup *)self descriptionTextView];
    [(MTEpisodeLockup *)self convertPoint:v16 fromView:v13, v15];
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
    v22 = [(MTEpisodeLockup *)self descriptionButton];
    [v22 frame];
    v24 = v23;
    v44 = v25;
  }

  else
  {
    v24 = CGSizeZero.width;
    v44 = CGSizeZero.height;
  }

  v26 = [(MTEpisodeLockup *)self _isRTL];
  v27 = x;
  v28 = y;
  v29 = width;
  v30 = height;
  if (v26)
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

- (CGRect)footerFrameForDescriptionButtonFrame:(CGRect)a3 descriptionFrame:(CGRect)a4
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v7 = a3.size.height;
  v8 = a3.size.width;
  v9 = a3.origin.y;
  v10 = a3.origin.x;
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
    v24 = [(MTEpisodeLockup *)self footerTextView];
    [v24 sizeThatFits:{v23, 1.79769313e308}];
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

  v4 = [(MTEpisodeLockup *)self artworkView];

  if (v4)
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
  v4 = [(MTEpisodeLockup *)self episode];
  v5 = [v7 descriptionForEpisode:v4 options:v3];
  v6 = [(MTEpisodeLockup *)self metadataLabel];
  [v6 setAttributedText:v5];
}

- (void)updateFooterText
{
  if ([(MTEpisodeLockup *)self isExpanded])
  {
    v3 = [(MTEpisodeLockup *)self episode];
    if ([v3 isPartiallyPlayed])
    {
      v4 = [(MTEpisodeLockup *)self episode];
      [v4 timeRemaining];
      v6 = v5 > 0.0;
    }

    else
    {
      v6 = 0;
    }

    v7 = +[MTEpisodeDescriptionCache sharedInstance];
    v8 = [(MTEpisodeLockup *)self episode];
    v13 = [v7 metadataFooterForEpisode:v8 includingDuration:v6];

    if ([v13 length])
    {
      v9 = [[NSMutableAttributedString alloc] initWithAttributedString:v13];
    }

    else
    {
      v9 = 0;
    }

    v10 = [(MTEpisodeLockup *)self _currentDescriptionColor];
    [v9 im_addAttribute:NSForegroundColorAttributeName value:v10];

    v11 = [v9 copy];
    v12 = [(MTEpisodeLockup *)self footerTextView];
    [v12 setAttributedText:v11];
  }
}

- (void)updateDescriptionText
{
  v3 = [(MTEpisodeLockup *)self episode];

  if (v3)
  {
    [(MTEpisodeLockup *)self updateMetadataText];
    v4 = +[MTEpisodeDescriptionCache sharedInstance];
    v5 = [(MTEpisodeLockup *)self episode];
    v10 = [v4 descriptionForEpisode:v5 options:16];

    if ([v10 length])
    {
      v6 = [[NSMutableAttributedString alloc] initWithAttributedString:v10];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(MTEpisodeLockup *)self _currentDescriptionColor];
    [v6 addAttribute:NSForegroundColorAttributeName value:v7 range:{0, objc_msgSend(v10, "length")}];

    v8 = [v6 copy];
    v9 = [(MTEpisodeLockup *)self descriptionTextView];
    [v9 setAttributedText:v8];

    [(MTEpisodeLockup *)self updateFooterText];
    [(MTEpisodeLockup *)self invalidateSizeMetrics];
    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (BOOL)updateDisabledReason
{
  v3 = [(MTEpisodeLockup *)self episode];
  v4 = [v3 reasonForNotPlayable];

  v5 = [(MTEpisodeLockup *)self disabledReason];
  if (v5 != v4)
  {
    [(MTEpisodeLockup *)self setDisabledReason:v4];
  }

  return v5 != v4;
}

- (void)setDisabledReason:(int64_t)a3
{
  if (self->_disabledReason != a3)
  {
    self->_disabledReason = a3;
    if (a3)
    {
      UIInterfaceGetContentDisabledAlpha();
    }

    else
    {
      v4 = 1.0;
    }

    [(MTEpisodeLockup *)self setAlpha:v4];
    v5 = [(MTEpisodeLockup *)self episode];

    if (v5)
    {
      [(MTEpisodeLockup *)self updateDescriptionText];
      [(MTEpisodeLockup *)self updateIcons];
    }

    if ([(MTEpisodeLockup *)self isExpanded])
    {
      v6 = [(MTEpisodeLockup *)self delegate];
      [v6 lockupDidChangeSize:self];
    }
  }
}

- (void)setShowsArtwork:(BOOL)a3
{
  if (self->_showsArtwork != a3)
  {
    v15 = v5;
    v16 = v4;
    v17 = v3;
    self->_showsArtwork = a3;
    if (a3)
    {
      v10 = [objc_opt_class() defaultArtworkForStyle:{-[MTEpisodeLockup style](self, "style")}];
      v11 = [(MTEpisodeLockup *)self artworkView];
      [v11 setArtwork:v10];

      v12 = [(MTEpisodeLockup *)self artworkView];
      [v12 sizeToFit];

      v13 = [(MTEpisodeLockup *)self artworkView];
      [(MTEpisodeLockup *)self addSubview:v13];

      [(MTEpisodeLockup *)self beginLoadingArtwork];
    }

    else
    {
      v14 = [(MTEpisodeLockup *)self artworkView];
      [v14 removeFromSuperview];

      [(MTEpisodeLockup *)self setArtworkView:0];
    }

    [(MTEpisodeLockup *)self updatePlayStatusIcons:v6];

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)beginLoadingArtwork
{
  v3 = [(MTEpisodeArtworkView *)self->_artworkView superview];
  if (v3)
  {
    v4 = v3;
    v5 = [(MTEpisodeLockup *)self episode];
    v6 = [v5 podcastUuid];
    v7 = [v6 length];

    if (v7)
    {
      [objc_opt_class() artworkSizeForStyle:{-[MTEpisodeLockup style](self, "style")}];
      v10 = v9;
      if (v9 >= 0.100000001)
      {
        v11 = v8;
        if (v8 >= 0.100000001)
        {
          v12 = [(MTEpisodeLockup *)self episode];
          v13 = [v12 podcastUuid];

          v14 = +[MTImageStore defaultStore];
          v15 = [v14 imageInMemoryForKey:v13 size:{v10, v11}];

          if (v15)
          {
            v16 = [(MTEpisodeLockup *)self artworkView];
            [v16 setArtwork:v15];
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
            [v17 asyncImageForKey:v13 size:v18 completionHandler:{v10, v11}];

            objc_destroyWeak(&v19);
            objc_destroyWeak(&location);
          }
        }
      }
    }
  }
}

- (void)setShowsMoreButton:(BOOL)a3
{
  if (self->_showsMoreButton != a3)
  {
    v4 = a3;
    self->_showsMoreButton = a3;
    v6 = [(MTEpisodeLockup *)self moreButton];
    v7 = v6;
    if (v4)
    {
      [(MTEpisodeLockup *)self addSubview:v6];
    }

    else
    {
      [v6 removeFromSuperview];
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

- (void)setShowsDescriptionButton:(BOOL)a3
{
  if (self->_showsDescriptionButton != a3)
  {
    v4 = a3;
    self->_showsDescriptionButton = a3;
    v6 = [(MTEpisodeLockup *)self descriptionButton];
    v7 = v6;
    if (v4)
    {
      [(MTEpisodeLockup *)self addSubview:v6];
    }

    else
    {
      [v6 removeFromSuperview];
    }

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)setShowsFooterTextView:(BOOL)a3
{
  if (self->_showsFooterTextView != a3)
  {
    v4 = a3;
    self->_showsFooterTextView = a3;
    v6 = [(MTEpisodeLockup *)self footerTextView];
    v7 = v6;
    if (v4)
    {
      [(MTEpisodeLockup *)self addSubview:v6];
    }

    else
    {
      [v6 removeFromSuperview];
    }

    [(MTEpisodeLockup *)self setNeedsLayout];
  }
}

- (void)updateFooterTextViewVisbility
{
  if ([(MTEpisodeLockup *)self isExpanded])
  {
    v4 = [(MTEpisodeLockup *)self footerTextView];
    v3 = [v4 attributedText];
    -[MTEpisodeLockup setShowsFooterTextView:](self, "setShowsFooterTextView:", [v3 length] != 0);
  }

  else
  {

    [(MTEpisodeLockup *)self setShowsFooterTextView:0];
  }
}

- (BOOL)updateTitleFontIfNeeded
{
  v3 = [objc_opt_class() titleFont];
  v4 = [(MTEpisodeLockup *)self _currentTitleFont];
  v5 = [v3 isEqual:v4];

  if ((v5 & 1) == 0)
  {
    v6 = [(MTEpisodeLockup *)self titleTextView];
    [v6 setFont:v3];

    v7 = [(MTEpisodeLockup *)self titleImage];

    if (v7)
    {
      [(MTEpisodeLockup *)self updateTitleIncludingIcons];
    }
  }

  return v5 ^ 1;
}

- (void)setTitleImage:(id)a3
{
  v5 = a3;
  if (self->_titleImage != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->_titleImage, a3);
    [(MTEpisodeLockup *)self updateTitleIncludingIcons];
    v5 = v6;
  }
}

- (void)updateTitleIncludingIcons
{
  v3 = [(MTEpisodeLockup *)self titleImage];

  if (v3)
  {
    v4 = objc_opt_new();
    v5 = [(MTEpisodeLockup *)self titleImage];
    [v4 setImage:v5];

    v6 = objc_alloc_init(NSMutableAttributedString);
    v7 = [(MTEpisodeLockup *)self episode];
    v8 = [v7 bestTitle];

    if (v8)
    {
      v9 = [NSAttributedString alloc];
      v10 = [(MTEpisodeLockup *)self episode];
      v11 = [v10 bestTitle];
      v12 = [v9 initWithString:v11];
      [v6 appendAttributedString:v12];
    }

    v13 = [[NSAttributedString alloc] initWithString:@" "];
    [v6 appendAttributedString:v13];

    v14 = [NSAttributedString attributedStringWithAttachment:v4];
    [v6 appendAttributedString:v14];

    v20[0] = NSFontAttributeName;
    v15 = [(MTEpisodeLockup *)self _currentTitleFont];
    v21[0] = v15;
    v20[1] = NSForegroundColorAttributeName;
    v16 = [(MTEpisodeLockup *)self _currentTitleColor];
    v21[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:2];

    [v6 addAttributes:v17 range:{0, objc_msgSend(v6, "length")}];
    v18 = [[NSAttributedString alloc] initWithAttributedString:v6];
    v19 = [(MTEpisodeLockup *)self titleTextView];
    [v19 setAttributedText:v18];
  }

  else
  {
    v4 = [(MTEpisodeLockup *)self episode];
    v6 = [v4 bestTitle];
    v17 = [(MTEpisodeLockup *)self titleTextView];
    [v17 setText:v6];
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
  v3 = [(MTEpisodeLockup *)self episode];
  -[MTEpisodeLockup setShowsExplicitIcon:](self, "setShowsExplicitIcon:", [v3 isExplicit]);

  if (![(MTEpisodeLockup *)self updateIsCurrentPlayerItemState])
  {
    [(MTEpisodeLockup *)self updatePlayStatusIcons];
  }

  [(MTEpisodeLockup *)self updateAssetStatusIcons];
  v4 = [(MTEpisodeLockup *)self iconView];
  v5 = [(MTEpisodeLockup *)self episode];
  [v4 setVideo:{objc_msgSend(v5, "isVideo")}];

  [(MTEpisodeLockup *)self updateIconView];
}

- (BOOL)updateIsCurrentPlayerItemState
{
  v3 = +[MTPlayerController defaultInstance];
  v4 = [(MTEpisodeLockup *)self episode];
  v5 = [v4 uuid];
  v6 = [v3 isPlayingEpisodeUuid:v5];

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
    v3 = [(MTEpisodeLockup *)self isCurrentPlayerItem];
  }

  else
  {
    v3 = 0;
  }

  v12 = 0;
  if ([(MTEpisodeLockup *)self showsPlayState]&& (v3 & 1) == 0)
  {
    v4 = [(MTEpisodeLockup *)self episode];
    v5 = [(MTEpisodeLockup *)self colorTheme];
    v12 = [v4 playStatusImageForTheme:v5];
  }

  v6 = [(MTEpisodeLockup *)self playStatusView];
  [v6 setImage:v12];

  v7 = [(MTEpisodeLockup *)self playStatusView];
  [v7 sizeToFit];

  if (v3)
  {
    v8 = [(MTEpisodeLockup *)self barsView];
    v9 = [v8 superview];

    if (v9 != self)
    {
      v10 = [(MTEpisodeLockup *)self barsView];
      [(MTEpisodeLockup *)self addSubview:v10];
    }

    [(MTEpisodeLockup *)self updateStateForBarsView:self->_barsView];
  }

  else
  {
    v11 = [(MTNowPlayingIndicatorView *)self->_barsView superview];

    if (v11)
    {
      [(MTNowPlayingIndicatorView *)self->_barsView setPlaybackState:0];
      [(MTNowPlayingIndicatorView *)self->_barsView removeFromSuperview];
    }
  }

  [(MTEpisodeLockup *)self setNeedsLayout];
}

- (void)updateStateForBarsView:(id)a3
{
  v7 = a3;
  if ([(MTEpisodeLockup *)self isCurrentPlayerItem])
  {
    v4 = +[MTPlayerController defaultInstance];
    v5 = [v4 isTargetPlaying];

    if (v5)
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

  [v7 setPlaybackState:v6];
}

- (void)updateAssetStatusIcons
{
  v3 = [(MTEpisodeLockup *)self episode];
  v4 = [v3 isExternalType];

  if (v4)
  {
    v5 = 1;
    goto LABEL_8;
  }

  v6 = +[MTReachability sharedInstance];
  if ([v6 isReachable])
  {
    v7 = [(MTEpisodeLockup *)self episode];
    v8 = [v7 feedDeleted];

    if (!v8)
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
  v9 = [(MTEpisodeLockup *)self iconView];
  [v9 setAssetStatus:v5];
}

- (void)updateIconView
{
  v3 = [(MTEpisodeLockup *)self iconView];
  v4 = [v3 isNotEmpty];

  v5 = [(MTEpisodeLockup *)self iconView];
  v6 = v5;
  if (!v4)
  {
    v10 = [v5 superview];

    if (!v10)
    {
      return;
    }

    v9 = [(MTEpisodeLockup *)self iconView];
    [v9 removeFromSuperview];
    goto LABEL_6;
  }

  [v5 updateSizeIfNeeded];

  v7 = [(MTEpisodeLockup *)self iconView];
  v8 = [v7 superview];

  if (v8 != self)
  {
    v9 = [(MTEpisodeLockup *)self iconView];
    [(MTEpisodeLockup *)self addSubview:v9];
LABEL_6:
  }

  [(MTEpisodeLockup *)self setNeedsLayout];
}

- (void)setShowsExplicitIcon:(BOOL)a3
{
  if (self->_showsExplicitIcon != a3)
  {
    v4 = a3;
    self->_showsExplicitIcon = a3;
    v5 = [(MTEpisodeLockup *)self iconView];
    [v5 setExplicit:v4];
  }
}

- (id)_currentTitleFont
{
  v2 = [(MTEpisodeLockup *)self titleTextView];
  v3 = [v2 font];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_opt_class() titleFont];
  }

  v6 = v5;

  return v6;
}

- (id)_currentDescriptionFont
{
  v2 = [(MTEpisodeLockup *)self descriptionTextView];
  v3 = [v2 font];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [objc_opt_class() descriptionFont];
  }

  v6 = v5;

  return v6;
}

- (id)_currentTitleColor
{
  v3 = [(MTEpisodeLockup *)self titleTextView];
  v4 = [v3 textColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(MTEpisodeLockup *)self colorTheme];
    v6 = [UIColor primaryTextColorForTheme:v7];
  }

  return v6;
}

- (id)_currentDescriptionColor
{
  v3 = [(MTEpisodeLockup *)self descriptionTextView];
  v4 = [v3 textColor];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = [(MTEpisodeLockup *)self colorTheme];
    v6 = [UIColor secondaryTextColorForTheme:v7];
  }

  return v6;
}

- (void)_setNumberOfLinesForDescription:(unint64_t)a3
{
  v5 = [(MTEpisodeLockup *)self descriptionTextView];
  v6 = [v5 textContainer];
  v7 = [v6 maximumNumberOfLines];

  if (v7 != a3)
  {
    v8 = [(MTEpisodeLockup *)self descriptionTextView];
    v9 = [v8 textContainer];
    [v9 setMaximumNumberOfLines:a3];

    v10 = [(MTEpisodeLockup *)self descriptionTextView];
    v11 = [v10 layoutManager];
    v12 = [(MTEpisodeLockup *)self descriptionTextView];
    v13 = [v12 textContainer];
    [v11 textContainerChangedGeometry:v13];

    self->_descriptionSize = CGSizeZero;
  }
}

- (MTEpisodeLockupDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end