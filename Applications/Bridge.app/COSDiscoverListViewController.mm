@interface COSDiscoverListViewController
- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section;
- (COSDiscoverListViewController)init;
- (id)_pluginForIndexPath:(id)path;
- (id)_pluginsToDisplay;
- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path;
- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path;
- (id)titleForSectionIndex:(int64_t)index;
- (int64_t)_numberOfItemsInDiscoverSection:(int64_t)section;
- (int64_t)numberOfSectionsInCollectionView:(id)view;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value;
- (void)reloadContentForTextSizeChange:(id)change;
- (void)viewDidLoad;
@end

@implementation COSDiscoverListViewController

- (COSDiscoverListViewController)init
{
  v3 = dispatch_queue_create("com.apple.Bridge.pluginLoaderQueue", 0);
  pluginLoaderQueue = self->_pluginLoaderQueue;
  self->_pluginLoaderQueue = v3;

  v5 = objc_opt_new();
  [v5 setSectionInset:{0.0, 0.0, 20.0, 0.0}];
  [v5 sectionInset];
  v7 = v6;
  [v5 sectionInset];
  v9 = v7 + v8;
  v10 = +[UIScreen mainScreen];
  [v10 bounds];
  self->_preferredCellWidth = v11 - v9;

  [v5 setEstimatedItemSize:{self->_preferredCellWidth, self->_preferredCellWidth}];
  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"reloadContentForTextSizeChange:" name:UIContentSizeCategoryDidChangeNotification object:0];

  v15.receiver = self;
  v15.super_class = COSDiscoverListViewController;
  v13 = [(COSDiscoverListViewController *)&v15 initWithCollectionViewLayout:v5];

  return v13;
}

- (void)reloadContentForTextSizeChange:(id)change
{
  collectionView = [(COSDiscoverListViewController *)self collectionView];
  [collectionView reloadData];
}

- (void)viewDidLoad
{
  v20.receiver = self;
  v20.super_class = COSDiscoverListViewController;
  [(COSDiscoverListViewController *)&v20 viewDidLoad];
  collectionView = [(COSDiscoverListViewController *)self collectionView];
  v4 = objc_opt_class();
  v5 = +[COSDiscoverCell reuseIdentifier];
  [collectionView registerClass:v4 forCellWithReuseIdentifier:v5];

  collectionView2 = [(COSDiscoverListViewController *)self collectionView];
  v7 = objc_opt_class();
  v8 = +[COSDiscoverSectionHeader reuseIdentifier];
  [collectionView2 registerClass:v7 forSupplementaryViewOfKind:UICollectionElementKindSectionHeader withReuseIdentifier:v8];

  v9 = BPSGetActiveSetupCompletedDevice();
  if (v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = 2;
  }

  [BCCAReporter incrementDiscoverSuccessType:v10];

  v11 = +[UIColor blackColor];
  collectionView3 = [(COSDiscoverListViewController *)self collectionView];
  [collectionView3 setBackgroundColor:v11];

  v13 = [COSTinkerHealthSharingSetupDelegate tinkerDevice]_0();
  v14 = NRDevicePropertyIsPaired;
  v15 = [v13 valueForProperty:NRDevicePropertyIsPaired];
  v16 = v15;
  if (v13 && !v15)
  {
    v17 = pbb_setupflow_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Discover ~ Waiting for NRDevicePropertyIsPaired state to load...", v19, 2u);
    }

    v21 = v14;
    v18 = [NSArray arrayWithObjects:&v21 count:1];
    [v13 addPropertyObserver:self forPropertyChanges:v18];
  }
}

- (void)device:(id)device propertyDidChange:(id)change fromValue:(id)value
{
  changeCopy = change;
  v7 = [changeCopy isEqualToString:NRDevicePropertyIsPaired];
  v8 = pbb_setupflow_log();
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = changeCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Discover ~ Reloaded for property change: %@.", buf, 0xCu);
    }

    pluginLoaderQueue = self->_pluginLoaderQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100043588;
    block[3] = &unk_1002682F0;
    block[4] = self;
    dispatch_async(pluginLoaderQueue, block);
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1001873EC(changeCopy, v9);
    }
  }
}

- (id)_pluginsToDisplay
{
  plugins = self->_plugins;
  if (!plugins)
  {
    if (self->_loadingPlugins)
    {
      plugins = 0;
    }

    else
    {
      self->_loadingPlugins = 1;
      pluginLoaderQueue = self->_pluginLoaderQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000437A8;
      block[3] = &unk_1002682F0;
      block[4] = self;
      dispatch_async(pluginLoaderQueue, block);
      plugins = self->_plugins;
    }
  }

  return plugins;
}

- (int64_t)_numberOfItemsInDiscoverSection:(int64_t)section
{
  _pluginsToDisplay = [(COSDiscoverListViewController *)self _pluginsToDisplay];
  v6 = [_pluginsToDisplay count];

  if (v6 <= section)
  {
    return 0;
  }

  _pluginsToDisplay2 = [(COSDiscoverListViewController *)self _pluginsToDisplay];
  v8 = [_pluginsToDisplay2 objectAtIndex:section];
  v9 = [v8 count];

  return v9;
}

