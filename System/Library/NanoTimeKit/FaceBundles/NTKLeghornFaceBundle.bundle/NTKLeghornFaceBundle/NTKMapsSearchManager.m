@interface NTKMapsSearchManager
+ (NTKMapsSearchManager)sharedManager;
- (NSArray)waypoints;
- (NTKMapsSearchManager)init;
- (id)_query;
- (id)_wrapperForPOI:(id)a3;
- (void)_runQuery:(id)a3 completion:(id)a4;
- (void)_setQuery:(id)a3;
- (void)_setWaypoints:(id)a3;
- (void)_updateSubscriber;
- (void)setQueryCenterLocation:(id)a3 radius:(double)a4 poiFilter:(id)a5 completion:(id)a6;
- (void)storeDidChange:(id)a3;
@end

@implementation NTKMapsSearchManager

- (NTKMapsSearchManager)init
{
  v10.receiver = self;
  v10.super_class = NTKMapsSearchManager;
  v2 = [(NTKMapsSearchManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_get_global_queue(2, 0);
    workQueue = v2->_workQueue;
    v2->_workQueue = v3;

    v7 = objc_msgSend_sharedInstance(GEOFeatureStyleAttributesCache, v5, v6);
    styleAttributesCache = v2->_styleAttributesCache;
    v2->_styleAttributesCache = v7;
  }

  return v2;
}

+ (NTKMapsSearchManager)sharedManager
{
  v2 = a1;
  objc_sync_enter(v2);
  WeakRetained = objc_loadWeakRetained(&qword_27E1DF050);
  if (!WeakRetained)
  {
    WeakRetained = objc_opt_new();
    objc_storeWeak(&qword_27E1DF050, WeakRetained);
  }

  objc_sync_exit(v2);

  return WeakRetained;
}

- (id)_wrapperForPOI:(id)a3
{
  v4 = a3;
  v8 = objc_msgSend_ntk_styleAttributes(v4, v5, v6);
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
      v16 = objc_msgSend_ntk_defaultFillColor(v4, v14, v15);
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
      sub_23BEE6C98(v4, v22);
    }

    v16 = 0;
    v11 = 0;
  }

  v12 = objc_msgSend_ntk_defaultGlyphColor(v4, v14, v15);
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
  v11 = objc_msgSend_ntk_defaultIconImage(v4, v14, v15);
LABEL_5:
  v17 = [NTKMapsSearchPOIWrapper alloc];
  inited = objc_msgSend_initWithmapsPOI_image_glyphColor_fillColor_(v17, v18, v19, v4, v11, v12, v16);

  return inited;
}

- (void)storeDidChange:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = NTKFoghornFaceBundleLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315394;
    v12 = "[NTKMapsSearchManager storeDidChange:]";
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_23BEB1000, v5, OS_LOG_TYPE_DEFAULT, "%s: types = %@", &v11, 0x16u);
  }

  v8 = objc_msgSend__query(self, v6, v7);
  objc_msgSend__runQuery_completion_(self, v9, v10, v8, 0);
}

- (id)_query
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_currentQuery;
  objc_sync_exit(v2);

  return v3;
}

- (void)_setQuery:(id)a3
{
  v4 = a3;
  obj = self;
  objc_sync_enter(obj);
  currentQuery = obj->_currentQuery;
  obj->_currentQuery = v4;

  objc_sync_exit(obj);
}

- (NSArray)waypoints
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_lastWaypoints;
  objc_sync_exit(v2);

  return v3;
}

- (void)_setWaypoints:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  lastWaypoints = v5->_lastWaypoints;
  v5->_lastWaypoints = v4;

  objc_sync_exit(v5);

  objc_msgSend__updateSubscriber(v5, v7, v8);
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

- (void)_runQuery:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_msgSend__setQuery_(self, v8, v9, v6);
  objc_initWeak(&location, self);
  workQueue = self->_workQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = sub_23BEC2944;
  block[3] = &unk_278BA1070;
  objc_copyWeak(&v16, &location);
  v14 = v6;
  v15 = v7;
  block[4] = self;
  v11 = v6;
  v12 = v7;
  dispatch_async(workQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)setQueryCenterLocation:(id)a3 radius:(double)a4 poiFilter:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a5;
  v12 = a6;
  v15 = v12;
  if (v10 && (a4 <= 0.0 || (v14 = 50.0, a4 >= 50.0)))
  {
    v16 = objc_msgSend_copyIncludingCategories_(v11, v13, v14, 192);
    v19 = objc_msgSend__query(self, v17, v18);
    objc_msgSend_coordinate(v10, v20, v21);
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
      v29[2] = sub_23BEC3318;
      v29[3] = &unk_278BA1098;
      v30 = v15;
      objc_msgSend__runQuery_completion_(self, v27, v28, v24, v29);
    }
  }

  else if (v12)
  {
    (*(v12 + 2))(v12, 0);
  }
}

@end