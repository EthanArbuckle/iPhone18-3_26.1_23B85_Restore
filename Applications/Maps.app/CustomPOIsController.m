@interface CustomPOIsController
- (CustomPOIsController)init;
- (MKMapView)mapView;
- (id)_injectPersonalizedItem:(id)a3;
- (id)activeInjectedAnnotation;
- (id)injectPersonalizedItemIfNeeded:(id)a3;
- (id)injectSearchResult:(id)a3;
- (id)injectSearchResultIfNeeded:(id)a3;
- (int64_t)_preferredDisplayedSearchResultTypeWithItems:(id)a3;
- (void)_addAfterUpdateBlock:(id)a3;
- (void)_createPOIsForItems:(id)a3;
- (void)clearSearchResultStyle;
- (void)customFeatureForKey:(id)a3 completion:(id)a4;
- (void)customFeatureForKeys:(id)a3 completion:(id)a4;
- (void)customFeatureStore:(id)a3 annotationTextForClusterFeatureCount:(unint64_t)a4 text:(id *)a5 locale:(id *)a6;
- (void)dealloc;
- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5;
- (void)personalizedItemManagerWillChangeItems:(id)a3;
- (void)setActiveInjectedAnnotation:(id)a3;
- (void)setMapView:(id)a3;
- (void)userDefaultsDidChange:(id)a3;
@end

@implementation CustomPOIsController

- (CustomPOIsController)init
{
  v44.receiver = self;
  v44.super_class = CustomPOIsController;
  v2 = [(CustomPOIsController *)&v44 init];
  if (!v2)
  {
    return v2;
  }

  v3 = sub_1000177D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = v2;
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CustomPOIsController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Initializing", buf, 0xCu);
  }

  if (qword_10195F788 != -1)
  {
    dispatch_once(&qword_10195F788, &stru_10165DE28);
  }

  v10 = [[_MKCustomFeatureStore alloc] initWithClustering:0];
  customFeaturesStore = v2->_customFeaturesStore;
  v2->_customFeaturesStore = v10;

  v12 = [[_MKCustomFeatureStore alloc] initWithClustering:1];
  clusteringFeaturesStore = v2->_clusteringFeaturesStore;
  v2->_clusteringFeaturesStore = v12;

  v14 = +[NSLocale currentLocale];
  v15 = [v14 localeIdentifier];
  v16 = [v15 componentsSeparatedByString:@"_"];
  v17 = [v16 firstObject];
  v18 = [v17 lowercaseString];
  annotationLocale = v2->_annotationLocale;
  v2->_annotationLocale = v18;

  if (![(NSString *)v2->_annotationLocale length])
  {
    v20 = v2->_annotationLocale;
    v2->_annotationLocale = @"und";
  }

  v21 = v2->_clusteringFeaturesStore;
  v22 = +[NSBundle mainBundle];
  v23 = [v22 localizedStringForKey:@"Search result cluster subtitle value:generic" table:{@"localized string not found", 0}];
  [(_MKCustomFeatureStore *)v21 setClusterAnnotationText:v23 locale:v2->_annotationLocale];

  v24 = +[GEOFeatureStyleAttributes searchResultStyleAttributes];
  [(_MKCustomFeatureStore *)v2->_clusteringFeaturesStore setClusterStyleAttributes:v24];

  [(_MKCustomFeatureStore *)v2->_clusteringFeaturesStore setSceneID:1];
  [(_MKCustomFeatureStore *)v2->_clusteringFeaturesStore setDelegate:v2];
  v25 = [NSHashTable hashTableWithOptions:512];
  clusteringFeaturesPendingRemoval = v2->_clusteringFeaturesPendingRemoval;
  v2->_clusteringFeaturesPendingRemoval = v25;

  v27 = +[NSMutableArray array];
  afterUpdateBlocks = v2->_afterUpdateBlocks;
  v2->_afterUpdateBlocks = v27;

  v29 = +[NSUserDefaults standardUserDefaults];
  byte_10195F780 = [v29 BOOLForKey:@"__personalizedMapsInjectedPOIsLookLikeAirports"];

  v30 = +[NSUserDefaults standardUserDefaults];
  v31 = [v30 stringForKey:@"__personalizedMapsOverrideLocale"];
  v32 = qword_10195F778;
  qword_10195F778 = v31;

  v33 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v34 = dispatch_queue_create("CustomPOIsController.lock", v33);
  lock = v2->_lock;
  v2->_lock = v34;

  v36 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v37 = dispatch_queue_create("CustomPOIsController.calculate", v36);
  calculationQueue = v2->_calculationQueue;
  v2->_calculationQueue = v37;

  customPOIs = v2->_customPOIs;
  v2->_customPOIs = &__NSDictionary0__struct;

  v40 = geo_isolater_create();
  activeInjectedAnnotationLock = v2->_activeInjectedAnnotationLock;
  v2->_activeInjectedAnnotationLock = v40;

  v42 = +[NSNotificationCenter defaultCenter];
  [v42 addObserver:v2 selector:"userDefaultsDidChange:" name:NSUserDefaultsDidChangeNotification object:0];

  return v2;
}

