@interface NTKMapsSyncManager
+ (BOOL)_mapsSyncObjectSet:(id)set containsItemWithMuid:(id)muid;
+ (NTKMapsSyncManager)sharedManager;
+ (id)_fetchInStore:(id)store poiFilter:(id)filter coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSCollectionPlaceItemsInMSCollectionInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter;
+ (id)_fetchMSCollectionPlaceItemsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSCollectionsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSFavoriteItemInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_fetchMSUserRoutesInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius;
+ (id)_filterMapItems:(id)items bySearchRadius:(double)radius fromCoordinate:(CLLocationCoordinate2D)coordinate;
+ (id)_filterRequiredFromMSCollections:(id)collections;
- (NSArray)waypoints;
- (NTKMapsSyncManager)init;
- (id)_query;
- (id)_wrapperForPOI:(id)i;
- (void)_runQuery:(id)query completion:(id)completion;
- (void)_setQuery:(id)query;
- (void)_setWaypoints:(id)waypoints;
- (void)_updateSubscriber;
- (void)fetchUserGuidesWithCompletion:(id)completion;
- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion;
- (void)startUpdatingDelegate:(id)delegate;
- (void)stopUpdating;
- (void)storeDidChange:(id)change;
@end

@implementation NTKMapsSyncManager

- (NTKMapsSyncManager)init
{
  v20[4] = *MEMORY[0x277D85DE8];
  v19.receiver = self;
  v19.super_class = NTKMapsSyncManager;
  v3 = [(NTKMapsSyncManager *)&v19 init];
  if (v3)
  {
    v5 = objc_msgSend_sharedStore(MEMORY[0x277D26670], v2, v4);
    store = v3->_store;
    v3->_store = v5;

    v7 = dispatch_get_global_queue(2, 0);
    workQueue = v3->_workQueue;
    v3->_workQueue = v7;

    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v11 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v9, v10, v20, 4);
    objc_msgSend_setStoreSubscriptionTypes_(v3, v12, v13, v11);

    v16 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v14, v15);
    styleAttributesCache = v3->_styleAttributesCache;
    v3->_styleAttributesCache = v16;
  }

  return v3;
}

+ (NTKMapsSyncManager)sharedManager
{
  if (qword_27E1DF670 != -1)
  {
    sub_23BEE7568();
  }

  v3 = qword_27E1DF668;

  return v3;
}

- (id)_wrapperForPOI:(id)i
{
  iCopy = i;
  v8 = objc_msgSend_ntk_styleAttributes(iCopy, v5, v6);
  if (v8)
  {
    styleAttributesCache = self->_styleAttributesCache;
    v24 = 0;
    v25 = 0;
    v23 = 0;
    objc_msgSend_imageAndColorsForStyleAttributes_image_glyphColor_fillColor_(styleAttributesCache, v7, v9, v8, &v25, &v24, &v23);
    v11 = v25;
    v12 = v24;
    v13 = v23;
    v16 = v13;
    if (v12)
    {
      if (v13)
      {
        goto LABEL_4;
      }

LABEL_12:
      v16 = objc_msgSend_ntk_defaultFillColor(iCopy, v14, v15);
      if (v11)
      {
        goto LABEL_5;
      }

      goto LABEL_13;
    }
  }

  else
  {
    v22 = NTKFoghornFaceBundleLogObject();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      sub_23BEE757C(iCopy, v22);
    }

    v16 = 0;
    v11 = 0;
  }

  v12 = objc_msgSend_ntk_defaultGlyphColor(iCopy, v14, v15);
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_4:
  if (v11)
  {
    goto LABEL_5;
  }

LABEL_13:
  v11 = objc_msgSend_ntk_defaultIconImage(iCopy, v14, v15);
LABEL_5:
  v17 = [NTKMapsPOIWrapper alloc];
  inited = objc_msgSend_initWithmapsPOI_image_glyphColor_fillColor_(v17, v18, v19, iCopy, v11, v12, v16);

  return inited;
}

- (void)storeDidChange:(id)change
{
  v15 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  v5 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NTKMapsSyncManager storeDidChange:]";
    v13 = 2112;
    v14 = changeCopy;
    _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: types = %@", &v11, 0x16u);
  }

  v8 = objc_msgSend__query(self, v6, v7);
  objc_msgSend__runQuery_completion_(self, v9, v10, v8, 0);
}

