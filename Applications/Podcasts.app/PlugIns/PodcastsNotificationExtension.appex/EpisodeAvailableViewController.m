@interface EpisodeAvailableViewController
- (EpisodeAvailableViewController)initWithNotification:(id)a3;
- (id)actionsWithDefaultActions:(id)a3;
- (id)episodePropertySource;
- (id)headerTitle;
- (void)_fetchImageWithSize:(CGSize)a3 imageKeyWithFallbackKeys:(id)a4 completion:(id)a5;
- (void)_removeNotificationFromHistory;
- (void)applyImage:(id)a3 fromSource:(id)a4;
- (void)loadConstraints;
- (void)loadContentViews;
- (void)openAppShowingEpisodeDetails;
- (void)openAppShowingPodcastDetails;
- (void)reloadContentPropertyValues;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDynamicConstraints;
- (void)updateViewConstraints;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation EpisodeAvailableViewController

- (EpisodeAvailableViewController)initWithNotification:(id)a3
{
  v9.receiver = self;
  v9.super_class = EpisodeAvailableViewController;
  v3 = [(ContentAvailableViewController *)&v9 initWithNotification:a3];
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
  v2 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  v3 = [v2 firstEpisodePropertySource];

  return v3;
}

- (void)openAppShowingPodcastDetails
{
  [(EpisodeAvailableViewController *)self _removeNotificationFromHistory];
  v5 = [(EpisodeAvailableViewController *)self episodePropertySource];
  v3 = [(EpisodeAvailableViewController *)self extensionContext];
  v4 = [v5 openPodcastDetailInAppURL];
  [v3 openURL:v4 completionHandler:0];
}

- (void)openAppShowingEpisodeDetails
{
  [(EpisodeAvailableViewController *)self _removeNotificationFromHistory];
  v5 = [(EpisodeAvailableViewController *)self episodePropertySource];
  v3 = [(EpisodeAvailableViewController *)self extensionContext];
  v4 = [v5 openEpisodeDetailInAppURL];
  [v3 openURL:v4 completionHandler:0];
}

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = EpisodeAvailableViewController;
  [(ContentAvailableViewController *)&v5 viewDidLoad];
  v3 = [[UITapGestureRecognizer alloc] initWithTarget:self action:"tapOnTopLevelViewGestureRecognized:"];
  v4 = [(EpisodeAvailableViewController *)self view];
  [v4 addGestureRecognizer:v3];
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = EpisodeAvailableViewController;
  [(EpisodeAvailableViewController *)&v4 traitCollectionDidChange:a3];
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
  v3 = [(EpisodeAvailableViewController *)self lineCountLayoutGroup];
  [v3 layout];
}

- (id)actionsWithDefaultActions:(id)a3
{
  v3 = [(EpisodeAvailableViewController *)self episodePropertySource];
  v4 = [v3 requiresForegroundLaunch];

  if (v4)
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
  v3 = [(EpisodeAvailableViewController *)self view];
  v4 = +[UIColor backgroundColor];
  [v3 setBackgroundColor:v4];

  v5 = [(EpisodeAvailableStyle *)self->_style newArtworkView];
  artworkView = self->_artworkView;
  self->_artworkView = v5;

  [(UIImageView *)self->_artworkView setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 addSubview:self->_artworkView];
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

  [v3 addSubview:self->_dividerLine];
  v28 = [[MTLineCountLayoutGroup alloc] initWithTotalLineCount:8];
  lineCountLayoutGroup = self->_lineCountLayoutGroup;
  self->_lineCountLayoutGroup = v28;

  [(MTLineCountLayoutGroup *)self->_lineCountLayoutGroup addLabel:self->_episodeTitleLabel maxLineCount:3 sharingPriority:1000];
  [(MTLineCountLayoutGroup *)self->_lineCountLayoutGroup addLabel:self->_episodeSummaryLabel maxLineCount:7 sharingPriority:999];
  [(EpisodeAvailableViewController *)self reloadContentPropertyValues];
}