- (MKMapView)mapView
{
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  return WeakRetained;
}

- (int64_t)_preferredDisplayedSearchResultTypeWithItems:(id)a3
{
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v22;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v22 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v21 + 1) + 8 * i);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v9 = [v8 items];
        v10 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v18;
          while (2)
          {
            for (j = 0; j != v11; j = j + 1)
            {
              if (*v18 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = *(*(&v17 + 1) + 8 * j);
              if ((objc_opt_respondsToSelector() & 1) != 0 && [v14 preferredDisplayedSearchResultType])
              {
                v15 = [v14 preferredDisplayedSearchResultType];

                goto LABEL_20;
              }
            }

            v11 = [v9 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v11)
            {
              continue;
            }

            break;
          }
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v21 objects:v26 count:16];
      v15 = 0;
    }

    while (v5);
  }

  else
  {
    v15 = 0;
  }

LABEL_20:

  return v15;
}

- (void)clearSearchResultStyle
{
  v3 = [(_MKCustomFeatureStore *)self->_clusteringFeaturesStore allAnnotations];
  v4 = [v3 count];
  v5 = sub_1000177D0();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_INFO);
  if (v4 != 1)
  {
    if (!v6)
    {
      goto LABEL_18;
    }

    v14 = self;
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    if (objc_opt_respondsToSelector())
    {
      v17 = [(CustomPOIsController *)v14 performSelector:"accessibilityIdentifier"];
      v18 = v17;
      if (v17 && ![v17 isEqualToString:v16])
      {
        v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

        goto LABEL_17;
      }
    }

    v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

    *buf = 138543362;
    v21 = v19;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Not clearing search result style, no clustered annotations", buf, 0xCu);

    goto LABEL_18;
  }

  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = self;
  v8 = objc_opt_class();
  v9 = NSStringFromClass(v8);
  if (objc_opt_respondsToSelector())
  {
    v10 = [(CustomPOIsController *)v7 performSelector:"accessibilityIdentifier"];
    v11 = v10;
    if (v10 && ![v10 isEqualToString:v9])
    {
      v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

      goto LABEL_8;
    }
  }

  v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_8:

  *buf = 138543362;
  v21 = v12;
  _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "[%{public}@] Clearing search result style", buf, 0xCu);

LABEL_9:
  v5 = [v3 firstObject];
  if ([v5 isLabelPOI])
  {
    self->_regionSearchResultCleared = 1;
    WeakRetained = objc_loadWeakRetained(&self->_mapView);
    [WeakRetained _setDisplayedSearchResultsType:0];
  }

LABEL_18:
}

- (void)setActiveInjectedAnnotation:(id)a3
{
  v4 = a3;
  v3 = v4;
  geo_isolate_sync();
}