- (id)_query
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentQuery;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setQuery:(id)query
{
  queryCopy = query;
  obj = self;
  objc_sync_enter(obj);
  currentQuery = obj->_currentQuery;
  obj->_currentQuery = queryCopy;

  objc_sync_exit(obj);
}

- (NSArray)waypoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_lastWaypoints;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_setWaypoints:(id)waypoints
{
  waypointsCopy = waypoints;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  lastWaypoints = selfCopy->_lastWaypoints;
  selfCopy->_lastWaypoints = waypointsCopy;

  objc_sync_exit(selfCopy);

  objc_msgSend__updateSubscriber(selfCopy, v7, v8);
}

- (void)_updateSubscriber
{
  delegate = self->_delegate;
  if (delegate)
  {
    currentQuery = self->_currentQuery;
    v4 = delegate;
    v12 = objc_msgSend_poiFilter(currentQuery, v5, v6);
    v9 = objc_msgSend_includedCategories(v12, v7, v8);
    objc_msgSend_storeDidChangeWithCategories_(v4, v10, v11, v9);
  }
}

- (void)startUpdatingDelegate:(id)delegate
{
  objc_storeStrong(&self->_delegate, delegate);
  delegateCopy = delegate;
  objc_msgSend_subscribe_(self->_store, v5, v6, self);
}

- (void)stopUpdating
{
  objc_msgSend_unsubscribe_(self->_store, a2, v2, self);
  delegate = self->_delegate;
  self->_delegate = 0;
}

+ (id)_filterMapItems:(id)items bySearchRadius:(double)radius fromCoordinate:(CLLocationCoordinate2D)coordinate
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v36 = *MEMORY[0x277D85DE8];
  itemsCopy = items;
  v38.latitude = latitude;
  v38.longitude = longitude;
  v9 = CLLocationCoordinate2DIsValid(v38);
  if (radius <= 0.0 || !v9)
  {
    v11 = itemsCopy;
  }

  else
  {
    v12 = objc_opt_new();
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = itemsCopy;
    v16 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v14, v15, &v31, v35, 16);
    if (v16)
    {
      v19 = v16;
      v20 = *v32;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v13);
          }

          v22 = *(*(&v31 + 1) + 8 * i);
          objc_msgSend_ntk_latitude(v22, v17, v18, v31);
          v24 = v23;
          objc_msgSend_ntk_longitude(v22, v25, v23);
          v27 = CLLocationCoordinate2DMake(v24, v26);
          v18 = ntk_CLLocationCoordinate2DDistanceToCoordinate(latitude, longitude, v27.latitude, v27.longitude);
          if (v18 <= radius)
          {
            objc_msgSend_addObject_(v12, v17, v18, v22);
          }
        }

        v19 = objc_msgSend_countByEnumeratingWithState_objects_count_(v13, v17, v18, &v31, v35, 16);
      }

      while (v19);
    }

    v11 = objc_msgSend_copy(v12, v28, v29);
  }

  return v11;
}

+ (id)_filterRequiredFromMSCollections:(id)collections
{
  v24 = *MEMORY[0x277D85DE8];
  collectionsCopy = collections;
  v4 = objc_opt_new();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = collectionsCopy;
  v8 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v6, v7, &v19, v23, 16);
  if (v8)
  {
    v11 = v8;
    v12 = *v20;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v5);
        }

        v14 = *(*(&v19 + 1) + 8 * i);
        if ((objc_msgSend_ntk_isLegacyFavoritesCollection(v14, v9, v10, v19) & 1) == 0)
        {
          objc_msgSend_addObject_(v4, v9, v10, v14);
        }
      }

      v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v5, v9, v10, &v19, v23, 16);
    }

    while (v11);
  }

  v17 = objc_msgSend_copy(v4, v15, v16);

  return v17;
}

