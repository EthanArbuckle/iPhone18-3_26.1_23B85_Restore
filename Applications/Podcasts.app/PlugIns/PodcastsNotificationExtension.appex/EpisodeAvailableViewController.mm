@interface EpisodeAvailableViewController
- (EpisodeAvailableViewController)initWithNotification:(id)notification;
- (id)actionsWithDefaultActions:(id)actions;
- (id)episodePropertySource;
- (id)headerTitle;
- (void)_fetchImageWithSize:(CGSize)size imageKeyWithFallbackKeys:(id)keys completion:(id)completion;
- (void)_removeNotificationFromHistory;
- (void)applyImage:(id)image fromSource:(id)source;
- (void)loadConstraints;
- (void)loadContentViews;
- (void)openAppShowingEpisodeDetails;
- (void)openAppShowingPodcastDetails;
- (void)reloadContentPropertyValues;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDynamicConstraints;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EpisodeAvailableViewController

- (EpisodeAvailableViewController)initWithNotification:(id)notification
{
  v9.receiver = self;
  v9.super_class = EpisodeAvailableViewController;
  v3 = [(ContentAvailableViewController *)&v9 initWithNotification:notification];
  v4 = v3;
  if (v3)
  {
    installedConstraints = v3->_installedConstraints;
    v3->_installedConstraints = &__NSArray0__struct;

    v6 = +[EpisodeAvailableStyle defaultStyle];
    style = v4->_style;
    v4->_style = v6;
  }

  return v4;
}

- (id)episodePropertySource
{
  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  firstEpisodePropertySource = [episodesPropertySourceController firstEpisodePropertySource];

  return firstEpisodePropertySource;
}

- (void)openAppShowingPodcastDetails
{
  [(EpisodeAvailableViewController *)self _removeNotificationFromHistory];
  episodePropertySource = [(EpisodeAvailableViewController *)self episodePropertySource];
  extensionContext = [(EpisodeAvailableViewController *)self extensionContext];
  openPodcastDetailInAppURL = [episodePropertySource openPodcastDetailInAppURL];
  [extensionContext openURL:openPodcastDetailInAppURL completionHandler:0];
}

- (void)openAppShowingEpisodeDetails
{
  [(EpisodeAvailableViewController *)self _removeNotificationFromHistory];
  episodePropertySource = [(EpisodeAvailableViewController *)self episodePropertySource];
  extensionContext = [(EpisodeAvailableViewController *)self extensionContext];
  openEpisodeDetailInAppURL = [episodePropertySource openEpisodeDetailInAppURL];
  [extensionContext openURL:openEpisodeDetailInAppURL completionHandler:0];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = EpisodeAvailableViewController;
  [(ContentAvailableViewController *)&v5 viewDidLoad];
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapOnTopLevelViewGestureRecognized:"];
  view = [(EpisodeAvailableViewController *)self view];
  [view addGestureRecognizer:v3];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = EpisodeAvailableViewController;
  [(EpisodeAvailableViewController *)&v4 traitCollectionDidChange:change];
  [(EpisodeAvailableViewController *)self updateDynamicConstraints];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = EpisodeAvailableViewController;
  [(EpisodeAvailableViewController *)&v3 updateViewConstraints];
  [(EpisodeAvailableViewController *)self updateDynamicConstraints];
}

- (void)viewDidLayoutSubviews
{
  v4.receiver = self;
  v4.super_class = EpisodeAvailableViewController;
  [(EpisodeAvailableViewController *)&v4 viewDidLayoutSubviews];
  lineCountLayoutGroup = [(EpisodeAvailableViewController *)self lineCountLayoutGroup];
  [lineCountLayoutGroup layout];
}

- (id)actionsWithDefaultActions:(id)actions
{
  episodePropertySource = [(EpisodeAvailableViewController *)self episodePropertySource];
  requiresForegroundLaunch = [episodePropertySource requiresForegroundLaunch];

  if (requiresForegroundLaunch)
  {
    v5 = 4;
  }

  else
  {
    v5 = 0;
  }

  v6 = [UNNotificationAction mt_playEpisodeActionWithOptions:v5];
  v7 = +[UNNotificationAction mt_showOnePodcastOneEpisodeDetail];
  v10[0] = v6;
  v10[1] = v7;
  v8 = [NSArray arrayWithObjects:v10 count:2];

  return v8;
}