- (void)reloadContentPropertyValues
{
  v3 = [(EpisodeAvailableViewController *)self episodePropertySource];
  v4 = [v3 podcastUuid];
  v5 = [(EpisodeAvailableViewController *)self podcastTitleButton];
  v6 = [v3 podcastTitle];
  [v5 setTitle:v6 forState:0];

  v7 = [(EpisodeAvailableViewController *)self episodeDateLabel];
  v8 = [v3 localizedDateString];
  [v7 setText:v8];

  v9 = [(EpisodeAvailableViewController *)self episodeTitleLabel];
  v10 = [v3 title];
  [v9 setText:v10];

  v11 = [(EpisodeAvailableViewController *)self episodeSummaryLabel];
  v12 = [v3 summary];
  [v11 setText:v12];

  v13 = [(EpisodeAvailableViewController *)self episodeMetadataLabel];
  v14 = [v3 localizedDurationString];
  [v13 setText:v14];

  if (![(EpisodeAvailableViewController *)self hasLoadedCurrentImage])
  {
    v15 = [v3 preloadedImageWithSize:{0x50uLL, 0x50uLL}];
    if (v15)
    {
      [(EpisodeAvailableViewController *)self applyImage:v15 fromSource:v3];
    }

    else
    {
      v16 = +[NSMutableArray array];
      if ([v4 length])
      {
        [v16 addObject:v4];
      }

      v17 = [(EpisodeAvailableViewController *)self artworkView];
      v18 = [v17 image];

      if (!v18)
      {
        [v16 addObject:kMTLibraryDefaultImageKey];
      }

      v19[0] = _NSConcreteStackBlock;
      v19[1] = 3221225472;
      v19[2] = sub_1000091D0;
      v19[3] = &unk_10002CA50;
      v19[4] = self;
      v20 = v3;
      [(EpisodeAvailableViewController *)self _fetchImageWithSize:v16 imageKeyWithFallbackKeys:v19 completion:0x50uLL, 0x50uLL];
    }
  }
}