+ (id)_fetchMSCollectionPlaceItemsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v35[1] = *MEMORY[0x277D85DE8];
  v9 = MEMORY[0x277D26610];
  storeCopy = store;
  v11 = [v9 alloc];
  v14 = objc_msgSend_initWithStore_(v11, v12, v13, storeCopy);

  v15 = MEMORY[0x277D26680];
  v18 = objc_msgSend_numberWithShort_(MEMORY[0x277CCABB0], v16, v17, 6);
  v35[0] = v18;
  v21 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v19, v20, v35, 1);
  v24 = objc_msgSend_queryPredicateWithFormat_argumentArray_(v15, v22, v23, @"(type & %@) == 0", v21);

  v27 = objc_msgSend_ntk_newest100WithPredicate_(MEMORY[0x277D26678], v25, v26, v24);
  v34 = 0;
  v30 = objc_msgSend_fetchSyncWithOptions_error_(v14, v28, v29, v27, &v34);

  v32 = objc_msgSend__filterMapItems_bySearchRadius_fromCoordinate_(self, v31, radius, v30, latitude, longitude);

  return v32;
}

+ (id)_fetchMSCollectionsInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  v5 = MEMORY[0x277D26618];
  storeCopy = store;
  v7 = [v5 alloc];
  v10 = objc_msgSend_initWithStore_(v7, v8, v9, storeCopy);

  v13 = objc_msgSend_ntk_newest100(MEMORY[0x277D26678], v11, v12);
  v22 = 0;
  v16 = objc_msgSend_fetchSyncWithOptions_error_(v10, v14, v15, v13, &v22);

  v17 = objc_opt_class();
  v20 = objc_msgSend__filterRequiredFromMSCollections_(v17, v18, v19, v16);

  return v20;
}

+ (id)_fetchMSCollectionPlaceItemsInMSCollectionInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius poiFilter:(id)filter
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v82 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  filterCopy = filter;
  v13 = objc_opt_new();
  v65 = storeCopy;
  v15 = objc_msgSend__fetchMSCollectionsInStore_coordinate_radius_(self, v14, latitude, storeCopy, longitude, radius);
  v84.latitude = latitude;
  v84.longitude = longitude;
  v16 = CLLocationCoordinate2DIsValid(v84);
  v17 = 0;
  if (radius > 0.0 && v16)
  {
    v18 = objc_alloc(MEMORY[0x277CE41F8]);
    v17 = objc_msgSend_initWithLatitude_longitude_(v18, v19, latitude, longitude);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  obj = v15;
  v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v20, v21, &v76, v81, 16);
  if (v69)
  {
    v67 = filterCopy;
    v68 = *v77;
    do
    {
      for (i = 0; i != v69; ++i)
      {
        if (*v77 != v68)
        {
          objc_enumerationMutation(obj);
        }

        v25 = *(*(&v76 + 1) + 8 * i);
        v27 = objc_msgSend_title(v25, v22, v23);
        if (!filterCopy || objc_msgSend_includesCategory_named_(filterCopy, v26, v28, 2, v27))
        {
          v70 = v27;
          v71 = i;
          v29 = objc_msgSend_fetchPlaces(v25, v26, v28);
          v72 = 0u;
          v73 = 0u;
          v74 = 0u;
          v75 = 0u;
          v31 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v30, 0.0, &v72, v80, 16);
          if (v31)
          {
            v32 = v31;
            v33 = *v73;
            do
            {
              for (j = 0; j != v32; ++j)
              {
                if (*v73 != v33)
                {
                  objc_enumerationMutation(v29);
                }

                v35 = *(*(&v72 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v38 = v35;
                  v41 = v38;
                  if (!v17 || (objc_msgSend_latitude(v38, v39, v40), v42 = objc_claimAutoreleasedReturnValue(), objc_msgSend_doubleValue(v42, v43, v44), v46 = v45, v42, objc_msgSend_longitude(v41, v47, v48), v49 = objc_claimAutoreleasedReturnValue(), objc_msgSend_doubleValue(v49, v50, v51), v53 = v52, v49, v54 = objc_alloc(MEMORY[0x277CE41F8]), v56 = objc_msgSend_initWithLatitude_longitude_(v54, v55, v46, v53), objc_msgSend_distanceFromLocation_(v17, v57, v58, v56), v60 = v59, v56, v60 <= radius))
                  {
                    objc_msgSend_addObject_(v13, v39, v40, v41);
                  }
                }
              }

              v32 = objc_msgSend_countByEnumeratingWithState_objects_count_(v29, v36, v37, &v72, v80, 16);
            }

            while (v32);
          }

          filterCopy = v67;
          v27 = v70;
          i = v71;
        }
      }

      v69 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v22, v23, &v76, v81, 16);
    }

    while (v69);
  }

  v63 = objc_msgSend_copy(v13, v61, v62);

  return v63;
}