- (id)headerTitle
{
  v2 = +[NSBundle mainBundle];
  v3 = [v2 localizedStringForKey:@"NOTIFICATION_EPISODE_AVAILABLE_HEADER" value:&stru_10002D1C8 table:0];

  return v3;
}

- (void)loadContentViews
{
  v30.receiver = self;
  v30.super_class = EpisodeAvailableViewController;
  [(ContentAvailableViewController *)&v30 loadContentViews];
  view = [(EpisodeAvailableViewController *)self view];
  v4 = +[UIColor backgroundColor];
  [view setBackgroundColor:v4];

  newArtworkView = [(EpisodeAvailableStyle *)self->_style newArtworkView];
  artworkView = self->_artworkView;
  self->_artworkView = newArtworkView;

  [(UIImageView *)self->_artworkView setTranslatesAutoresizingMaskIntoConstraints:0];
  [view addSubview:self->_artworkView];
  v7 = [(ContentAvailableViewController *)self newLabelWithTextStyle:UIFontTextStyleBody traits:0 numberOfLines:1];
  fromLabel = self->_fromLabel;
  self->_fromLabel = v7;

  v9 = +[NSBundle mainBundle];
  v10 = [v9 localizedStringForKey:@"NOTIFICATION_SHOW_TITLE_HEADER" value:&stru_10002D1C8 table:0];
  [(UILabel *)self->_fromLabel setText:v10];

  LODWORD(v11) = 1148846080;
  [(UILabel *)self->_fromLabel setContentHuggingPriority:0 forAxis:v11];
  LODWORD(v12) = 1148846080;
  [(UILabel *)self->_fromLabel setContentCompressionResistancePriority:0 forAxis:v12];
  v13 = [(ContentAvailableViewController *)self buttonWithTitleTextStyle:UIFontTextStyleBody];
  podcastTitleButton = self->_podcastTitleButton;
  self->_podcastTitleButton = v13;

  [(UIButton *)self->_podcastTitleButton addTarget:self action:"podcastTitleButtonTapped:" forControlEvents:64];
  v15 = [(ContentAvailableViewController *)self newLabelWithTextStyle:UIFontTextStyleSubheadline traits:0 numberOfLines:1];
  episodeDateLabel = self->_episodeDateLabel;
  self->_episodeDateLabel = v15;

  v17 = +[UIColor cellSecondaryTextColor];
  [(UILabel *)self->_episodeDateLabel setTextColor:v17];

  v18 = [(ContentAvailableViewController *)self newLabelWithTextStyle:UIFontTextStyleBody traits:0 numberOfLines:2];
  episodeTitleLabel = self->_episodeTitleLabel;
  self->_episodeTitleLabel = v18;

  v20 = [(ContentAvailableViewController *)self newLabelWithTextStyle:UIFontTextStyleSubheadline traits:0 numberOfLines:7];
  episodeSummaryLabel = self->_episodeSummaryLabel;
  self->_episodeSummaryLabel = v20;

  v22 = [(ContentAvailableViewController *)self newLabelWithTextStyle:UIFontTextStyleSubheadline traits:0 numberOfLines:1];
  episodeMetadataLabel = self->_episodeMetadataLabel;
  self->_episodeMetadataLabel = v22;

  v24 = +[UIColor cellSecondaryTextColor];
  [(UILabel *)self->_episodeMetadataLabel setTextColor:v24];

  v25 = objc_opt_new();
  dividerLine = self->_dividerLine;
  self->_dividerLine = v25;

  [(UIView *)self->_dividerLine setTranslatesAutoresizingMaskIntoConstraints:0];
  v27 = +[UIColor dividerColor];
  [(UIView *)self->_dividerLine setBackgroundColor:v27];

  [view addSubview:self->_dividerLine];
  v28 = [[MTLineCountLayoutGroup alloc] initWithTotalLineCount:8];
  lineCountLayoutGroup = self->_lineCountLayoutGroup;
  self->_lineCountLayoutGroup = v28;

  [(MTLineCountLayoutGroup *)self->_lineCountLayoutGroup addLabel:self->_episodeTitleLabel maxLineCount:3 sharingPriority:1000];
  [(MTLineCountLayoutGroup *)self->_lineCountLayoutGroup addLabel:self->_episodeSummaryLabel maxLineCount:7 sharingPriority:999];
  [(EpisodeAvailableViewController *)self reloadContentPropertyValues];
}

