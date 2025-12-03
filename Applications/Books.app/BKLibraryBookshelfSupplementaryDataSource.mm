@interface BKLibraryBookshelfSupplementaryDataSource
- (BKLibraryBookshelfSupplementaryDataSource)init;
- (BKLibrarySortByMode)currentSortMode;
- (BOOL)collectionIsSeries;
- (BOOL)storeReachable;
- (NSString)moreButtonAccessibilityLabel;
- (NSString)sortButtonTitle;
- (NSString)sortByLabelText;
- (NSString)starRatingCountAccessibilityLabel;
- (NSString)starRatingCountLabel;
- (id)actionMenuImageWithTintColor:(id)color;
- (id)dragBarImageWithTintColor:(id)color;
- (id)infoBarAudiobookImageWithTintColor:(id)color;
- (id)selectedCheckmarkImageForSelectedState:(BOOL)state;
- (id)stringFromSectionData:(id)data;
- (id)templateCloudImageForCloudState:(int64_t)state;
- (int64_t)selectedSortIndex;
- (void)_updateStoreStatus;
- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason;
- (void)dealloc;
- (void)setCollectionDescription:(id)description;
- (void)setCollectionTitle:(id)title;
@end

@implementation BKLibraryBookshelfSupplementaryDataSource

- (BKLibraryBookshelfSupplementaryDataSource)init
{
  v9.receiver = self;
  v9.super_class = BKLibraryBookshelfSupplementaryDataSource;
  v2 = [(BKLibraryBookshelfSupplementaryDataSource *)&v9 init];
  if (v2)
  {
    v3 = +[BUAccountsProvider sharedProvider];
    [v3 addObserver:v2 accountTypes:1];

    v4 = +[BUAccountsProvider sharedProvider];
    activeStoreAccount = [v4 activeStoreAccount];
    ams_DSID = [activeStoreAccount ams_DSID];
    currentStoreAccountID = v2->_currentStoreAccountID;
    v2->_currentStoreAccountID = ams_DSID;

    [(BKLibraryBookshelfSupplementaryDataSource *)v2 _updateStoreStatus];
  }

  return v2;
}

- (void)dealloc
{
  v3 = +[BUAccountsProvider sharedProvider];
  [v3 removeObserver:self accountTypes:1];

  v4.receiver = self;
  v4.super_class = BKLibraryBookshelfSupplementaryDataSource;
  [(BKLibraryBookshelfSupplementaryDataSource *)&v4 dealloc];
}

- (void)_updateStoreStatus
{
  v5 = +[BUAccountsProvider sharedProvider];
  if ([v5 isStoreAccountManagedAppleID])
  {
    [(BKLibraryBookshelfSupplementaryDataSource *)self setStoreStatus:2];
  }

  else
  {
    v3 = +[BURestrictionsProvider sharedInstance];
    if ([v3 isBookStoreAllowed])
    {
      v4 = 1;
    }

    else
    {
      v4 = 2;
    }

    [(BKLibraryBookshelfSupplementaryDataSource *)self setStoreStatus:v4];
  }
}

- (BOOL)storeReachable
{
  if (![(BKLibraryBookshelfSupplementaryDataSource *)self storeStatus])
  {
    [(BKLibraryBookshelfSupplementaryDataSource *)self _updateStoreStatus];
  }

  if ([(BKLibraryBookshelfSupplementaryDataSource *)self storeStatus]== 1)
  {
    return +[BKReachability isOffline]^ 1;
  }

  else
  {
    return 0;
  }
}

- (BOOL)collectionIsSeries
{
  collection = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  v3 = collection == 0;

  return v3;
}

