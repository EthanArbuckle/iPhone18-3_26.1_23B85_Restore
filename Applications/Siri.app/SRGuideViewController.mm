@interface SRGuideViewController
- (BOOL)_hasTitle;
- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5;
- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5;
- (Class)transparentHeaderViewClass;
- (SAGuidanceGuideSnippet)_guideSnippet;
- (SRGuideViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (double)_heightOfRowForDomainSnippet:(id)a3;
- (double)desiredHeightForTransparentHeaderView;
- (double)desiredHeightForWidth:(double)a3;
- (id)_bigButtonViewController;
- (id)_domainSnippetForHelpDomainAtIndex:(unint64_t)a3;
- (id)_domainSnippetForIndexPath:(id)a3;
- (id)_fallbackImage;
- (id)_iconImageForGuideDomainSnippet:(id)a3;
- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4;
- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5;
- (int64_t)_numberOfHelpDomains;
- (int64_t)_numberOfIntentSupportedApps;
- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4;
- (void)_endTrackingGuideShowTimeIfNecessary;
- (void)_prepareSiriEnabledAppList;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)configureReusableTransparentHeaderView:(id)a3;
- (void)didReceiveMemoryWarning;
- (void)loadView;
- (void)setDelegate:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SRGuideViewController

- (SRGuideViewController)initWithNibName:(id)a3 bundle:(id)a4
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

- (void)setDelegate:(id)a3
{
  v4.receiver = self;
  v4.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v4 setDelegate:a3];
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
    v7 = [(SRGuideViewController *)self _guideSnippet];
    v8 = [v7 appPunchOutButton];
    [(SRBigButtonController *)v6 setAceObject:v8];

    v9 = self->_bigButtonController;
    v10 = [(SRGuideViewController *)self delegate];
    [(SRBigButtonController *)v9 setDelegate:v10];

    bigButtonController = self->_bigButtonController;
  }

  return bigButtonController;
}

- (void)loadView
{
  v12.receiver = self;
  v12.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v12 loadView];
  v3 = [(SRGuideViewController *)self collectionView];
  [v3 setDataSource:self];
  [v3 setDelegate:self];
  v4 = objc_opt_class();
  v5 = +[SRGuideViewCell reuseIdentifier];
  [v3 registerClass:v4 forCellWithReuseIdentifier:v5];

  v6 = objc_opt_class();
  v7 = +[SiriUIContentCollectionViewCell reuseIdentifier];
  [v3 registerClass:v6 forCellWithReuseIdentifier:v7];

  v8 = objc_opt_class();
  v9 = +[SiriUISnippetControllerCell reuseIdentifier];
  [v3 registerClass:v8 forCellWithReuseIdentifier:v9];

  v10 = objc_opt_class();
  v11 = +[SRGuideViewHeader reuseIdentifier];
  [v3 registerClass:v10 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v11];
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(SRGuideViewController *)self collectionView];
  v6 = [v5 indexPathsForSelectedItems];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(SRGuideViewController *)self collectionView];
        [v12 deselectItemAtIndexPath:v11 animated:v3];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13.receiver = self;
  v13.super_class = SRGuideViewController;
  [(SRGuideViewController *)&v13 viewWillAppear:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRGuideViewController *)self delegate];
  v6 = [v5 siriSnippetViewControllerIsVisible:self];

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
  [(SRGuideViewController *)&v10 viewDidAppear:v3];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5 = [(SRGuideViewController *)self delegate];
  v6 = [v5 siriSnippetViewControllerIsVisible:self];

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
  [(SRGuideViewController *)&v8 viewDidDisappear:v3];
}