- (void)reloadContentPropertyValues
{
  episodePropertySource = [(EpisodeAvailableViewController *)self episodePropertySource];
  podcastUuid = [episodePropertySource podcastUuid];
  podcastTitleButton = [(EpisodeAvailableViewController *)self podcastTitleButton];
  podcastTitle = [episodePropertySource podcastTitle];
  [podcastTitleButton setTitle:podcastTitle forState:0];

  episodeDateLabel = [(EpisodeAvailableViewController *)self episodeDateLabel];
  localizedDateString = [episodePropertySource localizedDateString];
  [episodeDateLabel setText:localizedDateString];

  episodeTitleLabel = [(EpisodeAvailableViewController *)self episodeTitleLabel];
  title = [episodePropertySource title];
  [episodeTitleLabel setText:title];

  episodeSummaryLabel = [(EpisodeAvailableViewController *)self episodeSummaryLabel];
  summary = [episodePropertySource summary];
  [episodeSummaryLabel setText:summary];

  episodeMetadataLabel = [(EpisodeAvailableViewController *)self episodeMetadataLabel];
  localizedDurationString = [episodePropertySource localizedDurationString];
  [episodeMetadataLabel setText:localizedDurationString];

  if (![(EpisodeAvailableViewController *)self hasLoadedCurrentImage])
  {
    v15 = [episodePropertySource preloadedImageWithSize:{0x50uLL, 0x50uLL}];
    if (v15)
    {
      [(EpisodeAvailableViewController *)self applyImage:v15 fromSource:episodePropertySource];
    }

    else
    {
      v16 = +[NSMutableArray array];
      if ([podcastUuid length])
      {
        [v16 addObject:podcastUuid];
      }

      artworkView = [(EpisodeAvailableViewController *)self artworkView];
      image = [artworkView image];

      if (!image)
      {
        [v16 addObject:kMTLibraryDefaultImageKey];
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000091D0;
      v19[3] = &unk_10002CA50;
      v19[4] = self;
      v20 = episodePropertySource;
      [(EpisodeAvailableViewController *)self _fetchImageWithSize:v16 imageKeyWithFallbackKeys:v19 completion:0x50uLL, 0x50uLL];
    }
  }
}

- (void)applyImage:(id)image fromSource:(id)source
{
  imageCopy = image;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000092B0;
  block[3] = &unk_10002CA28;
  block[4] = self;
  sourceCopy = source;
  v11 = imageCopy;
  v7 = imageCopy;
  v8 = sourceCopy;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadConstraints
{
  v145.receiver = self;
  v145.super_class = EpisodeAvailableViewController;
  [(ContentAvailableViewController *)&v145 loadConstraints];
  style = [(EpisodeAvailableViewController *)self style];
  view = [(EpisodeAvailableViewController *)self view];
  headerTitleLabel = [(ContentAvailableViewController *)self headerTitleLabel];
  artworkView = [(EpisodeAvailableViewController *)self artworkView];
  fromLabel = [(EpisodeAvailableViewController *)self fromLabel];
  podcastTitleButton = [(EpisodeAvailableViewController *)self podcastTitleButton];
  episodeDateLabel = [(EpisodeAvailableViewController *)self episodeDateLabel];
  episodeTitleLabel = [(EpisodeAvailableViewController *)self episodeTitleLabel];
  dividerLine = [(EpisodeAvailableViewController *)self dividerLine];
  episodeSummaryLabel = [(EpisodeAvailableViewController *)self episodeSummaryLabel];
  episodeMetadataLabel = [(EpisodeAvailableViewController *)self episodeMetadataLabel];
  v134 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  v147 = NSFontAttributeName;
  v148 = v134;
  v7 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
  [@" " boundingRectWithSize:0 options:v7 attributes:0 context:{1000.0, 1000.0}];
  v9 = v8;

  LODWORD(v10) = 1148846080;
  [view setContentHuggingPriority:1 forAxis:v10];
  widthAnchor = [artworkView widthAnchor];
  v132 = [widthAnchor constraintEqualToConstant:0x50uLL];
  v146[0] = v132;
  heightAnchor = [artworkView heightAnchor];
  v130 = [heightAnchor constraintEqualToConstant:0x50uLL];
  v146[1] = v130;
  topAnchor = [artworkView topAnchor];
  topAnchor2 = [view topAnchor];
  v13 = [topAnchor constraintEqualToAnchor:topAnchor2];
  container_To_artTop = [style container_To_artTop];
  v129 = [v13 mt_copyWithDynamicTypeConstant:container_To_artTop];

  v146[2] = v129;
  trailingAnchor = [artworkView trailingAnchor];
  v144 = view;
  trailingAnchor2 = [view trailingAnchor];
  [style defaultMarginH];
  v128 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v17];

  v146[3] = v128;
  firstBaselineAnchor = [headerTitleLabel firstBaselineAnchor];
  topAnchor3 = [artworkView topAnchor];
  v20 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor3];
  artTop_To_mainHeaderBL = [style artTop_To_mainHeaderBL];
  v127 = [v20 mt_copyWithDynamicTypeConstant:artTop_To_mainHeaderBL];

  v146[4] = v127;
  leadingAnchor = [headerTitleLabel leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  [style defaultMarginH];
  v126 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

  v146[5] = v126;
  trailingAnchor3 = [headerTitleLabel trailingAnchor];
  leadingAnchor3 = [artworkView leadingAnchor];
  [style defaultMarginH];
  v125 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor3 constant:-v26];

  v146[6] = v125;
  firstBaselineAnchor2 = [fromLabel firstBaselineAnchor];
  lastBaselineAnchor = [headerTitleLabel lastBaselineAnchor];
  v29 = [firstBaselineAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  mainHeaderBL_To_showTitleBL = [style mainHeaderBL_To_showTitleBL];
  v124 = [v29 mt_copyWithDynamicTypeConstant:mainHeaderBL_To_showTitleBL];

  v146[7] = v124;
  leadingAnchor4 = [fromLabel leadingAnchor];
  leadingAnchor5 = [headerTitleLabel leadingAnchor];
  v123 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5 constant:0.0];

  v146[8] = v123;
  firstBaselineAnchor3 = [podcastTitleButton firstBaselineAnchor];
  firstBaselineAnchor4 = [fromLabel firstBaselineAnchor];
  v122 = [firstBaselineAnchor3 constraintEqualToAnchor:firstBaselineAnchor4 constant:0.0];

  v146[9] = v122;
  leadingAnchor6 = [podcastTitleButton leadingAnchor];
  trailingAnchor4 = [fromLabel trailingAnchor];
  v121 = [leadingAnchor6 constraintEqualToAnchor:trailingAnchor4 constant:v9];

  v146[10] = v121;
  trailingAnchor5 = [podcastTitleButton trailingAnchor];
  leadingAnchor7 = [artworkView leadingAnchor];
  [style spacingBetweenTextAndArtwork];
  v118 = [trailingAnchor5 constraintLessThanOrEqualToAnchor:leadingAnchor7 constant:-v37];
  v146[11] = v118;
  firstBaselineAnchor5 = [episodeDateLabel firstBaselineAnchor];
  v135 = artworkView;
  bottomAnchor = [artworkView bottomAnchor];
  v40 = [firstBaselineAnchor5 constraintEqualToAnchor:bottomAnchor constant:0.0];
  LODWORD(v41) = 1144750080;
  v117 = [v40 mt_copyWithPriority:v41];

  v146[12] = v117;
  firstBaselineAnchor6 = [episodeDateLabel firstBaselineAnchor];
  bottomAnchor2 = [artworkView bottomAnchor];
  v116 = [firstBaselineAnchor6 constraintGreaterThanOrEqualToAnchor:bottomAnchor2 constant:0.0];

  v146[13] = v116;
  firstBaselineAnchor7 = [episodeDateLabel firstBaselineAnchor];
  lastBaselineAnchor2 = [fromLabel lastBaselineAnchor];
  v46 = [firstBaselineAnchor7 constraintGreaterThanOrEqualToAnchor:lastBaselineAnchor2];
  showTitleBL_To_dateBaseline_Min = [style showTitleBL_To_dateBaseline_Min];
  v115 = [v46 mt_copyWithDynamicTypeConstant:showTitleBL_To_dateBaseline_Min];

  v146[14] = v115;
  leadingAnchor8 = [episodeDateLabel leadingAnchor];
  leadingAnchor9 = [headerTitleLabel leadingAnchor];
  v114 = [leadingAnchor8 constraintEqualToAnchor:leadingAnchor9 constant:0.0];

  v146[15] = v114;
  trailingAnchor6 = [episodeDateLabel trailingAnchor];
  v136 = headerTitleLabel;
  trailingAnchor7 = [headerTitleLabel trailingAnchor];
  v113 = [trailingAnchor6 constraintEqualToAnchor:trailingAnchor7 constant:0.0];

  v146[16] = v113;
  firstBaselineAnchor8 = [episodeTitleLabel firstBaselineAnchor];
  lastBaselineAnchor3 = [episodeDateLabel lastBaselineAnchor];
  v54 = [firstBaselineAnchor8 constraintEqualToAnchor:lastBaselineAnchor3];
  dateBL_To_titleBL = [style dateBL_To_titleBL];
  v112 = [v54 mt_copyWithDynamicTypeConstant:dateBL_To_titleBL];

  v146[17] = v112;
  leadingAnchor10 = [episodeTitleLabel leadingAnchor];
  leadingAnchor11 = [headerTitleLabel leadingAnchor];
  v111 = [leadingAnchor10 constraintEqualToAnchor:leadingAnchor11 constant:0.0];

  v146[18] = v111;
  trailingAnchor8 = [episodeTitleLabel trailingAnchor];
  trailingAnchor9 = [artworkView trailingAnchor];
  v110 = [trailingAnchor8 constraintEqualToAnchor:trailingAnchor9 constant:0.0];

  v146[19] = v110;
  topAnchor4 = [dividerLine topAnchor];
  lastBaselineAnchor4 = [episodeTitleLabel lastBaselineAnchor];
  v62 = [topAnchor4 constraintEqualToAnchor:lastBaselineAnchor4];
  episodeTitleBL_To_divider = [style episodeTitleBL_To_divider];
  v109 = [v62 mt_copyWithDynamicTypeConstant:episodeTitleBL_To_divider];

  v146[20] = v109;
  leadingAnchor12 = [dividerLine leadingAnchor];
  leadingAnchor13 = [view leadingAnchor];
  v108 = [leadingAnchor12 constraintEqualToAnchor:leadingAnchor13 constant:0.0];

  v146[21] = v108;
  trailingAnchor10 = [dividerLine trailingAnchor];
  trailingAnchor11 = [view trailingAnchor];
  v107 = [trailingAnchor10 constraintEqualToAnchor:trailingAnchor11 constant:0.0];

  v146[22] = v107;
  heightAnchor2 = [dividerLine heightAnchor];
  v68 = +[UIScreen mainScreen];
  [v68 scale];
  v70 = v69;

  v105 = [heightAnchor2 constraintEqualToConstant:1.0 / v70];
  v146[23] = v105;
  firstBaselineAnchor9 = [episodeSummaryLabel firstBaselineAnchor];
  bottomAnchor3 = [dividerLine bottomAnchor];
  v73 = [firstBaselineAnchor9 constraintEqualToAnchor:bottomAnchor3];
  divider_To_summaryBL = [style divider_To_summaryBL];
  v103 = [v73 mt_copyWithDynamicTypeConstant:divider_To_summaryBL];

  v146[24] = v103;
  leadingAnchor14 = [episodeSummaryLabel leadingAnchor];
  leadingAnchor15 = [v136 leadingAnchor];
  v102 = [leadingAnchor14 constraintEqualToAnchor:leadingAnchor15 constant:0.0];

  v146[25] = v102;
  trailingAnchor12 = [episodeSummaryLabel trailingAnchor];
  trailingAnchor13 = [artworkView trailingAnchor];
  v101 = [trailingAnchor12 constraintEqualToAnchor:trailingAnchor13 constant:0.0];

  v146[26] = v101;
  firstBaselineAnchor10 = [episodeMetadataLabel firstBaselineAnchor];
  lastBaselineAnchor5 = [episodeSummaryLabel lastBaselineAnchor];
  v81 = [firstBaselineAnchor10 constraintEqualToAnchor:lastBaselineAnchor5];
  v104 = style;
  summaryBL_To_metadataBL = [style summaryBL_To_metadataBL];
  v83 = [v81 mt_copyWithDynamicTypeConstant:summaryBL_To_metadataBL];

  v146[27] = v83;
  leadingAnchor16 = [episodeMetadataLabel leadingAnchor];
  leadingAnchor17 = [v136 leadingAnchor];
  v86 = [leadingAnchor16 constraintEqualToAnchor:leadingAnchor17 constant:0.0];

  v146[28] = v86;
  trailingAnchor14 = [episodeMetadataLabel trailingAnchor];
  trailingAnchor15 = [artworkView trailingAnchor];
  v89 = [trailingAnchor14 constraintEqualToAnchor:trailingAnchor15 constant:0.0];

  v146[29] = v89;
  bottomAnchor4 = [v144 bottomAnchor];
  bottomAnchor5 = [episodeMetadataLabel bottomAnchor];
  v92 = [bottomAnchor4 constraintEqualToAnchor:bottomAnchor5];
  LODWORD(v93) = 1112014848;
  v94 = [v92 mt_copyWithPriority:v93];
  metadataBL_To_bottomBL = [v104 metadataBL_To_bottomBL];
  v96 = [v94 mt_copyWithDynamicTypeConstant:metadataBL_To_bottomBL];

  v146[30] = v96;
  v97 = [NSArray arrayWithObjects:v146 count:31];
  installedConstraints = self->_installedConstraints;
  self->_installedConstraints = v97;

  [(EpisodeAvailableViewController *)self updateDynamicConstraints];
  installedConstraints = [(EpisodeAvailableViewController *)self installedConstraints];
  [NSLayoutConstraint activateConstraints:installedConstraints];

  view2 = [(EpisodeAvailableViewController *)self view];
  [view2 invalidateIntrinsicContentSize];
}

