@interface CollectionHandler
+ (CGSize)photoSize;
+ (id)collection;
+ (id)collectionAllSavedPlaces;
+ (id)collectionWithCollection:(id)a3;
+ (id)collectionWithCollectionHandler:(id)a3;
+ (id)collectionWithStorage:(id)a3;
+ (id)existingCollectionItemForMapItem:(id)a3 error:(id)a4;
+ (id)favoriteCollection;
+ (id)mspArrayForCollectionHandlers:(id)a3;
- (BOOL)canShare;
- (CollectionHandler)init;
- (CollectionHandler)initWithCollection:(id)a3;
- (CollectionManagerOperation)collectionOperation;
- (NSNumber)numberOfItems;
- (NSString)description;
- (NSString)subtitle;
- (UIImage)image;
- (id)fullSharingURLFromContainedMapItems;
- (id)itemForMapItem:(id)a3;
- (id)itemForTransitLine:(id)a3;
- (unint64_t)bucketedNumberOfItems;
- (void)_loadSortType;
- (void)_storeSortType;
- (void)createCollection:(id)a3;
- (void)deleteCollection:(id)a3;
- (void)fetchCoverPhotoForFrameSize:(CGSize)a3 scale:(double)a4 completion:(id)a5;
- (void)loadDefaultImage;
- (void)loadImage;
- (void)notifyObserversContentUpdated;
- (void)notifyObserversInfoUpdated;
- (void)rebuildContent:(id)a3;
- (void)setSortType:(int64_t)a3;
- (void)touch;
- (void)updateCollection:(id)a3;
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
  v3 = [(CollectionHandler *)self identifier];
  v4 = [(CollectionHandler *)self content];
  v5 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 count]);
  v6 = [NSString stringWithFormat:@"<%p %@ %@ places", self, v3, v5];

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

  v4 = [(CollectionHandler *)self identifier];
  v5 = [v7 objectForKeyedSubscript:v4];

  if (v5)
  {
    v6 = [v5 integerValue];
  }

  else
  {
    v6 = 0;
  }

  self->_sortType = v6;
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
  v4 = [(CollectionHandler *)self collection];
  v5 = [(CollectionHandler *)self stagedImage];

  if (v5)
  {
    v6 = [(CollectionHandler *)self stagedImage];
    (v3[2])(v3, v6);
  }

  else
  {
    v7 = [v4 image];

    if (!v7)
    {
      if ([(CollectionHandler *)self contentType]== 1)
      {
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v9 = [(CollectionHandler *)self originalContent];
        v10 = [v9 countByEnumeratingWithState:&v29 objects:v36 count:16];
        if (v10)
        {
          v11 = *v30;
          obj = v9;
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
              v16 = [v14 _geoMapItem];
              v17 = [v16 _photos];
              [objc_opt_class() photoSize];
              v18 = [v17 _geo_firstPhotoOfAtLeastSize:?];

              if (v18)
              {
                v6 = [v18 url];

                v21 = obj;
                goto LABEL_23;
              }

              v12 = v12 + 1;
            }

            while (v10 != v12);
            v9 = obj;
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
        v19 = [(CollectionHandler *)self collection];
        v20 = [v19 imageUrl];

        if (v20)
        {
          v21 = [v4 imageUrl];
          v6 = [NSURL URLWithString:v21];
LABEL_23:

          if (v6)
          {
            v22 = [(CollectionHandler *)self cachedImage];
            v23 = v22 == 0;

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
            [v24 loadAppImageAtURL:v6 completionHandler:v26];

            objc_destroyWeak(&v28);
            goto LABEL_5;
          }
        }
      }

      [(CollectionHandler *)self loadDefaultImage];
      goto LABEL_6;
    }

    v8 = [v4 image];
    v6 = [UIImage imageWithData:v8];

    (v3[2])(v3, v6);
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
    v7 = [v6 userInterfaceIdiom];

    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100037F3C;
    v13[3] = &unk_1016519B0;
    v13[4] = self;
    v8 = objc_retainBlock(v13);
    if (v7 == 5)
    {
      v9 = [(CollectionHandler *)self originalContent];
      if ([v9 count])
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

      v9 = [UIImage maps_emptyImageScale:v5];
      v12 = +[UIColor whiteColor];
      v11 = [v9 imageWithTintColor:v12];
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
  v3 = [(CollectionHandler *)self originalContent];
  v4 = [v3 copy];

  sortType = self->_sortType;
  switch(sortType)
  {
    case 2:
      v6 = [v4 sortedArrayUsingComparator:&stru_101650168];
      v7 = [v6 copy];
      goto LABEL_8;
    case 1:
      v8 = +[MKLocationManager sharedLocationManager];
      v6 = [v8 lastLocation];

      if (v6)
      {
        [v6 coordinate];
        v10 = v9;
        [v6 coordinate];
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
      v6 = [v4 reverseObjectEnumerator];
      v7 = [v6 allObjects];
LABEL_8:
      v15 = self->_content;
      self->_content = v7;

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
  v4 = [(CollectionHandler *)self title];
  [v3 setName:v4];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(CollectionHandler *)self content];
  v6 = [v5 copy];

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
          v15 = [v13 _addressFormattedAsSinglelineAddress];
          v16 = objc_alloc_init(GEOLatLng);
          [v13 _coordinate];
          [v16 setLat:?];
          [v13 _coordinate];
          [v16 setLng:v17];
          [v14 setAddress:v15];
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

  v4 = [(CollectionHandler *)self fullSharingURL];
  v3 = v4 != 0;

  return v3;
}

- (void)rebuildContent:(id)a3
{
  v4 = a3;
  v5 = sub_10000BDA4();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v6 = [(CollectionHandler *)self handlerType];
    v7 = [(CollectionHandler *)self identifier];
    *buf = 134218243;
    v14 = v6;
    v15 = 2113;
    v16 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "Rebuilding Collection with type %ld, ID %{private}@", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v8 = +[CollectionHandlerRebuildQueue sharedInstance];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100CAA280;
  v10[3] = &unk_101660648;
  objc_copyWeak(&v12, buf);
  v9 = v4;
  v11 = v9;
  [v8 async:v10];

  objc_destroyWeak(&v12);
  objc_destroyWeak(buf);
}

- (id)itemForTransitLine:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  if ([(CollectionHandler *)self isFavoriteCollection])
  {
    v6 = [_TtC8MapsSync22MapsSyncQueryPredicate predicateWithFormat:@"(type & %d) != 0", 1];
    [v5 addObject:v6];
LABEL_5:

    goto LABEL_6;
  }

  v7 = [(CollectionHandler *)self collection];
  v8 = [v7 identifier];

  if (v8)
  {
    v6 = [(CollectionHandler *)self collection];
    v9 = [v6 identifier];
    v591 = v9;
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
    v24 = [v22 transitLineStorage];
    v25 = [v23 initWithData:v24];

    v26 = v25;
    v27 = v4;
    if (!(v4 | v26))
    {
      break;
    }

    v28 = v27;
    if ((v4 == 0) == (v26 == 0))
    {
      v29 = [v26 identifier];
      v30 = [v28 identifier];
      if (![v29 isEqual:v30])
      {
        goto LABEL_43;
      }

      v31 = [v26 name];
      v32 = [v28 name];
      v33 = v31;
      v34 = v32;
      if (v33 | v34)
      {
        v35 = [v33 isEqual:v34];

        if (!v35)
        {
          goto LABEL_42;
        }
      }

      v577 = v33;
      v36 = [v26 system];
      v37 = [v28 system];
      v38 = v36;
      v578 = v37;
      if (!(v38 | v578))
      {
LABEL_21:
        v39 = [v26 departureTimeDisplayStyle];
        if (v39 != [v28 departureTimeDisplayStyle])
        {
          goto LABEL_41;
        }

        v40 = [v26 departuresAreVehicleSpecific];
        if (v40 != [v28 departuresAreVehicleSpecific])
        {
          goto LABEL_41;
        }

        v570 = v38;
        v41 = [v26 artwork];
        v42 = [v28 artwork];
        v43 = v41;
        v44 = v42;
        v559 = v43;
        v561 = v44;
        if (!(v43 | v44))
        {
          goto LABEL_24;
        }

        v19 = v576;
        if ((v43 == 0) != (v44 == 0))
        {
          v60 = v43;
          LOBYTE(v43) = 0;
          goto LABEL_37;
        }

        v573 = v34;
        v61 = v44;
        v62 = [v43 artworkSourceType];
        if (v62 != [v61 artworkSourceType])
        {
          LOBYTE(v43) = 0;
          v44 = v561;
          v563 = v559;
          v34 = v573;
          goto LABEL_678;
        }

        v63 = [v559 artworkUseType];
        v34 = v573;
        if (v63 != [v561 artworkUseType])
        {
          LOBYTE(v43) = 0;
          v60 = v559;
          v44 = v561;
LABEL_37:
          v563 = v60;
LABEL_678:

LABEL_679:
          v20 = &_s10MapsDesign17ListCellViewModelCMa_ptr_0;
          if (v43)
          {

            break;
          }

          goto LABEL_45;
        }

        v64 = [v559 shieldDataSource];
        v65 = [v561 shieldDataSource];
        v50 = v64;
        v51 = v65;
        v532 = v51;
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
        v172 = [v170 shieldType];
        v57 = v172 == [v171 shieldType];
        v19 = v576;
        if (!v57)
        {
          LODWORD(v537) = 0;
          v51 = v171;
          v50 = v533;
          v545 = v561;
          v563 = v559;
          goto LABEL_675;
        }

        v173 = v533;
        v569 = [v533 shieldText];
        if (v569 || ([v532 shieldText], (v523 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v174 = [v533 shieldText];
          v175 = [v532 shieldText];
          v545 = v174;
          v176 = v174;
          v177 = v175;
          if (([v176 isEqualToString:v175] & 1) == 0)
          {

            LODWORD(v537) = 0;
            v233 = v569;
            if (!v569)
            {
              v233 = v523;
            }

            v517 = v233;
            v50 = v533;
            v523 = v532;
            goto LABEL_289;
          }

          v516 = v177;
          v178 = 1;
          v173 = v533;
        }

        else
        {
          v523 = 0;
          v178 = 0;
        }

        v522 = [v173 shieldColorString];
        if (v522 || ([v532 shieldColorString], (v515 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v521 = v178;
          v286 = [v173 shieldColorString];
          v287 = [v532 shieldColorString];
          v544 = [v286 isEqualToString:v287];

          if (v522)
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
          v289 = v515;
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
        if (v569)
        {

          v292 = v532;
          if (!v544)
          {
            goto LABEL_301;
          }
        }

        else
        {

          v292 = v532;
          if ((v544 & 1) == 0)
          {
LABEL_301:
            v47 = v292;
            v43 = v288;
            LODWORD(v537) = 0;
            v545 = v561;
            v563 = v559;
            goto LABEL_49;
          }
        }

LABEL_53:
        v66 = [v559 iconDataSource];
        v67 = [v561 iconDataSource];
        v50 = v66;
        v68 = v67;
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

          v522 = v50;
          v564 = [v50 iconType];
          v164 = [v523 iconType];
          v163 = v523;
          v517 = v50;
          if (v564 != v164)
          {
            goto LABEL_288;
          }

          v565 = [v50 cartoID];
          v165 = [v523 cartoID];
          v163 = v523;
          v517 = v50;
          if (v565 != v165)
          {
            goto LABEL_288;
          }

          v566 = [v50 defaultTransitType];
          v166 = [v523 defaultTransitType];
          v163 = v523;
          v517 = v50;
          if (v566 != v166)
          {
            goto LABEL_288;
          }

          v567 = [v50 iconAttributeKey];
          v167 = [v523 iconAttributeKey];
          v163 = v523;
          v517 = v50;
          if (v567 != v167)
          {
            goto LABEL_288;
          }

          v568 = [v50 iconAttributeValue];
          v168 = [v523 iconAttributeValue];

          v51 = v523;
          if (v568 != v168)
          {
LABEL_120:
            LODWORD(v537) = 0;
            v545 = v561;
            v563 = v559;
            goto LABEL_121;
          }
        }

        v522 = v50;
        v69 = [v559 iconFallbackShieldDataSource];
        v70 = [v561 iconFallbackShieldDataSource];
        v71 = v69;
        v72 = v70;
        v517 = v71;
        v563 = v72;
        if (!(v71 | v72))
        {
LABEL_55:
          v73 = [v559 textDataSource];
          v74 = [v561 textDataSource];
          v75 = v73;
          v76 = v74;
          v19 = v576;
          v545 = v76;
          if (v75 | v76)
          {
            if ((v75 == 0) != (v76 == 0))
            {
              goto LABEL_628;
            }

            v210 = v76;
            [v75 text];
            v211 = v537 = v75;
            v212 = [v210 text];
            v213 = v211;
            v214 = v212;
            if (v213 | v214)
            {
              v264 = (v213 == 0) ^ (v214 == 0);
              v19 = v576;
              v265 = v213;
              v75 = v537;
              v515 = v214;
              v516 = v265;
              if (v264)
              {
                goto LABEL_627;
              }

              v266 = v214;
              v267 = [v265 formatStrings];
              v268 = [v266 formatStrings];
              v269 = v267;
              v270 = v268;
              v271 = v270;
              v511 = v269;
              if (v269 | v270)
              {
                if ((v269 == 0) != (v270 == 0) || (v352 = [v269 count], v57 = v352 == objc_msgSend(v271, "count"), v269 = v511, !v57))
                {

                  v370 = v271;
                  v19 = v576;
LABEL_422:
                  v75 = v537;
LABEL_626:

LABEL_627:
LABEL_628:

                  v78 = v545;
LABEL_629:

                  LODWORD(v537) = 0;
                  v545 = v561;
                  v563 = v559;
                  v50 = v522;
LABEL_673:

LABEL_674:
                  v51 = v523;
LABEL_675:

LABEL_676:
                  v47 = v532;
                  v43 = v533;
LABEL_677:

                  v44 = v545;
                  LOBYTE(v43) = v537;
                  goto LABEL_678;
                }

                v514 = v271;
                v550 = v30;
                v555 = v29;
                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                v512 = v511;
                v353 = [v512 countByEnumeratingWithState:&v586 objects:buf count:16];
                if (v353)
                {
                  v354 = v353;
                  v355 = 0;
                  v513 = *v587;
                  while (2)
                  {
                    for (i = 0; i != v354; i = i + 1)
                    {
                      if (*v587 != v513)
                      {
                        objc_enumerationMutation(v512);
                      }

                      v357 = *(*(&v586 + 1) + 8 * i);
                      v358 = v355;
                      v359 = [v514 objectAtIndexedSubscript:v355];
                      if (v357 | v359)
                      {
                        v360 = v359;
                        v361 = v357;
                        v362 = v360;
                        v363 = [v361 isEqual:v360];

                        if (!v363)
                        {

                          v370 = v514;
                          v34 = v573;
                          v19 = v576;
                          v30 = v550;
                          v29 = v555;
                          goto LABEL_422;
                        }
                      }

                      v355 = v358 + 1;
                    }

                    v354 = [v512 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v354)
                    {
                      continue;
                    }

                    break;
                  }
                }

                v30 = v550;
                v29 = v555;
              }

              else
              {
                v514 = v270;
              }

              v272 = [v516 separators];
              v273 = [v515 separators];
              v274 = v272;
              v275 = v273;
              v276 = v275;
              v547 = v30;
              v552 = v29;
              if (v274 | v275)
              {
                if ((v274 == 0) != (v275 == 0) || (v509 = v274, v377 = [v274 count], v57 = v377 == objc_msgSend(v276, "count"), v274 = v509, !v57))
                {

LABEL_625:
                  v34 = v573;
                  v19 = v576;
                  v30 = v547;
                  v29 = v552;
                  v75 = v537;
                  v370 = v514;
                  goto LABEL_626;
                }

                v513 = v276;
                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                v510 = v509;
                v378 = [v510 countByEnumeratingWithState:&v586 objects:buf count:16];
                if (v378)
                {
                  v379 = v378;
                  v380 = 0;
                  v512 = *v587;
                  while (2)
                  {
                    for (j = 0; j != v379; j = j + 1)
                    {
                      if (*v587 != v512)
                      {
                        objc_enumerationMutation(v510);
                      }

                      v382 = *(*(&v586 + 1) + 8 * j);
                      v383 = [v513 objectAtIndexedSubscript:v380];
                      if (v382 | v383)
                      {
                        v384 = v383;
                        v385 = [v382 isEqual:v383];

                        if (!v385)
                        {

                          v276 = v513;
                          v274 = v509;
                          goto LABEL_625;
                        }
                      }

                      ++v380;
                    }

                    v379 = [v510 countByEnumeratingWithState:&v586 objects:buf count:16];
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
                v513 = v275;
                v509 = v274;
              }

              v277 = [v516 formatTokens];
              v278 = [v515 formatTokens];
              v279 = v277;
              v280 = v278;
              v281 = v280;
              v510 = v279;
              if (v279 | v280)
              {
                if ((v279 == 0) != (v280 == 0) || (v411 = [v279 count], v411 != objc_msgSend(v281, "count")))
                {

LABEL_569:
                  v274 = v509;
                  v276 = v513;
                  goto LABEL_625;
                }

                v588 = 0u;
                v589 = 0u;
                v586 = 0u;
                v587 = 0u;
                v507 = v510;
                v412 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
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
                        objc_enumerationMutation(v507);
                      }

                      v512 = *(*(&v586 + 1) + 8 * k);
                      v416 = [v281 objectAtIndexedSubscript:v414];
                      LODWORD(v512) = GEOServerFormatTokenEqual();

                      if (!v512)
                      {

                        goto LABEL_569;
                      }

                      ++v414;
                    }

                    v413 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v413)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              v282 = [v516 alternativeString];
              v283 = [v515 alternativeString];
              v284 = v282;
              v285 = v283;
              if (v284 | v285)
              {
                LODWORD(v512) = [v284 isEqual:v285];
              }

              else
              {
                LODWORD(v512) = 1;
              }

              v75 = v537;
              v78 = v545;
              v34 = v573;
              v19 = v576;
              v30 = v547;
              v29 = v552;
              if ((v512 & 1) == 0)
              {
                goto LABEL_629;
              }
            }

            else
            {

              v75 = v537;
              v19 = v576;
            }
          }

          v537 = v75;
          v77 = [v559 hasRoutingIncidentBadge];
          v57 = v77 == [v561 hasRoutingIncidentBadge];
          v75 = v537;
          v78 = v545;
          if (!v57)
          {
            goto LABEL_629;
          }

          v54 = v559;
          v79 = [v559 accessibilityText];
          if (!v79)
          {
            v514 = [v561 accessibilityText];
            if (!v514)
            {
              v514 = 0;
              LODWORD(v516) = 1;
              goto LABEL_346;
            }
          }

          v80 = [v559 accessibilityText];
          [v561 accessibilityText];
          v81 = v515 = v79;
          LODWORD(v516) = [v80 isEqualToString:v81];

          v82 = v515;
          v54 = v559;
          if (!v515)
          {
LABEL_346:
            v82 = v514;
          }

          if (v516)
          {
LABEL_24:
            v45 = [v26 modeArtwork];
            v46 = [v28 modeArtwork];
            v43 = v45;
            v47 = v46;
            v563 = v43;
            v545 = v47;
            if (!(v43 | v47))
            {
              goto LABEL_25;
            }

            if ((v43 == 0) != (v47 == 0))
            {
LABEL_48:
              LODWORD(v537) = 0;
LABEL_49:
              v19 = v576;
              goto LABEL_677;
            }

            v109 = v47;
            v110 = [v43 artworkSourceType];
            v111 = [v109 artworkSourceType];
            v19 = v576;
            if (v110 != v111 || (v112 = [v563 artworkUseType], v112 != objc_msgSend(v545, "artworkUseType")))
            {
              LODWORD(v537) = 0;
              v47 = v545;
              v43 = v563;
              goto LABEL_677;
            }

            v113 = [v563 shieldDataSource];
            v114 = [v545 shieldDataSource];
            v50 = v113;
            v115 = v114;
            v523 = v115;
            if (!(v50 | v115))
            {
LABEL_89:
              v522 = v50;
              v116 = [v563 iconDataSource];
              v117 = [v545 iconDataSource];
              v118 = v116;
              v119 = v117;
              v516 = v119;
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

              v539 = [v118 iconType];
              v198 = [v516 iconType];
              v197 = v516;
              if (v539 != v198)
              {
                goto LABEL_344;
              }

              v540 = [v118 cartoID];
              v199 = [v516 cartoID];
              v197 = v516;
              if (v540 != v199)
              {
                goto LABEL_344;
              }

              v541 = [v118 defaultTransitType];
              v200 = [v516 defaultTransitType];
              v197 = v516;
              if (v541 != v200)
              {
                goto LABEL_344;
              }

              v542 = [v118 iconAttributeKey];
              v201 = [v516 iconAttributeKey];
              v197 = v516;
              if (v542 != v201)
              {
                goto LABEL_344;
              }

              v543 = [v118 iconAttributeValue];
              v534 = [v516 iconAttributeValue];

              if (v543 != v534)
              {
                v115 = v516;
                LODWORD(v537) = 0;
                v532 = v545;
                v533 = v563;
                v19 = v576;
                v50 = v522;
                goto LABEL_672;
              }

LABEL_90:
              v120 = [v563 iconFallbackShieldDataSource];
              v121 = [v545 iconFallbackShieldDataSource];
              v118 = v120;
              v122 = v121;
              v537 = v122;
              if (!(v118 | v122))
              {
LABEL_91:
                v533 = v118;
                v123 = [v563 textDataSource];
                v124 = [v545 textDataSource];
                v125 = v123;
                v126 = v124;
                v19 = v576;
                v532 = v126;
                if (!(v125 | v126))
                {
                  goto LABEL_92;
                }

                if ((v125 == 0) == (v126 == 0))
                {
                  v235 = v126;
                  [v125 text];
                  v236 = v515 = v125;
                  v237 = [v235 text];
                  v238 = v236;
                  v239 = v237;
                  if (!(v238 | v239))
                  {

                    v125 = v515;
                    v19 = v576;
                    goto LABEL_92;
                  }

                  v298 = v239;
                  if ((v238 == 0) == (v239 == 0))
                  {
                    v512 = v238;
                    v299 = [v238 formatStrings];
                    v511 = v298;
                    v300 = [v298 formatStrings];
                    v301 = v299;
                    v302 = v300;
                    v303 = v302;
                    v574 = v34;
                    v548 = v30;
                    v553 = v29;
                    if (!(v301 | v302))
                    {
                      v514 = v302;
                      v508 = v301;
                      goto LABEL_321;
                    }

                    if ((v301 == 0) != (v302 == 0) || (v508 = v301, v402 = [v301 count], v57 = v402 == objc_msgSend(v303, "count"), v301 = v508, !v57))
                    {

                      goto LABEL_658;
                    }

                    v514 = v303;
                    v588 = 0u;
                    v589 = 0u;
                    v586 = 0u;
                    v587 = 0u;
                    v510 = v508;
                    v403 = [v510 countByEnumeratingWithState:&v586 objects:buf count:16];
                    if (v403)
                    {
                      v404 = v403;
                      v405 = 0;
                      v513 = *v587;
                      while (2)
                      {
                        for (m = 0; m != v404; m = m + 1)
                        {
                          if (*v587 != v513)
                          {
                            objc_enumerationMutation(v510);
                          }

                          v407 = *(*(&v586 + 1) + 8 * m);
                          v408 = [v514 objectAtIndexedSubscript:v405];
                          if (v407 | v408)
                          {
                            v409 = v408;
                            v410 = [v407 isEqual:v408];

                            if (!v410)
                            {

                              v303 = v514;
                              v301 = v508;
                              goto LABEL_658;
                            }
                          }

                          ++v405;
                        }

                        v404 = [v510 countByEnumeratingWithState:&v586 objects:buf count:16];
                        if (v404)
                        {
                          continue;
                        }

                        break;
                      }
                    }

LABEL_321:
                    v304 = [v512 separators];
                    v305 = [v511 separators];
                    v509 = v304;
                    v513 = v305;
                    if (v509 | v513)
                    {
                      if ((v509 == 0) == (v513 == 0))
                      {
                        v429 = [v509 count];
                        if (v429 == [v513 count])
                        {
                          v588 = 0u;
                          v589 = 0u;
                          v586 = 0u;
                          v587 = 0u;
                          v507 = v509;
                          v430 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
                          if (v430)
                          {
                            v431 = v430;
                            v432 = 0;
                            v510 = *v587;
                            while (2)
                            {
                              for (n = 0; n != v431; n = n + 1)
                              {
                                if (*v587 != v510)
                                {
                                  objc_enumerationMutation(v507);
                                }

                                v434 = *(*(&v586 + 1) + 8 * n);
                                v435 = [v513 objectAtIndexedSubscript:v432];
                                if (v434 | v435)
                                {
                                  v436 = v435;
                                  v437 = [v434 isEqual:v435];

                                  if (!v437)
                                  {
                                    v491 = v507;

LABEL_656:
                                    goto LABEL_657;
                                  }
                                }

                                ++v432;
                              }

                              v431 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
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
                      v306 = [v512 formatTokens];
                      v307 = [v511 formatTokens];
                      v308 = v306;
                      v510 = v307;
                      v506 = v308;
                      if (!(v308 | v510))
                      {
                        goto LABEL_323;
                      }

                      if ((v308 == 0) == (v510 == 0))
                      {
                        v461 = [v308 count];
                        if (v461 == [v510 count])
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

                                v507 = *(*(&v586 + 1) + 8 * ii);
                                v467 = [v510 objectAtIndexedSubscript:v464];
                                LODWORD(v507) = GEOServerFormatTokenEqual();

                                if (!v507)
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
                          v309 = [v512 alternativeString];
                          v310 = [v511 alternativeString];
                          v311 = v309;
                          v312 = v310;
                          if (v311 | v312)
                          {
                            LODWORD(v507) = [v311 isEqual:v312];
                          }

                          else
                          {
                            LODWORD(v507) = 1;
                          }

                          v125 = v515;
                          v128 = v532;
                          v34 = v574;
                          v19 = v576;
                          v30 = v548;
                          v29 = v553;
                          if ((v507 & 1) == 0)
                          {
LABEL_661:

LABEL_662:
                            LODWORD(v537) = 0;
                            v532 = v545;
                            v533 = v563;
                            v50 = v522;
LABEL_671:
                            v115 = v516;
                            goto LABEL_672;
                          }

LABEL_92:
                          v515 = v125;
                          v127 = [v563 hasRoutingIncidentBadge];
                          v57 = v127 == [v545 hasRoutingIncidentBadge];
                          v128 = v532;
                          v125 = v515;
                          if (!v57)
                          {
                            goto LABEL_661;
                          }

                          v513 = [v563 accessibilityText];
                          if (!v513)
                          {
                            v512 = [v545 accessibilityText];
                            if (!v512)
                            {
                              v512 = 0;
                              LODWORD(v514) = 1;
                              goto LABEL_424;
                            }
                          }

                          v129 = [v563 accessibilityText];
                          v130 = [v545 accessibilityText];
                          LODWORD(v514) = [v129 isEqualToString:v130];

                          v125 = v515;
                          v131 = v513;
                          if (!v513)
                          {
LABEL_424:
                            v131 = v512;
                          }

                          if ((v514 & 1) == 0)
                          {
                            v44 = v545;
                            LOBYTE(v43) = 0;
                            v19 = v576;
                            goto LABEL_678;
                          }

LABEL_25:
                          v48 = [v26 alternateArtwork];
                          v49 = [v28 alternateArtwork];
                          v50 = v48;
                          v51 = v49;
                          v532 = v51;
                          v533 = v50;
                          if (!(v50 | v51))
                          {
LABEL_26:
                            v52 = [v26 hasLineColorString];
                            if (v52 != [v28 hasLineColorString])
                            {
                              LODWORD(v537) = 0;
                              v19 = v576;
                              goto LABEL_676;
                            }

                            v132 = [v26 lineColorString];
                            v133 = [v28 lineColorString];
                            v134 = v132;
                            v522 = v134;
                            v523 = v133;
                            if (__PAIR128__(v523, v134) != 0 && (v538 = [v134 isEqual:v523], v523, v134, !v538) || (v135 = objc_msgSend(v26, "showVehicleNumber"), v135 != objc_msgSend(v28, "showVehicleNumber")))
                            {
                              LODWORD(v537) = 0;
                              v19 = v576;
                              v50 = v522;
                              goto LABEL_674;
                            }

                            v159 = [v26 operatingHours];
                            v160 = [v28 operatingHours];
                            v161 = v159;
                            v162 = v160;
                            v516 = v162;
                            v517 = v161;
                            if (!(v161 | v162))
                            {
                              LODWORD(v537) = 1;
                              v19 = v576;
                              goto LABEL_161;
                            }

                            v19 = v576;
                            if ((v161 == 0) != (v162 == 0) || (v179 = [v161 count], v179 != objc_msgSend(v516, "count")))
                            {
                              LODWORD(v537) = 0;
LABEL_161:
                              v50 = v522;
                            }

                            else
                            {
                              v588 = 0u;
                              v589 = 0u;
                              v586 = 0u;
                              v587 = 0u;
                              v509 = v517;
                              v514 = [v509 countByEnumeratingWithState:&v586 objects:buf count:16];
                              if (v514)
                              {
                                v537 = 0;
                                v513 = *v587;
                                while (2)
                                {
                                  v180 = 0;
                                  v181 = v516;
                                  do
                                  {
                                    if (*v587 != v513)
                                    {
                                      v182 = v180;
                                      objc_enumerationMutation(v509);
                                      v180 = v182;
                                      v181 = v516;
                                    }

                                    v515 = v180;
                                    v183 = *(*(&v586 + 1) + 8 * v180);
                                    v184 = [v181 objectAtIndexedSubscript:v537];
                                    v185 = v183;
                                    v186 = v184;
                                    v187 = v185;
                                    v188 = v186;
                                    v189 = v187;
                                    v190 = v188;
                                    if (v189 | v188)
                                    {
                                      if ((v189 == 0) != (v188 == 0) || ([v189 startTime], v512 = v189, v192 = v191, objc_msgSend(v190, "startTime"), v57 = v192 == v193, v189 = v512, !v57))
                                      {

                                        LODWORD(v537) = 0;
                                        v19 = v576;
                                        goto LABEL_275;
                                      }

                                      [v512 duration];
                                      v511 = v194;
                                      [v190 duration];
                                      v510 = v195;

                                      v19 = v576;
                                      v50 = v522;
                                      if (v511 != v510)
                                      {
                                        LODWORD(v537) = 0;
                                        goto LABEL_317;
                                      }
                                    }

                                    else
                                    {

                                      v19 = v576;
                                      v50 = v522;
                                    }

                                    ++v537;
                                    v180 = v515 + 1;
                                    v181 = v516;
                                  }

                                  while (v514 != v515 + 1);
                                  v514 = [v509 countByEnumeratingWithState:&v586 objects:buf count:16];
                                  if (v514)
                                  {
                                    continue;
                                  }

                                  break;
                                }

                                LODWORD(v537) = 1;
                              }

                              else
                              {
                                LODWORD(v537) = 1;
LABEL_275:
                                v50 = v522;
                              }

LABEL_317:
                            }

                            goto LABEL_671;
                          }

                          if ((v50 == 0) != (v51 == 0))
                          {
                            LODWORD(v537) = 0;
                            goto LABEL_121;
                          }

                          v136 = v51;
                          v137 = [v50 artworkSourceType];
                          v138 = [v136 artworkSourceType];
                          v19 = v576;
                          if (v137 != v138 || (v139 = [v533 artworkUseType], v139 != objc_msgSend(v532, "artworkUseType")))
                          {
                            LODWORD(v537) = 0;
                            v51 = v532;
                            v50 = v533;
                            goto LABEL_675;
                          }

                          v140 = [v533 shieldDataSource];
                          v141 = [v532 shieldDataSource];
                          v142 = v140;
                          v143 = v141;
                          v516 = v143;
                          v517 = v142;
                          if (!(v142 | v143))
                          {
LABEL_108:
                            v144 = [v533 iconDataSource];
                            v145 = [v532 iconDataSource];
                            v146 = v144;
                            v147 = v145;
                            v19 = v576;
                            v537 = v147;
                            if (!(v146 | v147))
                            {
                              goto LABEL_109;
                            }

                            v225 = v147;
                            v226 = v146;
                            if ((v146 == 0) == (v147 == 0))
                            {
                              v522 = v146;
                              v525 = [v146 iconType];
                              v227 = [v537 iconType];
                              v225 = v537;
                              v226 = v146;
                              if (v525 == v227)
                              {
                                v526 = [v146 cartoID];
                                v228 = [v537 cartoID];
                                v225 = v537;
                                v226 = v146;
                                if (v526 == v228)
                                {
                                  v527 = [v146 defaultTransitType];
                                  v229 = [v537 defaultTransitType];
                                  v225 = v537;
                                  v226 = v146;
                                  if (v527 == v229)
                                  {
                                    v528 = [v146 iconAttributeKey];
                                    v230 = [v537 iconAttributeKey];
                                    v225 = v537;
                                    v226 = v146;
                                    if (v528 == v230)
                                    {
                                      v529 = [v146 iconAttributeValue];
                                      v231 = [v537 iconAttributeValue];

                                      v232 = v537;
                                      v57 = v529 == v231;
                                      v19 = v576;
                                      if (!v57)
                                      {
LABEL_410:

LABEL_670:
                                        LODWORD(v537) = 0;
                                        v50 = v533;
                                        v523 = v532;
                                        goto LABEL_671;
                                      }

LABEL_109:
                                      v522 = v146;
                                      v148 = [v533 iconFallbackShieldDataSource];
                                      v149 = [v532 iconFallbackShieldDataSource];
                                      v150 = v148;
                                      v151 = v149;
                                      v515 = v151;
                                      if (!(v150 | v151))
                                      {
LABEL_110:
                                        v523 = v150;
                                        v152 = [v533 textDataSource];
                                        v153 = [v532 textDataSource];
                                        v154 = v152;
                                        v514 = v153;
                                        v19 = v576;
                                        if (!(v154 | v514))
                                        {
                                          goto LABEL_111;
                                        }

                                        v259 = v514;
                                        if ((v154 == 0) == (v514 == 0))
                                        {
                                          [v154 text];
                                          v260 = v513 = v154;
                                          v261 = [v514 text];
                                          v262 = v260;
                                          v263 = v261;
                                          if (!(v262 | v263))
                                          {

                                            v154 = v513;
                                            v19 = v576;
                                            goto LABEL_111;
                                          }

                                          v340 = v263;
                                          if ((v262 == 0) == (v263 == 0))
                                          {
                                            v549 = v30;
                                            v554 = v29;
                                            v575 = v34;
                                            v509 = v262;
                                            v341 = [v262 formatStrings];
                                            v508 = v340;
                                            v342 = [v340 formatStrings];
                                            v510 = v341;
                                            v512 = v342;
                                            if (!(v510 | v512))
                                            {
                                              goto LABEL_375;
                                            }

                                            if ((v510 == 0) != (v512 == 0) || (v442 = [v510 count], v442 != objc_msgSend(v512, "count")))
                                            {

                                              v453 = v510;
                                            }

                                            else
                                            {
                                              v588 = 0u;
                                              v589 = 0u;
                                              v586 = 0u;
                                              v587 = 0u;
                                              v507 = v510;
                                              v443 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
                                              if (v443)
                                              {
                                                v444 = v443;
                                                v445 = 0;
                                                v511 = *v587;
                                                while (2)
                                                {
                                                  for (jj = 0; jj != v444; jj = jj + 1)
                                                  {
                                                    if (*v587 != v511)
                                                    {
                                                      objc_enumerationMutation(v507);
                                                    }

                                                    v447 = *(*(&v586 + 1) + 8 * jj);
                                                    v448 = [v512 objectAtIndexedSubscript:v445];
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

                                                  v444 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
                                                  if (v444)
                                                  {
                                                    continue;
                                                  }

                                                  break;
                                                }
                                              }

LABEL_375:
                                              v343 = [v509 separators];
                                              v344 = [v508 separators];
                                              v506 = v343;
                                              v511 = v344;
                                              if (v506 | v511)
                                              {
                                                if ((v506 == 0) == (v511 == 0))
                                                {
                                                  v468 = [v506 count];
                                                  if (v468 == [v511 count])
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
                                                      v507 = *v587;
                                                      while (2)
                                                      {
                                                        for (kk = 0; kk != v470; kk = kk + 1)
                                                        {
                                                          if (*v587 != v507)
                                                          {
                                                            objc_enumerationMutation(v504);
                                                          }

                                                          v473 = *(*(&v586 + 1) + 8 * kk);
                                                          v474 = v471;
                                                          v475 = [v511 objectAtIndexedSubscript:v471];
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
                                                v345 = [v509 formatTokens];
                                                v346 = [v508 formatTokens];
                                                v347 = v345;
                                                v507 = v346;
                                                v498 = v347;
                                                if (!(v347 | v507))
                                                {
                                                  goto LABEL_377;
                                                }

                                                if ((v347 == 0) == (v507 == 0))
                                                {
                                                  v482 = [v347 count];
                                                  if (v482 == [v507 count])
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

                                                          v488 = [v507 objectAtIndexedSubscript:v485];
                                                          v505 = GEOServerFormatTokenEqual();

                                                          if (!v505)
                                                          {
                                                            v490 = v497;

                                                            v489 = v507;
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
                                                    v348 = [v509 alternativeString];
                                                    v349 = [v508 alternativeString];
                                                    v350 = v348;
                                                    v351 = v349;
                                                    if (v350 | v351)
                                                    {
                                                      v502 = [v350 isEqual:v351];
                                                    }

                                                    else
                                                    {
                                                      v502 = 1;
                                                    }

                                                    v154 = v513;
                                                    v34 = v575;
                                                    v19 = v576;
                                                    v30 = v549;
                                                    v29 = v554;
                                                    if ((v502 & 1) == 0)
                                                    {
LABEL_669:

                                                      goto LABEL_670;
                                                    }

LABEL_111:
                                                    v513 = v154;
                                                    v155 = [v533 hasRoutingIncidentBadge];
                                                    v57 = v155 == [v532 hasRoutingIncidentBadge];
                                                    v154 = v513;
                                                    if (!v57)
                                                    {
                                                      goto LABEL_669;
                                                    }

                                                    v511 = [v533 accessibilityText];
                                                    if (v511 || ([v532 accessibilityText], (v510 = objc_claimAutoreleasedReturnValue()) != 0))
                                                    {
                                                      v156 = [v533 accessibilityText];
                                                      v157 = [v532 accessibilityText];
                                                      LODWORD(v512) = [v156 isEqualToString:v157];

                                                      v158 = v511;
                                                      if (!v511)
                                                      {
LABEL_501:
                                                        v158 = v510;
                                                      }

                                                      v43 = v533;
                                                      if (!v512)
                                                      {
                                                        v47 = v532;
                                                        goto LABEL_48;
                                                      }

                                                      goto LABEL_26;
                                                    }

                                                    v510 = 0;
                                                    LODWORD(v512) = 1;
                                                    goto LABEL_501;
                                                  }
                                                }

                                                v489 = v507;

                                                v490 = v498;
LABEL_644:
                                              }

LABEL_664:

                                              v453 = v506;
                                            }

LABEL_666:
                                            v34 = v575;
                                            v30 = v549;
                                            v29 = v554;
                                            v340 = v508;
                                            v262 = v509;
                                          }

                                          v19 = v576;
                                          v154 = v513;
                                          v259 = v514;
                                        }

                                        goto LABEL_669;
                                      }

                                      if ((v150 == 0) != (v151 == 0) || (v530 = v150, v244 = [v150 shieldType], v57 = v244 == objc_msgSend(v515, "shieldType"), v150 = v530, !v57))
                                      {
LABEL_407:

                                        v225 = v515;
                                        goto LABEL_408;
                                      }

                                      v514 = [v530 shieldText];
                                      if (v514 || ([v515 shieldText], (v512 = objc_claimAutoreleasedReturnValue()) != 0))
                                      {
                                        v245 = [v530 shieldText];
                                        v246 = [v515 shieldText];
                                        v513 = v245;
                                        v247 = v245;
                                        v248 = v246;
                                        if (([v247 isEqualToString:v246] & 1) == 0)
                                        {

                                          v369 = v512;
                                          if (v514)
                                          {
                                            v369 = v514;
                                          }

                                          goto LABEL_407;
                                        }

                                        v508 = v248;
                                        LODWORD(v511) = 1;
                                      }

                                      else
                                      {
                                        v512 = 0;
                                        LODWORD(v511) = 0;
                                      }

                                      v509 = [v530 shieldColorString];
                                      if (v509 || ([v515 shieldColorString], (v507 = objc_claimAutoreleasedReturnValue()) != 0))
                                      {
                                        v438 = [v530 shieldColorString];
                                        v439 = [v515 shieldColorString];
                                        LODWORD(v510) = [v438 isEqualToString:v439];

                                        if (v509)
                                        {

                                          v150 = v530;
                                          v440 = v514;
                                          if (v511)
                                          {
                                            goto LABEL_550;
                                          }

                                          goto LABEL_551;
                                        }
                                      }

                                      else
                                      {
                                        v507 = 0;
                                        LODWORD(v510) = 1;
                                      }

                                      v150 = v530;
                                      v440 = v514;
                                      if (v511)
                                      {
LABEL_550:
                                      }

LABEL_551:
                                      if (v440)
                                      {

                                        v441 = v515;
                                        if (v510)
                                        {
                                          goto LABEL_110;
                                        }
                                      }

                                      else
                                      {

                                        v441 = v515;
                                        if (v510)
                                        {
                                          goto LABEL_110;
                                        }
                                      }

                                      v225 = v441;
LABEL_408:
                                      v19 = v576;
                                      v226 = v150;
                                      v146 = v522;
                                    }
                                  }
                                }
                              }
                            }

                            v531 = v226;

                            v232 = v537;
                            goto LABEL_410;
                          }

                          v19 = v576;
                          if ((v142 == 0) != (v143 == 0) || (v206 = [v142 shieldType], v57 = v206 == objc_msgSend(v516, "shieldType"), v142 = v517, !v57))
                          {
LABEL_293:

                            v115 = v516;
                            LODWORD(v537) = 0;
                            v50 = v533;
                            v523 = v532;
                            goto LABEL_672;
                          }

                          v524 = [v517 shieldText];
                          if (v524 || ([v516 shieldText], (v515 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            v537 = [v517 shieldText];
                            v522 = [v516 shieldText];
                            if (([v537 isEqualToString:?] & 1) == 0)
                            {

                              v291 = v524;
                              if (!v524)
                              {
                                v291 = v515;
                              }

                              goto LABEL_293;
                            }

                            LODWORD(v514) = 1;
                          }

                          else
                          {
                            v515 = 0;
                            LODWORD(v514) = 0;
                          }

                          v512 = [v517 shieldColorString];
                          if (v512 || ([v516 shieldColorString], (v511 = objc_claimAutoreleasedReturnValue()) != 0))
                          {
                            v364 = [v517 shieldColorString];
                            v365 = [v516 shieldColorString];
                            LODWORD(v513) = [v364 isEqualToString:v365];

                            if (v512)
                            {

                              v142 = v517;
                              v366 = v524;
                              if (v514)
                              {
                                goto LABEL_397;
                              }

                              goto LABEL_398;
                            }

                            v142 = v517;
                            v366 = v524;
                            v368 = v511;
                          }

                          else
                          {
                            v368 = 0;
                            LODWORD(v513) = 1;
                            v366 = v524;
                          }

                          if (v514)
                          {
LABEL_397:
                          }

LABEL_398:
                          if (v366)
                          {

                            v367 = v516;
                            if (v513)
                            {
                              goto LABEL_108;
                            }
                          }

                          else
                          {

                            v367 = v516;
                            if (v513)
                            {
                              goto LABEL_108;
                            }
                          }

                          v115 = v367;
                          LODWORD(v537) = 0;
                          v50 = v533;
                          v523 = v532;
LABEL_135:
                          v19 = v576;
LABEL_672:

                          goto LABEL_673;
                        }
                      }
                    }

LABEL_657:

                    v301 = v508;
                    v303 = v514;
LABEL_658:

                    v34 = v574;
                    v30 = v548;
                    v29 = v553;
                    v298 = v511;
                    v238 = v512;
                  }

                  v19 = v576;
                  v125 = v515;
                }

                v128 = v532;
                goto LABEL_661;
              }

              v19 = v576;
              if ((v118 == 0) != (v122 == 0) || (v536 = v118, v224 = [v118 shieldType], v57 = v224 == objc_msgSend(v537, "shieldType"), v118 = v536, !v57))
              {
LABEL_343:

                v197 = v537;
LABEL_344:

                goto LABEL_662;
              }

              v515 = [v536 shieldText];
              if (v515 || ([v537 shieldText], (v513 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v532 = [v536 shieldText];
                v514 = [v537 shieldText];
                if (([v532 isEqualToString:?] & 1) == 0)
                {

                  v319 = v515;
                  if (!v515)
                  {
                    v319 = v513;
                  }

                  goto LABEL_343;
                }

                LODWORD(v512) = 1;
              }

              else
              {
                v513 = 0;
                LODWORD(v512) = 0;
              }

              v510 = [v536 shieldColorString];
              if (v510 || ([v537 shieldColorString], (v509 = objc_claimAutoreleasedReturnValue()) != 0))
              {
                v397 = [v536 shieldColorString];
                v398 = [v537 shieldColorString];
                LODWORD(v511) = [v397 isEqualToString:v398];

                if (v510)
                {

                  v118 = v536;
                  v399 = v515;
                  if (v512)
                  {
                    goto LABEL_476;
                  }

                  goto LABEL_477;
                }

                v118 = v536;
                v399 = v515;
                v401 = v509;
              }

              else
              {
                v401 = 0;
                LODWORD(v511) = 1;
                v399 = v515;
              }

              if (v512)
              {
LABEL_476:
              }

LABEL_477:
              if (v399)
              {

                v400 = v537;
                if (v511)
                {
                  goto LABEL_91;
                }
              }

              else
              {

                v400 = v537;
                if (v511)
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
              LODWORD(v537) = 0;
              v517 = v50;
              v532 = v545;
              v533 = v563;
              goto LABEL_135;
            }

            v207 = v115;
            v522 = v50;
            v208 = [v50 shieldType];
            v209 = [v207 shieldType];
            v19 = v576;
            if (v208 == v209)
            {
              v50 = v522;
              v535 = [v522 shieldText];
              if (!v535)
              {
                v514 = [v523 shieldText];
                if (!v514)
                {
                  v514 = 0;
                  v520 = 0;
                  goto LABEL_326;
                }
              }

              v537 = [v522 shieldText];
              v532 = [v523 shieldText];
              if ([v537 isEqualToString:?])
              {
                v520 = 1;
LABEL_326:
                v313 = [v522 shieldColorString];
                if (v313 || ([v523 shieldColorString], (v513 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v314 = [v522 shieldColorString];
                  [v523 shieldColorString];
                  v315 = v515 = v313;
                  LODWORD(v516) = [v314 isEqualToString:v315];

                  if (v515)
                  {

                    v50 = v522;
                    v316 = v537;
                    if (v520)
                    {
                      goto LABEL_330;
                    }

                    goto LABEL_331;
                  }

                  v50 = v522;
                  v316 = v537;
                  v318 = v513;
                }

                else
                {
                  v318 = 0;
                  LODWORD(v516) = 1;
                  v316 = v537;
                }

                if (v520)
                {
LABEL_330:
                }

LABEL_331:
                if (v535)
                {

                  v317 = v523;
                  if (v516)
                  {
                    goto LABEL_89;
                  }
                }

                else
                {

                  v317 = v523;
                  if (v516)
                  {
                    goto LABEL_89;
                  }
                }

                v51 = v317;
                LODWORD(v537) = 0;
                v532 = v545;
                v533 = v563;
LABEL_121:
                v19 = v576;
                goto LABEL_675;
              }

              v250 = v535;
              if (!v535)
              {
                v250 = v514;
              }

              LODWORD(v537) = 0;
              v115 = v523;
            }

            else
            {
              LODWORD(v537) = 0;
              v50 = v522;
              v115 = v523;
            }

            v517 = v50;
            v532 = v545;
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

        v196 = [v71 shieldType];
        v57 = v196 == [v563 shieldType];
        v71 = v517;
        if (!v57)
        {
          goto LABEL_286;
        }

        v537 = [v517 shieldText];
        if (v537 || ([v563 shieldText], (v515 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v545 = [v517 shieldText];
          v516 = [v563 shieldText];
          if (([v545 isEqualToString:?] & 1) == 0)
          {

            v290 = v537;
            if (!v537)
            {
              v290 = v515;
            }

LABEL_286:
            v163 = v563;
            goto LABEL_287;
          }

          LODWORD(v514) = 1;
        }

        else
        {
          v515 = 0;
          LODWORD(v514) = 0;
        }

        v512 = [v517 shieldColorString];
        if (v512 || ([v563 shieldColorString], (v511 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v335 = [v517 shieldColorString];
          v336 = [v563 shieldColorString];
          LODWORD(v513) = [v335 isEqualToString:v336];

          if (v512)
          {

            v71 = v517;
            v337 = v537;
            if (v514)
            {
              goto LABEL_366;
            }

            goto LABEL_367;
          }

          v71 = v517;
          v337 = v537;
          v339 = v511;
        }

        else
        {
          v339 = 0;
          LODWORD(v513) = 1;
          v337 = v537;
        }

        if (v514)
        {
LABEL_366:
        }

LABEL_367:
        if (v337)
        {

          v338 = v563;
          if (!v513)
          {
            goto LABEL_371;
          }
        }

        else
        {

          v338 = v563;
          if ((v513 & 1) == 0)
          {
LABEL_371:
            v163 = v338;
            v19 = v576;
LABEL_287:
            v50 = v522;
LABEL_288:

            LODWORD(v537) = 0;
LABEL_289:
            v545 = v561;
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

      v55 = [v38 muid];
      v572 = v34;
      v56 = [v578 muid];
      v53 = v578;
      v57 = v55 == v56;
      v54 = v38;
      if (!v57)
      {
        goto LABEL_40;
      }

      v546 = v30;
      v551 = v29;
      v43 = [v38 name];
      if (v43 || ([v578 name], (v563 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v58 = [v38 name];
        v59 = [v578 name];
        if (([v58 isEqualToString:v59] & 1) == 0)
        {

          if (!v43)
          {
            v559 = v38;
            v561 = v578;
            v570 = v38;
            v19 = v576;
            v30 = v546;
            v29 = v551;
            goto LABEL_679;
          }

          v53 = v578;
          v54 = v38;
          v30 = v546;
          v29 = v551;
          goto LABEL_40;
        }

        v532 = v59;
        v533 = v58;
        v560 = v43;
        LODWORD(v545) = 1;
      }

      else
      {
        v560 = 0;
        v563 = 0;
        LODWORD(v545) = 0;
      }

      v571 = v38;
      v83 = [v38 artwork];
      v84 = [v578 artwork];
      v85 = v83;
      v86 = v84;
      v562 = v85;
      if (!(v85 | v86))
      {
        LODWORD(v537) = 1;
        v38 = v571;
        goto LABEL_68;
      }

      v38 = v571;
      if ((v85 == 0) != (v86 == 0))
      {
        LODWORD(v537) = 0;
LABEL_68:
        v87 = v560;
LABEL_69:
        v88 = v86;

        if (v545)
        {
        }

        v30 = v546;
        v29 = v551;
        if (v87)
        {

          if (v537)
          {
            goto LABEL_21;
          }
        }

        else
        {

          if (v537)
          {
            goto LABEL_21;
          }
        }

        goto LABEL_41;
      }

      v89 = v86;
      v90 = [v85 artworkSourceType];
      if (v90 != [v89 artworkSourceType] || (v91 = objc_msgSend(v85, "artworkUseType"), v91 != objc_msgSend(v89, "artworkUseType")))
      {
        LODWORD(v537) = 0;
        v87 = v560;
        v86 = v89;
        goto LABEL_69;
      }

      v92 = [v85 shieldDataSource];
      v93 = [v89 shieldDataSource];
      v94 = v92;
      v95 = v93;
      v522 = v89;
      v523 = v95;
      if (!(v94 | v95))
      {
LABEL_79:
        v518 = v94;
        v96 = [v562 iconDataSource];
        v97 = [v89 iconDataSource];
        v94 = v96;
        v98 = v97;
        v515 = v98;
        if (!(v94 | v98))
        {
          goto LABEL_80;
        }

        v38 = v571;
        v108 = v518;
        if ((v94 == 0) != (v98 == 0))
        {
          LODWORD(v537) = 0;
          goto LABEL_220;
        }

        v216 = v94;
        v217 = v98;
        v514 = v216;
        v218 = [v216 iconType];
        if (v218 != [v217 iconType] || (v219 = objc_msgSend(v514, "cartoID"), v219 != objc_msgSend(v217, "cartoID")) || (v220 = objc_msgSend(v514, "defaultTransitType"), v220 != objc_msgSend(v217, "defaultTransitType")) || (v221 = objc_msgSend(v514, "iconAttributeKey"), v221 != objc_msgSend(v217, "iconAttributeKey")))
        {
          LODWORD(v537) = 0;
          v98 = v217;
          v94 = v514;
LABEL_220:
          v516 = v94;
          v87 = v560;
          goto LABEL_417;
        }

        v222 = [v514 iconAttributeValue];
        v223 = [v217 iconAttributeValue];

        v57 = v222 == v223;
        v89 = v522;
        v95 = v217;
        v94 = v514;
        if (!v57)
        {
          LODWORD(v537) = 0;
          v38 = v571;
          v87 = v560;
          v108 = v518;
          goto LABEL_419;
        }

LABEL_80:
        v99 = [v562 iconFallbackShieldDataSource];
        v100 = [v89 iconFallbackShieldDataSource];
        v101 = v99;
        v102 = v100;
        v513 = v102;
        v514 = v94;
        v516 = v101;
        if (!(v101 | v102))
        {
LABEL_81:
          v103 = [v562 textDataSource];
          v104 = [v89 textDataSource];
          v105 = v103;
          v106 = v104;
          v511 = v106;
          v512 = v105;
          if (!(v105 | v106))
          {
            goto LABEL_82;
          }

          if ((v105 == 0) != (v106 == 0))
          {

            LODWORD(v537) = 0;
            v234 = v105;
            v38 = v571;
            goto LABEL_229;
          }

          v253 = v106;
          [v105 text];
          v255 = v254 = v105;
          v256 = [v253 text];
          v257 = v255;
          v258 = v256;
          if (!(v257 | v258))
          {

            v89 = v522;
            goto LABEL_82;
          }

          v293 = v258;
          v108 = v518;
          if ((v257 == 0) != (v258 == 0))
          {

            LODWORD(v537) = 0;
            v234 = v512;
            goto LABEL_413;
          }

          v509 = v257;
          v320 = [v257 formatStrings];
          v508 = v293;
          v321 = [v293 formatStrings];
          v322 = v320;
          v323 = v321;
          v324 = v323;
          v506 = v322;
          if (!(v322 | v323))
          {
            v537 = v323;
            goto LABEL_357;
          }

          if ((v322 == 0) != (v323 == 0) || (v386 = [v322 count], v57 = v386 == objc_msgSend(v324, "count"), v322 = v506, !v57))
          {

LABEL_498:
            goto LABEL_648;
          }

          v537 = v324;
          v588 = 0u;
          v589 = 0u;
          v586 = 0u;
          v587 = 0u;
          v507 = v506;
          v387 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
          if (v387)
          {
            v388 = v387;
            v389 = 0;
            v510 = *v587;
            while (2)
            {
              for (nn = 0; nn != v388; nn = nn + 1)
              {
                if (*v587 != v510)
                {
                  objc_enumerationMutation(v507);
                }

                v391 = *(*(&v586 + 1) + 8 * nn);
                v392 = [v537 objectAtIndexedSubscript:v389];
                if (v391 | v392)
                {
                  v393 = v392;
                  v394 = v391;
                  v395 = v393;
                  v396 = [v394 isEqual:v393];

                  if (!v396)
                  {

                    v324 = v537;
                    goto LABEL_498;
                  }
                }

                ++v389;
              }

              v388 = [v507 countByEnumeratingWithState:&v586 objects:buf count:16];
              if (v388)
              {
                continue;
              }

              break;
            }
          }

LABEL_357:
          v325 = [v509 separators];
          v326 = [v508 separators];
          v501 = v325;
          v510 = v326;
          if (v501 | v510)
          {
            if ((v501 == 0) == (v510 == 0))
            {
              v417 = [v501 count];
              if (v417 == [v510 count])
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
                  v507 = *v587;
                  while (2)
                  {
                    for (i1 = 0; i1 != v419; i1 = i1 + 1)
                    {
                      if (*v587 != v507)
                      {
                        objc_enumerationMutation(v499);
                      }

                      v422 = *(*(&v586 + 1) + 8 * i1);
                      v423 = v420;
                      v424 = [v510 objectAtIndexedSubscript:v420];
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
            v327 = [v509 formatTokens];
            v328 = [v508 formatTokens];
            v329 = v327;
            v507 = v328;
            v496 = v329;
            if (!(v329 | v507))
            {
              goto LABEL_359;
            }

            if ((v329 == 0) == (v507 == 0))
            {
              v454 = [v329 count];
              if (v454 == [v507 count])
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

                      v460 = [v507 objectAtIndexedSubscript:v457];
                      v500 = GEOServerFormatTokenEqual();

                      if (!v500)
                      {
                        v481 = v495;

                        v480 = v507;
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
                v330 = [v509 alternativeString];
                v331 = [v508 alternativeString];
                v332 = v330;
                v333 = v331;
                if (v332 | v333)
                {
                  v334 = [v332 isEqual:v333];
                }

                else
                {
                  v334 = 1;
                }

                v102 = v511;
                v34 = v572;
                v89 = v522;
                if ((v334 & 1) == 0)
                {
                  LODWORD(v537) = 0;
                  v38 = v571;
                  v215 = v512;
LABEL_273:
                  v87 = v560;
                  v108 = v518;
LABEL_416:

                  v98 = v513;
                  v94 = v514;
LABEL_417:

LABEL_418:
                  v95 = v515;
LABEL_419:

LABEL_420:
                  v86 = v522;
                  goto LABEL_69;
                }

LABEL_82:
                v107 = [v562 hasRoutingIncidentBadge];
                if (v107 != [v89 hasRoutingIncidentBadge])
                {
                  LODWORD(v537) = 0;
                  v38 = v571;
                  v87 = v560;
                  v108 = v518;
LABEL_415:
                  v102 = v511;
                  v215 = v512;
                  goto LABEL_416;
                }

                [v562 accessibilityText];
                v510 = v108 = v518;
                if (v510 || ([v522 accessibilityText], (v509 = objc_claimAutoreleasedReturnValue()) != 0))
                {
                  v251 = [v562 accessibilityText];
                  v252 = [v522 accessibilityText];
                  LODWORD(v537) = [v251 isEqualToString:v252];

                  v234 = v510;
                  if (v510)
                  {
                    goto LABEL_413;
                  }
                }

                else
                {
                  v509 = 0;
                  LODWORD(v537) = 1;
                }

                v234 = v509;
LABEL_413:
                v38 = v571;
                v87 = v560;
LABEL_414:

                goto LABEL_415;
              }
            }

            v480 = v507;

            v481 = v496;
LABEL_615:
          }

LABEL_647:

LABEL_648:
          LODWORD(v537) = 0;
          v234 = v512;
          v38 = v571;
          v34 = v572;
LABEL_229:
          v87 = v560;
          v108 = v518;
          goto LABEL_414;
        }

        if ((v101 == 0) != (v102 == 0))
        {
          LODWORD(v537) = 0;
          v215 = v101;
LABEL_272:
          v38 = v571;
          goto LABEL_273;
        }

        v240 = v102;
        v241 = v101;
        v242 = [v101 shieldType];
        if (v242 != [v240 shieldType])
        {
          LODWORD(v537) = 0;
          v102 = v240;
          v215 = v241;
          goto LABEL_272;
        }

        [v241 shieldText];
        v38 = v571;
        v87 = v560;
        v512 = v108 = v518;
        if (v512 || ([v513 shieldText], (v510 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v537 = [v516 shieldText];
          v511 = [v513 shieldText];
          if (([v537 isEqualToString:?] & 1) == 0)
          {

            LODWORD(v537) = 0;
            v234 = v512;
            if (!v512)
            {
              v234 = v510;
            }

            v511 = v513;
            v512 = v516;
            goto LABEL_414;
          }

          v243 = 1;
        }

        else
        {
          v510 = 0;
          v243 = 0;
        }

        v371 = v516;
        v507 = [v516 shieldColorString];
        LODWORD(v509) = v243;
        if (v507 || ([v513 shieldColorString], (v506 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v372 = [v516 shieldColorString];
          v373 = [v513 shieldColorString];
          LODWORD(v508) = [v372 isEqualToString:v373];

          if (v507)
          {

            v371 = v516;
            v374 = v512;
            v375 = v537;
            if (v509)
            {
              goto LABEL_435;
            }

            goto LABEL_436;
          }

          v371 = v516;
          v374 = v512;
          v375 = v537;
          v376 = v506;
        }

        else
        {
          v376 = 0;
          LODWORD(v508) = 1;
          v374 = v512;
          v375 = v537;
        }

        if (v509)
        {
LABEL_435:
        }

LABEL_436:
        if (v374)
        {

          v98 = v513;
          v89 = v522;
          if (v508)
          {
            goto LABEL_81;
          }
        }

        else
        {

          v98 = v513;
          v89 = v522;
          if (v508)
          {
            goto LABEL_81;
          }
        }

        LODWORD(v537) = 0;
        v38 = v571;
        v87 = v560;
        v108 = v518;
        goto LABEL_417;
      }

      v169 = v95;
      v108 = v94;
      if ((v94 == 0) != (v95 == 0))
      {
        LODWORD(v537) = 0;
        v38 = v571;
LABEL_222:
        v87 = v560;
        goto LABEL_419;
      }

      v202 = [v94 shieldType];
      v203 = [v169 shieldType];
      v204 = v169;
      v38 = v571;
      if (v202 != v203)
      {
        LODWORD(v537) = 0;
        v95 = v204;
        goto LABEL_222;
      }

      [v94 shieldText];
      v516 = v87 = v560;
      v519 = v94;
      if (v516 || ([v523 shieldText], (v515 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v205 = [v94 shieldText];
        v108 = [v523 shieldText];
        if (([v205 isEqualToString:v108] & 1) == 0)
        {

          LODWORD(v537) = 0;
          if (v516)
          {
            v249 = v516;
          }

          else
          {
            v249 = v515;
          }

          v515 = v523;
          v516 = v249;
          v108 = v519;
          v94 = v519;

          goto LABEL_418;
        }

        v512 = v108;
        v513 = v205;
        LODWORD(v537) = 1;
      }

      else
      {
        v515 = 0;
        LODWORD(v537) = 0;
      }

      v294 = [v519 shieldColorString];
      v295 = v523;
      if (v294 || ([v523 shieldColorString], (v108 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v296 = [v519 shieldColorString];
        v297 = [v523 shieldColorString];
        LODWORD(v514) = [v296 isEqualToString:v297];

        if (v294)
        {

          v295 = v523;
          if (v537)
          {
            goto LABEL_309;
          }

          goto LABEL_310;
        }

        v295 = v523;
      }

      else
      {
        LODWORD(v514) = 1;
      }

      if (v537)
      {
LABEL_309:
      }

LABEL_310:
      if (v516)
      {

        v94 = v519;
        v89 = v522;
        if (v514)
        {
          goto LABEL_79;
        }
      }

      else
      {

        v94 = v519;
        v89 = v522;
        if (v514)
        {
          goto LABEL_79;
        }
      }

      LODWORD(v537) = 0;
      v38 = v571;
      v87 = v560;
      v108 = v94;
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

- (id)itemForMapItem:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  v6 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
  v7 = [v4 _geoMapItem];
  v8 = [v4 _geoMapItemStorageForPersistence];

  v9 = [v8 userValues];
  v10 = [v9 name];
  v11 = [v6 initWithMapItem:v7 customName:v10];
  [v5 addObject:v11];

  if ([(CollectionHandler *)self isFavoriteCollection])
  {
    v12 = [_TtC8MapsSync22MapsSyncQueryPredicate predicateWithFormat:@"(type & %d) != 0", 1];
    [v5 addObject:v12];
  }

  else
  {
    v13 = [(CollectionHandler *)self collection];
    v14 = [v13 identifier];

    if (!v14)
    {
      goto LABEL_6;
    }

    v12 = [(CollectionHandler *)self collection];
    v15 = [v12 identifier];
    v32 = v15;
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
  v24 = [v22 firstObject];

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

  return v24;
}

- (UIImage)image
{
  v3 = [(CollectionHandler *)self cachedImage];

  if (v3)
  {
    v4 = [(CollectionHandler *)self cachedImage];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NSString)subtitle
{
  v3 = +[NSBundle mainBundle];
  v4 = [v3 localizedStringForKey:@"[Collections] subtitle" value:@"localized string not found" table:0];
  v5 = [(CollectionHandler *)self content];
  v6 = +[NSString localizedStringWithFormat:](NSString, "localizedStringWithFormat:", v4, [v5 count]);

  return v6;
}

- (void)deleteCollection:(id)a3
{
  v4 = a3;
  v6 = [(CollectionHandler *)self collectionOperation];
  v5 = [(CollectionHandler *)self collection];
  [v6 deleteCollection:v5 completion:v4];
}

- (void)updateCollection:(id)a3
{
  v6 = a3;
  if ([(CollectionHandler *)self hasBeenModified])
  {
    [(CollectionHandler *)self setHasBeenModified:0];
    v4 = [(CollectionHandler *)self collectionOperation];
    v5 = [(CollectionHandler *)self collection];
    [v4 saveCollection:v5 completion:v6];
  }
}

- (void)createCollection:(id)a3
{
  v4 = a3;
  v6 = [(CollectionHandler *)self collectionOperation];
  v5 = [(CollectionHandler *)self collection];
  [v6 createCollection:v5 completion:v4];
}

- (unint64_t)bucketedNumberOfItems
{
  v2 = [(CollectionHandler *)self numberOfItems];
  v3 = [v2 unsignedIntegerValue];

  if (v3 >= 5)
  {
    if (v3 > 0xE)
    {
      if (v3 < 0x19)
      {
        return 15;
      }

      if (v3 < 0x28)
      {
        return 25;
      }

      if (v3 > 0x63)
      {
        return 100 * (v3 / 0x64);
      }

      v4 = v3 - 20 * (v3 / 0x14u);
    }

    else
    {
      v4 = v3 - 5 * (v3 / 5u);
    }

    v3 -= v4;
  }

  return v3;
}

- (void)fetchCoverPhotoForFrameSize:(CGSize)a3 scale:(double)a4 completion:(id)a5
{
  height = a3.height;
  width = a3.width;
  v9 = a5;
  v10 = [(CollectionHandler *)self collection];
  v11 = [(CollectionHandler *)self stagedImage];

  if (!v11)
  {
    v13 = [v10 image];

    if (v13)
    {
      v14 = [UIImage alloc];
      v15 = [v10 image];
      v12 = [v14 initWithData:v15];

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
        v17 = width * a4;
        v18 = height * a4;
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
            v24 = [v22 _geoMapItem];
            v25 = [v24 _photos];
            v26 = [v25 _geo_firstPhotoOfAtLeastSize:{v17, v18}];

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
      v27 = [(CollectionHandler *)self collection];
      v28 = [v27 imageUrl];

      if (v28)
      {
        v29 = [v10 imageUrl];
        v16 = [NSURL URLWithString:v29];

        if (v16)
        {
LABEL_25:
          v31 = +[MKAppImageManager sharedCollectionCoverImageManager];
          v33[0] = _NSConcreteStackBlock;
          v33[1] = 3221225472;
          v33[2] = sub_100CAF8B8;
          v33[3] = &unk_101650190;
          v34 = v9;
          [v31 loadAppImageAtURL:v16 completionHandler:v33];

          v30 = v34;
          goto LABEL_26;
        }
      }
    }

    v16 = GEOErrorDomain();
    v30 = [NSError errorWithDomain:v16 code:-8 userInfo:0];
    (*(v9 + 2))(v9, 0, v30);
LABEL_26:

    goto LABEL_6;
  }

  v12 = [(CollectionHandler *)self stagedImage];
LABEL_5:
  (*(v9 + 2))(v9, v12, 0);

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
  v9 = [(CollectionHandler *)self identifier];
  [v12 setObject:v8 forKeyedSubscript:v9];

  v10 = +[NSUserDefaults standardUserDefaults];
  v11 = [v12 copy];
  [v10 setObject:v11 forKey:@"__internal_CollectionSortStorage"];
}

- (void)setSortType:(int64_t)a3
{
  objc_initWeak(&location, self);
  v5 = +[CollectionHandlerRebuildQueue sharedInstance];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100CAFED0;
  v6[3] = &unk_101651D38;
  objc_copyWeak(v7, &location);
  v6[4] = self;
  v7[1] = a3;
  [v5 async:v6];

  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

- (void)touch
{
  WeakRetained = objc_loadWeakRetained(&self->_collectionOperation);
  v3 = [(CollectionHandler *)self collection];
  [WeakRetained touchCollection:v3];
}

- (CollectionHandler)initWithCollection:(id)a3
{
  v5 = a3;
  v6 = [(CollectionHandler *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
    [(CollectionHandler *)v7 _loadSortType];
  }

  return v7;
}

- (NSNumber)numberOfItems
{
  v2 = [(CollectionHandler *)self content];
  v3 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v2 count]);

  return v3;
}

+ (id)existingCollectionItemForMapItem:(id)a3 error:(id)a4
{
  v5 = a4;
  if (a3)
  {
    v6 = a3;
    v7 = [_TtC8MapsSync22MapsSyncQueryPredicate alloc];
    v8 = [v6 _geoMapItem];
    v9 = [v6 _geoMapItemStorageForPersistence];

    v10 = [v9 userValues];
    v11 = [v10 name];
    v12 = [v7 initWithMapItem:v8 customName:v11];

    v13 = [[_TtC8MapsSync20MapsSyncQueryOptions alloc] initWithPredicate:v12 sortDescriptors:0 range:0];
    v14 = objc_alloc_init(MSCollectionPlaceItemRequest);
    v19 = v5;
    v15 = [v14 fetchSyncWithOptions:v13 error:&v19];
    v16 = v19;

    v17 = [v15 firstObject];

    v5 = v16;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (id)mspArrayForCollectionHandlers:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v3 count]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = v3;
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
        v11 = [v10 collection];

        if (v11)
        {
          v12 = [v10 collection];
          [v4 addObject:v12];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  v13 = [v4 copy];

  return v13;
}

+ (id)collectionWithCollectionHandler:(id)a3
{
  v3 = [a3 collection];
  v4 = [CollectionHandler collectionWithCollection:v3];

  return v4;
}

+ (id)collectionWithStorage:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(MSCollection);
  v5 = [URLCollectionHandler alloc];
  v6 = +[CollectionManager sharedManager];
  v7 = [(URLCollectionHandler *)v5 initWithStorage:v3 collectionOperation:v6];

  [(CollectionHandler *)v7 setCollection:v4];

  return v7;
}

+ (id)collectionWithCollection:(id)a3
{
  v3 = a3;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = off_1015F61C8;
  if ((isKindOfClass & 1) == 0)
  {
    v5 = off_1015F66A8;
  }

  v6 = [objc_alloc(*v5) initWithCollection:v3];
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