- (id)activeInjectedAnnotation
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_100F47F60;
  v8 = sub_100F47F70;
  v9 = 0;
  geo_isolate_sync();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)_injectPersonalizedItem:(id)a3
{
  v4 = a3;
  v5 = [PersonalizedCompoundItem alloc];
  v24 = v4;
  v6 = [NSArray arrayWithObjects:&v24 count:1];
  v7 = [(PersonalizedCompoundItem *)v5 initWithItems:v6];

  v8 = [[POIAnnotation alloc] initWithItem:v7 defaultLocale:self->_annotationLocale];
  [(CustomPOIsController *)self setActiveInjectedAnnotation:v8];
  v9 = sub_1000177D0();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = self;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    if (objc_opt_respondsToSelector())
    {
      v13 = [(CustomPOIsController *)v10 performSelector:"accessibilityIdentifier"];
      v14 = v13;
      if (v13 && ![v13 isEqualToString:v12])
      {
        v15 = [NSString stringWithFormat:@"%@<%p, %@>", v12, v10, v14];

        goto LABEL_7;
      }
    }

    v15 = [NSString stringWithFormat:@"%@<%p>", v12, v10];
LABEL_7:

    *buf = 138543618;
    v21 = v15;
    v22 = 2080;
    v23 = "[CustomPOIsController _injectPersonalizedItem:]";
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "[%{public}@] %s: Adding new annotation", buf, 0x16u);
  }

  customFeaturesStore = self->_customFeaturesStore;
  v19 = v8;
  v17 = [NSArray arrayWithObjects:&v19 count:1];
  [(_MKCustomFeatureStore *)customFeaturesStore addAnnotations:v17];

  return v8;
}

- (id)injectSearchResult:(id)a3
{
  v4 = a3;
  v5 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v4];

  v6 = [(CustomPOIsController *)self _injectPersonalizedItem:v5];

  return v6;
}

- (id)injectSearchResultIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [(SearchResultMapItemBase *)[SearchResultMapItem alloc] initWithSearchResult:v4];

  if (v5)
  {
    v6 = [(CustomPOIsController *)self injectPersonalizedItemIfNeeded:v5];
    goto LABEL_14;
  }

  v7 = sub_1000177D0();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    v8 = self;
    if (!v8)
    {
      v13 = @"<nil>";
      goto LABEL_12;
    }

    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    if (objc_opt_respondsToSelector())
    {
      v11 = [(CustomPOIsController *)v8 performSelector:"accessibilityIdentifier"];
      v12 = v11;
      if (v11 && ![v11 isEqualToString:v10])
      {
        v13 = [NSString stringWithFormat:@"%@<%p, %@>", v10, v8, v12];

        goto LABEL_10;
      }
    }

    v13 = [NSString stringWithFormat:@"%@<%p>", v10, v8];
LABEL_10:

LABEL_12:
    *buf = 138543618;
    v16 = v13;
    v17 = 2080;
    v18 = "[CustomPOIsController injectSearchResultIfNeeded:]";
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@] %s: Failed to create PersonalizedItem item", buf, 0x16u);
  }

  v6 = 0;
LABEL_14:

  return v6;
}

- (id)injectPersonalizedItemIfNeeded:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    v20 = sub_1000177D0();
    if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
LABEL_29:

      v12 = 0;
      goto LABEL_30;
    }

    v21 = self;
    if (!v21)
    {
      v26 = @"<nil>";
      goto LABEL_28;
    }

    v22 = objc_opt_class();
    v23 = NSStringFromClass(v22);
    if (objc_opt_respondsToSelector())
    {
      v24 = [(CustomPOIsController *)v21 performSelector:"accessibilityIdentifier"];
      v25 = v24;
      if (v24 && ![v24 isEqualToString:v23])
      {
        v26 = [NSString stringWithFormat:@"%@<%p, %@>", v23, v21, v25];

        goto LABEL_26;
      }
    }

    v26 = [NSString stringWithFormat:@"%@<%p>", v23, v21];
