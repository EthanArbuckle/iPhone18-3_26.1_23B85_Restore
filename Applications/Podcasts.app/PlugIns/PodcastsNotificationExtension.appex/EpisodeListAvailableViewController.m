@interface EpisodeListAvailableViewController
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (EpisodeListAvailableViewController)initWithNotification:(id)a3;
- (double)_preferredCollectionViewHeight;
- (id)_episodeSourceAtIndexPath:(id)a3;
- (id)_loadedIndexPathForEpisodeWithUuid:(id)a3;
- (id)actionsWithDefaultActions:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (id)headerTitle;
- (unint64_t)countOfAllEpisodes;
- (void)_removeNotificationFromHistory;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)episodesPropertySourceController:(id)a3 didUpdateEpisodePropertySourcesAtIndexes:(id)a4;
- (void)episodesPropertySourceControllerDidUpdatingNeedingFullReload:(id)a3;
- (void)handlePlayActionForEpisodeAvailableCell:(id)a3;
- (void)loadCollectionView;
- (void)loadConstraints;
- (void)loadContentViews;
- (void)playEpisodeWithDefaultBehaviorForEpisodeWithDataSource:(id)a3;
- (void)revealMoreEpisodes;
- (void)setNumberOfRevealedEpisodes:(unint64_t)a3;
- (void)showEpisodeDetailsForEpisodeWithDataSource:(id)a3;
- (void)showPodcastDetails;
- (void)traitCollectionDidChange:(id)a3;
- (void)updateDynamicConstraints;
- (void)updateViewConstraints;
@end

@implementation EpisodeListAvailableViewController

- (EpisodeListAvailableViewController)initWithNotification:(id)a3
{
  v4 = a3;
  v5 = [v4 request];
  v6 = [v5 content];
  v7 = [v6 mt_notificationEpisodes];

  if (v7)
  {
    v14.receiver = self;
    v14.super_class = EpisodeListAvailableViewController;
    v8 = [(ContentAvailableViewController *)&v14 initWithNotification:v4];
    if (v8)
    {
      v9 = +[EpisodeListAvailableStyle defaultStyle];
      style = v8->_style;
      v8->_style = v9;
    }

    self = v8;
    v11 = self;
  }

  else
  {
    v12 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected state encountered.  We should never have no episodes in a notification!", buf, 2u);
    }

    v11 = 0;
  }

  return v11;
}

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = EpisodeListAvailableViewController;
  [(EpisodeListAvailableViewController *)&v4 traitCollectionDidChange:a3];
  [(EpisodeListAvailableViewController *)self updateDynamicConstraints];
}

- (void)updateViewConstraints
{
  v3.receiver = self;
  v3.super_class = EpisodeListAvailableViewController;
  [(EpisodeListAvailableViewController *)&v3 updateViewConstraints];
  [(EpisodeListAvailableViewController *)self updateDynamicConstraints];
}

- (void)revealMoreEpisodes
{
  v3 = [(EpisodeListAvailableViewController *)self numberOfRevealedEpisodes]+ 24;

  [(EpisodeListAvailableViewController *)self setNumberOfRevealedEpisodes:v3];
}

- (void)showEpisodeDetailsForEpisodeWithDataSource:(id)a3
{
  v4 = a3;
  [(EpisodeListAvailableViewController *)self _removeNotificationFromHistory];
  v6 = [v4 openEpisodeDetailInAppURL];

  if (v6)
  {
    v5 = [(EpisodeListAvailableViewController *)self extensionContext];
    [v5 openURL:v6 completionHandler:0];
  }
}

- (void)showPodcastDetails
{
  [(EpisodeListAvailableViewController *)self _removeNotificationFromHistory];
  v3 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  v6 = [v3 firstEpisodePropertySource];

  v4 = [v6 openPodcastDetailInAppURL];
  if (v4)
  {
    v5 = [(EpisodeListAvailableViewController *)self extensionContext];
    [v5 openURL:v4 completionHandler:0];
  }
}

- (void)playEpisodeWithDefaultBehaviorForEpisodeWithDataSource:(id)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100006C98;
  v3[3] = &unk_10002CAC8;
  v3[4] = self;
  [a3 initiatePlaybackWithCompletion:v3];
}