- (double)desiredHeightForWidth:(double)a3
{
  v4 = [(SRGuideViewController *)self _numberOfHelpDomains];
  v5 = [(SRGuideViewController *)self _numberOfIntentEnabledApps];
  v6 = v5;
  if (!v4)
  {
    v8 = 0.0;
    if (!v5)
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

  while (v4 != v7);
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
  v14 = [(SRGuideViewController *)self _guideSnippet];
  v15 = [v14 appPunchOutButton];

  if (v15)
  {
    v16 = [(SRGuideViewController *)self _bigButtonViewController];
    v17 = [v16 view];
    [v17 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v8 = v8 + v18 + 8.0;
  }

  return v8;
}

- (void)_endTrackingGuideShowTimeIfNecessary
{
  if (self->_startViewingTime)
  {
    v5 = +[NSDate date];
    v3 = [(SRGuideViewController *)self delegate];
    [v3 siriSnippetViewController:self didShowGuideStartDate:self->_startViewingTime endDate:v5];

    startViewingTime = self->_startViewingTime;
    self->_startViewingTime = 0;
  }
}

- (SAGuidanceGuideSnippet)_guideSnippet
{
  guideSnippet = self->_guideSnippet;
  if (!guideSnippet)
  {
    v4 = [(SRGuideViewController *)self snippet];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = self->_guideSnippet;
      self->_guideSnippet = v5;
    }

    else
    {
      v6 = +[AFUIGuideCacheManager sharedManager];
      v7 = [v6 cachedGuideSnippet];
      v8 = self->_guideSnippet;
      self->_guideSnippet = v7;
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

- (void)configureReusableTransparentHeaderView:(id)a3
{
  v4 = a3;
  v6 = [(SRGuideViewController *)self _guideSnippet];
  v5 = [v6 headerText];
  [v4 setTitle:v5];
}

- (double)desiredHeightForTransparentHeaderView
{
  v3 = [(SRGuideViewController *)self delegate];
  [v3 siriViewControllerExpectedWidth:self];
  v5 = v4;
  v6 = [(SRGuideViewController *)self _guideSnippet];
  v7 = [v6 headerText];
  [SRGuideViewHeader sizeThatFits:v7 text:v5, 1.79769313e308];
  v9 = v8;

  return v9;
}

- (int64_t)_numberOfHelpDomains
{
  v2 = [(SRGuideViewController *)self _guideSnippet];
  v3 = [v2 domainSnippets];
  v4 = [v3 count];

  return v4;
}

- (int64_t)_numberOfIntentSupportedApps
{
  v2 = [(SRGuideViewController *)self _guideSnippet];
  v3 = [v2 intentEnabledAppSnippets];
  v4 = [v3 count];

  return v4;
}

- (id)_domainSnippetForHelpDomainAtIndex:(unint64_t)a3
{
  v4 = [(SRGuideViewController *)self _guideSnippet];
  v5 = [v4 domainSnippets];
  v6 = [v5 objectAtIndexedSubscript:a3];

  return v6;
}

- (id)_domainSnippetForIndexPath:(id)a3
{
  v4 = a3;
  v5 = [v4 section];
  v6 = [v4 item];

  if (v5)
  {
    [(SRGuideViewController *)self _domainSnippetForEnabledIntentSupportedAppAtIndex:v6];
  }

  else
  {
    [(SRGuideViewController *)self _domainSnippetForHelpDomainAtIndex:v6];
  }
  v7 = ;

  return v7;
}

- (double)_heightOfRowForDomainSnippet:(id)a3
{
  v4 = a3;
  v5 = [v4 domainDisplayName];
  v6 = [v4 tagPhrase];

  v7 = [(SRGuideViewController *)self delegate];
  [v7 siriViewControllerExpectedWidth:self];
  [SRGuideViewCell heightOfCellWithName:v5 tagPhrase:v6 width:?];
  v9 = v8;

  return v9;
}

- (int64_t)collectionView:(id)a3 numberOfItemsInSection:(int64_t)a4
{
  v6 = a3;
  switch(a4)
  {
    case 2:
      v9 = [(SRGuideViewController *)self _guideSnippet];
      v10 = [v9 appPunchOutButton];
      v8 = v10 != 0;

      goto LABEL_11;
    case 1:
      v7 = [(SRGuideViewController *)self _numberOfIntentEnabledApps];
      goto LABEL_6;
    case 0:
      v7 = [(SRGuideViewController *)self _numberOfHelpDomains];
LABEL_6:
      v8 = v7;
      goto LABEL_11;
  }

  v11 = AFSiriLogContextConnection;
  if (os_log_type_enabled(AFSiriLogContextConnection, OS_LOG_TYPE_ERROR))
  {
    sub_1000CB864(a4, v11);
  }

  v8 = 0;
LABEL_11:

  return v8;
}

- (id)collectionView:(id)a3 cellForItemAtIndexPath:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 section];
  if (v8 > 1)
  {
    v10 = +[SiriUISnippetControllerCell reuseIdentifier];
    v11 = [v7 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v6];

    v24 = [(SRGuideViewController *)self _bigButtonViewController];
    [v11 setSnippetViewController:v24];

    [v11 setTopPadding:8.0];
  }

  else
  {
    v9 = v8;
    v10 = +[SRGuideViewCell reuseIdentifier];
    v11 = [v7 dequeueReusableCellWithReuseIdentifier:v10 forIndexPath:v6];

    v12 = [(SRGuideViewController *)self _domainSnippetForIndexPath:v6];
    v13 = [v12 aceId];
    [v11 setAceId:v13];
    v14 = [(NSCache *)self->_domainIconCache objectForKey:v13];
    if (!v14)
    {
      v14 = [(SRGuideViewController *)self _fallbackImage];
      spawnedGuideImageFetches = self->_spawnedGuideImageFetches;
      v16 = [v12 aceId];
      LOBYTE(spawnedGuideImageFetches) = [(NSMutableSet *)spawnedGuideImageFetches containsObject:v16];

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
        v30 = v13;
        v31 = v11;
        [(NSOperationQueue *)guideImageOperationQueue addOperationWithBlock:v28];
        v19 = self->_spawnedGuideImageFetches;
        v20 = [v18 aceId];
        [(NSMutableSet *)v19 addObject:v20];
      }
    }

    [v11 setIconImage:v14];
    v21 = [v12 domainDisplayName];
    [v11 setName:v21];

    v22 = [v12 tagPhrase];
    [v11 setTagPhrase:v22];

    if (v9)
    {
      v23 = [(SRGuideViewController *)self _numberOfIntentEnabledApps];
      if (v23 == [v6 item] + 1)
      {
        [v11 setKeylineType:0];
      }
    }

    else
    {
      v25 = [(SRGuideViewController *)self _numberOfHelpDomains];
      if (v25 == [v6 item] + 1)
      {
        [v11 setKeylineType:1];
        v26 = +[UIColor siriui_lightKeylineColor];
        [v11 setKeylineCustomBackgroundColor:v26];
      }
    }
  }

  return v11;
}

- (id)collectionView:(id)a3 viewForSupplementaryElementOfKind:(id)a4 atIndexPath:(id)a5
{
  v6 = a5;
  v7 = a3;
  v8 = +[SRGuideViewHeader reuseIdentifier];
  v9 = [v7 dequeueReusableSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v8 forIndexPath:v6];

  return v9;
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = a4;
  [a3 deselectItemAtIndexPath:v6 animated:1];
  v7 = [v6 section];
  if (v7 <= 1)
  {
    if (v7)
    {
      v8 = -[NSMutableArray objectAtIndexedSubscript:](self->_enabledIntentSupportedAppSnippets, "objectAtIndexedSubscript:", [v6 item]);
    }

    else
    {
      v9 = [(SRGuideViewController *)self _guideSnippet];
      v10 = [v9 domainSnippets];
      v8 = [v10 objectAtIndexedSubscript:{objc_msgSend(v6, "item")}];
    }

    v11 = [(SRGuideViewController *)self delegate];
    v13 = v8;
    v12 = [NSArray arrayWithObjects:&v13 count:1];
    [v11 siriSnippetViewController:self pushSirilandSnippets:v12];

    self->_showingDetails = 1;
  }
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 sizeForItemAtIndexPath:(id)a5
{
  v6 = a5;
  v7 = [v6 section];
  v8 = [(SRGuideViewController *)self delegate];
  [v8 siriViewControllerExpectedWidth:self];
  v10 = v9;

  if (v7 == 2)
  {
    v11 = [(SRGuideViewController *)self _bigButtonViewController];
    v12 = [v11 view];
    [v12 sizeThatFits:{CGSizeZero.width, CGSizeZero.height}];
    v14 = v13 + 8.0;
  }

  else
  {
    v11 = [(SRGuideViewController *)self _domainSnippetForIndexPath:v6];
    [(SRGuideViewController *)self _heightOfRowForDomainSnippet:v11];
    v14 = v15;
  }

  v16 = v10;
  v17 = v14;
  result.height = v17;
  result.width = v16;
  return result;
}

- (CGSize)collectionView:(id)a3 layout:(id)a4 referenceSizeForHeaderInSection:(int64_t)a5
{
  width = CGSizeZero.width;
  height = CGSizeZero.height;
  result.height = height;
  result.width = width;
  return result;
}

- (id)_iconImageForGuideDomainSnippet:(id)a3
{
  v4 = a3;
  v5 = [v4 iconDisplayIdentifier];
  v6 = [v4 iconResourceName];
  if (v5 && [v4 isAppIcon])
  {
    v7 = +[UIScreen mainScreen];
    [v7 scale];
    v8 = [UIImage _applicationIconImageForBundleIdentifier:v5 format:1 scale:?];

    if (v8)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = 0;
  }

  if (v6)
  {
    v9 = [NSBundle bundleForClass:objc_opt_class()];
    v8 = [UIImage _deviceSpecificImageNamed:v6 inBundle:v9];
    if ([v4 iconNeedsProcessing])
    {
      v10 = +[UIScreen mainScreen];
      [v10 scale];
      v12 = v11;

      if (v12 != 2.0)
      {
        v13 = +[UIScreen mainScreen];
        [v13 scale];
      }

      [v8 CGImage];
      v14 = LICreateIconForImage();
      if (v14)
      {
        v15 = v14;
        v16 = [UIImage imageWithCGImage:v14];

        CGImageRelease(v15);
        v8 = v16;
      }
    }
  }

LABEL_13:
  if (!v8)
  {
    v8 = [(SRGuideViewController *)self _fallbackImage];
  }

  return v8;
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
  v2 = [(SRGuideViewController *)self _guideSnippet];
  v3 = [v2 headerText];
  v4 = [v3 length] != 0;

  return v4;
}

- (void)_prepareSiriEnabledAppList
{
  v3 = [(SRGuideViewController *)self delegate];
  v4 = [v3 siriEnabledAppListForSiriViewController:self];
  siriEnabledAppList = self->_siriEnabledAppList;
  self->_siriEnabledAppList = v4;

  v6 = objc_alloc_init(NSMutableArray);
  enabledIntentSupportedAppSnippets = self->_enabledIntentSupportedAppSnippets;
  self->_enabledIntentSupportedAppSnippets = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [(SRGuideViewController *)self _guideSnippet];
  v9 = [v8 intentEnabledAppSnippets];

  v10 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v17 + 1) + 8 * i);
        if ([v14 performIntentEnabledAppAuthorizationCheck])
        {
          v15 = self->_siriEnabledAppList;
          v16 = [v14 iconDisplayIdentifier];
          LODWORD(v15) = [(NSSet *)v15 containsObject:v16];

          if (!v15)
          {
            continue;
          }
        }

        [(NSMutableArray *)self->_enabledIntentSupportedAppSnippets addObject:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }
}

@end