- (id)templateCloudImageForCloudState:(int64_t)state
{
  if (!state)
  {
    v7 = 0;
    goto LABEL_20;
  }

  templateCloudImages = [(BKLibraryBookshelfSupplementaryDataSource *)self templateCloudImages];
  if (!templateCloudImages)
  {
    templateCloudImages = +[NSMutableDictionary dictionary];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setTemplateCloudImages:templateCloudImages];
  }

  v6 = [NSNumber numberWithInteger:state];
  v7 = [templateCloudImages objectForKeyedSubscript:v6];
  if (!v7)
  {
    switch(state)
    {
      case 3:
        cloudErrorImageName = [(BKLibraryBookshelfSupplementaryDataSource *)self cloudErrorImageName];
        break;
      case 2:
        cloudErrorImageName = [(BKLibraryBookshelfSupplementaryDataSource *)self cloudUploadingImageName];
        break;
      case 1:
        cloudErrorImageName = [(BKLibraryBookshelfSupplementaryDataSource *)self cloudDownloadImageName];
        break;
      default:
        v7 = 0;
        v9 = 0;
LABEL_18:

        goto LABEL_19;
    }

    v9 = cloudErrorImageName;
    if (cloudErrorImageName)
    {
      v10 = +[BSUITemplate manager];
      imageResourceCache = [v10 imageResourceCache];
      v12 = +[UIScreen mainScreen];
      [v12 scale];
      LOBYTE(v21) = 1;
      v14 = [imageResourceCache symbolImageWithName:v9 compatibleWithFontSize:5 weight:2 scale:0 renderingMode:0 colors:0 style:13.0 contentsScale:v13 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, v21}];
      newImageWithoutContentInsets = [v14 newImageWithoutContentInsets];
      v7 = [newImageWithoutContentInsets imageWithRenderingMode:2];

      if (v7 || (+[UIImageSymbolConfiguration configurationWithPointSize:weight:scale:](UIImageSymbolConfiguration, "configurationWithPointSize:weight:scale:", 5, 2, 13.0), v16 = objc_claimAutoreleasedReturnValue(), BSUIBundle(), v17 = objc_claimAutoreleasedReturnValue(), +[UIImage imageNamed:inBundle:withConfiguration:](UIImage, "imageNamed:inBundle:withConfiguration:", v9, v17, v16), v18 = objc_claimAutoreleasedReturnValue(), [v18 imageWithRenderingMode:2], v7 = objc_claimAutoreleasedReturnValue(), v18, v17, v16, v7))
      {
        templateCloudImages2 = [(BKLibraryBookshelfSupplementaryDataSource *)self templateCloudImages];
        [templateCloudImages2 setObject:v7 forKeyedSubscript:v6];
      }
    }

    else
    {
      v7 = 0;
    }

    goto LABEL_18;
  }

LABEL_19:

LABEL_20:

  return v7;
}

- (id)actionMenuImageWithTintColor:(id)color
{
  colorCopy = color;
  actionMenuImageTintColor = [(BKLibraryBookshelfSupplementaryDataSource *)self actionMenuImageTintColor];
  v6 = [colorCopy isEqual:actionMenuImageTintColor];

  if ((v6 & 1) == 0)
  {
    v7 = +[BSUITemplate manager];
    imageResourceCache = [v7 imageResourceCache];
    actionMenuImageName = [(BKLibraryBookshelfSupplementaryDataSource *)self actionMenuImageName];
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    LOBYTE(v17) = 1;
    v12 = [imageResourceCache symbolImageWithName:actionMenuImageName compatibleWithFontSize:7 weight:3 scale:0 renderingMode:0 colors:0 style:13.0 contentsScale:v11 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, v17}];
    newImageWithoutContentInsets = [v12 newImageWithoutContentInsets];
    v14 = [newImageWithoutContentInsets imageMaskWithColor:colorCopy];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setActionMenuImageWithTintColor:v14];

    [(BKLibraryBookshelfSupplementaryDataSource *)self setActionMenuImageTintColor:colorCopy];
  }

  actionMenuImageWithTintColor = [(BKLibraryBookshelfSupplementaryDataSource *)self actionMenuImageWithTintColor];

  return actionMenuImageWithTintColor;
}