+ (id)_fetchMSUserRoutesInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = MEMORY[0x277D26660];
  storeCopy = store;
  v11 = [v9 alloc];
  v14 = objc_msgSend_initWithStore_(v11, v12, v13, storeCopy);

  v17 = objc_msgSend_ntk_newest100(MEMORY[0x277D26678], v15, v16);
  v24 = 0;
  v20 = objc_msgSend_fetchSyncWithOptions_error_(v14, v18, v19, v17, &v24);

  v22 = objc_msgSend__filterMapItems_bySearchRadius_fromCoordinate_(self, v21, radius, v20, latitude, longitude);

  return v22;
}

+ (id)_fetchMSFavoriteItemInStore:(id)store coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v9 = MEMORY[0x277D26628];
  storeCopy = store;
  v11 = [v9 alloc];
  v14 = objc_msgSend_initWithStore_(v11, v12, v13, storeCopy);

  v17 = objc_msgSend_mapsFavoritesPredicateWithHidden_includeNearbyTransit_(MEMORY[0x277D26680], v15, v16, 0, 0);
  v20 = objc_msgSend_ntk_newest100WithPredicate_(MEMORY[0x277D26678], v18, v19, v17);
  v27 = 0;
  v23 = objc_msgSend_fetchSyncWithOptions_error_(v14, v21, v22, v20, &v27);

  v25 = objc_msgSend__filterMapItems_bySearchRadius_fromCoordinate_(self, v24, radius, v23, latitude, longitude);

  return v25;
}

+ (BOOL)_mapsSyncObjectSet:(id)set containsItemWithMuid:(id)muid
{
  v32 = *MEMORY[0x277D85DE8];
  setCopy = set;
  muidCopy = muid;
  v9 = muidCopy;
  if (muidCopy && objc_msgSend_unsignedLongLongValue(muidCopy, v7, v8))
  {
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = setCopy;
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12, &v27, v31, 16);
    if (v13)
    {
      v14 = *v28;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v28 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v27 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          v19 = v16;
          v22 = objc_msgSend_muid(v19, v20, v21, v27);
          v25 = v22;
          if (v22 && (objc_msgSend_isEqualToNumber_(v22, v23, v24, v9) & 1) != 0)
          {

            LOBYTE(v13) = 1;
            goto LABEL_18;
          }
        }

        v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v17, v18, &v27, v31, 16);
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_18:
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