- (id)actionsWithDefaultActions:(id)a3
{
  v3 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  [v3 firstEpisodePropertySource];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006E90;
  v4 = v12[3] = &unk_10002CAF0;
  v13 = v4;
  v5 = [v3 firstEpisodePropertySourcePassingTest:v12];

  if ([v4 requiresForegroundLaunch])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = +[UNNotificationAction mt_playMultipleEpisodesActionWithCount:options:](UNNotificationAction, "mt_playMultipleEpisodesActionWithCount:options:", [v3 countOfEpisodePropertySources], v6);
  v8 = v7;
  if (v5)
  {
    v14 = v7;
    v9 = [NSArray arrayWithObjects:&v14 count:1];
  }

  else
  {
    v15[0] = v7;
    v10 = +[UNNotificationAction mt_showOnePodcastMultipleEpisodesDetail];
    v15[1] = v10;
    v9 = [NSArray arrayWithObjects:v15 count:2];
  }

  return v9;
}

- (id)headerTitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"NOTIFICATION_EPISODE_N_AVAILABLE_HEADER_FORMAT" value:&stru_10002D1C8 table:0];

  v5 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  v6 = +[NSString localizedStringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "localizedStringWithValidatedFormat:validFormatSpecifiers:error:", v4, @"%u", 0, [v5 countOfEpisodePropertySources]);

  return v6;
}

- (void)loadContentViews
{
  v3.receiver = self;
  v3.super_class = EpisodeListAvailableViewController;
  [(ContentAvailableViewController *)&v3 loadContentViews];
  [(EpisodeListAvailableViewController *)self loadCollectionView];
  [(EpisodeListAvailableViewController *)self setNumberOfRevealedEpisodes:24];
}