- (id)infoBarAudiobookImageWithTintColor:(id)color
{
  colorCopy = color;
  infoBarAudiobookImageTintColor = [(BKLibraryBookshelfSupplementaryDataSource *)self infoBarAudiobookImageTintColor];
  v6 = [colorCopy isEqual:infoBarAudiobookImageTintColor];

  if ((v6 & 1) == 0)
  {
    v7 = +[BSUITemplate manager];
    imageResourceCache = [v7 imageResourceCache];
    infoBarAudiobookImageName = [(BKLibraryBookshelfSupplementaryDataSource *)self infoBarAudiobookImageName];
    v10 = UIImageSymbolSizeMedium;
    v11 = +[UIScreen mainScreen];
    [v11 scale];
    LOBYTE(v18) = 1;
    v13 = [imageResourceCache symbolImageWithName:infoBarAudiobookImageName compatibleWithFontSize:5 weight:v10 scale:0 renderingMode:0 colors:0 style:13.0 contentsScale:v12 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 1, v18}];
    newImageWithoutContentInsets = [v13 newImageWithoutContentInsets];
    v15 = [newImageWithoutContentInsets imageMaskWithColor:colorCopy];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setInfoBarAudiobookImageWithTintColor:v15];

    [(BKLibraryBookshelfSupplementaryDataSource *)self setInfoBarAudiobookImageTintColor:colorCopy];
  }

  infoBarAudiobookImageWithTintColor = [(BKLibraryBookshelfSupplementaryDataSource *)self infoBarAudiobookImageWithTintColor];

  return infoBarAudiobookImageWithTintColor;
}

- (id)dragBarImageWithTintColor:(id)color
{
  colorCopy = color;
  dragBarTintColor = [(BKLibraryBookshelfSupplementaryDataSource *)self dragBarTintColor];
  v6 = [colorCopy isEqual:dragBarTintColor];

  if ((v6 & 1) == 0)
  {
    v7 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:20.0];
    dragBarName = [(BKLibraryBookshelfSupplementaryDataSource *)self dragBarName];
    v9 = [UIImage systemImageNamed:dragBarName];
    v10 = [v9 imageWithConfiguration:v7];
    v11 = [v10 imageMaskWithColor:colorCopy];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setDragBarImage:v11];

    [(BKLibraryBookshelfSupplementaryDataSource *)self setDragBarTintColor:colorCopy];
  }

  dragBarImage = [(BKLibraryBookshelfSupplementaryDataSource *)self dragBarImage];

  return dragBarImage;
}

- (id)selectedCheckmarkImageForSelectedState:(BOOL)state
{
  v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:22.0];
  selectedCheckmarkImage = [(BKLibraryBookshelfSupplementaryDataSource *)self selectedCheckmarkImage];

  if (!selectedCheckmarkImage)
  {
    selectedCheckmarkName = [(BKLibraryBookshelfSupplementaryDataSource *)self selectedCheckmarkName];
    v8 = [UIImage systemImageNamed:selectedCheckmarkName];
    v9 = [v8 imageWithConfiguration:v5];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setSelectedCheckmarkImage:v9];
  }

  unselectedCheckmarkImage = [(BKLibraryBookshelfSupplementaryDataSource *)self unselectedCheckmarkImage];

  if (!unselectedCheckmarkImage)
  {
    unselectedCheckmarkName = [(BKLibraryBookshelfSupplementaryDataSource *)self unselectedCheckmarkName];
    v12 = [UIImage systemImageNamed:unselectedCheckmarkName];
    v13 = [v12 imageWithConfiguration:v5];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setUnselectedCheckmarkImage:v13];
  }

  if (state)
  {
    [(BKLibraryBookshelfSupplementaryDataSource *)self selectedCheckmarkImage];
  }

  else
  {
    [(BKLibraryBookshelfSupplementaryDataSource *)self unselectedCheckmarkImage];
  }
  v14 = ;

  return v14;
}

- (void)setCollectionTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_collectionTitle isEqualToString:?])
  {
    v4 = [titleCopy copy];
    collectionTitle = self->_collectionTitle;
    self->_collectionTitle = v4;

    collection = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
    title = [collection title];
    if (([title isEqualToString:titleCopy] & 1) == 0)
    {
      if (titleCopy)
      {
      }

      else
      {
        collection2 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
        title2 = [collection2 title];

        if (!title2)
        {
          goto LABEL_8;
        }
      }

      collection3 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
      [collection3 setTitle:titleCopy];

      collection = +[BKLibraryManager defaultManager];
      title = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
      managedObjectContext = [title managedObjectContext];
      [collection saveManagedObjectContext:managedObjectContext];
    }
  }

LABEL_8:
}

