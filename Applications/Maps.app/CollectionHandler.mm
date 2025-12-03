@interface CollectionHandler
+ (CGSize)photoSize;
+ (id)collection;
+ (id)collectionAllSavedPlaces;
+ (id)collectionWithCollection:(id)collection;
+ (id)collectionWithCollectionHandler:(id)handler;
+ (id)collectionWithStorage:(id)storage;
+ (id)existingCollectionItemForMapItem:(id)item error:(id)error;
+ (id)favoriteCollection;
+ (id)mspArrayForCollectionHandlers:(id)handlers;
- (BOOL)canShare;
- (CollectionHandler)init;
- (CollectionHandler)initWithCollection:(id)collection;
- (CollectionManagerOperation)collectionOperation;
- (NSNumber)numberOfItems;
- (NSString)description;
- (NSString)subtitle;
- (UIImage)image;
- (id)fullSharingURLFromContainedMapItems;
- (id)itemForMapItem:(id)item;
- (id)itemForTransitLine:(id)line;
- (unint64_t)bucketedNumberOfItems;
- (void)_loadSortType;
- (void)_storeSortType;
- (void)createCollection:(id)collection;
- (void)deleteCollection:(id)collection;
- (void)fetchCoverPhotoForFrameSize:(CGSize)size scale:(double)scale completion:(id)completion;
- (void)loadDefaultImage;
- (void)loadImage;
- (void)notifyObserversContentUpdated;
- (void)notifyObserversInfoUpdated;
- (void)rebuildContent:(id)content;
- (void)setSortType:(int64_t)type;
- (void)touch;
- (void)updateCollection:(id)collection;
- (void)updateSorting;
- (void)updateSortingByDistanceIfNeeded;
@end

@implementation CollectionHandler

+ (id)favoriteCollection
{
  v2 = objc_alloc_init(_TtC4Maps25FavoriteCollectionHandler);

  return v2;
}

- (CollectionHandler)init
{
  v6.receiver = self;
  v6.super_class = CollectionHandler;
  v2 = [(CollectionHandler *)&v6 init];
  if (v2)
  {
    v3 = +[NSHashTable weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v3;

    [(CollectionHandler *)v2 _loadSortType];
  }

  return v2;
}

- (NSString)description
{
  identifier = [(CollectionHandler *)self identifier];
  content = [(CollectionHandler *)self content];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [content count]);
  v6 = [NSString stringWithFormat:@"<%p %@ %@ places", self, identifier, v5];

  return v6;
}

+ (id)collectionAllSavedPlaces
{
  v2 = objc_alloc_init(AllPlacesCollectionHandler);

  return v2;
}

- (void)_loadSortType
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v7 = [v3 objectForKey:@"__internal_CollectionSortStorage"];

  identifier = [(CollectionHandler *)self identifier];
  v5 = [v7 objectForKeyedSubscript:identifier];

  if (v5)
  {
    integerValue = [v5 integerValue];
  }

  else
  {
    integerValue = 0;
  }

  self->_sortType = integerValue;
}

- (void)loadImage
{
  objc_initWeak(&location, self);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100CAF41C;
  v33[3] = &unk_101650EA8;
  objc_copyWeak(&v34, &location);
  v3 = objc_retainBlock(v33);
  collection = [(CollectionHandler *)self collection];
  stagedImage = [(CollectionHandler *)self stagedImage];

  if (stagedImage)
  {
    stagedImage2 = [(CollectionHandler *)self stagedImage];
    (v3[2])(v3, stagedImage2);
  }

  else
  {
    image = [collection image];

    if (!image)
    {
      if ([(CollectionHandler *)self contentType]== 1)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        originalContent = [(CollectionHandler *)self originalContent];
        v10 = [originalContent countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v10)
        {
          v11 = *v30;
          obj = originalContent;
          while (2)
          {
            v12 = 0;
            do
            {
              if (*v30 != v11)
              {
                objc_enumerationMutation(obj);
              }

              v13 = *(*(&v29 + 1) + 8 * v12);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v14 = [MKMapItem _itemWithGeoMapItem:v13];
              }

              else
              {
                v14 = v13;
              }

              v15 = v14;
              _geoMapItem = [v14 _geoMapItem];
              _photos = [_geoMapItem _photos];
              [objc_opt_class() photoSize];
              v18 = [_photos _geo_firstPhotoOfAtLeastSize:?];

              if (v18)
              {
                stagedImage2 = [v18 url];

                imageUrl2 = obj;
                goto LABEL_23;
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            originalContent = obj;
            v10 = [obj countByEnumeratingWithState:&v29 objects:v36 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }
      }

      else
      {
        collection2 = [(CollectionHandler *)self collection];
        imageUrl = [collection2 imageUrl];

        if (imageUrl)
        {
          imageUrl2 = [collection imageUrl];
          stagedImage2 = [NSURL URLWithString:imageUrl2];
LABEL_23:

          if (stagedImage2)
          {
            cachedImage = [(CollectionHandler *)self cachedImage];
            v23 = cachedImage == 0;

            if (v23)
            {
              [(CollectionHandler *)self loadDefaultImage];
            }

            v24 = +[MKAppImageManager sharedCollectionCoverImageManager];
            v26[0] = _NSConcreteStackBlock;
            v26[1] = 3221225472;
            v26[2] = sub_100CAF4A8;
            v26[3] = &unk_1016501B8;
            v27 = v3;
            objc_copyWeak(&v28, &location);
            [v24 loadAppImageAtURL:stagedImage2 completionHandler:v26];

            objc_destroyWeak(&v28);
            goto LABEL_5;
          }
        }
      }

      [(CollectionHandler *)self loadDefaultImage];
      goto LABEL_6;
    }

    image2 = [collection image];
    stagedImage2 = [UIImage imageWithData:image2];

    (v3[2])(v3, stagedImage2);
  }

LABEL_5:

LABEL_6:
  objc_destroyWeak(&v34);
  objc_destroyWeak(&location);
}

- (void)loadDefaultImage
{
  if (![(CollectionHandler *)self hasDefaultImage])
  {
    v3 = +[UIScreen mainScreen];
    [v3 scale];
    v5 = v4;

    v6 = +[UIDevice currentDevice];
    userInterfaceIdiom = [v6 userInterfaceIdiom];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100037F3C;
    v13[3] = &unk_1016519B0;
    v13[4] = self;
    v8 = objc_retainBlock(v13);
    if (userInterfaceIdiom == 5)
    {
      originalContent = [(CollectionHandler *)self originalContent];
      if ([originalContent count])
      {
        v10 = @"NoImageGuideIcon";
      }

      else
      {
        v10 = @"NewGuideIcon";
      }

      v11 = [UIImage imageNamed:v10];
    }

    else
    {
      if (_UISolariumEnabled())
      {
LABEL_10:

        return;
      }

      originalContent = [UIImage maps_emptyImageScale:v5];
      v12 = +[UIColor whiteColor];
      v11 = [originalContent imageWithTintColor:v12];
    }

    (v8[2])(v8, v11);
    goto LABEL_10;
  }
}

+ (CGSize)photoSize
{
  v2 = 70.0;
  v3 = 70.0;
  result.height = v3;
  result.width = v2;
  return result;
}

- (void)notifyObserversInfoUpdated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051E58;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)updateSorting
{
  originalContent = [(CollectionHandler *)self originalContent];
  v4 = [originalContent copy];

  sortType = self->_sortType;
  switch(sortType)
  {
    case 2:
      lastLocation = [v4 sortedArrayUsingComparator:&stru_101650168];
      allObjects = [lastLocation copy];
      goto LABEL_8;
    case 1:
      v8 = +[MKLocationManager sharedLocationManager];
      lastLocation = [v8 lastLocation];

      if (lastLocation)
      {
        [lastLocation coordinate];
        v10 = v9;
        [lastLocation coordinate];
        v16[0] = _NSConcreteStackBlock;
        v16[1] = 3221225472;
        v16[2] = sub_100CAFAD4;
        v16[3] = &unk_101650148;
        v16[4] = v10;
        v16[5] = v11;
        v12 = [v4 sortedArrayUsingComparator:v16];
        v13 = [v12 copy];
        content = self->_content;
        self->_content = v13;
      }

      else
      {
        objc_storeStrong(&self->_content, v4);
      }

      goto LABEL_9;
    case 0:
      lastLocation = [v4 reverseObjectEnumerator];
      allObjects = [lastLocation allObjects];
LABEL_8:
      v15 = self->_content;
      self->_content = allObjects;

LABEL_9:
      break;
  }

  [(CollectionHandler *)self notifyObserversContentUpdated];
}

- (void)notifyObserversContentUpdated
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100051F54;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
  [(CollectionHandler *)self notifyObserversInfoUpdated];
}

- (CollectionManagerOperation)collectionOperation
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionOperation);

  return WeakRetained;
}

- (id)fullSharingURLFromContainedMapItems
{
  v3 = objc_alloc_init(GEOURLCollectionStorage);
  title = [(CollectionHandler *)self title];
  [v3 setName:title];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  content = [(CollectionHandler *)self content];
  v6 = [content copy];

  obj = v6;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [MKMapItem _itemWithGeoMapItem:v11];
        }

        else
        {
          v12 = v11;
        }

        v13 = v12;
        v14 = objc_alloc_init(GEOCollectionPlace);
        if ([v13 _hasMUID])
        {
          [v14 setMuid:{objc_msgSend(v13, "_muid")}];
          if ([v13 _hasResultProviderID])
          {
            [v14 setProviderId:{objc_msgSend(v13, "_resultProviderID")}];
          }
        }

        else
        {
          _addressFormattedAsSinglelineAddress = [v13 _addressFormattedAsSinglelineAddress];
          v16 = objc_alloc_init(GEOLatLng);
          [v13 _coordinate];
          [v16 setLat:?];
          [v13 _coordinate];
          [v16 setLng:v17];
          [v14 setAddress:_addressFormattedAsSinglelineAddress];
          [v14 setCoordinate:v16];
        }

        [v3 addPlace:v14];
      }

      v8 = [obj countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = [_MKURLBuilder URLForCollectionStorage:v3];

  return v18;
}

- (BOOL)canShare
{
  if ([(CollectionHandler *)self isEmpty])
  {
    return 0;
  }

  fullSharingURL = [(CollectionHandler *)self fullSharingURL];
  v3 = fullSharingURL != 0;

  return v3;
}

