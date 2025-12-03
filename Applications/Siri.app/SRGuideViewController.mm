@interface SRGuideViewController
- (BOOL)_hasTitle;
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path;
- (Class)transparentHeaderViewClass;
- (SAGuidanceGuideSnippet)_guideSnippet;
- (SRGuideViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)_heightOfRowForDomainSnippet:(id)snippet;
- (double)desiredHeightForTransparentHeaderView;
- (double)desiredHeightForWidth:(double)width;
- (id)_bigButtonViewController;
- (id)_domainSnippetForHelpDomainAtIndex:(unint64_t)index;
- (id)_domainSnippetForIndexPath:(id)path;
- (id)_fallbackImage;
- (id)_iconImageForGuideDomainSnippet:(id)snippet;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (int64_t)_numberOfHelpDomains;
- (int64_t)_numberOfIntentSupportedApps;
- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section;
- (void)_endTrackingGuideShowTimeIfNecessary;
- (void)_prepareSiriEnabledAppList;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)configureReusableTransparentHeaderView:(id)view;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)setDelegate:(id)delegate;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SRGuideViewController

- (SRGuideViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v12.receiver = self;
  v12.super_class = SRGuideViewController;
  v4 = [(SRGuideViewController *)&v12 initWithNibName:0 bundle:0];
  if (v4)
  {
    v5 = objc_alloc_init(NSCache);
    domainIconCache = v4->_domainIconCache;
    v4->_domainIconCache = v5;

    v7 = objc_alloc_init(NSOperationQueue);
    guideImageOperationQueue = v4->_guideImageOperationQueue;
    v4->_guideImageOperationQueue = v7;

    [(NSOperationQueue *)v4->_guideImageOperationQueue setQualityOfService:25];
    [(NSOperationQueue *)v4->_guideImageOperationQueue setMaxConcurrentOperationCount:2];
    v9 = +[NSMutableSet set];
    spawnedGuideImageFetches = v4->_spawnedGuideImageFetches;
    v4->_spawnedGuideImageFetches = v9;

    [(SRGuideViewController *)v4 setDefaultViewInsets:UIEdgeInsetsZero.top, UIEdgeInsetsZero.left, UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right];
  }

  return v4;
}

- (void)didReceiveMemoryWarning
{
  v3.receiver = self;
  v3.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v3 didReceiveMemoryWarning];
  [(NSCache *)self->_domainIconCache removeAllObjects];
}

- (void)setDelegate:(id)delegate
{
  v4.receiver = self;
  v4.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v4 setDelegate:delegate];
  [(SRGuideViewController *)self _prepareSiriEnabledAppList];
}

- (id)_bigButtonViewController
{
  bigButtonController = self->_bigButtonController;
  if (!bigButtonController)
  {
    v4 = objc_alloc_init(SRBigButtonController);
    v5 = self->_bigButtonController;
    self->_bigButtonController = v4;

    v6 = self->_bigButtonController;
    _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
    appPunchOutButton = [_guideSnippet appPunchOutButton];
    [(SRBigButtonController *)v6 setAceObject:appPunchOutButton];

    v9 = self->_bigButtonController;
    delegate = [(SRGuideViewController *)self delegate];
    [(SRBigButtonController *)v9 setDelegate:delegate];

    bigButtonController = self->_bigButtonController;
  }

  return bigButtonController;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v12 loadView];
  collectionView = [(SRGuideViewController *)self collectionView];
  [collectionView setDataSource:self];
  [collectionView setDelegate:self];
  v4 = objc_opt_class();
  v5 = +[SRGuideViewCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [collectionView registerClass:v6 forCellWithReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[SiriUISnippetControllerCell reuseIdentifier];
  [collectionView registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[SRGuideViewHeader reuseIdentifier];
  [collectionView registerClass:v10 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v11];
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  collectionView = [(SRGuideViewController *)self collectionView];
  indexPathsForSelectedItems = [collectionView indexPathsForSelectedItems];

  v7 = [indexPathsForSelectedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(indexPathsForSelectedItems);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        collectionView2 = [(SRGuideViewController *)self collectionView];
        [collectionView2 deselectItemAtIndexPath:v11 animated:appearCopy];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [indexPathsForSelectedItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13.receiver = self;
  v13.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v13 viewWillAppear:appearCopy];
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  delegate = [(SRGuideViewController *)self delegate];
  v6 = [delegate siriSnippetViewControllerIsVisible:self];

  if (v6)
  {
    if (self->_showingDetails)
    {
      self->_showingDetails = 0;
    }

    else
    {
      v8 = +[NSDate date];
      startViewingTime = self->_startViewingTime;
      self->_startViewingTime = v8;
    }
  }

  else
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v12 = "[SRGuideViewController viewDidAppear:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Not visible, no need to create a new view time", buf, 0xCu);
    }
  }

  v10.receiver = self;
  v10.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v10 viewDidAppear:appearCopy];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  delegate = [(SRGuideViewController *)self delegate];
  v6 = [delegate siriSnippetViewControllerIsVisible:self];

  if (v6)
  {
    v7 = AFSiriLogContextConnection;
    if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[SRGuideViewController viewDidDisappear:]";
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s Showing details, do nothing", buf, 0xCu);
    }
  }

  else
  {
    self->_showingDetails = 0;
    [(SRGuideViewController *)self _endTrackingGuideShowTimeIfNecessary];
  }

  v8.receiver = self;
  v8.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v8 viewDidDisappear:disappearCopy];
}

