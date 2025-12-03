@interface EpisodeListAvailableViewController
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (EpisodeListAvailableViewController)initWithNotification:(id)notification;
- (double)_preferredCollectionViewHeight;
- (id)_episodeSourceAtIndexPath:(id)path;
- (id)_loadedIndexPathForEpisodeWithUuid:(id)uuid;
- (id)actionsWithDefaultActions:(id)actions;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)headerTitle;
- (unint64_t)countOfAllEpisodes;
- (void)_removeNotificationFromHistory;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)episodesPropertySourceController:(id)controller didUpdateEpisodePropertySourcesAtIndexes:(id)indexes;
- (void)episodesPropertySourceControllerDidUpdatingNeedingFullReload:(id)reload;
- (void)handlePlayActionForEpisodeAvailableCell:(id)cell;
- (void)loadCollectionView;
- (void)loadConstraints;
- (void)loadContentViews;
- (void)playEpisodeWithDefaultBehaviorForEpisodeWithDataSource:(id)source;
- (void)revealMoreEpisodes;
- (void)setNumberOfRevealedEpisodes:(unint64_t)episodes;
- (void)showEpisodeDetailsForEpisodeWithDataSource:(id)source;
- (void)showPodcastDetails;
- (void)traitCollectionDidChange:(id)change;
- (void)updateDynamicConstraints;
- (void)updateViewConstraints;
@end

@implementation EpisodeListAvailableViewController