- (void)loadCollectionView
{
  v3 = objc_alloc_init(UICollectionViewFlowLayout);
  flowLayout = self->_flowLayout;
  self->_flowLayout = v3;

  +[EpisodeAvailableCell defaultHeight];
  v6 = v5;
  [(UICollectionViewFlowLayout *)self->_flowLayout setEstimatedItemSize:UICollectionViewFlowLayoutAutomaticSize.width, v5];
  [(UICollectionViewFlowLayout *)self->_flowLayout setItemSize:UICollectionViewFlowLayoutAutomaticSize.width, v6];
  [(UICollectionViewFlowLayout *)self->_flowLayout setMinimumLineSpacing:0.0];
  [(UICollectionViewFlowLayout *)self->_flowLayout setSectionInset:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  [(UICollectionViewFlowLayout *)self->_flowLayout setScrollDirection:0];
  v7 = [[UICollectionView alloc] initWithFrame:self->_flowLayout collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];
  collectionView = self->_collectionView;
  self->_collectionView = v7;

  [(UICollectionView *)self->_collectionView mt_registerCellClass:objc_opt_class()];
  [(UICollectionView *)self->_collectionView mt_registerSupplementaryViewClass:objc_opt_class() forSupplementaryViewOfKind:UICollectionElementKindSectionFooter];
  [(UICollectionView *)self->_collectionView setDelegate:self];
  [(UICollectionView *)self->_collectionView setDataSource:self];
  v9 = [(ContentAvailableViewController *)self headerTitleLabel];
  [v9 contentCompressionResistancePriorityForAxis:1];
  v11 = v10;

  *&v12 = v11 + -1.0;
  [(UICollectionView *)self->_collectionView setContentCompressionResistancePriority:1 forAxis:v12];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = +[UIColor backgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v13];

  v14 = [(EpisodeListAvailableViewController *)self view];
  [v14 addSubview:self->_collectionView];
}

- (void)loadConstraints
{
  v45.receiver = self;
  v45.super_class = EpisodeListAvailableViewController;
  [(ContentAvailableViewController *)&v45 loadConstraints];
  v3 = [(EpisodeListAvailableViewController *)self style];
  v4 = [(EpisodeListAvailableViewController *)self view];
  v5 = [(ContentAvailableViewController *)self headerTitleLabel];
  v6 = [(EpisodeListAvailableViewController *)self collectionView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v3 defaultMarginH];
  v8 = v7;
  [v3 defaultMarginH];
  [v6 setLayoutMargins:{0.0, v8, 0.0, v9}];
  v10 = [v5 firstBaselineAnchor];
  v11 = [v4 topAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v13 = [v3 cell_container_To_mainHeaderBL];
  v44 = [v12 mt_copyWithDynamicTypeConstant:v13];

  v46[0] = v44;
  v14 = [v5 leadingAnchor];
  v15 = [v4 leadingAnchor];
  [v3 defaultMarginH];
  v43 = [v14 constraintEqualToAnchor:v15 constant:?];

  v46[1] = v43;
  v42 = v5;
  v16 = [v5 trailingAnchor];
  v17 = [v4 trailingAnchor];
  [v3 defaultMarginH];
  v41 = [v16 constraintEqualToAnchor:v17 constant:-v18];

  v46[2] = v41;
  v40 = [v6 heightAnchor];
  [(EpisodeListAvailableViewController *)self _preferredCollectionViewHeight];
  v19 = [v40 constraintEqualToConstant:?];
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  self->_collectionViewHeightConstraint = v19;

  v46[3] = v19;
  v21 = [v6 topAnchor];
  v22 = [v5 lastBaselineAnchor];
  v23 = [v21 constraintEqualToAnchor:v22];
  v24 = [v3 cell_mainHeaderBL_To_collectionViewTop];
  v25 = [v23 mt_copyWithDynamicTypeConstant:v24];

  v46[4] = v25;
  v26 = [v6 leadingAnchor];
  v27 = [v4 leadingAnchor];
  v28 = [v26 constraintEqualToAnchor:v27 constant:0.0];

  v46[5] = v28;
  v29 = [v6 trailingAnchor];
  v30 = [v4 trailingAnchor];
  v31 = [v29 constraintEqualToAnchor:v30 constant:0.0];

  v46[6] = v31;
  v32 = [v4 bottomAnchor];
  v33 = [v6 bottomAnchor];
  v34 = [v32 constraintEqualToAnchor:v33 constant:0.0];

  v46[7] = v34;
  v35 = [NSArray arrayWithObjects:v46 count:8];
  installedConstraints = self->_installedConstraints;
  self->_installedConstraints = v35;

  LODWORD(v37) = 1112014848;
  [v34 setPriority:v37];
  [v6 reloadData];
  v38 = [(EpisodeListAvailableViewController *)self installedConstraints];
  [NSLayoutConstraint activateConstraints:v38];

  [(EpisodeListAvailableViewController *)self updateDynamicConstraints];
  v39 = [(EpisodeListAvailableViewController *)self view];
  [v39 invalidateIntrinsicContentSize];
}

- (void)updateDynamicConstraints
{
  v3 = [(EpisodeListAvailableViewController *)self installedConstraints];
  [MTDynamicTypeConstant updateDynamicConstantInConstraints:v3];

  [(EpisodeListAvailableViewController *)self _preferredCollectionViewHeight];
  v5 = v4;
  v6 = [(EpisodeListAvailableViewController *)self collectionViewHeightConstraint];
  [v6 setConstant:v5];
}

- (void)episodesPropertySourceControllerDidUpdatingNeedingFullReload:(id)a3
{
  v3 = [(EpisodeListAvailableViewController *)self collectionView];
  [v3 reloadData];
}

- (void)episodesPropertySourceController:(id)a3 didUpdateEpisodePropertySourcesAtIndexes:(id)a4
{
  v9 = a4;
  v5 = +[NSMutableArray array];
  for (i = [v9 firstIndex]; i < -[EpisodeListAvailableViewController numberOfRevealedEpisodes](self, "numberOfRevealedEpisodes"); i = objc_msgSend(v9, "indexGreaterThanIndex:", i))
  {
    v7 = [NSIndexPath indexPathForRow:i inSection:0];
    [v5 addObject:v7];
  }

  v8 = [(EpisodeListAvailableViewController *)self collectionView];
  [v8 reloadItemsAtIndexPaths:v5];
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v7 mt_dequeueReusableCellClass:objc_opt_class() forIndexPath:v6];

  [v8 setDelegate:self];
  v9 = [(EpisodeListAvailableViewController *)self _episodeSourceAtIndexPath:v6];
  [v8 setEpisodePropertySource:v9];
  v10 = ![(EpisodeListAvailableViewController *)self shouldShowRevealMoreFooter]&& [(EpisodeListAvailableViewController *)self _isLastEpisodeRowForIndexPath:v6];
  [v8 setSeparatorHidden:v10];

  return v8;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = [a3 cellForItemAtIndexPath:v6];
  [v7 setHighlighted:1];

  v8 = [(EpisodeListAvailableViewController *)self _episodeSourceAtIndexPath:v6];

  [(EpisodeListAvailableViewController *)self showEpisodeDetailsForEpisodeWithDataSource:v8];
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a3;
  [v6 contentInset];
  v8 = v7;
  v10 = v9;
  [v6 frame];
  v12 = v11;

  v13 = v12 - (v8 + v10);
  v14 = [(EpisodeListAvailableViewController *)self flowLayout];
  [v14 itemSize];
  v16 = v15;

  v17 = v13;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [v10 mt_dequeueReusableSupplementaryViewClass:objc_opt_class() supplementaryViewKind:v9 forIndexPath:v8];

  [v11 setActionHandler:self];

  return v11;
}

- (void)handlePlayActionForEpisodeAvailableCell:(id)a3
{
  v4 = [a3 episodePropertySource];
  [(EpisodeListAvailableViewController *)self playEpisodeWithDefaultBehaviorForEpisodeWithDataSource:v4];
}

- (unint64_t)countOfAllEpisodes
{
  v2 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  v3 = [v2 countOfEpisodePropertySources];

  return v3;
}

- (void)setNumberOfRevealedEpisodes:(unint64_t)a3
{
  if (self->_numberOfRevealedEpisodes != a3)
  {
    v5 = [(EpisodeListAvailableViewController *)self countOfAllEpisodes];
    if (v5 >= a3)
    {
      v6 = a3;
    }

    else
    {
      v6 = v5;
    }

    self->_numberOfRevealedEpisodes = v6;
    if ([(EpisodeListAvailableViewController *)self shouldShowRevealMoreFooter])
    {
      +[ShowMoreFooterView defaultHeight];
      v8 = v7;
      v9 = [(EpisodeListAvailableViewController *)self flowLayout];
      v10 = v9;
      width = 0.0;
      v12 = v8;
    }

    else
    {
      height = CGSizeZero.height;
      v9 = [(EpisodeListAvailableViewController *)self flowLayout];
      v10 = v9;
      width = CGSizeZero.width;
      v12 = height;
    }

    [v9 setFooterReferenceSize:{width, v12}];

    v14 = [(EpisodeListAvailableViewController *)self flowLayout];
    [v14 invalidateLayout];

    v15 = [(EpisodeListAvailableViewController *)self collectionView];
    [v15 reloadData];

    v16 = [(EpisodeListAvailableViewController *)self view];
    [v16 setNeedsUpdateConstraints];
  }
}

- (id)_loadedIndexPathForEpisodeWithUuid:(id)a3
{
  v4 = a3;
  if ([v4 length])
  {
    v5 = [(ContentAvailableViewController *)self episodesPropertySourceController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007E28;
    v9[3] = &unk_10002CAF0;
    v10 = v4;
    v6 = [v5 indexOfPropertySourcePassingTest:v9];

    if (v6 >= [(EpisodeListAvailableViewController *)self numberOfRevealedEpisodes])
    {
      v7 = 0;
    }

    else
    {
      v7 = [NSIndexPath indexPathForRow:v6 inSection:0];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_episodeSourceAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 row];
  if (v5 >= [(EpisodeListAvailableViewController *)self countOfAllEpisodes])
  {
    v7 = 0;
  }

  else
  {
    v6 = [(ContentAvailableViewController *)self episodesPropertySourceController];
    v7 = [v6 episodePropertySourceAtIndex:{objc_msgSend(v4, "row")}];
  }

  return v7;
}

- (double)_preferredCollectionViewHeight
{
  [(EpisodeListAvailableViewController *)self flowLayout];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100007FF0;
  v9 = v8[3] = &unk_10002CB18;
  v3 = v9;
  v4 = objc_retainBlock(v8);
  v5 = (v4[2])(v4, [(EpisodeListAvailableViewController *)self numberOfRevealedEpisodes]);
  v6 = (v4[2])(v4, 100000);
  if (v5 >= v6)
  {
    v5 = v6;
  }

  return v5;
}

- (void)_removeNotificationFromHistory
{
  v3 = [(ContentAvailableViewController *)self episodesPropertySourceController];
  v2 = [v3 notification];
  [v2 mt_removeFromUserNotificationCenter];
}

@end