LABEL_26:

LABEL_28:
    *buf = 138543618;
    v34 = v26;
    v35 = 2080;
    v36 = "[CustomPOIsController injectPersonalizedItemIfNeeded:]";
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "[%{public}@] %s: item provided to inject in nil", buf, 0x16u);

    goto LABEL_29;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v6 = [v4 keys];
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (!v7)
  {
    goto LABEL_10;
  }

  v8 = v7;
  v9 = *v29;
  while (2)
  {
    for (i = 0; i != v8; i = i + 1)
    {
      if (*v29 != v9)
      {
        objc_enumerationMutation(v6);
      }

      v11 = [(NSDictionary *)self->_customPOIs objectForKeyedSubscript:*(*(&v28 + 1) + 8 * i)];
      if (v11)
      {
        v12 = v11;
        v13 = sub_1000177D0();
        if (!os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
LABEL_18:

          goto LABEL_30;
        }

        v14 = self;
        v15 = objc_opt_class();
        v16 = NSStringFromClass(v15);
        if (objc_opt_respondsToSelector())
        {
          v17 = [(CustomPOIsController *)v14 performSelector:"accessibilityIdentifier"];
          v18 = v17;
          if (v17 && ![v17 isEqualToString:v16])
          {
            v19 = [NSString stringWithFormat:@"%@<%p, %@>", v16, v14, v18];

            goto LABEL_17;
          }
        }

        v19 = [NSString stringWithFormat:@"%@<%p>", v16, v14];
LABEL_17:

        *buf = 138543618;
        v34 = v19;
        v35 = 2080;
        v36 = "[CustomPOIsController injectPersonalizedItemIfNeeded:]";
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "[%{public}@] %s: Using cached annotation", buf, 0x16u);

        goto LABEL_18;
      }
    }

    v8 = [v6 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

LABEL_10:

  v12 = [(CustomPOIsController *)self _injectPersonalizedItem:v5];
LABEL_30:

  return v12;
}

- (void)_createPOIsForItems:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (!WeakRetained)
  {
    v23 = sub_1000177D0();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
LABEL_23:

      goto LABEL_24;
    }

    v24 = self;
    if (!v24)
    {
      v29 = @"<nil>";
      goto LABEL_22;
    }

    v25 = objc_opt_class();
    v26 = NSStringFromClass(v25);
    if (objc_opt_respondsToSelector())
    {
      v27 = [(CustomPOIsController *)v24 performSelector:"accessibilityIdentifier"];
      v28 = v27;
      if (v27 && ![v27 isEqualToString:v26])
      {
        v29 = [NSString stringWithFormat:@"%@<%p, %@>", v26, v24, v28];

        goto LABEL_20;
      }
    }

    v29 = [NSString stringWithFormat:@"%@<%p>", v26, v24];
LABEL_20:

LABEL_22:
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v29;
    _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "[%{public}@] Cannot create POIs, no map view", &buf, 0xCu);

    goto LABEL_23;
  }

  [@"com.apple.Maps" UTF8String];
  v6 = GEOFindOrCreateLog();
  v7 = os_signpost_id_generate(v6);
  if (v7 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v8 = v7;
    if (os_signpost_enabled(v6))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v6, OS_SIGNPOST_EVENT, v8, "CreatePOIsForItems", "", &buf, 2u);
    }
  }

  v39 = 0;
  v40 = &v39;
  v41 = 0x2020000000;
  v42 = 0;
  *&buf = 0;
  *(&buf + 1) = &buf;
  v50 = 0x3032000000;
  v51 = sub_100F47F60;
  v52 = sub_100F47F70;
  v53 = 0;
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F48D28;
  block[3] = &unk_10165DEF0;
  block[4] = self;
  block[5] = &v39;
  block[6] = &buf;
  dispatch_sync(lock, block);
  v10 = sub_1000177D0();
  if (!os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    goto LABEL_12;
  }

  v11 = self;
  v12 = objc_opt_class();
  v13 = NSStringFromClass(v12);
  if (objc_opt_respondsToSelector())
  {
    v14 = [(CustomPOIsController *)v11 performSelector:"accessibilityIdentifier"];
    v15 = v14;
    if (v14 && ([v14 isEqualToString:v13] & 1) == 0)
    {
      v16 = [NSString stringWithFormat:@"%@<%p, %@>", v13, v11, v15];

      goto LABEL_11;
    }
  }

  v16 = [NSString stringWithFormat:@"%@<%p>", v13, v11];