- (double)desiredHeightForWidth:(double)width
{
  _numberOfHelpDomains = [(SRGuideViewController *)self _numberOfHelpDomains];
  _numberOfIntentEnabledApps = [(SRGuideViewController *)self _numberOfIntentEnabledApps];
  v6 = _numberOfIntentEnabledApps;
  if (!_numberOfHelpDomains)
  {
    v8 = 0.0;
    if (!_numberOfIntentEnabledApps)
    {
      goto LABEL_9;
    }

    goto LABEL_7;
  }

  v7 = 0;
  v8 = 0.0;
  do
  {
    v9 = [(SRGuideViewController *)self _domainSnippetForHelpDomainAtIndex:v7];
    [(SRGuideViewController *)self _heightOfRowForDomainSnippet:v9];
    v8 = v8 + v10;

    ++v7;
  }

  while (_numberOfHelpDomains != v7);
  if (v6)
  {
LABEL_7:
    v11 = 0;
    do
    {
      v12 = [(SRGuideViewController *)self _domainSnippetForEnabledIntentSupportedAppAtIndex:v11];
      [(SRGuideViewController *)self _heightOfRowForDomainSnippet:v12];
      v8 = v8 + v13;

      ++v11;
    }

    while (v6 != v11);
  }

LABEL_9:
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  appPunchOutButton = [_guideSnippet appPunchOutButton];

  if (appPunchOutButton)
  {
    _bigButtonViewController = [(SRGuideViewController *)self _bigButtonViewController];
    view = [_bigButtonViewController view];
    [view sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v8 = v8 + v18 + 8.0;
  }

  return v8;
}

- (void)_endTrackingGuideShowTimeIfNecessary
{
  if (self->_startViewingTime)
  {
    v5 = +[NSDate date];
    delegate = [(SRGuideViewController *)self delegate];
    [delegate siriSnippetViewController:self didShowGuideStartDate:self->_startViewingTime endDate:v5];

    startViewingTime = self->_startViewingTime;
    self->_startViewingTime = 0;
  }
}

- (SAGuidanceGuideSnippet)_guideSnippet
{
  guideSnippet = self->_guideSnippet;
  if (!guideSnippet)
  {
    snippet = [(SRGuideViewController *)self snippet];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = snippet;
      v6 = self->_guideSnippet;
      self->_guideSnippet = v5;
    }

    else
    {
      v6 = +[AFUIGuideCacheManager sharedManager];
      cachedGuideSnippet = [v6 cachedGuideSnippet];
      v8 = self->_guideSnippet;
      self->_guideSnippet = cachedGuideSnippet;
    }

    guideSnippet = self->_guideSnippet;
  }

  return guideSnippet;
}