- (void)applyImage:(id)a3 fromSource:(id)a4
{
  v6 = a3;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000092B0;
  block[3] = &unk_10002CA28;
  block[4] = self;
  v10 = a4;
  v11 = v6;
  v7 = v6;
  v8 = v10;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)loadConstraints
{
  v145.receiver = self;
  v145.super_class = EpisodeAvailableViewController;
  [(ContentAvailableViewController *)&v145 loadConstraints];
  v3 = [(EpisodeAvailableViewController *)self style];
  v4 = [(EpisodeAvailableViewController *)self view];
  v5 = [(ContentAvailableViewController *)self headerTitleLabel];
  v6 = [(EpisodeAvailableViewController *)self artworkView];
  v140 = [(EpisodeAvailableViewController *)self fromLabel];
  v142 = [(EpisodeAvailableViewController *)self podcastTitleButton];
  v139 = [(EpisodeAvailableViewController *)self episodeDateLabel];
  v137 = [(EpisodeAvailableViewController *)self episodeTitleLabel];
  v138 = [(EpisodeAvailableViewController *)self dividerLine];
  v141 = [(EpisodeAvailableViewController *)self episodeSummaryLabel];
  v143 = [(EpisodeAvailableViewController *)self episodeMetadataLabel];
  v134 = [UIFont mt_preferredFontForTextStyle:UIFontTextStyleBody];
  v147 = NSFontAttributeName;
  v148 = v134;
  v7 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
  [@" " boundingRectWithSize:0 options:v7 attributes:0 context:{1000.0, 1000.0}];
  v9 = v8;

  LODWORD(v10) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v10];
  v133 = [v6 widthAnchor];
  v132 = [v133 constraintEqualToConstant:0x50uLL];
  v146[0] = v132;
  v131 = [v6 heightAnchor];
  v130 = [v131 constraintEqualToConstant:0x50uLL];
  v146[1] = v130;
  v11 = [v6 topAnchor];
  v12 = [v4 topAnchor];
  v13 = [v11 constraintEqualToAnchor:v12];
  v14 = [v3 container_To_artTop];
  v129 = [v13 mt_copyWithDynamicTypeConstant:v14];

  v146[2] = v129;
  v15 = [v6 trailingAnchor];
  v144 = v4;
  v16 = [v4 trailingAnchor];
  [v3 defaultMarginH];
  v128 = [v15 constraintEqualToAnchor:v16 constant:-v17];

  v146[3] = v128;
  v18 = [v5 firstBaselineAnchor];
  v19 = [v6 topAnchor];
  v20 = [v18 constraintEqualToAnchor:v19];
  v21 = [v3 artTop_To_mainHeaderBL];
  v127 = [v20 mt_copyWithDynamicTypeConstant:v21];

  v146[4] = v127;
  v22 = [v5 leadingAnchor];
  v23 = [v4 leadingAnchor];
  [v3 defaultMarginH];
  v126 = [v22 constraintEqualToAnchor:v23 constant:?];

  v146[5] = v126;
  v24 = [v5 trailingAnchor];
  v25 = [v6 leadingAnchor];
  [v3 defaultMarginH];
  v125 = [v24 constraintEqualToAnchor:v25 constant:-v26];

  v146[6] = v125;
  v27 = [v140 firstBaselineAnchor];
  v28 = [v5 lastBaselineAnchor];
  v29 = [v27 constraintEqualToAnchor:v28];
  v30 = [v3 mainHeaderBL_To_showTitleBL];
  v124 = [v29 mt_copyWithDynamicTypeConstant:v30];

  v146[7] = v124;
  v31 = [v140 leadingAnchor];
  v32 = [v5 leadingAnchor];
  v123 = [v31 constraintEqualToAnchor:v32 constant:0.0];

  v146[8] = v123;
  v33 = [v142 firstBaselineAnchor];
  v34 = [v140 firstBaselineAnchor];
  v122 = [v33 constraintEqualToAnchor:v34 constant:0.0];

  v146[9] = v122;
  v35 = [v142 leadingAnchor];
  v36 = [v140 trailingAnchor];
  v121 = [v35 constraintEqualToAnchor:v36 constant:v9];

  v146[10] = v121;
  v120 = [v142 trailingAnchor];
  v119 = [v6 leadingAnchor];
  [v3 spacingBetweenTextAndArtwork];
  v118 = [v120 constraintLessThanOrEqualToAnchor:v119 constant:-v37];
  v146[11] = v118;
  v38 = [v139 firstBaselineAnchor];
  v135 = v6;
  v39 = [v6 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:0.0];
  LODWORD(v41) = 1144750080;
  v117 = [v40 mt_copyWithPriority:v41];

  v146[12] = v117;
  v42 = [v139 firstBaselineAnchor];
  v43 = [v6 bottomAnchor];
  v116 = [v42 constraintGreaterThanOrEqualToAnchor:v43 constant:0.0];

  v146[13] = v116;
  v44 = [v139 firstBaselineAnchor];
  v45 = [v140 lastBaselineAnchor];
  v46 = [v44 constraintGreaterThanOrEqualToAnchor:v45];
  v47 = [v3 showTitleBL_To_dateBaseline_Min];
  v115 = [v46 mt_copyWithDynamicTypeConstant:v47];

  v146[14] = v115;
  v48 = [v139 leadingAnchor];
  v49 = [v5 leadingAnchor];
  v114 = [v48 constraintEqualToAnchor:v49 constant:0.0];

  v146[15] = v114;
  v50 = [v139 trailingAnchor];
  v136 = v5;
  v51 = [v5 trailingAnchor];
  v113 = [v50 constraintEqualToAnchor:v51 constant:0.0];

  v146[16] = v113;
  v52 = [v137 firstBaselineAnchor];
  v53 = [v139 lastBaselineAnchor];
  v54 = [v52 constraintEqualToAnchor:v53];
  v55 = [v3 dateBL_To_titleBL];
  v112 = [v54 mt_copyWithDynamicTypeConstant:v55];

  v146[17] = v112;
  v56 = [v137 leadingAnchor];
  v57 = [v5 leadingAnchor];
  v111 = [v56 constraintEqualToAnchor:v57 constant:0.0];

  v146[18] = v111;
  v58 = [v137 trailingAnchor];
  v59 = [v6 trailingAnchor];
  v110 = [v58 constraintEqualToAnchor:v59 constant:0.0];

  v146[19] = v110;
  v60 = [v138 topAnchor];
  v61 = [v137 lastBaselineAnchor];
  v62 = [v60 constraintEqualToAnchor:v61];
  v63 = [v3 episodeTitleBL_To_divider];
  v109 = [v62 mt_copyWithDynamicTypeConstant:v63];

  v146[20] = v109;
  v64 = [v138 leadingAnchor];
  v65 = [v4 leadingAnchor];
  v108 = [v64 constraintEqualToAnchor:v65 constant:0.0];

  v146[21] = v108;
  v66 = [v138 trailingAnchor];
  v67 = [v4 trailingAnchor];
  v107 = [v66 constraintEqualToAnchor:v67 constant:0.0];

  v146[22] = v107;
  v106 = [v138 heightAnchor];
  v68 = +[UIScreen mainScreen];
  [v68 scale];
  v70 = v69;

  v105 = [v106 constraintEqualToConstant:1.0 / v70];
  v146[23] = v105;
  v71 = [v141 firstBaselineAnchor];
  v72 = [v138 bottomAnchor];
  v73 = [v71 constraintEqualToAnchor:v72];
  v74 = [v3 divider_To_summaryBL];
  v103 = [v73 mt_copyWithDynamicTypeConstant:v74];

  v146[24] = v103;
  v75 = [v141 leadingAnchor];
  v76 = [v136 leadingAnchor];
  v102 = [v75 constraintEqualToAnchor:v76 constant:0.0];

  v146[25] = v102;
  v77 = [v141 trailingAnchor];
  v78 = [v6 trailingAnchor];
  v101 = [v77 constraintEqualToAnchor:v78 constant:0.0];

  v146[26] = v101;
  v79 = [v143 firstBaselineAnchor];
  v80 = [v141 lastBaselineAnchor];
  v81 = [v79 constraintEqualToAnchor:v80];
  v104 = v3;
  v82 = [v3 summaryBL_To_metadataBL];
  v83 = [v81 mt_copyWithDynamicTypeConstant:v82];

  v146[27] = v83;
  v84 = [v143 leadingAnchor];
  v85 = [v136 leadingAnchor];
  v86 = [v84 constraintEqualToAnchor:v85 constant:0.0];

  v146[28] = v86;
  v87 = [v143 trailingAnchor];
  v88 = [v6 trailingAnchor];
  v89 = [v87 constraintEqualToAnchor:v88 constant:0.0];

  v146[29] = v89;
  v90 = [v144 bottomAnchor];
  v91 = [v143 bottomAnchor];
  v92 = [v90 constraintEqualToAnchor:v91];
  LODWORD(v93) = 1112014848;
  v94 = [v92 mt_copyWithPriority:v93];
  v95 = [v104 metadataBL_To_bottomBL];
  v96 = [v94 mt_copyWithDynamicTypeConstant:v95];

  v146[30] = v96;
  v97 = [NSArray arrayWithObjects:v146 count:31];
  installedConstraints = self->_installedConstraints;
  self->_installedConstraints = v97;

  [(EpisodeAvailableViewController *)self updateDynamicConstraints];
  v99 = [(EpisodeAvailableViewController *)self installedConstraints];
  [NSLayoutConstraint activateConstraints:v99];

  v100 = [(EpisodeAvailableViewController *)self view];
  [v100 invalidateIntrinsicContentSize];
}