LABEL_11:

  v17 = *(v40 + 6);
  *v43 = 138543874;
  v44 = v16;
  v45 = 2112;
  v46 = v4;
  v47 = 1024;
  v48 = v17;
  _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "[%{public}@] Creating POIs for items: %@ with counter: %d", v43, 0x1Cu);

LABEL_12:
  v18 = objc_loadWeakRetained(&self->_mapView);
  v19 = [v18 _calloutShowAnimationGroup];

  objc_initWeak(v43, self);
  calculationQueue = self->_calculationQueue;
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100F48D9C;
  v30[3] = &unk_10165DF40;
  objc_copyWeak(&v37, v43);
  v31 = v6;
  p_buf = &buf;
  v32 = v4;
  v33 = v19;
  v36 = &v39;
  v34 = self;
  v21 = v19;
  v22 = v6;
  dispatch_async(calculationQueue, v30);

  objc_destroyWeak(&v37);
  objc_destroyWeak(v43);
  _Block_object_dispose(&buf, 8);

  _Block_object_dispose(&v39, 8);
LABEL_24:
}

- (void)personalizedItemManager:(id)a3 didChangeItems:(id)a4 itemGroups:(id)a5
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100F4C094;
  v6[3] = &unk_101661A90;
  v6[4] = self;
  v7 = a4;
  v5 = v7;
  dispatch_async(&_dispatch_main_q, v6);
}

- (void)personalizedItemManagerWillChangeItems:(id)a3
{
  lock = self->_lock;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100F4C158;
  block[3] = &unk_101661B18;
  block[4] = self;
  dispatch_sync(lock, block);
}

- (void)customFeatureStore:(id)a3 annotationTextForClusterFeatureCount:(unint64_t)a4 text:(id *)a5 locale:(id *)a6
{
  if (self->_clusteringFeaturesStore == a3)
  {
    v10 = +[NSUserDefaults standardUserDefaults];
    v11 = [v10 BOOLForKey:@"__personalizedMapsShowClusterCountInSubtitle"];

    if (a5 && v11)
    {
      if (a4)
      {
        v12 = (a4 - 1);
      }

      else
      {
        v12 = 0;
      }

      v13 = +[NSBundle mainBundle];
      v14 = [v13 localizedStringForKey:@"Search result cluster subtitle" value:@"localized string not found" table:0];

      v15 = [NSString localizedStringWithFormat:v14, v12];
      *a5 = v15;
    }

    if (a6)
    {
      *a6 = self->_annotationLocale;
    }
  }
}

- (void)_addAfterUpdateBlock:(id)a3
{
  afterUpdateBlocks = self->_afterUpdateBlocks;
  v4 = [a3 copy];
  [(NSMutableArray *)afterUpdateBlocks addObject:v4];
}

- (void)customFeatureForKeys:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100F4C4A8;
  v21 = sub_100F4C4D4;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100F4C4DC;
  v13[3] = &unk_10165DEA0;
  objc_copyWeak(&v16, &location);
  v8 = v6;
  v14 = v8;
  v9 = v7;
  v15 = v9;
  v22 = objc_retainBlock(v13);
  lock = self->_lock;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100F4C6A0;
  v12[3] = &unk_101661600;
  v12[4] = self;
  v12[5] = &v17;
  dispatch_sync(lock, v12);
  v11 = v18[5];
  if (v11)
  {
    (*(v11 + 16))();
  }

  _Block_object_dispose(&v17, 8);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)customFeatureForKey:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [NSSet setWithObject:a3];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = +[NSSet set];
  }

  v10 = v9;

  [(CustomPOIsController *)self customFeatureForKeys:v10 completion:v6];
}