- (Class)transparentHeaderViewClass
{
  if ([(SRGuideViewController *)self _hasTitle])
  {
    v2 = objc_opt_class();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)configureReusableTransparentHeaderView:(id)view
{
  viewCopy = view;
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  headerText = [_guideSnippet headerText];
  [viewCopy setTitle:headerText];
}

- (double)desiredHeightForTransparentHeaderView
{
  delegate = [(SRGuideViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v5 = v4;
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  headerText = [_guideSnippet headerText];
  [SRGuideViewHeader sizeThatFits:headerText text:v5, 1.79769313e308];
  v9 = v8;

  return v9;
}

- (int64_t)_numberOfHelpDomains
{
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  domainSnippets = [_guideSnippet domainSnippets];
  v4 = [domainSnippets count];

  return v4;
}

- (int64_t)_numberOfIntentSupportedApps
{
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  intentEnabledAppSnippets = [_guideSnippet intentEnabledAppSnippets];
  v4 = [intentEnabledAppSnippets count];

  return v4;
}

- (id)_domainSnippetForHelpDomainAtIndex:(unint64_t)index
{
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  domainSnippets = [_guideSnippet domainSnippets];
  v6 = [domainSnippets objectAtIndexedSubscript:index];

  return v6;
}

- (id)_domainSnippetForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  item = [pathCopy item];

  if (section)
  {
    [(SRGuideViewController *)self _domainSnippetForEnabledIntentSupportedAppAtIndex:item];
  }

  else
  {
    [(SRGuideViewController *)self _domainSnippetForHelpDomainAtIndex:item];
  }
  v7 = ;

  return v7;
}

- (double)_heightOfRowForDomainSnippet:(id)snippet
{
  snippetCopy = snippet;
  domainDisplayName = [snippetCopy domainDisplayName];
  tagPhrase = [snippetCopy tagPhrase];

  delegate = [(SRGuideViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  [SRGuideViewCell heightOfCellWithName:domainDisplayName tagPhrase:tagPhrase width:?];
  v9 = v8;

  return v9;
}

- (int64_t)collectionView:(id)view numberOfItemsInSection:(int64_t)section
{
  viewCopy = view;
  switch(section)
  {
    case 2:
      _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
      appPunchOutButton = [_guideSnippet appPunchOutButton];
      v8 = appPunchOutButton != 0;

      goto LABEL_11;
    case 1:
      _numberOfIntentEnabledApps = [(SRGuideViewController *)self _numberOfIntentEnabledApps];
      goto LABEL_6;
    case 0:
      _numberOfIntentEnabledApps = [(SRGuideViewController *)self _numberOfHelpDomains];
LABEL_6:
      v8 = _numberOfIntentEnabledApps;
      goto LABEL_11;
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CB864(section, v11);
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  section = [pathCopy section];
  if (section > 1)
  {
    v10 = +[SiriUISnippetControllerCell reuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

    _bigButtonViewController = [(SRGuideViewController *)self _bigButtonViewController];
    [v11 setSnippetViewController:_bigButtonViewController];

    [v11 setTopPadding:8.0];
  }

  else
  {
    v9 = section;
    v10 = +[SRGuideViewCell reuseIdentifier];
    v11 = [viewCopy dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:pathCopy];

    v12 = [(SRGuideViewController *)self _domainSnippetForIndexPath:pathCopy];
    aceId = [v12 aceId];
    [v11 setAceId:aceId];
    _fallbackImage = [(NSCache *)self->_domainIconCache objectForKey:aceId];
    if (!_fallbackImage)
    {
      _fallbackImage = [(SRGuideViewController *)self _fallbackImage];
      spawnedGuideImageFetches = self->_spawnedGuideImageFetches;
      aceId2 = [v12 aceId];
      LOBYTE(spawnedGuideImageFetches) = [(NSMutableSet *)spawnedGuideImageFetches containsObject:aceId2];

      if ((spawnedGuideImageFetches & 1) == 0)
      {
        guideImageOperationQueue = self->_guideImageOperationQueue;
        v28[0] = _NSConcreteStackBlock;
        v28[1] = 3221225472;
        v28[2] = sub_1000318D8;
        v28[3] = &unk_100167768;
        v28[4] = self;
        v18 = v12;
        v29 = v18;
        v30 = aceId;
        v31 = v11;
        [(NSOperationQueue *)guideImageOperationQueue addOperationWithBlock:v28];
        v19 = self->_spawnedGuideImageFetches;
        aceId3 = [v18 aceId];
        [(NSMutableSet *)v19 addObject:aceId3];
      }
    }

    [v11 setIconImage:_fallbackImage];
    domainDisplayName = [v12 domainDisplayName];
    [v11 setName:domainDisplayName];

    tagPhrase = [v12 tagPhrase];
    [v11 setTagPhrase:tagPhrase];

    if (v9)
    {
      _numberOfIntentEnabledApps = [(SRGuideViewController *)self _numberOfIntentEnabledApps];
      if (_numberOfIntentEnabledApps == [pathCopy item] + 1)
      {
        [v11 setKeylineType:0];
      }
    }

    else
    {
      _numberOfHelpDomains = [(SRGuideViewController *)self _numberOfHelpDomains];
      if (_numberOfHelpDomains == [pathCopy item] + 1)
      {
        [v11 setKeylineType:1];
        v26 = +[UIColor siriui_lightKeylineColor];
        [v11 setKeylineCustomBackgroundColor:v26];
      }
    }
  }

  return v11;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[SRGuideViewHeader reuseIdentifier];
  v9 = [viewCopy dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v8 forIndexPath:pathCopy];

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  pathCopy = path;
  [view deselectItemAtIndexPath:pathCopy animated:1];
  section = [pathCopy section];
  if (section <= 1)
  {
    if (section)
    {
      v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_enabledIntentSupportedAppSnippets, "objectAtIndexedSubscript:", [pathCopy item]);
    }

    else
    {
      _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
      domainSnippets = [_guideSnippet domainSnippets];
      v8 = [domainSnippets objectAtIndexedSubscript:{objc_msgSend(pathCopy, "item")}];
    }

    delegate = [(SRGuideViewController *)self delegate];
    v13 = v8;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [delegate siriSnippetViewController:self pushSirilandSnippets:v12];

    self->_showingDetails = 1;
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout sizeForItemAtIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  delegate = [(SRGuideViewController *)self delegate];
  [delegate siriViewControllerExpectedWidth:self];
  v10 = v9;

  if (section == 2)
  {
    _bigButtonViewController = [(SRGuideViewController *)self _bigButtonViewController];
    view = [_bigButtonViewController view];
    [view sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v14 = v13 + 8.0;
  }

  else
  {
    _bigButtonViewController = [(SRGuideViewController *)self _domainSnippetForIndexPath:pathCopy];
    [(SRGuideViewController *)self _heightOfRowForDomainSnippet:_bigButtonViewController];
    v14 = v15;
  }

  v16 = v10;
  v17 = v14;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_iconImageForGuideDomainSnippet:(id)snippet
{
  snippetCopy = snippet;
  iconDisplayIdentifier = [snippetCopy iconDisplayIdentifier];
  iconResourceName = [snippetCopy iconResourceName];
  if (iconDisplayIdentifier && [snippetCopy isAppIcon])
  {
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    _fallbackImage = [UIImage _applicationIconImageForBundleIdentifier:iconDisplayIdentifier format:1 scale:?];

    if (_fallbackImage)
    {
      goto LABEL_13;
    }
  }

  else
  {
    _fallbackImage = 0;
  }

  if (iconResourceName)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    _fallbackImage = [UIImage _deviceSpecificImageNamed:iconResourceName inBundle:v9];
    if ([snippetCopy iconNeedsProcessing])
    {
      v10 = +[UIScreen mainScreen];
      [v10 scale];
      v12 = v11;

      if (v12 != 2.0)
      {
        v13 = +[UIScreen mainScreen];
        [v13 scale];
      }

      [_fallbackImage CGImage];
      v14 = LICreateIconForImage();
      if (v14)
      {
        v15 = v14;
        v16 = [UIImage imageWithCGImage:v14];

        CGImageRelease(v15);
        _fallbackImage = v16;
      }
    }
  }

LABEL_13:
  if (!_fallbackImage)
  {
    _fallbackImage = [(SRGuideViewController *)self _fallbackImage];
  }

  return _fallbackImage;
}

- (id)_fallbackImage
{
  fallbackImage = self->_fallbackImage;
  if (!fallbackImage)
  {
    v4 = [NSBundle bundleForClass:objc_opt_class()];
    v5 = [UIImage _deviceSpecificImageNamed:@"Siri" inBundle:v4];
    v6 = self->_fallbackImage;
    self->_fallbackImage = v5;

    fallbackImage = self->_fallbackImage;
  }

  return fallbackImage;
}

- (BOOL)_hasTitle
{
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  headerText = [_guideSnippet headerText];
  v4 = [headerText length] != 0;

  return v4;
}

- (void)_prepareSiriEnabledAppList
{
  delegate = [(SRGuideViewController *)self delegate];
  v4 = [delegate siriEnabledAppListForSiriViewController:self];
  siriEnabledAppList = self->_siriEnabledAppList;
  self->_siriEnabledAppList = v4;

  v6 = objc_alloc_init(NSMutableArray);
  enabledIntentSupportedAppSnippets = self->_enabledIntentSupportedAppSnippets;
  self->_enabledIntentSupportedAppSnippets = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  _guideSnippet = [(SRGuideViewController *)self _guideSnippet];
  intentEnabledAppSnippets = [_guideSnippet intentEnabledAppSnippets];

  v10 = [intentEnabledAppSnippets countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(intentEnabledAppSnippets);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 performIntentEnabledAppAuthorizationCheck])
        {
          v15 = self->_siriEnabledAppList;
          iconDisplayIdentifier = [v14 iconDisplayIdentifier];
          LODWORD(v15) = [(NSSet *)v15 containsObject:iconDisplayIdentifier];

          if (!v15)
          {
            continue;
          }
        }

        [(NSMutableArray *)self->_enabledIntentSupportedAppSnippets addObject:v14];
      }

      v11 = [intentEnabledAppSnippets countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

@end