- (id)titleForSectionIndex:(int64_t)index
{
  if (!index)
  {
    v3 = @"GET_STARTED";
    goto LABEL_5;
  }

  if (index == 1)
  {
    v3 = @"GET_MORE_FROM_YOUR_WATCH";
LABEL_5:
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:v3 value:&stru_10026E598 table:@"Localizable"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

- (id)_pluginForIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  v6 = [pathCopy row];

  _pluginsToDisplay = [(COSDiscoverListViewController *)self _pluginsToDisplay];
  v8 = [_pluginsToDisplay count];

  if (section >= v8)
  {
    v11 = 0;
  }

  else
  {
    _pluginsToDisplay2 = [(COSDiscoverListViewController *)self _pluginsToDisplay];
    v10 = [_pluginsToDisplay2 objectAtIndex:section];

    if (v6 >= [v10 count])
    {
      v11 = 0;
    }

    else
    {
      v11 = [v10 objectAtIndex:v6];
    }
  }

  return v11;
}

- (int64_t)numberOfSectionsInCollectionView:(id)view
{
  if (self->_loadingPlugins)
  {
    return 0;
  }

  _pluginsToDisplay = [(COSDiscoverListViewController *)self _pluginsToDisplay];
  v5 = [_pluginsToDisplay count];

  return v5;
}

- (id)collectionView:(id)view viewForSupplementaryElementOfKind:(id)kind atIndexPath:(id)path
{
  viewCopy = view;
  kindCopy = kind;
  pathCopy = path;
  if ([kindCopy isEqualToString:UICollectionElementKindSectionHeader])
  {
    v11 = +[COSDiscoverSectionHeader reuseIdentifier];
    v12 = [viewCopy dequeueReusableSupplementaryViewOfKind:kindCopy withReuseIdentifier:v11 forIndexPath:pathCopy];

    v13 = -[COSDiscoverListViewController titleForSectionIndex:](self, "titleForSectionIndex:", [pathCopy section]);
    if (v12)
    {
      [v12 setSectionTitle:v13];
    }
  }

  else
  {
    v15.receiver = self;
    v15.super_class = COSDiscoverListViewController;
    v12 = [(COSDiscoverListViewController *)&v15 collectionView:viewCopy viewForSupplementaryElementOfKind:kindCopy atIndexPath:pathCopy];
  }

  return v12;
}

- (id)collectionView:(id)view cellForItemAtIndexPath:(id)path
{
  pathCopy = path;
  viewCopy = view;
  v8 = +[COSDiscoverCell reuseIdentifier];
  v9 = [viewCopy dequeueReusableCellWithReuseIdentifier:v8 forIndexPath:pathCopy];

  [v9 setPreferredWidth:self->_preferredCellWidth];
  v10 = [(COSDiscoverListViewController *)self _pluginForIndexPath:pathCopy];
  if (v10)
  {
    v11 = -[COSDiscoverListViewController _numberOfItemsInDiscoverSection:](self, "_numberOfItemsInDiscoverSection:", [pathCopy section]);
    v12 = [pathCopy row] != (v11 - 1);
    badgeImageForDiscoverPlugin = [v10 badgeImageForDiscoverPlugin];
    titleForDiscoverPlugin = [v10 titleForDiscoverPlugin];
    descriptionForDiscoverPlugin = [v10 descriptionForDiscoverPlugin];
    [v9 setImage:badgeImageForDiscoverPlugin title:titleForDiscoverPlugin subtitle:descriptionForDiscoverPlugin wantsCellDivider:v12];
  }

  return v9;
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v5 = [(COSDiscoverListViewController *)self _pluginForIndexPath:path];
  if (objc_opt_respondsToSelector())
  {
    detailViewControllerToLaunch = [v5 detailViewControllerToLaunch];
    if (detailViewControllerToLaunch)
    {
      [(COSDiscoverListViewController *)self presentViewController:detailViewControllerToLaunch animated:1 completion:0];
      if (objc_opt_respondsToSelector())
      {
        +[BCCAReporter incrementDiscoverSuccessType:](BCCAReporter, "incrementDiscoverSuccessType:", [v5 analyticsEventType]);
      }
    }

    else
    {
      v7 = pbb_discover_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001874DC(v7);
      }
    }
  }

  else if (objc_opt_respondsToSelector())
  {
    [v5 onUserTappedPlugin];
    if (objc_opt_respondsToSelector())
    {
      +[BCCAReporter incrementDiscoverSuccessType:](BCCAReporter, "incrementDiscoverSuccessType:", [v5 analyticsEventType]);
    }
  }
}

- (CGSize)collectionView:(id)view layout:(id)layout referenceSizeForHeaderInSection:(int64_t)section
{
  layout = [(COSDiscoverListViewController *)self titleForSectionIndex:section, layout];
  v7 = objc_opt_new();
  v8 = +[COSDiscoverSectionHeader titleLabelFont];
  [v7 setFont:v8];

  [v7 setNumberOfLines:0];
  [v7 setText:layout];
  v9 = +[UIColor systemGrayColor];
  [v7 setTextColor:v9];

  [v7 setAdjustsFontForContentSizeCategory:1];
  [v7 setLineBreakMode:0];
  [v7 sizeThatFits:{self->_preferredCellWidth + -40.0, 1.79769313e308}];
  v11 = v10;
  v13 = v12;
  +[COSDiscoverSectionHeader topMargin];
  v15 = v14;
  +[COSDiscoverSectionHeader bottomMargin];
  v17 = v13 + v15 + v16;

  v18 = v11;
  v19 = v17;
  result.height = v19;
  result.width = v18;
  return result;
}

@end