- (void)updateDynamicConstraints
{
  v2 = [(EpisodeAvailableViewController *)self installedConstraints];
  [MTDynamicTypeConstant updateDynamicConstantInConstraints:v2];
}

- (void)_fetchImageWithSize:(CGSize)a3 imageKeyWithFallbackKeys:(id)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a4;
  v10 = a5;
  if (v10)
  {
    if ([v9 count])
    {
      v11 = [v9 firstObject];
      if ([v11 length])
      {
        objc_initWeak(&location, self);
        v12 = +[PUIObjCArtworkProvider shared];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10000A394;
        v14[3] = &unk_10002CAA0;
        objc_copyWeak(v17, &location);
        v16 = v10;
        v13 = v12;
        v15 = v13;
        v17[1] = *&width;
        v17[2] = *&height;
        [v13 artworkPathForShow:v11 size:v14 completionHandler:{width, height}];

        objc_destroyWeak(v17);
        objc_destroyWeak(&location);
      }

      else
      {
        (*(v10 + 2))(v10, 0);
      }
    }

    else
    {
      (*(v10 + 2))(v10, 0);
    }
  }
}

- (void)_removeNotificationFromHistory
{
  v3 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  v2 = [v3 notification];
  [v2 mt_removeFromUserNotificationCenter];
}

@end