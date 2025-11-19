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
- (id)actionMenuImageWithTintColor:(id)a3;
- (id)dragBarImageWithTintColor:(id)a3;
- (id)infoBarAudiobookImageWithTintColor:(id)a3;
- (id)selectedCheckmarkImageForSelectedState:(BOOL)a3;
- (id)stringFromSectionData:(id)a3;
- (id)templateCloudImageForCloudState:(int64_t)a3;
- (int64_t)selectedSortIndex;
- (void)_updateStoreStatus;
- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4;
- (void)dealloc;
- (void)setCollectionDescription:(id)a3;
- (void)setCollectionTitle:(id)a3;
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
    v5 = [v4 activeStoreAccount];
    v6 = [v5 ams_DSID];
    currentStoreAccountID = v2->_currentStoreAccountID;
    v2->_currentStoreAccountID = v6;

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
  v2 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  v3 = v2 == 0;

  return v3;
}

- (id)templateCloudImageForCloudState:(int64_t)a3
{
  if (!a3)
  {
    v7 = 0;
    goto LABEL_20;
  }

  v5 = [(BKLibraryBookshelfSupplementaryDataSource *)self templateCloudImages];
  if (!v5)
  {
    v5 = +[NSMutableDictionary dictionary];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setTemplateCloudImages:v5];
  }

  v6 = [NSNumber numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];
  if (!v7)
  {
    switch(a3)
    {
      case 3:
        v8 = [(BKLibraryBookshelfSupplementaryDataSource *)self cloudErrorImageName];
        break;
      case 2:
        v8 = [(BKLibraryBookshelfSupplementaryDataSource *)self cloudUploadingImageName];
        break;
      case 1:
        v8 = [(BKLibraryBookshelfSupplementaryDataSource *)self cloudDownloadImageName];
        break;
      default:
        v7 = 0;
        v9 = 0;
LABEL_18:

        goto LABEL_19;
    }

    v9 = v8;
    if (v8)
    {
      v10 = +[BSUITemplate manager];
      v11 = [v10 imageResourceCache];
      v12 = +[UIScreen mainScreen];
      [v12 scale];
      LOBYTE(v21) = 1;
      v14 = [v11 symbolImageWithName:v9 compatibleWithFontSize:5 weight:2 scale:0 renderingMode:0 colors:0 style:13.0 contentsScale:v13 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, v21}];
      v15 = [v14 newImageWithoutContentInsets];
      v7 = [v15 imageWithRenderingMode:2];

      if (v7 || (+[UIImageSymbolConfiguration configurationWithPointSize:weight:scale:](UIImageSymbolConfiguration, "configurationWithPointSize:weight:scale:", 5, 2, 13.0), v16 = objc_claimAutoreleasedReturnValue(), BSUIBundle(), v17 = objc_claimAutoreleasedReturnValue(), +[UIImage imageNamed:inBundle:withConfiguration:](UIImage, "imageNamed:inBundle:withConfiguration:", v9, v17, v16), v18 = objc_claimAutoreleasedReturnValue(), [v18 imageWithRenderingMode:2], v7 = objc_claimAutoreleasedReturnValue(), v18, v17, v16, v7))
      {
        v19 = [(BKLibraryBookshelfSupplementaryDataSource *)self templateCloudImages];
        [v19 setObject:v7 forKeyedSubscript:v6];
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

- (id)actionMenuImageWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfSupplementaryDataSource *)self actionMenuImageTintColor];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[BSUITemplate manager];
    v8 = [v7 imageResourceCache];
    v9 = [(BKLibraryBookshelfSupplementaryDataSource *)self actionMenuImageName];
    v10 = +[UIScreen mainScreen];
    [v10 scale];
    LOBYTE(v17) = 1;
    v12 = [v8 symbolImageWithName:v9 compatibleWithFontSize:7 weight:3 scale:0 renderingMode:0 colors:0 style:13.0 contentsScale:v11 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 0, v17}];
    v13 = [v12 newImageWithoutContentInsets];
    v14 = [v13 imageMaskWithColor:v4];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setActionMenuImageWithTintColor:v14];

    [(BKLibraryBookshelfSupplementaryDataSource *)self setActionMenuImageTintColor:v4];
  }

  v15 = [(BKLibraryBookshelfSupplementaryDataSource *)self actionMenuImageWithTintColor];

  return v15;
}

- (id)infoBarAudiobookImageWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfSupplementaryDataSource *)self infoBarAudiobookImageTintColor];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = +[BSUITemplate manager];
    v8 = [v7 imageResourceCache];
    v9 = [(BKLibraryBookshelfSupplementaryDataSource *)self infoBarAudiobookImageName];
    v10 = UIImageSymbolSizeMedium;
    v11 = +[UIScreen mainScreen];
    [v11 scale];
    LOBYTE(v18) = 1;
    v13 = [v8 symbolImageWithName:v9 compatibleWithFontSize:5 weight:v10 scale:0 renderingMode:0 colors:0 style:13.0 contentsScale:v12 layoutDirection:UIEdgeInsetsZero.top insets:UIEdgeInsetsZero.left baseline:{UIEdgeInsetsZero.bottom, UIEdgeInsetsZero.right, 1, v18}];
    v14 = [v13 newImageWithoutContentInsets];
    v15 = [v14 imageMaskWithColor:v4];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setInfoBarAudiobookImageWithTintColor:v15];

    [(BKLibraryBookshelfSupplementaryDataSource *)self setInfoBarAudiobookImageTintColor:v4];
  }

  v16 = [(BKLibraryBookshelfSupplementaryDataSource *)self infoBarAudiobookImageWithTintColor];

  return v16;
}