- (void)rebuildContent:(id)content
{
  contentCopy = content;
  v5 = sub_10000BDA4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    handlerType = [(CollectionHandler *)self handlerType];
    identifier = [(CollectionHandler *)self identifier];
    *buf = 134218243;
    v14 = handlerType;
    v15 = 2113;
    v16 = identifier;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Rebuilding Collection with type %ld, ID %{private}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8 = +[CollectionHandlerRebuildQueue sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100CAA280;
  v10[3] = &unk_101660648;
  objc_copyWeak(&v12, buf);
  v9 = contentCopy;
  v11 = v9;
  [v8 async:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (id)itemForTransitLine:(id)line
{
  lineCopy = line;
  v5 = objc_alloc_init(NSMutableArray);
  if ([(CollectionHandler *)self isFavoriteCollection])
  {
    collection2 = [_TtC8MapsSync22MapsSyncQueryPredicate predicateWithFormat:@"(type & %d) != 0", 1];
    [v5 addObject:collection2];
LABEL_5:

    goto LABEL_6;
  }

  collection = [(CollectionHandler *)self collection];
  identifier = [collection identifier];

  if (identifier)
  {
    collection2 = [(CollectionHandler *)self collection];
    identifier2 = [collection2 identifier];
    v591 = identifier2;
    v10 = [NSArray arrayWithObjects:&v591 count:1];
    v11 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"ANY collections.identifier == %@" argumentArray:v10];
    [v5 addObject:v11];

    goto LABEL_5;
  }

LABEL_6:
  v12 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
  v13 = [[_TtC8MapsSync22MapsSyncQueryPredicate alloc] initWithAnd:v5];
  v14 = [v12 initWithPredicate:v13 sortDescriptors:0 range:0];

  v15 = objc_alloc_init(MSCollectionTransitItemRequest);
  v585 = 0;
  v16 = [v15 fetchSyncWithOptions:v14 error:&v585];
  v17 = v585;

  if (v17)
  {
    v18 = sub_10000BDA4();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v593 = "[CollectionHandler itemForTransitLine:]";
      v594 = 2112;
      v595 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%s returned an error: %@", buf, 0x16u);
    }
  }

  v583 = 0u;
  v584 = 0u;
  v581 = 0u;
  v582 = 0u;
  obj = v16;
  v580 = [obj countByEnumeratingWithState:&v581 objects:v590 count:16];
  if (!v580)
  {
    v493 = 0;
    goto LABEL_687;
  }

  v556 = v17;
  v557 = v14;
  v558 = v5;
  v19 = *v582;
  v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
  v576 = *v582;
LABEL_12:
  v21 = 0;
  while (1)
  {
    if (*v582 != v19)
    {
      objc_enumerationMutation(obj);
    }

    v22 = *(*(&v581 + 1) + 8 * v21);
    v23 = objc_alloc(v20[243]);
    transitLineStorage = [v22 transitLineStorage];
    v25 = [v23 initWithData:transitLineStorage];

    v26 = v25;
    v27 = lineCopy;
    if (!(lineCopy | v26))
    {
      break;
    }

    v28 = v27;
    if ((lineCopy == 0) == (v26 == 0))
    {
      identifier3 = [v26 identifier];
      identifier4 = [v28 identifier];
      if (![identifier3 isEqual:identifier4])
      {
        goto LABEL_43;
      }

      name = [v26 name];
      name2 = [v28 name];
      v33 = name;
      v34 = name2;
      if (v33 | v34)
      {
        v35 = [v33 isEqual:v34];

        if (!v35)
        {
          goto LABEL_42;
        }
      }

      v577 = v33;
      system = [v26 system];
      system2 = [v28 system];
      v38 = system;
      v578 = system2;
      if (!(v38 | v578))
      {
LABEL_21:
        departureTimeDisplayStyle = [v26 departureTimeDisplayStyle];
        if (departureTimeDisplayStyle != [v28 departureTimeDisplayStyle])
        {
          goto LABEL_41;
        }

        departuresAreVehicleSpecific = [v26 departuresAreVehicleSpecific];
        if (departuresAreVehicleSpecific != [v28 departuresAreVehicleSpecific])
        {
          goto LABEL_41;
        }

        v570 = v38;
        artwork = [v26 artwork];
        artwork2 = [v28 artwork];
        name3 = artwork;
        v44 = artwork2;
        v559 = name3;
        v561 = v44;
        if (!(name3 | v44))
        {
          goto LABEL_24;
        }

        v19 = v576;
        if ((name3 == 0) != (v44 == 0))
        {
          v60 = name3;
          LOBYTE(name3) = 0;
          goto LABEL_37;
        }

        v573 = v34;
        v61 = v44;
        artworkSourceType = [name3 artworkSourceType];
        if (artworkSourceType != [v61 artworkSourceType])
        {
          LOBYTE(name3) = 0;
          v44 = v561;
          v563 = v559;
          v34 = v573;
          goto LABEL_678;
        }

        artworkUseType = [v559 artworkUseType];
        v34 = v573;
        if (artworkUseType != [v561 artworkUseType])
        {
          LOBYTE(name3) = 0;
          v60 = v559;
          v44 = v561;
LABEL_37:
          v563 = v60;
LABEL_678:

LABEL_679:
          v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          if (name3)
          {

            break;
          }

          goto LABEL_45;
        }

        shieldDataSource = [v559 shieldDataSource];
        shieldDataSource2 = [v561 shieldDataSource];
        v50 = shieldDataSource;
        v51 = shieldDataSource2;
        shieldText9 = v51;
        v533 = v50;
        if (!(v50 | v51))
        {
          goto LABEL_53;
        }

        if ((v50 == 0) != (v51 == 0))
        {
          goto LABEL_120;
        }

        v170 = v50;
        v171 = v51;
        shieldType = [v170 shieldType];
        v57 = shieldType == [v171 shieldType];
        v19 = v576;
        if (!v57)
        {
          LODWORD(shieldText7) = 0;
          v51 = v171;
          v50 = v533;
          shieldText11 = v561;
          v563 = v559;
          goto LABEL_675;
        }

        v173 = v533;
        shieldText = [v533 shieldText];
        if (shieldText || ([shieldText9 shieldText], (v523 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          shieldText2 = [v533 shieldText];
          shieldText3 = [shieldText9 shieldText];
          shieldText11 = shieldText2;
          v176 = shieldText2;
          v177 = shieldText3;
          if (([v176 isEqualToString:shieldText3] & 1) == 0)
          {

            LODWORD(shieldText7) = 0;
            v233 = shieldText;
            if (!shieldText)
            {
              v233 = v523;
            }

            v517 = v233;
            v50 = v533;
            v523 = shieldText9;
            goto LABEL_289;
          }

          shieldText12 = v177;
          v178 = 1;
          v173 = v533;
        }

        else
        {
          v523 = 0;
          v178 = 0;
        }

        shieldColorString = [v173 shieldColorString];
        if (shieldColorString || ([shieldText9 shieldColorString], (shieldText8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v521 = v178;
          shieldColorString2 = [v173 shieldColorString];
          shieldColorString3 = [shieldText9 shieldColorString];
          v544 = [shieldColorString2 isEqualToString:shieldColorString3];

          if (shieldColorString)
          {

            v173 = v533;
            if (v521)
            {
              goto LABEL_281;
            }

LABEL_296:
            v288 = v173;
            goto LABEL_297;
          }

          v173 = v533;
          LOBYTE(v178) = v521;
          v289 = shieldText8;
        }

        else
        {
          v289 = 0;
          v544 = 1;
        }

        if ((v178 & 1) == 0)
        {
          goto LABEL_296;
        }

LABEL_281:
        v288 = v173;

LABEL_297:
        if (shieldText)
        {

          v292 = shieldText9;
          if (!v544)
          {
            goto LABEL_301;
          }
        }

        else
        {

          v292 = shieldText9;
          if ((v544 & 1) == 0)
          {
LABEL_301:
            v47 = v292;
            name3 = v288;
            LODWORD(shieldText7) = 0;
            shieldText11 = v561;
            v563 = v559;
            goto LABEL_49;
          }
        }

LABEL_53:
        iconDataSource = [v559 iconDataSource];
        iconDataSource2 = [v561 iconDataSource];
        v50 = iconDataSource;
        v68 = iconDataSource2;
        v523 = v68;
        if (v50 | v68)
        {
          v163 = v68;
          v517 = v50;
          v19 = v576;
          if ((v50 == 0) != (v68 == 0))
          {
            goto LABEL_288;
          }

          shieldColorString = v50;
          iconType = [v50 iconType];
          iconType2 = [v523 iconType];
          v163 = v523;
          v517 = v50;
          if (iconType != iconType2)
          {
            goto LABEL_288;
          }

          cartoID = [v50 cartoID];
          cartoID2 = [v523 cartoID];
          v163 = v523;
          v517 = v50;
          if (cartoID != cartoID2)
          {
            goto LABEL_288;
          }

          defaultTransitType = [v50 defaultTransitType];
          defaultTransitType2 = [v523 defaultTransitType];
          v163 = v523;
          v517 = v50;
          if (defaultTransitType != defaultTransitType2)
          {
            goto LABEL_288;
          }

          iconAttributeKey = [v50 iconAttributeKey];
          iconAttributeKey2 = [v523 iconAttributeKey];
          v163 = v523;
          v517 = v50;
          if (iconAttributeKey != iconAttributeKey2)
          {
            goto LABEL_288;
          }

          iconAttributeValue = [v50 iconAttributeValue];
          iconAttributeValue2 = [v523 iconAttributeValue];

          v51 = v523;
          if (iconAttributeValue != iconAttributeValue2)
          {
LABEL_120:
            LODWORD(shieldText7) = 0;
            shieldText11 = v561;
            v563 = v559;
            goto LABEL_121;
          }
        }

        shieldColorString = v50;
        iconFallbackShieldDataSource = [v559 iconFallbackShieldDataSource];
        iconFallbackShieldDataSource2 = [v561 iconFallbackShieldDataSource];
        v71 = iconFallbackShieldDataSource;
        v72 = iconFallbackShieldDataSource2;
        v517 = v71;
        v563 = v72;
        if (!(v71 | v72))
        {
LABEL_55:
          textDataSource = [v559 textDataSource];
          textDataSource2 = [v561 textDataSource];
          v75 = textDataSource;
          v76 = textDataSource2;
          v19 = v576;
          shieldText11 = v76;
          if (v75 | v76)
          {
            if ((v75 == 0) != (v76 == 0))
            {
              goto LABEL_628;
            }

            v210 = v76;
            [v75 text];
            v211 = shieldText7 = v75;
            text = [v210 text];
            v213 = v211;
            v214 = text;
            if (v213 | v214)
            {
              v264 = (v213 == 0) ^ (v214 == 0);
              v19 = v576;
              v265 = v213;
              v75 = shieldText7;
              shieldText8 = v214;
              shieldText12 = v265;
              if (v264)
              {
                goto LABEL_627;
              }

              v266 = v214;
              formatStrings = [v265 formatStrings];
              formatStrings2 = [v266 formatStrings];
              v269 = formatStrings;
              v270 = formatStrings2;
              v271 = v270;
              accessibilityText8 = v269;
              if (v269 | v270)
              {
                if ((v269 == 0) != (v270 == 0) || (v352 = [v269 count], v57 = v352 == objc_msgSend(v271, "count"), v269 = accessibilityText8, !v57))
                {

                  v370 = v271;
                  v19 = v576;
LABEL_422:
                  v75 = shieldText7;
LABEL_626:

LABEL_627:
LABEL_628:

                  v78 = shieldText11;
LABEL_629:

                  LODWORD(shieldText7) = 0;
                  shieldText11 = v561;
                  v563 = v559;
                  v50 = shieldColorString;
LABEL_673:

LABEL_674:
                  v51 = v523;
LABEL_675:

LABEL_676:
                  v47 = shieldText9;
                  name3 = v533;
LABEL_677:

                  v44 = shieldText11;
                  LOBYTE(name3) = shieldText7;
                  goto LABEL_678;
                }

                accessibilityText2 = v271;
                v550 = identifier4;
                v555 = identifier3;
                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                accessibilityText5 = accessibilityText8;
                v353 = [accessibilityText5 countByEnumeratingWithState:&v586 objects:buf count:16];
                if (v353)
                {
                  v354 = v353;
                  v355 = 0;
                  accessibilityText4 = *v587;
                  while (2)
                  {
                    for (i = 0; i != v354; i = i + 1)
                    {
                      if (*v587 != accessibilityText4)
                      {
                        objc_enumerationMutation(accessibilityText5);
                      }

                      v357 = *(*(&v586 + 1) + 8 * i);
                      v358 = v355;
                      v359 = [accessibilityText2 objectAtIndexedSubscript:v355];
                      if (v357 | v359)
                      {
                        v360 = v359;
                        v361 = v357;
                        v362 = v360;
                        v363 = [v361 isEqual:v360];

                        if (!v363)
                        {

                          v370 = accessibilityText2;
                          v34 = v573;
                          v19 = v576;
                          identifier4 = v550;
                          identifier3 = v555;
                          goto LABEL_422;
                        }
                      }

                      v355 = v358 + 1;
                    }

                    v354 = [accessibilityText5 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v354)
                    {
                      continue;
                    }

                    break;
                  }
                }

                identifier4 = v550;
                identifier3 = v555;
              }

              else
              {
                accessibilityText2 = v270;
              }

              separators = [shieldText12 separators];
              separators2 = [shieldText8 separators];
              v274 = separators;
              v275 = separators2;
              v276 = v275;
              v547 = identifier4;
              v552 = identifier3;
              if (v274 | v275)
              {
                if ((v274 == 0) != (v275 == 0) || (shieldColorString4 = v274, v377 = [v274 count], v57 = v377 == objc_msgSend(v276, "count"), v274 = shieldColorString4, !v57))
                {

LABEL_625:
                  v34 = v573;
                  v19 = v576;
                  identifier4 = v547;
                  identifier3 = v552;
                  v75 = shieldText7;
                  v370 = accessibilityText2;
                  goto LABEL_626;
                }

                accessibilityText4 = v276;
                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                shieldColorString9 = shieldColorString4;
                v378 = [shieldColorString9 countByEnumeratingWithState:&v586 objects:buf count:16];
                if (v378)
                {
                  v379 = v378;
                  v380 = 0;
                  accessibilityText5 = *v587;
                  while (2)
                  {
                    for (j = 0; j != v379; j = j + 1)
                    {
                      if (*v587 != accessibilityText5)
                      {
                        objc_enumerationMutation(shieldColorString9);
                      }

                      v382 = *(*(&v586 + 1) + 8 * j);
                      v383 = [accessibilityText4 objectAtIndexedSubscript:v380];
                      if (v382 | v383)
                      {
                        v384 = v383;
                        v385 = [v382 isEqual:v383];

                        if (!v385)
                        {

                          v276 = accessibilityText4;
                          v274 = shieldColorString4;
                          goto LABEL_625;
                        }
                      }

                      ++v380;
                    }

                    v379 = [shieldColorString9 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v379)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              else
              {
                accessibilityText4 = v275;
                shieldColorString4 = v274;
              }

              formatTokens = [shieldText12 formatTokens];
              formatTokens2 = [shieldText8 formatTokens];
              v279 = formatTokens;
              v280 = formatTokens2;
              v281 = v280;
              shieldColorString9 = v279;
              if (v279 | v280)
              {
                if ((v279 == 0) != (v280 == 0) || (v411 = [v279 count], v411 != objc_msgSend(v281, "count")))
                {

LABEL_569:
                  v274 = shieldColorString4;
                  v276 = accessibilityText4;
                  goto LABEL_625;
                }

                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                shieldColorString14 = shieldColorString9;
                v412 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
                if (v412)
                {
                  v413 = v412;
                  v414 = 0;
                  v508 = *v587;
                  while (2)
                  {
                    for (k = 0; k != v413; k = k + 1)
                    {
                      if (*v587 != v508)
                      {
                        objc_enumerationMutation(shieldColorString14);
                      }

                      accessibilityText5 = *(*(&v586 + 1) + 8 * k);
                      v416 = [v281 objectAtIndexedSubscript:v414];
                      LODWORD(accessibilityText5) = GEOServerFormatTokenEqual();

                      if (!accessibilityText5)
                      {

                        goto LABEL_569;
                      }

                      ++v414;
                    }

                    v413 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v413)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              alternativeString = [shieldText12 alternativeString];
              alternativeString2 = [shieldText8 alternativeString];
              v284 = alternativeString;
              v285 = alternativeString2;
              if (v284 | v285)
              {
                LODWORD(accessibilityText5) = [v284 isEqual:v285];
              }

              else
              {
                LODWORD(accessibilityText5) = 1;
              }

              v75 = shieldText7;
              v78 = shieldText11;
              v34 = v573;
              v19 = v576;
              identifier4 = v547;
              identifier3 = v552;
              if ((accessibilityText5 & 1) == 0)
              {
                goto LABEL_629;
              }
            }

            else
            {

              v75 = shieldText7;
              v19 = v576;
            }
          }

          shieldText7 = v75;
          hasRoutingIncidentBadge = [v559 hasRoutingIncidentBadge];
          v57 = hasRoutingIncidentBadge == [v561 hasRoutingIncidentBadge];
          v75 = shieldText7;
          v78 = shieldText11;
          if (!v57)
          {
            goto LABEL_629;
          }

          v54 = v559;
          accessibilityText = [v559 accessibilityText];
          if (!accessibilityText)
          {
            accessibilityText2 = [v561 accessibilityText];
            if (!accessibilityText2)
            {
              accessibilityText2 = 0;
              LODWORD(shieldText12) = 1;
              goto LABEL_346;
            }
          }

          accessibilityText3 = [v559 accessibilityText];
          [v561 accessibilityText];
          v81 = shieldText8 = accessibilityText;
          LODWORD(shieldText12) = [accessibilityText3 isEqualToString:v81];

          v82 = shieldText8;
          v54 = v559;
          if (!shieldText8)
          {
LABEL_346:
            v82 = accessibilityText2;
          }

          if (shieldText12)
          {
LABEL_24:
            modeArtwork = [v26 modeArtwork];
            modeArtwork2 = [v28 modeArtwork];
            name3 = modeArtwork;
            v47 = modeArtwork2;
            v563 = name3;
            shieldText11 = v47;
            if (!(name3 | v47))
            {
              goto LABEL_25;
            }

            if ((name3 == 0) != (v47 == 0))
            {
LABEL_48:
              LODWORD(shieldText7) = 0;
LABEL_49:
              v19 = v576;
              goto LABEL_677;
            }

            v109 = v47;
            artworkSourceType2 = [name3 artworkSourceType];
            artworkSourceType3 = [v109 artworkSourceType];
            v19 = v576;
            if (artworkSourceType2 != artworkSourceType3 || (v112 = [v563 artworkUseType], v112 != objc_msgSend(shieldText11, "artworkUseType")))
            {
              LODWORD(shieldText7) = 0;
              v47 = shieldText11;
              name3 = v563;
              goto LABEL_677;
            }

            shieldDataSource3 = [v563 shieldDataSource];
            shieldDataSource4 = [shieldText11 shieldDataSource];
            v50 = shieldDataSource3;
            v115 = shieldDataSource4;
            v523 = v115;
            if (!(v50 | v115))
            {
LABEL_89:
              shieldColorString = v50;
              iconDataSource3 = [v563 iconDataSource];
              iconDataSource4 = [shieldText11 iconDataSource];
              v118 = iconDataSource3;
              v119 = iconDataSource4;
              shieldText12 = v119;
              v517 = v118;
              if (!(v118 | v119))
              {
                goto LABEL_90;
              }

              v197 = v119;
              v19 = v576;
              if ((v118 == 0) != (v119 == 0))
              {
                goto LABEL_344;
              }

              iconType3 = [v118 iconType];
              iconType4 = [shieldText12 iconType];
              v197 = shieldText12;
              if (iconType3 != iconType4)
              {
                goto LABEL_344;
              }

              cartoID3 = [v118 cartoID];
              cartoID4 = [shieldText12 cartoID];
              v197 = shieldText12;
              if (cartoID3 != cartoID4)
              {
                goto LABEL_344;
              }

              defaultTransitType3 = [v118 defaultTransitType];
              defaultTransitType4 = [shieldText12 defaultTransitType];
              v197 = shieldText12;
              if (defaultTransitType3 != defaultTransitType4)
              {
                goto LABEL_344;
              }

              iconAttributeKey3 = [v118 iconAttributeKey];
              iconAttributeKey4 = [shieldText12 iconAttributeKey];
              v197 = shieldText12;
              if (iconAttributeKey3 != iconAttributeKey4)
              {
                goto LABEL_344;
              }

              iconAttributeValue3 = [v118 iconAttributeValue];
              iconAttributeValue4 = [shieldText12 iconAttributeValue];

              if (iconAttributeValue3 != iconAttributeValue4)
              {
                v115 = shieldText12;
                LODWORD(shieldText7) = 0;
                shieldText9 = shieldText11;
                v533 = v563;
                v19 = v576;
                v50 = shieldColorString;
                goto LABEL_672;
              }

LABEL_90:
              iconFallbackShieldDataSource3 = [v563 iconFallbackShieldDataSource];
              iconFallbackShieldDataSource4 = [shieldText11 iconFallbackShieldDataSource];
              v118 = iconFallbackShieldDataSource3;
              v122 = iconFallbackShieldDataSource4;
              shieldText7 = v122;
              if (!(v118 | v122))
              {
LABEL_91:
                v533 = v118;
                textDataSource3 = [v563 textDataSource];
                textDataSource4 = [shieldText11 textDataSource];
                v125 = textDataSource3;
                v126 = textDataSource4;
                v19 = v576;
                shieldText9 = v126;
                if (!(v125 | v126))
                {
                  goto LABEL_92;
                }

                if ((v125 == 0) == (v126 == 0))
                {
                  v235 = v126;
                  [v125 text];
                  v236 = shieldText8 = v125;
                  text2 = [v235 text];
                  v238 = v236;
                  v239 = text2;
                  if (!(v238 | v239))
                  {

                    v125 = shieldText8;
                    v19 = v576;
                    goto LABEL_92;
                  }

                  v298 = v239;
                  if ((v238 == 0) == (v239 == 0))
                  {
                    accessibilityText5 = v238;
                    formatStrings3 = [v238 formatStrings];
                    accessibilityText8 = v298;
                    formatStrings4 = [v298 formatStrings];
                    v301 = formatStrings3;
                    v302 = formatStrings4;
                    v303 = v302;
                    v574 = v34;
                    v548 = identifier4;
                    v553 = identifier3;
                    if (!(v301 | v302))
                    {
                      accessibilityText2 = v302;
                      v508 = v301;
                      goto LABEL_321;
                    }

                    if ((v301 == 0) != (v302 == 0) || (v508 = v301, v402 = [v301 count], v57 = v402 == objc_msgSend(v303, "count"), v301 = v508, !v57))
                    {

                      goto LABEL_658;
                    }

                    accessibilityText2 = v303;
                    v588 = 0u;
                    v589 = 0u;
                    v586 = 0u;
                    v587 = 0u;
                    shieldColorString9 = v508;
                    v403 = [shieldColorString9 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v403)
                    {
                      v404 = v403;
                      v405 = 0;
                      accessibilityText4 = *v587;
                      while (2)
                      {
                        for (m = 0; m != v404; m = m + 1)
                        {
                          if (*v587 != accessibilityText4)
                          {
                            objc_enumerationMutation(shieldColorString9);
                          }

                          v407 = *(*(&v586 + 1) + 8 * m);
                          v408 = [accessibilityText2 objectAtIndexedSubscript:v405];
                          if (v407 | v408)
                          {
                            v409 = v408;
                            v410 = [v407 isEqual:v408];

                            if (!v410)
                            {

                              v303 = accessibilityText2;
                              v301 = v508;
                              goto LABEL_658;
                            }
                          }

                          ++v405;
                        }

                        v404 = [shieldColorString9 countByEnumeratingWithState:&v586 objects:buf count:16];
                        if (v404)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_321:
                    separators3 = [accessibilityText5 separators];
                    separators4 = [accessibilityText8 separators];
                    shieldColorString4 = separators3;
                    accessibilityText4 = separators4;
                    if (shieldColorString4 | accessibilityText4)
                    {
                      if ((shieldColorString4 == 0) == (accessibilityText4 == 0))
                      {
                        v429 = [shieldColorString4 count];
                        if (v429 == [accessibilityText4 count])
                        {
                          v588 = 0u;
                          v589 = 0u;
                          v586 = 0u;
                          v587 = 0u;
                          shieldColorString14 = shieldColorString4;
                          v430 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
                          if (v430)
                          {
                            v431 = v430;
                            v432 = 0;
                            shieldColorString9 = *v587;
                            while (2)
                            {
                              for (n = 0; n != v431; n = n + 1)
                              {
                                if (*v587 != shieldColorString9)
                                {
                                  objc_enumerationMutation(shieldColorString14);
                                }

                                v434 = *(*(&v586 + 1) + 8 * n);
                                v435 = [accessibilityText4 objectAtIndexedSubscript:v432];
                                if (v434 | v435)
                                {
                                  v436 = v435;
                                  v437 = [v434 isEqual:v435];

                                  if (!v437)
                                  {
                                    v491 = shieldColorString14;

LABEL_656:
                                    goto LABEL_657;
                                  }
                                }

                                ++v432;
                              }

                              v431 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
                              if (v431)
                              {
                                continue;
                              }

                              break;
                            }
                          }

                          goto LABEL_322;
                        }
                      }
                    }

                    else
                    {
LABEL_322:
                      formatTokens3 = [accessibilityText5 formatTokens];
                      formatTokens4 = [accessibilityText8 formatTokens];
                      v308 = formatTokens3;
                      shieldColorString9 = formatTokens4;
                      v506 = v308;
                      if (!(v308 | shieldColorString9))
                      {
                        goto LABEL_323;
                      }

                      if ((v308 == 0) == (shieldColorString9 == 0))
                      {
                        v461 = [v308 count];
                        if (v461 == [shieldColorString9 count])
                        {
                          v588 = 0u;
                          v589 = 0u;
                          v586 = 0u;
                          v587 = 0u;
                          v503 = v506;
                          v462 = [v503 countByEnumeratingWithState:&v586 objects:buf count:16];
                          if (v462)
                          {
                            v463 = v462;
                            v464 = 0;
                            v465 = *v587;
                            while (2)
                            {
                              for (ii = 0; ii != v463; ii = ii + 1)
                              {
                                if (*v587 != v465)
                                {
                                  objc_enumerationMutation(v503);
                                }

                                shieldColorString14 = *(*(&v586 + 1) + 8 * ii);
                                v467 = [shieldColorString9 objectAtIndexedSubscript:v464];
                                LODWORD(shieldColorString14) = GEOServerFormatTokenEqual();

                                if (!shieldColorString14)
                                {
                                  v491 = v503;

                                  goto LABEL_656;
                                }

                                ++v464;
                              }

                              v463 = [v503 countByEnumeratingWithState:&v586 objects:buf count:16];
                              if (v463)
                              {
                                continue;
                              }

                              break;
                            }
                          }

LABEL_323:
                          alternativeString3 = [accessibilityText5 alternativeString];
                          alternativeString4 = [accessibilityText8 alternativeString];
                          v311 = alternativeString3;
                          v312 = alternativeString4;
                          if (v311 | v312)
                          {
                            LODWORD(shieldColorString14) = [v311 isEqual:v312];
                          }

                          else
                          {
                            LODWORD(shieldColorString14) = 1;
                          }

                          v125 = shieldText8;
                          v128 = shieldText9;
                          v34 = v574;
                          v19 = v576;
                          identifier4 = v548;
                          identifier3 = v553;
                          if ((shieldColorString14 & 1) == 0)
                          {
LABEL_661:

LABEL_662:
                            LODWORD(shieldText7) = 0;
                            shieldText9 = shieldText11;
                            v533 = v563;
                            v50 = shieldColorString;
LABEL_671:
                            v115 = shieldText12;
                            goto LABEL_672;
                          }

LABEL_92:
                          shieldText8 = v125;
                          hasRoutingIncidentBadge2 = [v563 hasRoutingIncidentBadge];
                          v57 = hasRoutingIncidentBadge2 == [shieldText11 hasRoutingIncidentBadge];
                          v128 = shieldText9;
                          v125 = shieldText8;
                          if (!v57)
                          {
                            goto LABEL_661;
                          }

                          accessibilityText4 = [v563 accessibilityText];
                          if (!accessibilityText4)
                          {
                            accessibilityText5 = [shieldText11 accessibilityText];
                            if (!accessibilityText5)
                            {
                              accessibilityText5 = 0;
                              LODWORD(accessibilityText2) = 1;
                              goto LABEL_424;
                            }
                          }

                          accessibilityText6 = [v563 accessibilityText];
                          accessibilityText7 = [shieldText11 accessibilityText];
                          LODWORD(accessibilityText2) = [accessibilityText6 isEqualToString:accessibilityText7];

                          v125 = shieldText8;
                          v131 = accessibilityText4;
                          if (!accessibilityText4)
                          {
LABEL_424:
                            v131 = accessibilityText5;
                          }

                          if ((accessibilityText2 & 1) == 0)
                          {
                            v44 = shieldText11;
                            LOBYTE(name3) = 0;
                            v19 = v576;
                            goto LABEL_678;
                          }

LABEL_25:
                          alternateArtwork = [v26 alternateArtwork];
                          alternateArtwork2 = [v28 alternateArtwork];
                          v50 = alternateArtwork;
                          v51 = alternateArtwork2;
                          shieldText9 = v51;
                          v533 = v50;
                          if (!(v50 | v51))
                          {
LABEL_26:
                            hasLineColorString = [v26 hasLineColorString];
                            if (hasLineColorString != [v28 hasLineColorString])
                            {
                              LODWORD(shieldText7) = 0;
                              v19 = v576;
                              goto LABEL_676;
                            }

                            lineColorString = [v26 lineColorString];
                            lineColorString2 = [v28 lineColorString];
                            v134 = lineColorString;
                            shieldColorString = v134;
                            v523 = lineColorString2;
                            if (__PAIR128__(v523, v134) != 0 && (v538 = [v134 isEqual:v523], v523, v134, !v538) || (v135 = objc_msgSend(v26, "showVehicleNumber"), v135 != objc_msgSend(v28, "showVehicleNumber")))
                            {
                              LODWORD(shieldText7) = 0;
                              v19 = v576;
                              v50 = shieldColorString;
                              goto LABEL_674;
                            }

                            operatingHours = [v26 operatingHours];
                            operatingHours2 = [v28 operatingHours];
                            v161 = operatingHours;
                            v162 = operatingHours2;
                            shieldText12 = v162;
                            v517 = v161;
                            if (!(v161 | v162))
                            {
                              LODWORD(shieldText7) = 1;
                              v19 = v576;
                              goto LABEL_161;
                            }

                            v19 = v576;
                            if ((v161 == 0) != (v162 == 0) || (v179 = [v161 count], v179 != objc_msgSend(shieldText12, "count")))
                            {
                              LODWORD(shieldText7) = 0;
LABEL_161:
                              v50 = shieldColorString;
                            }

                            else
                            {
                              v588 = 0u;
                              v589 = 0u;
                              v586 = 0u;
                              v587 = 0u;
                              shieldColorString4 = v517;
                              accessibilityText2 = [shieldColorString4 countByEnumeratingWithState:&v586 objects:buf count:16];
                              if (accessibilityText2)
                              {
                                shieldText7 = 0;
                                accessibilityText4 = *v587;
                                while (2)
                                {
                                  v180 = 0;
                                  v181 = shieldText12;
                                  do
                                  {
                                    if (*v587 != accessibilityText4)
                                    {
                                      v182 = v180;
                                      objc_enumerationMutation(shieldColorString4);
                                      v180 = v182;
                                      v181 = shieldText12;
                                    }

                                    shieldText8 = v180;
                                    v183 = *(*(&v586 + 1) + 8 * v180);
                                    v184 = [v181 objectAtIndexedSubscript:shieldText7];
                                    v185 = v183;
                                    v186 = v184;
                                    v187 = v185;
                                    v188 = v186;
                                    v189 = v187;
                                    v190 = v188;
                                    if (v189 | v188)
                                    {
                                      if ((v189 == 0) != (v188 == 0) || ([v189 startTime], accessibilityText5 = v189, v192 = v191, objc_msgSend(v190, "startTime"), v57 = v192 == v193, v189 = accessibilityText5, !v57))
                                      {

                                        LODWORD(shieldText7) = 0;
                                        v19 = v576;
                                        goto LABEL_275;
                                      }

                                      [accessibilityText5 duration];
                                      accessibilityText8 = v194;
                                      [v190 duration];
                                      shieldColorString9 = v195;

                                      v19 = v576;
                                      v50 = shieldColorString;
                                      if (accessibilityText8 != shieldColorString9)
                                      {
                                        LODWORD(shieldText7) = 0;
                                        goto LABEL_317;
                                      }
                                    }

                                    else
                                    {

                                      v19 = v576;
                                      v50 = shieldColorString;
                                    }

                                    ++shieldText7;
                                    v180 = shieldText8 + 1;
                                    v181 = shieldText12;
                                  }

                                  while (accessibilityText2 != shieldText8 + 1);
                                  accessibilityText2 = [shieldColorString4 countByEnumeratingWithState:&v586 objects:buf count:16];
                                  if (accessibilityText2)
                                  {
                                    continue;
                                  }

                                  break;
                                }

                                LODWORD(shieldText7) = 1;
                              }

                              else
                              {
                                LODWORD(shieldText7) = 1;
LABEL_275:
                                v50 = shieldColorString;
                              }

LABEL_317:
                            }

                            goto LABEL_671;
                          }

                          if ((v50 == 0) != (v51 == 0))
                          {
                            LODWORD(shieldText7) = 0;
                            goto LABEL_121;
                          }

                          v136 = v51;
                          artworkSourceType4 = [v50 artworkSourceType];
                          artworkSourceType5 = [v136 artworkSourceType];
                          v19 = v576;
                          if (artworkSourceType4 != artworkSourceType5 || (v139 = [v533 artworkUseType], v139 != objc_msgSend(shieldText9, "artworkUseType")))
                          {
                            LODWORD(shieldText7) = 0;
                            v51 = shieldText9;
                            v50 = v533;
                            goto LABEL_675;
                          }

                          shieldDataSource5 = [v533 shieldDataSource];
                          shieldDataSource6 = [shieldText9 shieldDataSource];
                          v142 = shieldDataSource5;
                          v143 = shieldDataSource6;
                          shieldText12 = v143;
                          v517 = v142;
                          if (!(v142 | v143))
                          {
LABEL_108:
                            iconDataSource5 = [v533 iconDataSource];
                            iconDataSource6 = [shieldText9 iconDataSource];
                            v146 = iconDataSource5;
                            v147 = iconDataSource6;
                            v19 = v576;
                            shieldText7 = v147;
                            if (!(v146 | v147))
                            {
                              goto LABEL_109;
                            }

                            v225 = v147;
                            v226 = v146;
                            if ((v146 == 0) == (v147 == 0))
                            {
                              shieldColorString = v146;
                              iconType5 = [v146 iconType];
                              iconType6 = [shieldText7 iconType];
                              v225 = shieldText7;
                              v226 = v146;
                              if (iconType5 == iconType6)
                              {
                                cartoID5 = [v146 cartoID];
                                cartoID6 = [shieldText7 cartoID];
                                v225 = shieldText7;
                                v226 = v146;
                                if (cartoID5 == cartoID6)
                                {
                                  defaultTransitType5 = [v146 defaultTransitType];
                                  defaultTransitType6 = [shieldText7 defaultTransitType];
                                  v225 = shieldText7;
                                  v226 = v146;
                                  if (defaultTransitType5 == defaultTransitType6)
                                  {
                                    iconAttributeKey5 = [v146 iconAttributeKey];
                                    iconAttributeKey6 = [shieldText7 iconAttributeKey];
                                    v225 = shieldText7;
                                    v226 = v146;
                                    if (iconAttributeKey5 == iconAttributeKey6)
                                    {
                                      iconAttributeValue5 = [v146 iconAttributeValue];
                                      iconAttributeValue6 = [shieldText7 iconAttributeValue];

                                      v232 = shieldText7;
                                      v57 = iconAttributeValue5 == iconAttributeValue6;
                                      v19 = v576;
                                      if (!v57)
                                      {
LABEL_410:

LABEL_670:
                                        LODWORD(shieldText7) = 0;
                                        v50 = v533;
                                        v523 = shieldText9;
                                        goto LABEL_671;
                                      }

LABEL_109:
                                      shieldColorString = v146;
                                      iconFallbackShieldDataSource5 = [v533 iconFallbackShieldDataSource];
                                      iconFallbackShieldDataSource6 = [shieldText9 iconFallbackShieldDataSource];
                                      v150 = iconFallbackShieldDataSource5;
                                      v151 = iconFallbackShieldDataSource6;
                                      shieldText8 = v151;
                                      if (!(v150 | v151))
                                      {
LABEL_110:
                                        v523 = v150;
                                        textDataSource5 = [v533 textDataSource];
                                        textDataSource6 = [shieldText9 textDataSource];
                                        v154 = textDataSource5;
                                        accessibilityText2 = textDataSource6;
                                        v19 = v576;
                                        if (!(v154 | accessibilityText2))
                                        {
                                          goto LABEL_111;
                                        }

                                        v259 = accessibilityText2;
                                        if ((v154 == 0) == (accessibilityText2 == 0))
                                        {
                                          [v154 text];
                                          v260 = accessibilityText4 = v154;
                                          text3 = [accessibilityText2 text];
                                          v262 = v260;
                                          v263 = text3;
                                          if (!(v262 | v263))
                                          {

                                            v154 = accessibilityText4;
                                            v19 = v576;
                                            goto LABEL_111;
                                          }

                                          v340 = v263;
                                          if ((v262 == 0) == (v263 == 0))
                                          {
                                            v549 = identifier4;
                                            v554 = identifier3;
                                            v575 = v34;
                                            shieldColorString4 = v262;
                                            formatStrings5 = [v262 formatStrings];
                                            v508 = v340;
                                            formatStrings6 = [v340 formatStrings];
                                            shieldColorString9 = formatStrings5;
                                            accessibilityText5 = formatStrings6;
                                            if (!(shieldColorString9 | accessibilityText5))
                                            {
                                              goto LABEL_375;
                                            }

                                            if ((shieldColorString9 == 0) != (accessibilityText5 == 0) || (v442 = [shieldColorString9 count], v442 != objc_msgSend(accessibilityText5, "count")))
                                            {

                                              v453 = shieldColorString9;
                                            }

                                            else
                                            {
                                              v588 = 0u;
                                              v589 = 0u;
                                              v586 = 0u;
                                              v587 = 0u;
                                              shieldColorString14 = shieldColorString9;
                                              v443 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
                                              if (v443)
                                              {
                                                v444 = v443;
                                                v445 = 0;
                                                accessibilityText8 = *v587;
                                                while (2)
                                                {
                                                  for (jj = 0; jj != v444; jj = jj + 1)
                                                  {
                                                    if (*v587 != accessibilityText8)
                                                    {
                                                      objc_enumerationMutation(shieldColorString14);
                                                    }

                                                    v447 = *(*(&v586 + 1) + 8 * jj);
                                                    v448 = [accessibilityText5 objectAtIndexedSubscript:v445];
                                                    if (v447 | v448)
                                                    {
                                                      v449 = v448;
                                                      v450 = v447;
                                                      v451 = v449;
                                                      v452 = [v450 isEqual:v449];

                                                      if (!v452)
                                                      {

                                                        goto LABEL_666;
                                                      }
                                                    }

                                                    ++v445;
                                                  }

                                                  v444 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
                                                  if (v444)
                                                  {
                                                    continue;
                                                  }

                                                  break;
                                                }
                                              }

LABEL_375:
                                              separators5 = [shieldColorString4 separators];
                                              separators6 = [v508 separators];
                                              v506 = separators5;
                                              accessibilityText8 = separators6;
                                              if (v506 | accessibilityText8)
                                              {
                                                if ((v506 == 0) == (accessibilityText8 == 0))
                                                {
                                                  v468 = [v506 count];
                                                  if (v468 == [accessibilityText8 count])
                                                  {
                                                    v588 = 0u;
                                                    v589 = 0u;
                                                    v586 = 0u;
                                                    v587 = 0u;
                                                    v504 = v506;
                                                    v469 = [v504 countByEnumeratingWithState:&v586 objects:buf count:16];
                                                    if (v469)
                                                    {
                                                      v470 = v469;
                                                      v471 = 0;
                                                      shieldColorString14 = *v587;
                                                      while (2)
                                                      {
                                                        for (kk = 0; kk != v470; kk = kk + 1)
                                                        {
                                                          if (*v587 != shieldColorString14)
                                                          {
                                                            objc_enumerationMutation(v504);
                                                          }

                                                          v473 = *(*(&v586 + 1) + 8 * kk);
                                                          v474 = v471;
                                                          v475 = [accessibilityText8 objectAtIndexedSubscript:v471];
                                                          if (v473 | v475)
                                                          {
                                                            v476 = v475;
                                                            v477 = v473;
                                                            v478 = v476;
                                                            v479 = [v477 isEqual:v476];

                                                            if (!v479)
                                                            {

                                                              goto LABEL_664;
                                                            }
                                                          }

                                                          v471 = v474 + 1;
                                                        }

                                                        v470 = [v504 countByEnumeratingWithState:&v586 objects:buf count:16];
                                                        if (v470)
                                                        {
                                                          continue;
                                                        }

                                                        break;
                                                      }
                                                    }

                                                    goto LABEL_376;
                                                  }
                                                }
                                              }

                                              else
                                              {
LABEL_376:
                                                formatTokens5 = [shieldColorString4 formatTokens];
                                                formatTokens6 = [v508 formatTokens];
                                                v347 = formatTokens5;
                                                shieldColorString14 = formatTokens6;
                                                v498 = v347;
                                                if (!(v347 | shieldColorString14))
                                                {
                                                  goto LABEL_377;
                                                }

                                                if ((v347 == 0) == (shieldColorString14 == 0))
                                                {
                                                  v482 = [v347 count];
                                                  if (v482 == [shieldColorString14 count])
                                                  {
                                                    v588 = 0u;
                                                    v589 = 0u;
                                                    v586 = 0u;
                                                    v587 = 0u;
                                                    v497 = v498;
                                                    v483 = [v497 countByEnumeratingWithState:&v586 objects:buf count:16];
                                                    if (v483)
                                                    {
                                                      v484 = v483;
                                                      v485 = 0;
                                                      v486 = *v587;
                                                      while (2)
                                                      {
                                                        for (mm = 0; mm != v484; ++mm)
                                                        {
                                                          if (*v587 != v486)
                                                          {
                                                            objc_enumerationMutation(v497);
                                                          }

                                                          v488 = [shieldColorString14 objectAtIndexedSubscript:v485];
                                                          v505 = GEOServerFormatTokenEqual();

                                                          if (!v505)
                                                          {
                                                            v490 = v497;

                                                            v489 = shieldColorString14;
                                                            goto LABEL_644;
                                                          }

                                                          ++v485;
                                                        }

                                                        v484 = [v497 countByEnumeratingWithState:&v586 objects:buf count:16];
                                                        if (v484)
                                                        {
                                                          continue;
                                                        }

                                                        break;
                                                      }
                                                    }

LABEL_377:
                                                    alternativeString5 = [shieldColorString4 alternativeString];
                                                    alternativeString6 = [v508 alternativeString];
                                                    v350 = alternativeString5;
                                                    v351 = alternativeString6;
                                                    if (v350 | v351)
                                                    {
                                                      v502 = [v350 isEqual:v351];
                                                    }

                                                    else
                                                    {
                                                      v502 = 1;
                                                    }

                                                    v154 = accessibilityText4;
                                                    v34 = v575;
                                                    v19 = v576;
                                                    identifier4 = v549;
                                                    identifier3 = v554;
                                                    if ((v502 & 1) == 0)
                                                    {
LABEL_669:

                                                      goto LABEL_670;
                                                    }

LABEL_111:
                                                    accessibilityText4 = v154;
                                                    hasRoutingIncidentBadge3 = [v533 hasRoutingIncidentBadge];
                                                    v57 = hasRoutingIncidentBadge3 == [shieldText9 hasRoutingIncidentBadge];
                                                    v154 = accessibilityText4;
                                                    if (!v57)
                                                    {
                                                      goto LABEL_669;
                                                    }

                                                    accessibilityText8 = [v533 accessibilityText];
                                                    if (accessibilityText8 || ([shieldText9 accessibilityText], (shieldColorString9 = objc_claimAutoreleasedReturnValue()) != 0))
                                                    {
                                                      accessibilityText9 = [v533 accessibilityText];
                                                      accessibilityText10 = [shieldText9 accessibilityText];
                                                      LODWORD(accessibilityText5) = [accessibilityText9 isEqualToString:accessibilityText10];

                                                      v158 = accessibilityText8;
                                                      if (!accessibilityText8)
                                                      {
LABEL_501:
                                                        v158 = shieldColorString9;
                                                      }

                                                      name3 = v533;
                                                      if (!accessibilityText5)
                                                      {
                                                        v47 = shieldText9;
                                                        goto LABEL_48;
                                                      }

                                                      goto LABEL_26;
                                                    }

                                                    shieldColorString9 = 0;
                                                    LODWORD(accessibilityText5) = 1;
                                                    goto LABEL_501;
                                                  }
                                                }

                                                v489 = shieldColorString14;

                                                v490 = v498;
LABEL_644:
                                              }

LABEL_664:

                                              v453 = v506;
                                            }

LABEL_666:
                                            v34 = v575;
                                            identifier4 = v549;
                                            identifier3 = v554;
                                            v340 = v508;
                                            v262 = shieldColorString4;
                                          }

                                          v19 = v576;
                                          v154 = accessibilityText4;
                                          v259 = accessibilityText2;
                                        }

                                        goto LABEL_669;
                                      }

                                      if ((v150 == 0) != (v151 == 0) || (v530 = v150, v244 = [v150 shieldType], v57 = v244 == objc_msgSend(shieldText8, "shieldType"), v150 = v530, !v57))
                                      {
LABEL_407:

                                        v225 = shieldText8;
                                        goto LABEL_408;
                                      }

                                      accessibilityText2 = [v530 shieldText];
                                      if (accessibilityText2 || ([shieldText8 shieldText], (accessibilityText5 = objc_claimAutoreleasedReturnValue()) != 0))
                                      {
                                        shieldText4 = [v530 shieldText];
                                        shieldText5 = [shieldText8 shieldText];
                                        accessibilityText4 = shieldText4;
                                        v247 = shieldText4;
                                        v248 = shieldText5;
                                        if (([v247 isEqualToString:shieldText5] & 1) == 0)
                                        {

                                          v369 = accessibilityText5;
                                          if (accessibilityText2)
                                          {
                                            v369 = accessibilityText2;
                                          }

                                          goto LABEL_407;
                                        }

                                        v508 = v248;
                                        LODWORD(accessibilityText8) = 1;
                                      }

                                      else
                                      {
                                        accessibilityText5 = 0;
                                        LODWORD(accessibilityText8) = 0;
                                      }

                                      shieldColorString4 = [v530 shieldColorString];
                                      if (shieldColorString4 || ([shieldText8 shieldColorString], (shieldColorString14 = objc_claimAutoreleasedReturnValue()) != 0))
                                      {
                                        shieldColorString5 = [v530 shieldColorString];
                                        shieldColorString6 = [shieldText8 shieldColorString];
                                        LODWORD(shieldColorString9) = [shieldColorString5 isEqualToString:shieldColorString6];

                                        if (shieldColorString4)
                                        {

                                          v150 = v530;
                                          v440 = accessibilityText2;
                                          if (accessibilityText8)
                                          {
                                            goto LABEL_550;
                                          }

                                          goto LABEL_551;
                                        }
                                      }

                                      else
                                      {
                                        shieldColorString14 = 0;
                                        LODWORD(shieldColorString9) = 1;
                                      }

                                      v150 = v530;
                                      v440 = accessibilityText2;
                                      if (accessibilityText8)
                                      {
LABEL_550:
                                      }

LABEL_551:
                                      if (v440)
                                      {

                                        v441 = shieldText8;
                                        if (shieldColorString9)
                                        {
                                          goto LABEL_110;
                                        }
                                      }

                                      else
                                      {

                                        v441 = shieldText8;
                                        if (shieldColorString9)
                                        {
                                          goto LABEL_110;
                                        }
                                      }

                                      v225 = v441;
LABEL_408:
                                      v19 = v576;
                                      v226 = v150;
                                      v146 = shieldColorString;
                                    }
                                  }
                                }
                              }
                            }

                            v531 = v226;

                            v232 = shieldText7;
                            goto LABEL_410;
                          }

                          v19 = v576;
                          if ((v142 == 0) != (v143 == 0) || (v206 = [v142 shieldType], v57 = v206 == objc_msgSend(shieldText12, "shieldType"), v142 = v517, !v57))
                          {
LABEL_293:

                            v115 = shieldText12;
                            LODWORD(shieldText7) = 0;
                            v50 = v533;
                            v523 = shieldText9;
                            goto LABEL_672;
                          }

                          shieldText6 = [v517 shieldText];
                          if (shieldText6 || ([shieldText12 shieldText], (shieldText8 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            shieldText7 = [v517 shieldText];
                            shieldColorString = [shieldText12 shieldText];
                            if (([shieldText7 isEqualToString:?] & 1) == 0)
                            {

                              v291 = shieldText6;
                              if (!shieldText6)
                              {
                                v291 = shieldText8;
                              }

                              goto LABEL_293;
                            }

                            LODWORD(accessibilityText2) = 1;
                          }

                          else
                          {
                            shieldText8 = 0;
                            LODWORD(accessibilityText2) = 0;
                          }

                          accessibilityText5 = [v517 shieldColorString];
                          if (accessibilityText5 || ([shieldText12 shieldColorString], (accessibilityText8 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            shieldColorString7 = [v517 shieldColorString];
                            shieldColorString8 = [shieldText12 shieldColorString];
                            LODWORD(accessibilityText4) = [shieldColorString7 isEqualToString:shieldColorString8];

                            if (accessibilityText5)
                            {

                              v142 = v517;
                              v366 = shieldText6;
                              if (accessibilityText2)
                              {
                                goto LABEL_397;
                              }

                              goto LABEL_398;
                            }

                            v142 = v517;
                            v366 = shieldText6;
                            v368 = accessibilityText8;
                          }

                          else
                          {
                            v368 = 0;
                            LODWORD(accessibilityText4) = 1;
                            v366 = shieldText6;
                          }

                          if (accessibilityText2)
                          {
LABEL_397:
                          }

LABEL_398:
                          if (v366)
                          {

                            v367 = shieldText12;
                            if (accessibilityText4)
                            {
                              goto LABEL_108;
                            }
                          }

                          else
                          {

                            v367 = shieldText12;
                            if (accessibilityText4)
                            {
                              goto LABEL_108;
                            }
                          }

                          v115 = v367;
                          LODWORD(shieldText7) = 0;
                          v50 = v533;
                          v523 = shieldText9;
LABEL_135:
                          v19 = v576;
LABEL_672:

                          goto LABEL_673;
                        }
                      }
                    }

LABEL_657:

                    v301 = v508;
                    v303 = accessibilityText2;
LABEL_658:

                    v34 = v574;
                    identifier4 = v548;
                    identifier3 = v553;
                    v298 = accessibilityText8;
                    v238 = accessibilityText5;
                  }

                  v19 = v576;
                  v125 = shieldText8;
                }

                v128 = shieldText9;
                goto LABEL_661;
              }

              v19 = v576;
              if ((v118 == 0) != (v122 == 0) || (v536 = v118, v224 = [v118 shieldType], v57 = v224 == objc_msgSend(shieldText7, "shieldType"), v118 = v536, !v57))
              {
LABEL_343:

                v197 = shieldText7;
LABEL_344:

                goto LABEL_662;
              }

              shieldText8 = [v536 shieldText];
              if (shieldText8 || ([shieldText7 shieldText], (accessibilityText4 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                shieldText9 = [v536 shieldText];
                accessibilityText2 = [shieldText7 shieldText];
                if (([shieldText9 isEqualToString:?] & 1) == 0)
                {

                  v319 = shieldText8;
                  if (!shieldText8)
                  {
                    v319 = accessibilityText4;
                  }

                  goto LABEL_343;
                }

                LODWORD(accessibilityText5) = 1;
              }

              else
              {
                accessibilityText4 = 0;
                LODWORD(accessibilityText5) = 0;
              }

              shieldColorString9 = [v536 shieldColorString];
              if (shieldColorString9 || ([shieldText7 shieldColorString], (shieldColorString4 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                shieldColorString10 = [v536 shieldColorString];
                shieldColorString11 = [shieldText7 shieldColorString];
                LODWORD(accessibilityText8) = [shieldColorString10 isEqualToString:shieldColorString11];

                if (shieldColorString9)
                {

                  v118 = v536;
                  v399 = shieldText8;
                  if (accessibilityText5)
                  {
                    goto LABEL_476;
                  }

                  goto LABEL_477;
                }

                v118 = v536;
                v399 = shieldText8;
                v401 = shieldColorString4;
              }

              else
              {
                v401 = 0;
                LODWORD(accessibilityText8) = 1;
                v399 = shieldText8;
              }

              if (accessibilityText5)
              {
LABEL_476:
              }

LABEL_477:
              if (v399)
              {

                v400 = shieldText7;
                if (accessibilityText8)
                {
                  goto LABEL_91;
                }
              }

              else
              {

                v400 = shieldText7;
                if (accessibilityText8)
                {
                  goto LABEL_91;
                }
              }

              v197 = v400;
              v19 = v576;
              goto LABEL_344;
            }

            if ((v50 == 0) != (v115 == 0))
            {
              LODWORD(shieldText7) = 0;
              v517 = v50;
              shieldText9 = shieldText11;
              v533 = v563;
              goto LABEL_135;
            }

            v207 = v115;
            shieldColorString = v50;
            shieldType2 = [v50 shieldType];
            shieldType3 = [v207 shieldType];
            v19 = v576;
            if (shieldType2 == shieldType3)
            {
              v50 = shieldColorString;
              shieldText10 = [shieldColorString shieldText];
              if (!shieldText10)
              {
                accessibilityText2 = [v523 shieldText];
                if (!accessibilityText2)
                {
                  accessibilityText2 = 0;
                  v520 = 0;
                  goto LABEL_326;
                }
              }

              shieldText7 = [shieldColorString shieldText];
              shieldText9 = [v523 shieldText];
              if ([shieldText7 isEqualToString:?])
              {
                v520 = 1;
LABEL_326:
                v522ShieldColorString = [shieldColorString shieldColorString];
                if (v522ShieldColorString || ([v523 shieldColorString], (accessibilityText4 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v522ShieldColorString2 = [shieldColorString shieldColorString];
                  [v523 shieldColorString];
                  v315 = shieldText8 = v522ShieldColorString;
                  LODWORD(shieldText12) = [v522ShieldColorString2 isEqualToString:v315];

                  if (shieldText8)
                  {

                    v50 = shieldColorString;
                    v316 = shieldText7;
                    if (v520)
                    {
                      goto LABEL_330;
                    }

                    goto LABEL_331;
                  }

                  v50 = shieldColorString;
                  v316 = shieldText7;
                  v318 = accessibilityText4;
                }

                else
                {
                  v318 = 0;
                  LODWORD(shieldText12) = 1;
                  v316 = shieldText7;
                }

                if (v520)
                {
LABEL_330:
                }

LABEL_331:
                if (shieldText10)
                {

                  v317 = v523;
                  if (shieldText12)
                  {
                    goto LABEL_89;
                  }
                }

                else
                {

                  v317 = v523;
                  if (shieldText12)
                  {
                    goto LABEL_89;
                  }
                }

                v51 = v317;
                LODWORD(shieldText7) = 0;
                shieldText9 = shieldText11;
                v533 = v563;
LABEL_121:
                v19 = v576;
                goto LABEL_675;
              }

              v250 = shieldText10;
              if (!shieldText10)
              {
                v250 = accessibilityText2;
              }

              LODWORD(shieldText7) = 0;
              v115 = v523;
            }

            else
            {
              LODWORD(shieldText7) = 0;
              v50 = shieldColorString;
              v115 = v523;
            }

            v517 = v50;
            shieldText9 = shieldText11;
            v533 = v563;
            goto LABEL_672;
          }

          v53 = v561;
          v38 = v570;
LABEL_40:

LABEL_41:
          v33 = v577;
LABEL_42:

          v19 = v576;
LABEL_43:

          v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          goto LABEL_44;
        }

        v19 = v576;
        if ((v71 == 0) != (v72 == 0))
        {
          goto LABEL_286;
        }

        shieldType4 = [v71 shieldType];
        v57 = shieldType4 == [v563 shieldType];
        v71 = v517;
        if (!v57)
        {
          goto LABEL_286;
        }

        shieldText7 = [v517 shieldText];
        if (shieldText7 || ([v563 shieldText], (shieldText8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          shieldText11 = [v517 shieldText];
          shieldText12 = [v563 shieldText];
          if (([shieldText11 isEqualToString:?] & 1) == 0)
          {

            v290 = shieldText7;
            if (!shieldText7)
            {
              v290 = shieldText8;
            }

LABEL_286:
            v163 = v563;
            goto LABEL_287;
          }

          LODWORD(accessibilityText2) = 1;
        }

        else
        {
          shieldText8 = 0;
          LODWORD(accessibilityText2) = 0;
        }

        accessibilityText5 = [v517 shieldColorString];
        if (accessibilityText5 || ([v563 shieldColorString], (accessibilityText8 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          shieldColorString12 = [v517 shieldColorString];
          shieldColorString13 = [v563 shieldColorString];
          LODWORD(accessibilityText4) = [shieldColorString12 isEqualToString:shieldColorString13];

          if (accessibilityText5)
          {

            v71 = v517;
            v337 = shieldText7;
            if (accessibilityText2)
            {
              goto LABEL_366;
            }

            goto LABEL_367;
          }

          v71 = v517;
          v337 = shieldText7;
          v339 = accessibilityText8;
        }

        else
        {
          v339 = 0;
          LODWORD(accessibilityText4) = 1;
          v337 = shieldText7;
        }

        if (accessibilityText2)
        {
LABEL_366:
        }

LABEL_367:
        if (v337)
        {

          v338 = v563;
          if (!accessibilityText4)
          {
            goto LABEL_371;
          }
        }

        else
        {

          v338 = v563;
          if ((accessibilityText4 & 1) == 0)
          {
LABEL_371:
            v163 = v338;
            v19 = v576;
LABEL_287:
            v50 = shieldColorString;
LABEL_288:

            LODWORD(shieldText7) = 0;
LABEL_289:
            shieldText11 = v561;
            v563 = v559;
            goto LABEL_673;
          }
        }

        goto LABEL_55;
      }

      v53 = v578;
      v54 = v38;
      if ((v38 == 0) != (v578 == 0))
      {
        goto LABEL_40;
      }

      muid = [v38 muid];
      v572 = v34;
      muid2 = [v578 muid];
      v53 = v578;
      v57 = muid == muid2;
      v54 = v38;
      if (!v57)
      {
        goto LABEL_40;
      }

      v546 = identifier4;
      v551 = identifier3;
      name3 = [v38 name];
      if (name3 || ([v578 name], (v563 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        name4 = [v38 name];
        name5 = [v578 name];
        if (([name4 isEqualToString:name5] & 1) == 0)
        {

          if (!name3)
          {
            v559 = v38;
            v561 = v578;
            v570 = v38;
            v19 = v576;
            identifier4 = v546;
            identifier3 = v551;
            goto LABEL_679;
          }

          v53 = v578;
          v54 = v38;
          identifier4 = v546;
          identifier3 = v551;
          goto LABEL_40;
        }

        shieldText9 = name5;
        v533 = name4;
        v560 = name3;
        LODWORD(shieldText11) = 1;
      }

      else
      {
        v560 = 0;
        v563 = 0;
        LODWORD(shieldText11) = 0;
      }

      v571 = v38;
      artwork3 = [v38 artwork];
      artwork4 = [v578 artwork];
      v85 = artwork3;
      v86 = artwork4;
      v562 = v85;
      if (!(v85 | v86))
      {
        LODWORD(shieldText7) = 1;
        v38 = v571;
        goto LABEL_68;
      }

      v38 = v571;
      if ((v85 == 0) != (v86 == 0))
      {
        LODWORD(shieldText7) = 0;
LABEL_68:
        v87 = v560;
LABEL_69:
        v88 = v86;

        if (shieldText11)
        {
        }

        identifier4 = v546;
        identifier3 = v551;
        if (v87)
        {

          if (shieldText7)
          {
            goto LABEL_21;
          }
        }

        else
        {

          if (shieldText7)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_41;
      }

      v89 = v86;
      artworkSourceType6 = [v85 artworkSourceType];
      if (artworkSourceType6 != [v89 artworkSourceType] || (v91 = objc_msgSend(v85, "artworkUseType"), v91 != objc_msgSend(v89, "artworkUseType")))
      {
        LODWORD(shieldText7) = 0;
        v87 = v560;
        v86 = v89;
        goto LABEL_69;
      }

      shieldDataSource7 = [v85 shieldDataSource];
      shieldDataSource8 = [v89 shieldDataSource];
      v94 = shieldDataSource7;
      v95 = shieldDataSource8;
      shieldColorString = v89;
      v523 = v95;
      if (!(v94 | v95))
      {
LABEL_79:
        v518 = v94;
        iconDataSource7 = [v562 iconDataSource];
        iconDataSource8 = [v89 iconDataSource];
        v94 = iconDataSource7;
        v98 = iconDataSource8;
        shieldText8 = v98;
        if (!(v94 | v98))
        {
          goto LABEL_80;
        }

        v38 = v571;
        shieldText14 = v518;
        if ((v94 == 0) != (v98 == 0))
        {
          LODWORD(shieldText7) = 0;
          goto LABEL_220;
        }

        v216 = v94;
        v217 = v98;
        accessibilityText2 = v216;
        iconType7 = [v216 iconType];
        if (iconType7 != [v217 iconType] || (v219 = objc_msgSend(accessibilityText2, "cartoID"), v219 != objc_msgSend(v217, "cartoID")) || (v220 = objc_msgSend(accessibilityText2, "defaultTransitType"), v220 != objc_msgSend(v217, "defaultTransitType")) || (v221 = objc_msgSend(accessibilityText2, "iconAttributeKey"), v221 != objc_msgSend(v217, "iconAttributeKey")))
        {
          LODWORD(shieldText7) = 0;
          v98 = v217;
          v94 = accessibilityText2;
LABEL_220:
          shieldText12 = v94;
          v87 = v560;
          goto LABEL_417;
        }

        iconAttributeValue7 = [accessibilityText2 iconAttributeValue];
        iconAttributeValue8 = [v217 iconAttributeValue];

        v57 = iconAttributeValue7 == iconAttributeValue8;
        v89 = shieldColorString;
        v95 = v217;
        v94 = accessibilityText2;
        if (!v57)
        {
          LODWORD(shieldText7) = 0;
          v38 = v571;
          v87 = v560;
          shieldText14 = v518;
          goto LABEL_419;
        }

LABEL_80:
        iconFallbackShieldDataSource7 = [v562 iconFallbackShieldDataSource];
        iconFallbackShieldDataSource8 = [v89 iconFallbackShieldDataSource];
        v101 = iconFallbackShieldDataSource7;
        v102 = iconFallbackShieldDataSource8;
        accessibilityText4 = v102;
        accessibilityText2 = v94;
        shieldText12 = v101;
        if (!(v101 | v102))
        {
LABEL_81:
          textDataSource7 = [v562 textDataSource];
          textDataSource8 = [v89 textDataSource];
          v105 = textDataSource7;
          v106 = textDataSource8;
          accessibilityText8 = v106;
          accessibilityText5 = v105;
          if (!(v105 | v106))
          {
            goto LABEL_82;
          }

          if ((v105 == 0) != (v106 == 0))
          {

            LODWORD(shieldText7) = 0;
            v234 = v105;
            v38 = v571;
            goto LABEL_229;
          }

          v253 = v106;
          [v105 text];
          v255 = v254 = v105;
          text4 = [v253 text];
          v257 = v255;
          v258 = text4;
          if (!(v257 | v258))
          {

            v89 = shieldColorString;
            goto LABEL_82;
          }

          v293 = v258;
          shieldText14 = v518;
          if ((v257 == 0) != (v258 == 0))
          {

            LODWORD(shieldText7) = 0;
            v234 = accessibilityText5;
            goto LABEL_413;
          }

          shieldColorString4 = v257;
          formatStrings7 = [v257 formatStrings];
          v508 = v293;
          formatStrings8 = [v293 formatStrings];
          v322 = formatStrings7;
          v323 = formatStrings8;
          v324 = v323;
          v506 = v322;
          if (!(v322 | v323))
          {
            shieldText7 = v323;
            goto LABEL_357;
          }

          if ((v322 == 0) != (v323 == 0) || (v386 = [v322 count], v57 = v386 == objc_msgSend(v324, "count"), v322 = v506, !v57))
          {

LABEL_498:
            goto LABEL_648;
          }

          shieldText7 = v324;
          v588 = 0u;
          v589 = 0u;
          v586 = 0u;
          v587 = 0u;
          shieldColorString14 = v506;
          v387 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
          if (v387)
          {
            v388 = v387;
            v389 = 0;
            shieldColorString9 = *v587;
            while (2)
            {
              for (nn = 0; nn != v388; nn = nn + 1)
              {
                if (*v587 != shieldColorString9)
                {
                  objc_enumerationMutation(shieldColorString14);
                }

                v391 = *(*(&v586 + 1) + 8 * nn);
                v392 = [shieldText7 objectAtIndexedSubscript:v389];
                if (v391 | v392)
                {
                  v393 = v392;
                  v394 = v391;
                  v395 = v393;
                  v396 = [v394 isEqual:v393];

                  if (!v396)
                  {

                    v324 = shieldText7;
                    goto LABEL_498;
                  }
                }

                ++v389;
              }

              v388 = [shieldColorString14 countByEnumeratingWithState:&v586 objects:buf count:16];
              if (v388)
              {
                continue;
              }

              break;
            }
          }

LABEL_357:
          separators7 = [shieldColorString4 separators];
          separators8 = [v508 separators];
          v501 = separators7;
          shieldColorString9 = separators8;
          if (v501 | shieldColorString9)
          {
            if ((v501 == 0) == (shieldColorString9 == 0))
            {
              v417 = [v501 count];
              if (v417 == [shieldColorString9 count])
              {
                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                v499 = v501;
                v418 = [v499 countByEnumeratingWithState:&v586 objects:buf count:16];
                if (v418)
                {
                  v419 = v418;
                  v420 = 0;
                  shieldColorString14 = *v587;
                  while (2)
                  {
                    for (i1 = 0; i1 != v419; i1 = i1 + 1)
                    {
                      if (*v587 != shieldColorString14)
                      {
                        objc_enumerationMutation(v499);
                      }

                      v422 = *(*(&v586 + 1) + 8 * i1);
                      v423 = v420;
                      v424 = [shieldColorString9 objectAtIndexedSubscript:v420];
                      if (v422 | v424)
                      {
                        v425 = v424;
                        v426 = v422;
                        v427 = v425;
                        v428 = [v426 isEqual:v425];

                        if (!v428)
                        {

                          goto LABEL_647;
                        }
                      }

                      v420 = v423 + 1;
                    }

                    v419 = [v499 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v419)
                    {
                      continue;
                    }

                    break;
                  }
                }

                goto LABEL_358;
              }
            }
          }

          else
          {
LABEL_358:
            formatTokens7 = [shieldColorString4 formatTokens];
            formatTokens8 = [v508 formatTokens];
            v329 = formatTokens7;
            shieldColorString14 = formatTokens8;
            v496 = v329;
            if (!(v329 | shieldColorString14))
            {
              goto LABEL_359;
            }

            if ((v329 == 0) == (shieldColorString14 == 0))
            {
              v454 = [v329 count];
              if (v454 == [shieldColorString14 count])
              {
                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                v495 = v496;
                v455 = [v495 countByEnumeratingWithState:&v586 objects:buf count:16];
                if (v455)
                {
                  v456 = v455;
                  v457 = 0;
                  v458 = *v587;
                  while (2)
                  {
                    for (i2 = 0; i2 != v456; ++i2)
                    {
                      if (*v587 != v458)
                      {
                        objc_enumerationMutation(v495);
                      }

                      v460 = [shieldColorString14 objectAtIndexedSubscript:v457];
                      v500 = GEOServerFormatTokenEqual();

                      if (!v500)
                      {
                        v481 = v495;

                        v480 = shieldColorString14;
                        goto LABEL_615;
                      }

                      ++v457;
                    }

                    v456 = [v495 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v456)
                    {
                      continue;
                    }

                    break;
                  }
                }

LABEL_359:
                alternativeString7 = [shieldColorString4 alternativeString];
                alternativeString8 = [v508 alternativeString];
                v332 = alternativeString7;
                v333 = alternativeString8;
                if (v332 | v333)
                {
                  v334 = [v332 isEqual:v333];
                }

                else
                {
                  v334 = 1;
                }

                v102 = accessibilityText8;
                v34 = v572;
                v89 = shieldColorString;
                if ((v334 & 1) == 0)
                {
                  LODWORD(shieldText7) = 0;
                  v38 = v571;
                  v215 = accessibilityText5;
LABEL_273:
                  v87 = v560;
                  shieldText14 = v518;
LABEL_416:

                  v98 = accessibilityText4;
                  v94 = accessibilityText2;
LABEL_417:

LABEL_418:
                  v95 = shieldText8;
LABEL_419:

LABEL_420:
                  v86 = shieldColorString;
                  goto LABEL_69;
                }

LABEL_82:
                hasRoutingIncidentBadge4 = [v562 hasRoutingIncidentBadge];
                if (hasRoutingIncidentBadge4 != [v89 hasRoutingIncidentBadge])
                {
                  LODWORD(shieldText7) = 0;
                  v38 = v571;
                  v87 = v560;
                  shieldText14 = v518;
LABEL_415:
                  v102 = accessibilityText8;
                  v215 = accessibilityText5;
                  goto LABEL_416;
                }

                [v562 accessibilityText];
                shieldColorString9 = shieldText14 = v518;
                if (shieldColorString9 || ([shieldColorString accessibilityText], (shieldColorString4 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  accessibilityText11 = [v562 accessibilityText];
                  accessibilityText12 = [shieldColorString accessibilityText];
                  LODWORD(shieldText7) = [accessibilityText11 isEqualToString:accessibilityText12];

                  v234 = shieldColorString9;
                  if (shieldColorString9)
                  {
                    goto LABEL_413;
                  }
                }

                else
                {
                  shieldColorString4 = 0;
                  LODWORD(shieldText7) = 1;
                }

                v234 = shieldColorString4;
LABEL_413:
                v38 = v571;
                v87 = v560;
LABEL_414:

                goto LABEL_415;
              }
            }

            v480 = shieldColorString14;

            v481 = v496;
LABEL_615:
          }

LABEL_647:

LABEL_648:
          LODWORD(shieldText7) = 0;
          v234 = accessibilityText5;
          v38 = v571;
          v34 = v572;
LABEL_229:
          v87 = v560;
          shieldText14 = v518;
          goto LABEL_414;
        }

        if ((v101 == 0) != (v102 == 0))
        {
          LODWORD(shieldText7) = 0;
          v215 = v101;
LABEL_272:
          v38 = v571;
          goto LABEL_273;
        }

        v240 = v102;
        v241 = v101;
        shieldType5 = [v101 shieldType];
        if (shieldType5 != [v240 shieldType])
        {
          LODWORD(shieldText7) = 0;
          v102 = v240;
          v215 = v241;
          goto LABEL_272;
        }

        [v241 shieldText];
        v38 = v571;
        v87 = v560;
        accessibilityText5 = shieldText14 = v518;
        if (accessibilityText5 || ([accessibilityText4 shieldText], (shieldColorString9 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          shieldText7 = [shieldText12 shieldText];
          accessibilityText8 = [accessibilityText4 shieldText];
          if (([shieldText7 isEqualToString:?] & 1) == 0)
          {

            LODWORD(shieldText7) = 0;
            v234 = accessibilityText5;
            if (!accessibilityText5)
            {
              v234 = shieldColorString9;
            }

            accessibilityText8 = accessibilityText4;
            accessibilityText5 = shieldText12;
            goto LABEL_414;
          }

          v243 = 1;
        }

        else
        {
          shieldColorString9 = 0;
          v243 = 0;
        }

        v371 = shieldText12;
        shieldColorString14 = [shieldText12 shieldColorString];
        LODWORD(shieldColorString4) = v243;
        if (shieldColorString14 || ([accessibilityText4 shieldColorString], (v506 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          shieldColorString15 = [shieldText12 shieldColorString];
          shieldColorString16 = [accessibilityText4 shieldColorString];
          LODWORD(v508) = [shieldColorString15 isEqualToString:shieldColorString16];

          if (shieldColorString14)
          {

            v371 = shieldText12;
            v374 = accessibilityText5;
            v375 = shieldText7;
            if (shieldColorString4)
            {
              goto LABEL_435;
            }

            goto LABEL_436;
          }

          v371 = shieldText12;
          v374 = accessibilityText5;
          v375 = shieldText7;
          v376 = v506;
        }

        else
        {
          v376 = 0;
          LODWORD(v508) = 1;
          v374 = accessibilityText5;
          v375 = shieldText7;
        }

        if (shieldColorString4)
        {
LABEL_435:
        }

LABEL_436:
        if (v374)
        {

          v98 = accessibilityText4;
          v89 = shieldColorString;
          if (v508)
          {
            goto LABEL_81;
          }
        }

        else
        {

          v98 = accessibilityText4;
          v89 = shieldColorString;
          if (v508)
          {
            goto LABEL_81;
          }
        }

        LODWORD(shieldText7) = 0;
        v38 = v571;
        v87 = v560;
        shieldText14 = v518;
        goto LABEL_417;
      }

      v169 = v95;
      shieldText14 = v94;
      if ((v94 == 0) != (v95 == 0))
      {
        LODWORD(shieldText7) = 0;
        v38 = v571;
LABEL_222:
        v87 = v560;
        goto LABEL_419;
      }

      shieldType6 = [v94 shieldType];
      shieldType7 = [v169 shieldType];
      v204 = v169;
      v38 = v571;
      if (shieldType6 != shieldType7)
      {
        LODWORD(shieldText7) = 0;
        v95 = v204;
        goto LABEL_222;
      }

      [v94 shieldText];
      shieldText12 = v87 = v560;
      v519 = v94;
      if (shieldText12 || ([v523 shieldText], (shieldText8 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        shieldText13 = [v94 shieldText];
        shieldText14 = [v523 shieldText];
        if (([shieldText13 isEqualToString:shieldText14] & 1) == 0)
        {

          LODWORD(shieldText7) = 0;
          if (shieldText12)
          {
            v249 = shieldText12;
          }

          else
          {
            v249 = shieldText8;
          }

          shieldText8 = v523;
          shieldText12 = v249;
          shieldText14 = v519;
          v94 = v519;

          goto LABEL_418;
        }

        accessibilityText5 = shieldText14;
        accessibilityText4 = shieldText13;
        LODWORD(shieldText7) = 1;
      }

      else
      {
        shieldText8 = 0;
        LODWORD(shieldText7) = 0;
      }

      shieldColorString17 = [v519 shieldColorString];
      v295 = v523;
      if (shieldColorString17 || ([v523 shieldColorString], (shieldText14 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        shieldColorString18 = [v519 shieldColorString];
        shieldColorString19 = [v523 shieldColorString];
        LODWORD(accessibilityText2) = [shieldColorString18 isEqualToString:shieldColorString19];

        if (shieldColorString17)
        {

          v295 = v523;
          if (shieldText7)
          {
            goto LABEL_309;
          }

          goto LABEL_310;
        }

        v295 = v523;
      }

      else
      {
        LODWORD(accessibilityText2) = 1;
      }

      if (shieldText7)
      {
LABEL_309:
      }

LABEL_310:
      if (shieldText12)
      {

        v94 = v519;
        v89 = shieldColorString;
        if (accessibilityText2)
        {
          goto LABEL_79;
        }
      }

      else
      {

        v94 = v519;
        v89 = shieldColorString;
        if (accessibilityText2)
        {
          goto LABEL_79;
        }
      }

      LODWORD(shieldText7) = 0;
      v38 = v571;
      v87 = v560;
      shieldText14 = v94;
      goto LABEL_420;
    }

LABEL_44:

LABEL_45:
    if (++v21 == v580)
    {
      v492 = [obj countByEnumeratingWithState:&v581 objects:v590 count:16];
      v580 = v492;
      if (!v492)
      {
        v493 = 0;
        goto LABEL_686;
      }

      goto LABEL_12;
    }
  }

  v493 = v22;
LABEL_686:
  v14 = v557;
  v5 = v558;
  v17 = v556;
LABEL_687:

  return v493;
}

- (id)itemForMapItem:(id)item
{
  itemCopy = item;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  _geoMapItem = [itemCopy _geoMapItem];
  _geoMapItemStorageForPersistence = [itemCopy _geoMapItemStorageForPersistence];

  userValues = [_geoMapItemStorageForPersistence userValues];
  name = [userValues name];
  v11 = [v6 initWithMapItem:_geoMapItem customName:name];
  [v5 addObject:v11];

  if ([(CollectionHandler *)self isFavoriteCollection])
  {
    collection2 = [_TtC8MapsSync22MapsSyncQueryPredicate predicateWithFormat:@"(type & %d) != 0", 1];
    [v5 addObject:collection2];
  }

  else
  {
    collection = [(CollectionHandler *)self collection];
    identifier = [collection identifier];

    if (!identifier)
    {
      goto LABEL_6;
    }

    collection2 = [(CollectionHandler *)self collection];
    identifier2 = [collection2 identifier];
    v32 = identifier2;
    v16 = [NSArray arrayWithObjects:&v32 count:1];
    v17 = [_TtC8MapsSync22MapsSyncQueryPredicate queryPredicateWithFormat:@"ANY collections.identifier == %@" argumentArray:v16];
    [v5 addObject:v17];
  }

LABEL_6:
  v18 = [_TtC8MapsSync20MapsSyncQueryOptions alloc];
  v19 = [[_TtC8MapsSync22MapsSyncQueryPredicate alloc] initWithAnd:v5];
  v20 = [v18 initWithPredicate:v19 sortDescriptors:0 range:0];

  v21 = objc_alloc_init(MSCollectionPlaceItemRequest);
  v27 = 0;
  v22 = [v21 fetchSyncWithOptions:v20 error:&v27];
  v23 = v27;
  firstObject = [v22 firstObject];

  if (v23)
  {
    v25 = sub_10000BDA4();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "[CollectionHandler itemForMapItem:]";
      v30 = 2112;
      v31 = v23;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%s returned an error: %@", buf, 0x16u);
    }
  }

  return firstObject;
}

- (UIImage)image
{
  cachedImage = [(CollectionHandler *)self cachedImage];

  if (cachedImage)
  {
    cachedImage2 = [(CollectionHandler *)self cachedImage];
  }

  else
  {
    cachedImage2 = 0;
  }

  return cachedImage2;
}

- (NSString)subtitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Collections] subtitle" value:@"localized string not found" table:0];
  content = [(CollectionHandler *)self content];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [content count]);

  return v6;
}

- (void)deleteCollection:(id)collection
{
  collectionCopy = collection;
  collectionOperation = [(CollectionHandler *)self collectionOperation];
  collection = [(CollectionHandler *)self collection];
  [collectionOperation deleteCollection:collection completion:collectionCopy];
}

- (void)updateCollection:(id)collection
{
  collectionCopy = collection;
  if ([(CollectionHandler *)self hasBeenModified])
  {
    [(CollectionHandler *)self setHasBeenModified:0];
    collectionOperation = [(CollectionHandler *)self collectionOperation];
    collection = [(CollectionHandler *)self collection];
    [collectionOperation saveCollection:collection completion:collectionCopy];
  }
}

- (void)createCollection:(id)collection
{
  collectionCopy = collection;
  collectionOperation = [(CollectionHandler *)self collectionOperation];
  collection = [(CollectionHandler *)self collection];
  [collectionOperation createCollection:collection completion:collectionCopy];
}

- (unint64_t)bucketedNumberOfItems
{
  numberOfItems = [(CollectionHandler *)self numberOfItems];
  unsignedIntegerValue = [numberOfItems unsignedIntegerValue];

  if (unsignedIntegerValue >= 5)
  {
    if (unsignedIntegerValue > 0xE)
    {
      if (unsignedIntegerValue < 0x19)
      {
        return 15;
      }

      if (unsignedIntegerValue < 0x28)
      {
        return 25;
      }

      if (unsignedIntegerValue > 0x63)
      {
        return 100 * (unsignedIntegerValue / 0x64);
      }

      v4 = unsignedIntegerValue - 20 * (unsignedIntegerValue / 0x14u);
    }

    else
    {
      v4 = unsignedIntegerValue - 5 * (unsignedIntegerValue / 5u);
    }

    unsignedIntegerValue -= v4;
  }

  return unsignedIntegerValue;
}

- (void)fetchCoverPhotoForFrameSize:(CGSize)size scale:(double)scale completion:(id)completion
{
  height = size.height;
  width = size.width;
  completionCopy = completion;
  collection = [(CollectionHandler *)self collection];
  stagedImage = [(CollectionHandler *)self stagedImage];

  if (!stagedImage)
  {
    image = [collection image];

    if (image)
    {
      v14 = [UIImage alloc];
      image2 = [collection image];
      stagedImage2 = [v14 initWithData:image2];

      goto LABEL_5;
    }

    if ([(CollectionHandler *)self contentType]== 1)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = [(CollectionHandler *)self originalContent];
      v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v16)
      {
        v17 = width * scale;
        v18 = height * scale;
        v19 = *v36;
        while (2)
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v36 != v19)
            {
              objc_enumerationMutation(obj);
            }

            v21 = *(*(&v35 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [MKMapItem _itemWithGeoMapItem:v21];
            }

            else
            {
              v22 = v21;
            }

            v23 = v22;
            _geoMapItem = [v22 _geoMapItem];
            _photos = [_geoMapItem _photos];
            v26 = [_photos _geo_firstPhotoOfAtLeastSize:{v17, v18}];

            if (v26)
            {
              v16 = [v26 url];

              goto LABEL_24;
            }
          }

          v16 = [obj countByEnumeratingWithState:&v35 objects:v39 count:16];
          if (v16)
          {
            continue;
          }

          break;
        }
      }

LABEL_24:

      if (v16)
      {
        goto LABEL_25;
      }
    }

    else
    {
      collection2 = [(CollectionHandler *)self collection];
      imageUrl = [collection2 imageUrl];

      if (imageUrl)
      {
        imageUrl2 = [collection imageUrl];
        v16 = [NSURL URLWithString:imageUrl2];

        if (v16)
        {
LABEL_25:
          v31 = +[MKAppImageManager sharedCollectionCoverImageManager];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_100CAF8B8;
          v33[3] = &unk_101650190;
          v34 = completionCopy;
          [v31 loadAppImageAtURL:v16 completionHandler:v33];

          v30 = v34;
          goto LABEL_26;
        }
      }
    }

    v16 = GEOErrorDomain();
    v30 = [NSError errorWithDomain:v16 code:-8 userInfo:0];
    (*(completionCopy + 2))(completionCopy, 0, v30);
LABEL_26:

    goto LABEL_6;
  }

  stagedImage2 = [(CollectionHandler *)self stagedImage];
LABEL_5:
  (*(completionCopy + 2))(completionCopy, stagedImage2, 0);

LABEL_6:
}

- (void)updateSortingByDistanceIfNeeded
{
  if (self->_sortType == 1)
  {
    objc_initWeak(&location, self);
    v3 = +[CollectionHandlerRebuildQueue sharedInstance];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100CAFA80;
    v4[3] = &unk_101661340;
    objc_copyWeak(&v5, &location);
    v4[4] = self;
    [v3 async:v4];

    objc_destroyWeak(&v5);
    objc_destroyWeak(&location);
  }
}

- (void)_storeSortType
{
  v3 = +[NSUserDefaults standardUserDefaults];
  v4 = [v3 objectForKey:@"__internal_CollectionSortStorage"];
  v5 = v4;
  v6 = &__NSDictionary0__struct;
  if (v4)
  {
    v6 = v4;
  }

  v7 = v6;

  v12 = [v7 mutableCopy];
  v8 = [NSNumber numberWithInteger:self->_sortType];
  identifier = [(CollectionHandler *)self identifier];
  [v12 setObject:v8 forKeyedSubscript:identifier];

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v12 copy];
  [v10 setObject:v11 forKey:@"__internal_CollectionSortStorage"];
}

- (void)setSortType:(int64_t)type
{
  objc_initWeak(&location, self);
  v5 = +[CollectionHandlerRebuildQueue sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CAFED0;
  v6[3] = &unk_101651D38;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  v7[1] = type;
  [v5 async:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)touch
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionOperation);
  collection = [(CollectionHandler *)self collection];
  [WeakRetained touchCollection:collection];
}

- (CollectionHandler)initWithCollection:(id)collection
{
  collectionCopy = collection;
  v6 = [(CollectionHandler *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, collection);
    [(CollectionHandler *)v7 _loadSortType];
  }

  return v7;
}

- (NSNumber)numberOfItems
{
  content = [(CollectionHandler *)self content];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [content count]);

  return v3;
}

+ (id)existingCollectionItemForMapItem:(id)item error:(id)error
{
  errorCopy = error;
  if (item)
  {
    itemCopy = item;
    v7 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
    _geoMapItem = [itemCopy _geoMapItem];
    _geoMapItemStorageForPersistence = [itemCopy _geoMapItemStorageForPersistence];

    userValues = [_geoMapItemStorageForPersistence userValues];
    name = [userValues name];
    v12 = [v7 initWithMapItem:_geoMapItem customName:name];

    v13 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v12 sortDescriptors:0 range:0];
    v14 = objc_alloc_init(MSCollectionPlaceItemRequest);
    v19 = errorCopy;
    v15 = [v14 fetchSyncWithOptions:v13 error:&v19];
    v16 = v19;

    firstObject = [v15 firstObject];

    errorCopy = v16;
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

+ (id)mspArrayForCollectionHandlers:(id)handlers
{
  handlersCopy = handlers;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [handlersCopy count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = handlersCopy;
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        collection = [v10 collection];

        if (collection)
        {
          collection2 = [v10 collection];
          [v4 addObject:collection2];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)collectionWithCollectionHandler:(id)handler
{
  collection = [handler collection];
  v4 = [CollectionHandler collectionWithCollection:collection];

  return v4;
}

+ (id)collectionWithStorage:(id)storage
{
  storageCopy = storage;
  v4 = objc_alloc_init(MSCollection);
  v5 = [URLCollectionHandler alloc];
  v6 = +[CollectionManager sharedManager];
  v7 = [(URLCollectionHandler *)v5 initWithStorage:storageCopy collectionOperation:v6];

  [(CollectionHandler *)v7 setCollection:v4];

  return v7;
}

+ (id)collectionWithCollection:(id)collection
{
  collectionCopy = collection;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = off_1015F61C8;
  if ((isKindOfClass & 1) == 0)
  {
    v5 = off_1015F66A8;
  }

  v6 = [objc_alloc(*v5) initWithCollection:collectionCopy];
  v7 = +[CollectionManager sharedManager];
  [v6 setCollectionOperation:v7];

  return v6;
}

+ (id)collection
{
  v2 = objc_alloc_init(MSCollection);
  v3 = [[UserCollectionHandler alloc] initWithCollection:v2];
  v4 = +[CollectionManager sharedManager];
  [(CollectionHandler *)v3 setCollectionOperation:v4];

  [(UserCollectionHandler *)v3 setNeedsToBePersisted:1];

  return v3;
}

@end