- (EpisodeListAvailableViewController)initWithNotification:(id)notification
{
  notificationCopy = notification;
  request = [notificationCopy request];
  content = [request content];
  mt_notificationEpisodes = [content mt_notificationEpisodes];

  if (mt_notificationEpisodes)
  {
    v14.receiver = self;
    v14.super_class = EpisodeListAvailableViewController;
    v8 = [(ContentAvailableViewController *)&v14 initWithNotification:notificationCopy];
    if (v8)
    {
      v9 = +[EpisodeListAvailableStyle defaultStyle];
      style = v8->_style;
      v8->_style = v9;
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    v12 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "Unexpected state encountered.  We should never have no episodes in a notification!", buf, 2u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = EpisodeListAvailableViewController;
  [(EpisodeListAvailableViewController *)&v4 traitCollectionDidChange:change];
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

- (void)showEpisodeDetailsForEpisodeWithDataSource:(id)source
{
  sourceCopy = source;
  [(EpisodeListAvailableViewController *)self _removeNotificationFromHistory];
  openEpisodeDetailInAppURL = [sourceCopy openEpisodeDetailInAppURL];

  if (openEpisodeDetailInAppURL)
  {
    extensionContext = [(EpisodeListAvailableViewController *)self extensionContext];
    [extensionContext openURL:openEpisodeDetailInAppURL completionHandler:0];
  }
}

- (void)showPodcastDetails
{
  [(EpisodeListAvailableViewController *)self _removeNotificationFromHistory];
  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  firstEpisodePropertySource = [episodesPropertySourceController firstEpisodePropertySource];

  openPodcastDetailInAppURL = [firstEpisodePropertySource openPodcastDetailInAppURL];
  if (openPodcastDetailInAppURL)
  {
    extensionContext = [(EpisodeListAvailableViewController *)self extensionContext];
    [extensionContext openURL:openPodcastDetailInAppURL completionHandler:0];
  }
}

- (void)playEpisodeWithDefaultBehaviorForEpisodeWithDataSource:(id)source
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100006C98;
  v3[3] = &unk_10002CAC8;
  v3[4] = self;
  [source initiatePlaybackWithCompletion:v3];
}

- (id)actionsWithDefaultActions:(id)actions
{
  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  [episodesPropertySourceController firstEpisodePropertySource];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100006E90;
  v4 = v12[3] = &unk_10002CAF0;
  v13 = v4;
  v5 = [episodesPropertySourceController firstEpisodePropertySourcePassingTest:v12];

  if ([v4 requiresForegroundLaunch])
  {
    v6 = 4;
  }

  else
  {
    v6 = 0;
  }

  v7 = +[UNNotificationAction mt_playMultipleEpisodesActionWithCount:options:](UNNotificationAction, "mt_playMultipleEpisodesActionWithCount:options:", [episodesPropertySourceController countOfEpisodePropertySources], v6);
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

  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  v6 = +[NSString localizedStringWithValidatedFormat:validFormatSpecifiers:error:](NSString, "localizedStringWithValidatedFormat:validFormatSpecifiers:error:", v4, @"%u", 0, [episodesPropertySourceController countOfEpisodePropertySources]);

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
  headerTitleLabel = [(ContentAvailableViewController *)self headerTitleLabel];
  [headerTitleLabel contentCompressionResistancePriorityForAxis:1];
  v11 = v10;

  *&v12 = v11 + -1.0;
  [(UICollectionView *)self->_collectionView setContentCompressionResistancePriority:1 forAxis:v12];
  [(UICollectionView *)self->_collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  v13 = +[UIColor backgroundColor];
  [(UICollectionView *)self->_collectionView setBackgroundColor:v13];

  view = [(EpisodeListAvailableViewController *)self view];
  [view addSubview:self->_collectionView];
}

- (void)loadConstraints
{
  v45.receiver = self;
  v45.super_class = EpisodeListAvailableViewController;
  [(ContentAvailableViewController *)&v45 loadConstraints];
  style = [(EpisodeListAvailableViewController *)self style];
  view = [(EpisodeListAvailableViewController *)self view];
  headerTitleLabel = [(ContentAvailableViewController *)self headerTitleLabel];
  collectionView = [(EpisodeListAvailableViewController *)self collectionView];
  [collectionView setTranslatesAutoresizingMaskIntoConstraints:0];
  [style defaultMarginH];
  v8 = v7;
  [style defaultMarginH];
  [collectionView setLayoutMargins:{0.0, v8, 0.0, v9}];
  firstBaselineAnchor = [headerTitleLabel firstBaselineAnchor];
  topAnchor = [view topAnchor];
  v12 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  cell_container_To_mainHeaderBL = [style cell_container_To_mainHeaderBL];
  v44 = [v12 mt_copyWithDynamicTypeConstant:cell_container_To_mainHeaderBL];

  v46[0] = v44;
  leadingAnchor = [headerTitleLabel leadingAnchor];
  leadingAnchor2 = [view leadingAnchor];
  [style defaultMarginH];
  v43 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];

  v46[1] = v43;
  v42 = headerTitleLabel;
  trailingAnchor = [headerTitleLabel trailingAnchor];
  trailingAnchor2 = [view trailingAnchor];
  [style defaultMarginH];
  v41 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v18];

  v46[2] = v41;
  heightAnchor = [collectionView heightAnchor];
  [(EpisodeListAvailableViewController *)self _preferredCollectionViewHeight];
  v19 = [heightAnchor constraintEqualToConstant:?];
  collectionViewHeightConstraint = self->_collectionViewHeightConstraint;
  self->_collectionViewHeightConstraint = v19;

  v46[3] = v19;
  topAnchor2 = [collectionView topAnchor];
  lastBaselineAnchor = [headerTitleLabel lastBaselineAnchor];
  v23 = [topAnchor2 constraintEqualToAnchor:lastBaselineAnchor];
  cell_mainHeaderBL_To_collectionViewTop = [style cell_mainHeaderBL_To_collectionViewTop];
  v25 = [v23 mt_copyWithDynamicTypeConstant:cell_mainHeaderBL_To_collectionViewTop];

  v46[4] = v25;
  leadingAnchor3 = [collectionView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v28 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4 constant:0.0];

  v46[5] = v28;
  trailingAnchor3 = [collectionView trailingAnchor];
  trailingAnchor4 = [view trailingAnchor];
  v31 = [trailingAnchor3 constraintEqualToAnchor:trailingAnchor4 constant:0.0];

  v46[6] = v31;
  bottomAnchor = [view bottomAnchor];
  bottomAnchor2 = [collectionView bottomAnchor];
  v34 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:0.0];

  v46[7] = v34;
  v35 = [NSArray arrayWithObjects:v46 count:8];
  installedConstraints = self->_installedConstraints;
  self->_installedConstraints = v35;

  LODWORD(v37) = 1112014848;
  [v34 setPriority:v37];
  [collectionView reloadData];
  installedConstraints = [(EpisodeListAvailableViewController *)self installedConstraints];
  [NSLayoutConstraint activateConstraints:installedConstraints];

  [(EpisodeListAvailableViewController *)self updateDynamicConstraints];
  view2 = [(EpisodeListAvailableViewController *)self view];
  [view2 invalidateIntrinsicContentSize];
}

- (void)updateDynamicConstraints
{
  installedConstraints = [(EpisodeListAvailableViewController *)self installedConstraints];
  [MTDynamicTypeConstant updateDynamicConstantInConstraints:installedConstraints];

  [(EpisodeListAvailableViewController *)self _preferredCollectionViewHeight];
  v5 = v4;
  collectionViewHeightConstraint = [(EpisodeListAvailableViewController *)self collectionViewHeightConstraint];
  [collectionViewHeightConstraint setConstant:v5];
}