- (id)dragBarImageWithTintColor:(id)a3
{
  v4 = a3;
  v5 = [(BKLibraryBookshelfSupplementaryDataSource *)self dragBarTintColor];
  v6 = [v4 isEqual:v5];

  if ((v6 & 1) == 0)
  {
    v7 = [UIImageSymbolConfiguration configurationWithPointSize:6 weight:2 scale:20.0];
    v8 = [(BKLibraryBookshelfSupplementaryDataSource *)self dragBarName];
    v9 = [UIImage systemImageNamed:v8];
    v10 = [v9 imageWithConfiguration:v7];
    v11 = [v10 imageMaskWithColor:v4];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setDragBarImage:v11];

    [(BKLibraryBookshelfSupplementaryDataSource *)self setDragBarTintColor:v4];
  }

  v12 = [(BKLibraryBookshelfSupplementaryDataSource *)self dragBarImage];

  return v12;
}

- (id)selectedCheckmarkImageForSelectedState:(BOOL)a3
{
  v5 = [UIImageSymbolConfiguration configurationWithPointSize:4 weight:22.0];
  v6 = [(BKLibraryBookshelfSupplementaryDataSource *)self selectedCheckmarkImage];

  if (!v6)
  {
    v7 = [(BKLibraryBookshelfSupplementaryDataSource *)self selectedCheckmarkName];
    v8 = [UIImage systemImageNamed:v7];
    v9 = [v8 imageWithConfiguration:v5];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setSelectedCheckmarkImage:v9];
  }

  v10 = [(BKLibraryBookshelfSupplementaryDataSource *)self unselectedCheckmarkImage];

  if (!v10)
  {
    v11 = [(BKLibraryBookshelfSupplementaryDataSource *)self unselectedCheckmarkName];
    v12 = [UIImage systemImageNamed:v11];
    v13 = [v12 imageWithConfiguration:v5];
    [(BKLibraryBookshelfSupplementaryDataSource *)self setUnselectedCheckmarkImage:v13];
  }

  if (a3)
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

- (void)setCollectionTitle:(id)a3
{
  v12 = a3;
  if (![(NSString *)self->_collectionTitle isEqualToString:?])
  {
    v4 = [v12 copy];
    collectionTitle = self->_collectionTitle;
    self->_collectionTitle = v4;

    v6 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
    v7 = [v6 title];
    if (([v7 isEqualToString:v12] & 1) == 0)
    {
      if (v12)
      {
      }

      else
      {
        v8 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
        v9 = [v8 title];

        if (!v9)
        {
          goto LABEL_8;
        }
      }

      v10 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
      [v10 setTitle:v12];

      v6 = +[BKLibraryManager defaultManager];
      v7 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
      v11 = [v7 managedObjectContext];
      [v6 saveManagedObjectContext:v11];
    }
  }

LABEL_8:
}

- (void)setCollectionDescription:(id)a3
{
  v14 = a3;
  if ([(NSString *)self->_collectionDescription isEqualToString:?])
  {
    goto LABEL_14;
  }

  v4 = [v14 copy];
  collectionDescription = self->_collectionDescription;
  self->_collectionDescription = v4;

  v6 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  v7 = [v6 details];
  if (!v7 && ![v14 length])
  {
LABEL_13:

LABEL_14:
    v13 = v14;
    goto LABEL_15;
  }

  v8 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  v9 = [v8 details];
  if ([v9 isEqualToString:v14])
  {

LABEL_12:
    goto LABEL_13;
  }

  if (v14)
  {

LABEL_9:
    if (![v14 length])
    {

      v14 = 0;
    }

    v12 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
    [v12 setDetails:v14];

    v6 = +[BKLibraryManager defaultManager];
    v7 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
    v8 = [v7 managedObjectContext];
    [v6 saveManagedObjectContext:v8];
    goto LABEL_12;
  }

  v10 = [(BKLibraryBookshelfSupplementaryDataSource *)self collection];
  v11 = [v10 details];

  if (v11)
  {
    goto LABEL_9;
  }

  v13 = 0;
LABEL_15:
}

- (NSString)sortButtonTitle
{
  v3 = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v4 = [v3 objectAtIndexedSubscript:{-[BKLibraryBookshelfSupplementaryDataSource selectedSortIndex](self, "selectedSortIndex")}];
  v5 = [v4 title];

  return v5;
}

- (NSString)sortByLabelText
{
  v3 = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v4 = [v3 objectAtIndexedSubscript:{-[BKLibraryBookshelfSupplementaryDataSource selectedSortIndex](self, "selectedSortIndex")}];
  v5 = [v4 label];

  return v5;
}

- (BKLibrarySortByMode)currentSortMode
{
  v3 = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v4 = [v3 objectAtIndexedSubscript:{-[BKLibraryBookshelfSupplementaryDataSource selectedSortIndex](self, "selectedSortIndex")}];

  return v4;
}

- (int64_t)selectedSortIndex
{
  v3 = [(BKLibraryBookshelfSupplementaryDataSource *)self sortMode];
  v4 = [(BKLibraryBookshelfSupplementaryDataSource *)self sortControlConfig];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10016D4D8;
  v7[3] = &unk_100A09218;
  v7[4] = v3;
  v5 = [v4 indexOfObjectPassingTest:v7];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  else
  {
    return v5;
  }
}

- (id)stringFromSectionData:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
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

- (void)account:(unint64_t)a3 didChangeWithReason:(unint64_t)a4
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