+ (id)_fetchInStore:(id)store poiFilter:(id)filter coordinate:(CLLocationCoordinate2D)coordinate radius:(double)radius
{
  longitude = coordinate.longitude;
  latitude = coordinate.latitude;
  v219 = *MEMORY[0x277D85DE8];
  storeCopy = store;
  filterCopy = filter;
  v11 = objc_opt_new();
  v185 = filterCopy;
  if (objc_msgSend_includesCategory_(filterCopy, v12, v13, 2))
  {
    v16 = objc_opt_class();
    v18 = objc_msgSend__fetchMSCollectionPlaceItemsInMSCollectionInStore_coordinate_radius_poiFilter_(v16, v17, latitude, storeCopy, filterCopy, longitude, radius);
    v205 = 0u;
    v206 = 0u;
    v207 = 0u;
    v208 = 0u;
    v20 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v19, 0.0, &v205, v218, 16);
    if (v20)
    {
      v22 = v20;
      v23 = *v206;
      v24 = 136316162;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v206 != v23)
          {
            objc_enumerationMutation(v18);
          }

          v26 = *(*(&v205 + 1) + 8 * i);
          v27 = objc_msgSend_customName(v26, v21, *&v24, v185);
          v30 = v27;
          if (v27)
          {
            v31 = v27;
          }

          else
          {
            v31 = objc_msgSend_mapItemName(v26, v28, v29);
          }

          v32 = v31;

          v35 = objc_msgSend_latitude(v26, v33, v34);
          objc_msgSend_doubleValue(v35, v36, v37);
          v39 = v38;

          v42 = objc_msgSend_longitude(v26, v40, v41);
          objc_msgSend_doubleValue(v42, v43, v44);
          v46 = v45;

          v49 = objc_msgSend_type(v26, v47, v48);
          v50 = NTKFoghornFaceBundleLogObject();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v214 = 2112;
            v215 = v32;
            v216 = 1024;
            *v217 = v49;
            *&v217[4] = 2048;
            *&v217[6] = v39;
            *&v217[14] = 2048;
            *&v217[16] = v46;
            _os_log_impl(&dword_23BEB1000, v50, OS_LOG_TYPE_DEFAULT, "%s: MapsGuidePlace Waypoint = %@[0x%u] @ %f, %f", buf, 0x30u);
          }

          objc_msgSend_addObject_(v11, v51, v52, v26);
        }

        v22 = objc_msgSend_countByEnumeratingWithState_objects_count_(v18, v21, *&v24, &v205, v218, 16);
      }

      while (v22);
    }

    filterCopy = v185;
  }

  v53 = objc_msgSend_includesCategory_(filterCopy, v14, v15, 256, v185);
  v56 = objc_msgSend_includesCategory_(filterCopy, v54, v55, 8);
  v59 = v56;
  v189 = v53;
  if ((v53 & 1) != 0 || v56)
  {
    objc_msgSend__fetchMSCollectionPlaceItemsInStore_coordinate_radius_(self, v57, latitude, storeCopy, longitude, radius);
    v201 = 0u;
    v202 = 0u;
    v203 = 0u;
    obj = v204 = 0u;
    v61 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v60, 0.0, &v201, v211, 16);
    if (!v61)
    {
      goto LABEL_45;
    }

    v63 = v61;
    v64 = *v202;
    v65 = 136316162;
    while (1)
    {
      v66 = 0;
      do
      {
        if (*v202 != v64)
        {
          objc_enumerationMutation(obj);
        }

        v67 = *(*(&v201 + 1) + 8 * v66);
        v68 = objc_msgSend_customName(v67, v62, *&v65);
        v71 = v68;
        if (v68)
        {
          v72 = v68;
        }

        else
        {
          v72 = objc_msgSend_mapItemName(v67, v69, v70);
        }

        v73 = v72;

        v76 = objc_msgSend_latitude(v67, v74, v75);
        objc_msgSend_doubleValue(v76, v77, v78);
        v80 = v79;

        v83 = objc_msgSend_longitude(v67, v81, v82);
        objc_msgSend_doubleValue(v83, v84, v85);
        v87 = v86;

        v90 = objc_msgSend_type(v67, v88, v89);
        v93 = v90;
        if (v59)
        {
          v94 = objc_msgSend_containsObject_(v11, v91, v92, v67);
          v95 = NTKFoghornFaceBundleLogObject();
          v96 = os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT);
          if (v94)
          {
            if (v96)
            {
              *buf = 136316162;
              v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
              v214 = 2112;
              v215 = v73;
              v216 = 1024;
              *v217 = v93;
              *&v217[4] = 2048;
              *&v217[6] = v80;
              *&v217[14] = 2048;
              *&v217[16] = v87;
              v97 = v95;
              v98 = "%s: MapsPlace Waypoint = %@[0x%u] @ %f, %f (already found in MapsGuide)";
              goto LABEL_29;
            }

            goto LABEL_30;
          }

          if (v96)
          {
            *buf = 136316162;
            v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v214 = 2112;
            v215 = v73;
            v216 = 1024;
            *v217 = v93;
            *&v217[4] = 2048;
            *&v217[6] = v80;
            *&v217[14] = 2048;
            *&v217[16] = v87;
            v101 = v95;
            v102 = "%s: MapsPlace Waypoint = %@[0x%u] @ %f, %f";
            goto LABEL_38;
          }

          goto LABEL_39;
        }

        if (v189 && (v90 & 1) != 0)
        {
          v99 = objc_msgSend_containsObject_(v11, v91, v92, v67);
          v95 = NTKFoghornFaceBundleLogObject();
          v100 = os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT);
          if (v99)
          {
            if (v100)
            {
              *buf = 136316162;
              v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
              v214 = 2112;
              v215 = v73;
              v216 = 1024;
              *v217 = v93;
              *&v217[4] = 2048;
              *&v217[6] = v80;
              *&v217[14] = 2048;
              *&v217[16] = v87;
              v97 = v95;
              v98 = "%s: MapsFavorite Waypoint = %@[0x%u] @ %f, %f (already found in MapsGuide)";
LABEL_29:
              _os_log_impl(&dword_23BEB1000, v97, OS_LOG_TYPE_DEFAULT, v98, buf, 0x30u);
            }

LABEL_30:

            goto LABEL_40;
          }

          if (v100)
          {
            *buf = 136316162;
            v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v214 = 2112;
            v215 = v73;
            v216 = 1024;
            *v217 = v93;
            *&v217[4] = 2048;
            *&v217[6] = v80;
            *&v217[14] = 2048;
            *&v217[16] = v87;
            v101 = v95;
            v102 = "%s: MapsFavorite Waypoint = %@[0x%u] @ %f, %f";
LABEL_38:
            _os_log_impl(&dword_23BEB1000, v101, OS_LOG_TYPE_DEFAULT, v102, buf, 0x30u);
          }

LABEL_39:

          objc_msgSend_addObject_(v11, v103, v104, v67);
        }