- (void)updateDynamicConstraints
{
  installedConstraints = [(EpisodeAvailableViewController *)self installedConstraints];
  [MTDynamicTypeConstant updateDynamicConstantInConstraints:installedConstraints];
}

- (void)_fetchImageWithSize:(CGSize)size imageKeyWithFallbackKeys:(id)keys completion:(id)completion
{
  height = size.height;
  width = size.width;
  keysCopy = keys;
  completionCopy = completion;
  if (completionCopy)
  {
    if ([keysCopy count])
    {
      firstObject = [keysCopy firstObject];
      if ([firstObject length])
      {
        objc_initWeak(&location, self);
        v12 = +[PUIObjCArtworkProvider shared];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000A394;
        v14[3] = &unk_10002CAA0;
        objc_copyWeak(v17, &location);
        v16 = completionCopy;
        v13 = v12;
        v15 = v13;
        v17[1] = *&width;
        v17[2] = *&height;
        [v13 artworkPathForShow:firstObject size:v14 completionHandler:{width, height}];

        objc_destroyWeak(v17);
        objc_destroyWeak(&location);
      }

      else
      {
        (*(completionCopy + 2))(completionCopy, 0);
      }
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

- (void)_removeNotificationFromHistory
{
  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  notification = [episodesPropertySourceController notification];
  [notification mt_removeFromUserNotificationCenter];
}

@end