- (void)userDefaultsDidChange:(id)a3
{
  v4 = +[NSUserDefaults standardUserDefaults];
  v5 = [v4 BOOLForKey:@"__personalizedMapsInjectedPOIsLookLikeAirports"];

  v6 = +[NSUserDefaults standardUserDefaults];
  v7 = [v6 stringForKey:@"__personalizedMapsOverrideLocale"];

  if (byte_10195F780 != v5 || qword_10195F778 | v7 && ([qword_10195F778 isEqualToString:v7] & 1) == 0)
  {
    byte_10195F780 = v5;
    objc_storeStrong(&qword_10195F778, v7);
    v11[0] = 0;
    v11[1] = v11;
    v11[2] = 0x3032000000;
    v11[3] = sub_100F47F60;
    v11[4] = sub_100F47F70;
    v12 = 0;
    lock = self->_lock;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100F4CB30;
    block[3] = &unk_101661600;
    block[4] = self;
    block[5] = v11;
    dispatch_sync(lock, block);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100F4CB7C;
    v9[3] = &unk_101661600;
    v9[4] = self;
    v9[5] = v11;
    dispatch_async(&_dispatch_main_q, v9);
    _Block_object_dispose(v11, 8);
  }
}

- (void)setMapView:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_mapView);

  if (WeakRetained != v4)
  {
    v6 = sub_1000177D0();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
LABEL_12:

      v13 = objc_loadWeakRetained(&self->_mapView);
      [v13 _removeCustomFeatureDataSource:self->_customFeaturesStore];

      v14 = objc_loadWeakRetained(&self->_mapView);
      [v14 _removeCustomFeatureDataSource:self->_clusteringFeaturesStore];

      v15 = objc_storeWeak(&self->_mapView, v4);
      [v4 _addCustomFeatureDataSource:self->_customFeaturesStore];

      v16 = objc_loadWeakRetained(&self->_mapView);
      [v16 _addCustomFeatureDataSource:self->_clusteringFeaturesStore];

      goto LABEL_13;
    }

    v7 = self;
    if (!v7)
    {
      v12 = @"<nil>";
      goto LABEL_11;
    }

    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    if (objc_opt_respondsToSelector())
    {
      v10 = [(CustomPOIsController *)v7 performSelector:"accessibilityIdentifier"];
      v11 = v10;
      if (v10 && ![v10 isEqualToString:v9])
      {
        v12 = [NSString stringWithFormat:@"%@<%p, %@>", v9, v7, v11];

        goto LABEL_9;
      }
    }

    v12 = [NSString stringWithFormat:@"%@<%p>", v9, v7];
LABEL_9:

LABEL_11:
    *buf = 138543618;
    v18 = v12;
    v19 = 2112;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "[%{public}@] Got a new map view: %@", buf, 0x16u);

    goto LABEL_12;
  }

LABEL_13:
}

- (void)dealloc
{
  v3 = sub_1000177D0();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = self;
    if (!v4)
    {
      v9 = @"<nil>";
      goto LABEL_10;
    }

    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (objc_opt_respondsToSelector())
    {
      v7 = [(CustomPOIsController *)v4 performSelector:"accessibilityIdentifier"];
      v8 = v7;
      if (v7 && ![v7 isEqualToString:v6])
      {
        v9 = [NSString stringWithFormat:@"%@<%p, %@>", v6, v4, v8];

        goto LABEL_8;
      }
    }

    v9 = [NSString stringWithFormat:@"%@<%p>", v6, v4];
LABEL_8:

LABEL_10:
    *buf = 138543362;
    v12 = v9;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "[%{public}@] Deallocing", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CustomPOIsController;
  [(CustomPOIsController *)&v10 dealloc];
}

@end