LABEL_40:

        ++v66;
      }

      while (v63 != v66);
      v105 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v62, *&v65, &v201, v211, 16);
      v63 = v105;
      if (!v105)
      {
LABEL_45:

        filterCopy = v186;
        break;
      }
    }
  }

  v106 = objc_msgSend_includesCategory_(filterCopy, v57, v58, 4);
  v109 = objc_msgSend_includesCategory_(filterCopy, v107, v108, 32);
  v112 = v109;
  v190 = v106;
  if ((v106 & 1) != 0 || v109)
  {
    objc_msgSend__fetchMSFavoriteItemInStore_coordinate_radius_(self, v110, latitude, storeCopy, longitude, radius);
    v197 = 0u;
    v198 = 0u;
    v199 = 0u;
    obja = v200 = 0u;
    v114 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v113, 0.0, &v197, v210, 16);
    if (!v114)
    {
      goto LABEL_71;
    }

    v116 = v114;
    v117 = *v198;
    v118 = 136316162;
    while (1)
    {
      for (j = 0; j != v116; ++j)
      {
        if (*v198 != v117)
        {
          objc_enumerationMutation(obja);
        }

        v120 = *(*(&v197 + 1) + 8 * j);
        v121 = objc_msgSend_customName(v120, v115, *&v118);
        v124 = v121;
        if (v121)
        {
          v125 = v121;
        }

        else
        {
          v125 = objc_msgSend_mapItemName(v120, v122, v123);
        }

        v126 = v125;

        v130 = objc_msgSend_favoriteType(v120, v127, v128);
        if (v130 == 4)
        {
          if ((v112 & 1) == 0)
          {
            goto LABEL_69;
          }
        }

        else if (!v190)
        {
          goto LABEL_69;
        }

        v132 = v112;
        v133 = objc_msgSend_latitude(v120, v129, v131);
        objc_msgSend_doubleValue(v133, v134, v135);
        v137 = v136;

        v140 = objc_msgSend_longitude(v120, v138, v139);
        objc_msgSend_doubleValue(v140, v141, v142);
        v144 = v143;

        v148 = objc_msgSend_muid(v120, v145, v146);
        if (v148 && objc_msgSend__mapsSyncObjectSet_containsItemWithMuid_(self, v147, v149, v11, v148))
        {
          v150 = NTKFoghornFaceBundleLogObject();
          if (os_log_type_enabled(v150, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v214 = 2112;
            v215 = v126;
            v216 = 1024;
            *v217 = v130;
            *&v217[4] = 2048;
            *&v217[6] = v137;
            *&v217[14] = 2048;
            *&v217[16] = v144;
            _os_log_impl(&dword_23BEB1000, v150, OS_LOG_TYPE_DEFAULT, "%s: MapsPinned Waypoint = %@[%u] @ %f, %f (already found in MapsGuide or MapsPlace)", buf, 0x30u);
          }
        }

        else
        {
          v151 = NTKFoghornFaceBundleLogObject();
          if (os_log_type_enabled(v151, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136316162;
            v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v214 = 2112;
            v215 = v126;
            v216 = 1024;
            *v217 = v130;
            *&v217[4] = 2048;
            *&v217[6] = v137;
            *&v217[14] = 2048;
            *&v217[16] = v144;
            _os_log_impl(&dword_23BEB1000, v151, OS_LOG_TYPE_DEFAULT, "%s: MapsPinned Waypoint = %@[%u] @ %f, %f", buf, 0x30u);
          }

          objc_msgSend_addObject_(v11, v152, v153, v120);
        }

        v112 = v132;

LABEL_69:
      }

      v116 = objc_msgSend_countByEnumeratingWithState_objects_count_(obja, v115, *&v118, &v197, v210, 16);
      if (!v116)
      {
LABEL_71:

        filterCopy = v186;
        break;
      }
    }
  }

  if (objc_msgSend_includesCategory_(filterCopy, v110, v111, 16))
  {
    v156 = objc_msgSend__fetchMSUserRoutesInStore_coordinate_radius_(self, v154, latitude, storeCopy, longitude, radius);
    v193 = 0u;
    v194 = 0u;
    v195 = 0u;
    v196 = 0u;
    v158 = objc_msgSend_countByEnumeratingWithState_objects_count_(v156, v157, 0.0, &v193, v209, 16);
    if (v158)
    {
      v160 = v158;
      v161 = *v194;
      v162 = 136315906;
      do
      {
        for (k = 0; k != v160; ++k)
        {
          if (*v194 != v161)
          {
            objc_enumerationMutation(v156);
          }

          v164 = *(*(&v193 + 1) + 8 * k);
          v165 = objc_msgSend_customName(v164, v159, *&v162);
          v168 = objc_msgSend_originLatitude(v164, v166, v167);
          objc_msgSend_doubleValue(v168, v169, v170);
          v172 = v171;

          v175 = objc_msgSend_originLongitude(v164, v173, v174);
          objc_msgSend_doubleValue(v175, v176, v177);
          v179 = v178;

          v180 = NTKFoghornFaceBundleLogObject();
          if (os_log_type_enabled(v180, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315906;
            v213 = "+[NTKMapsSyncManager _fetchInStore:poiFilter:coordinate:radius:]";
            v214 = 2112;
            v215 = v165;
            v216 = 2048;
            *v217 = v172;
            *&v217[8] = 2048;
            *&v217[10] = v179;
            _os_log_impl(&dword_23BEB1000, v180, OS_LOG_TYPE_DEFAULT, "%s: MapsRoute Waypoint = %@ @ %f, %f", buf, 0x2Au);
          }

          objc_msgSend_addObject_(v11, v181, v182, v164);
        }

        v160 = objc_msgSend_countByEnumeratingWithState_objects_count_(v156, v159, *&v162, &v193, v209, 16);
      }

      while (v160);
    }

    filterCopy = v186;
  }

  v183 = objc_msgSend_allObjects(v11, v154, v155);

  return v183;
}

- (void)fetchUserGuidesWithCompletion:(id)completion
{
  completionCopy = completion;
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = sub_23BEE6548;
  v7[3] = &unk_278BA1C40;
  objc_copyWeak(&v9, &location);
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_runQuery:(id)query completion:(id)completion
{
  queryCopy = query;
  completionCopy = completion;
  objc_msgSend__setQuery_(self, v8, v9, queryCopy);
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEE6720;
  block[3] = &unk_278BA1070;
  objc_copyWeak(&v16, &location);
  v14 = queryCopy;
  v15 = completionCopy;
  block[4] = self;
  v11 = queryCopy;
  v12 = completionCopy;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)setQueryCenterLocation:(id)location radius:(double)radius poiFilter:(id)filter completion:(id)completion
{
  locationCopy = location;
  filterCopy = filter;
  completionCopy = completion;
  v15 = completionCopy;
  if ((locationCopy || radius <= 0.0) && (radius <= 0.0 || (v14 = 50.0, radius >= 50.0)))
  {
    v16 = objc_msgSend_copyIncludingCategories_(filterCopy, v13, v14, 318);
    v19 = objc_msgSend__query(self, v17, v18);
    objc_msgSend_coordinate(locationCopy, v20, v21);
    v24 = objc_msgSend_queryWithCenterCoordinate_radius_poiFilter_(NTKLeghornWaypointQuery, v22, v23, v16);
    if (objc_msgSend_matchesQuery_(v19, v25, v26, v24))
    {
      if (v15)
      {
        v15[2](v15, 0);
      }
    }

    else
    {
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = sub_23BEE6AB8;
      v29[3] = &unk_278BA1098;
      v30 = v15;
      objc_msgSend__runQuery_completion_(self, v27, v28, v24, v29);
    }
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

@end