- (void)episodesPropertySourceControllerDidUpdatingNeedingFullReload:(id)reload
{
  collectionView = [(EpisodeListAvailableViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)episodesPropertySourceController:(id)controller didUpdateEpisodePropertySourcesAtIndexes:(id)indexes
{
  indexesCopy = indexes;
  v5 = +[NSMutableArray array];
  for (i = [indexesCopy firstIndex]; i < -[EpisodeListAvailableViewController numberOfRevealedEpisodes](self, "numberOfRevealedEpisodes"); i = objc_msgSend(indexesCopy, "indexGreaterThanIndex:", i))
  {
    v7 = [NSIndexPath indexPathForRow:i inSection:0];
    [v5 addObject:v7];
  }

  collectionView = [(EpisodeListAvailableViewController *)self collectionView];
  [collectionView reloadItemsAtIndexPaths:v5];
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = [viewCopy mt_dequeueReusableCellClass:objc_opt_class() forIndexPath:pathCopy];

  [v8 setDelegate:self];
  v9 = [(EpisodeListAvailableViewController *)self _episodeSourceAtIndexPath:pathCopy];
  [v8 setEpisodePropertySource:v9];
  v10 = ![(EpisodeListAvailableViewController *)self shouldShowRevealMoreFooter]&& [(EpisodeListAvailableViewController *)self _isLastEpisodeRowForIndexPath:pathCopy];
  [v8 setSeparatorHidden:v10];

  return v8;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  v7 = [view cellForItemAtIndexPath:pathCopy];
  [v7 setHighlighted:1];

  v8 = [(EpisodeListAvailableViewController *)self _episodeSourceAtIndexPath:pathCopy];

  [(EpisodeListAvailableViewController *)self showEpisodeDetailsForEpisodeWithDataSource:v8];
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  viewCopy = view;
  [viewCopy contentInset];
  v8 = v7;
  v10 = v9;
  [viewCopy frame];
  v12 = v11;

  v13 = v12 - (v8 + v10);
  flowLayout = [(EpisodeListAvailableViewController *)self flowLayout];
  [flowLayout itemSize];
  v16 = v15;

  v17 = v13;
  v18 = v16;
  result.height = v18;
  result.width = v17;
  return result;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  kindCopy = kind;
  viewCopy = view;
  v11 = [viewCopy mt_dequeueReusableSupplementaryViewClass:objc_opt_class() supplementaryViewKind:kindCopy forIndexPath:pathCopy];

  [v11 setActionHandler:self];

  return v11;
}

- (void)handlePlayActionForEpisodeAvailableCell:(id)cell
{
  episodePropertySource = [cell episodePropertySource];
  [(EpisodeListAvailableViewController *)self playEpisodeWithDefaultBehaviorForEpisodeWithDataSource:episodePropertySource];
}

- (unint64_t)countOfAllEpisodes
{
  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  countOfEpisodePropertySources = [episodesPropertySourceController countOfEpisodePropertySources];

  return countOfEpisodePropertySources;
}

- (void)setNumberOfRevealedEpisodes:(unint64_t)episodes
{
  if (self->_numberOfRevealedEpisodes != episodes)
  {
    countOfAllEpisodes = [(EpisodeListAvailableViewController *)self countOfAllEpisodes];
    if (countOfAllEpisodes >= episodes)
    {
      episodesCopy = episodes;
    }

    else
    {
      episodesCopy = countOfAllEpisodes;
    }

    self->_numberOfRevealedEpisodes = episodesCopy;
    if ([(EpisodeListAvailableViewController *)self shouldShowRevealMoreFooter])
    {
      +[ShowMoreFooterView defaultHeight];
      v8 = v7;
      flowLayout = [(EpisodeListAvailableViewController *)self flowLayout];
      v10 = flowLayout;
      width = 0.0;
      v12 = v8;
    }

    else
    {
      height = CGSizeZero.height;
      flowLayout = [(EpisodeListAvailableViewController *)self flowLayout];
      v10 = flowLayout;
      width = CGSizeZero.width;
      v12 = height;
    }

    [flowLayout setFooterReferenceSize:{width, v12}];

    flowLayout2 = [(EpisodeListAvailableViewController *)self flowLayout];
    [flowLayout2 invalidateLayout];

    collectionView = [(EpisodeListAvailableViewController *)self collectionView];
    [collectionView reloadData];

    view = [(EpisodeListAvailableViewController *)self view];
    [view setNeedsUpdateConstraints];
  }
}

- (id)_loadedIndexPathForEpisodeWithUuid:(id)uuid
{
  uuidCopy = uuid;
  if ([uuidCopy length])
  {
    episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100007E28;
    v9[3] = &unk_10002CAF0;
    v10 = uuidCopy;
    v6 = [episodesPropertySourceController indexOfPropertySourcePassingTest:v9];

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

- (id)_episodeSourceAtIndexPath:(id)path
{
  pathCopy = path;
  v5 = [pathCopy row];
  if (v5 >= [(EpisodeListAvailableViewController *)self countOfAllEpisodes])
  {
    v7 = 0;
  }

  else
  {
    episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
    v7 = [episodesPropertySourceController episodePropertySourceAtIndex:{objc_msgSend(pathCopy, "row")}];
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
  episodesPropertySourceController = [(ContentAvailableViewController *)self episodesPropertySourceController];
  notification = [episodesPropertySourceController notification];
  [notification mt_removeFromUserNotificationCenter];
}

@end