- (void)setCollectionDescription:(id)description
{
  descriptionCopy = description;
  if ([(NSString *)self->_collectionDescription isEqualToString:?])
  {
    goto LABEL_14;
  }

  v4 = [descriptionCopy copy];
  collectionDescription = self->_collectionDescription;
  self->_collectionDescription = v4;

  collection = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  details = [collection details];
  if (!details && ![descriptionCopy length])
  {
LABEL_13:

LABEL_14:
    v13 = descriptionCopy;
    goto LABEL_15;
  }

  collection2 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  details2 = [collection2 details];
  if ([details2 isEqualToString:descriptionCopy])
  {

LABEL_12:
    goto LABEL_13;
  }

  if (descriptionCopy)
  {

LABEL_9:
    if (![descriptionCopy length])
    {

      descriptionCopy = 0;
    }

    collection3 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
    [collection3 setDetails:descriptionCopy];

    collection = +[BKLibraryManager defaultManager];
    details = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
    collection2 = [details managedObjectContext];
    [collection saveManagedObjectContext:collection2];
    goto LABEL_12;
  }

  collection4 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  details3 = [collection4 details];

  if (details3)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_15:
}

- (NSString)sortButtonTitle
{
  sortControlConfig = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v4 = [sortControlConfig objectAtIndexedSubscript:{-[BKLibraryBookshelfSupplementaryDataSource selectedSortIndex](self, "selectedSortIndex")}];
  title = [v4 title];

  return title;
}

- (NSString)sortByLabelText
{
  sortControlConfig = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v4 = [sortControlConfig objectAtIndexedSubscript:{-[BKLibraryBookshelfSupplementaryDataSource selectedSortIndex](self, "selectedSortIndex")}];
  label = [v4 label];

  return label;
}

- (BKLibrarySortByMode)currentSortMode
{
  sortControlConfig = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v4 = [sortControlConfig objectAtIndexedSubscript:{-[BKLibraryBookshelfSupplementaryDataSource selectedSortIndex](self, "selectedSortIndex")}];

  return v4;
}

- (int64_t)selectedSortIndex
{
  sortMode = [(BKLibraryBookshelfSupplementaryDataSource *)self sortMode];
  sortControlConfig = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016D4D8;
  v7[3] = &unk_100A09218;
  v7[4] = sortMode;
  v5 = [sortControlConfig indexOfObjectPassingTest:v7];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (id)stringFromSectionData:(id)data
{
  dataCopy = data;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = dataCopy;
  }

  else
  {
    v5 = +[NSBundle mainBundle];
    v4 = [v5 localizedStringForKey:@"Unknown" value:&stru_100A30A68 table:0];
  }

  return v4;
}

- (NSString)moreButtonAccessibilityLabel
{
  moreButtonAccessibilityLabel = self->_moreButtonAccessibilityLabel;
  if (!moreButtonAccessibilityLabel)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"More Actions" value:&stru_100A30A68 table:0];
    v6 = self->_moreButtonAccessibilityLabel;
    self->_moreButtonAccessibilityLabel = v5;

    moreButtonAccessibilityLabel = self->_moreButtonAccessibilityLabel;
  }

  return moreButtonAccessibilityLabel;
}

- (NSString)starRatingCountLabel
{
  starRatingCountLabel = self->_starRatingCountLabel;
  if (!starRatingCountLabel)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"(%lu)" value:&stru_100A30A68 table:0];
    v6 = self->_starRatingCountLabel;
    self->_starRatingCountLabel = v5;

    starRatingCountLabel = self->_starRatingCountLabel;
  }

  return starRatingCountLabel;
}

- (NSString)starRatingCountAccessibilityLabel
{
  starRatingCountAccessibilityLabel = self->_starRatingCountAccessibilityLabel;
  if (!starRatingCountAccessibilityLabel)
  {
    v4 = +[NSBundle mainBundle];
    v5 = [v4 localizedStringForKey:@"%lu rating(s)" value:&stru_100A30A68 table:0];
    v6 = self->_starRatingCountAccessibilityLabel;
    self->_starRatingCountAccessibilityLabel = v5;

    starRatingCountAccessibilityLabel = self->_starRatingCountAccessibilityLabel;
  }

  return starRatingCountAccessibilityLabel;
}

- (void)account:(unint64_t)account didChangeWithReason:(unint64_t)reason
{
  objc_initWeak(&location, self);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10016D7C4;
  v4[3] = &unk_100A035D0;
  objc_copyWeak(&v5, &location);
  dispatch_async(&_dispatch_main_q, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

@end