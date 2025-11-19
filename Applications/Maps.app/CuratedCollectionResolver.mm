@interface CuratedCollectionResolver
- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)a3 delegate:(id)a4;
- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)a3 handler:(id)a4;
- (CuratedCollectionResolver)initWithFullyClientizedCuratedCollection:(id)a3 delegate:(id)a4;
- (CuratedCollectionResolverDelegate)delegate;
- (void)_commonInitWithCuratedCollectionIdentifier:(id)a3;
- (void)_finishedResolvingItems;
- (void)_resolveAppClips;
- (void)_resolveCollectionDetails;
- (void)_resolveMediaLink:(id)a3 withGroup:(id)a4;
- (void)_resolveThirdPartyLinks:(id)a3 withGroup:(id)a4;
- (void)cancel;
- (void)resolveCollectionIncludingCollectionDetails:(BOOL)a3;
@end

@implementation CuratedCollectionResolver

- (CuratedCollectionResolverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_finishedResolvingItems
{
  v3 = +[CuratedCollectionSyncManager sharedManager];
  v4 = [(CuratedCollectionResolver *)self curatedCollection];
  v5 = [v3 collectionIsSaved:v4];

  if (v5)
  {
    v6 = +[CuratedCollectionSyncManager sharedManager];
    v7 = [(CuratedCollectionResolver *)self curatedCollection];
    [v6 updateSavedCuratedCollection:v7 completion:0];
  }

  v8 = [(CuratedCollectionResolver *)self placeCollectionItems];
  v25 = [v8 copy];

  v9 = [(CuratedCollectionResolver *)self delegate];

  if (v9)
  {
    v10 = [(CuratedCollectionResolver *)self curatedCollection];
    v11 = [v10 mediaLinks];
    v12 = [v11 firstObject];

    v13 = [CuratedCollectionResolverInfo alloc];
    v14 = [(CuratedCollectionResolver *)self mediaIntegration];
    v15 = [v12 relatedCollectionItemIndex];
    v16 = [v12 position];
    v17 = [(CuratedCollectionResolver *)self thirdPartyLinks];
    v18 = [(CuratedCollectionResolverInfo *)v13 initWithCollectionItems:v25 mediaIntegration:v14 mediaIntegrationCollectionItemIndex:v15 mediaIntegrationPosition:v16 thirdPartyLinks:v17];

    v19 = [(CuratedCollectionResolver *)self delegate];
    v20 = [(CuratedCollectionResolver *)self curatedCollection];
    [v19 didResolveCollection:v20 resolverInfo:v18];
  }

  v21 = [(CuratedCollectionResolver *)self handler];

  if (v21)
  {
    v22 = [(CuratedCollectionResolver *)self handler];
    v23 = [(CuratedCollectionResolver *)self curatedCollection];
    v24 = [(CuratedCollectionResolver *)self error];
    (v22)[2](v22, v23, v25, v24);
  }
}

- (void)_resolveAppClips
{
  v3 = dispatch_group_create();
  v4 = +[NSMutableDictionary dictionary];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v18 = self;
  v5 = [(CuratedCollectionResolver *)self placeCollectionItems];
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        v11 = [v10 appClip];
        if (v11)
        {
          dispatch_group_enter(v3);
          v12 = +[MKClipServices sharedInstance];
          v23[0] = _NSConcreteStackBlock;
          v23[1] = 3221225472;
          v23[2] = sub_1007CEDD8;
          v23[3] = &unk_10162A630;
          v24 = v4;
          v25 = v10;
          v26 = v3;
          [v12 appClipWithQuickLink:v11 completion:v23];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v7);
  }

  v13 = sub_1007CEE68();
  v14 = os_signpost_id_generate(v13);

  v15 = sub_1007CEE68();
  v16 = v15;
  if (v14 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v15))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v16, OS_SIGNPOST_INTERVAL_BEGIN, v14, "ResolvingAppClips", "", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1007CEEBC;
  block[3] = &unk_10165E668;
  v20 = v4;
  v21 = v14;
  block[4] = v18;
  v17 = v4;
  dispatch_group_notify(v3, &_dispatch_main_q, block);
}

- (void)_resolveThirdPartyLinks:(id)a3 withGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_group_enter(v7);
  v8 = sub_1007CEE68();
  v9 = os_signpost_id_generate(v8);

  v10 = sub_1007CEE68();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ResolvingThirdPartyMediaLink", "", buf, 2u);
  }

  v12 = [v6 _maps_map:&stru_10162A5B8];
  v13 = [NSDictionary dictionaryWithObjects:v6 forKeys:v12];
  objc_initWeak(buf, self);
  v14 = +[MKAppleMediaServices sharedInstance];
  v15 = +[UIScreen mainScreen];
  [v15 scale];
  v17 = v16;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1007CF1E4;
  v20[3] = &unk_10162A608;
  objc_copyWeak(v23, buf);
  v18 = v13;
  v21 = v18;
  v23[1] = v9;
  v19 = v7;
  v22 = v19;
  [v14 appleMediaServicesResultsWithIdentifiers:v12 artworkSize:1 screenScale:8 type:v20 source:64.0 completion:{64.0, v17}];

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
}

- (void)_resolveMediaLink:(id)a3 withGroup:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_group_enter(v7);
  v8 = sub_1007CEE68();
  v9 = os_signpost_id_generate(v8);

  v10 = sub_1007CEE68();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ResolvingMediaLink", "", buf, 2u);
  }

  [v6 mediaSubType];
  v12 = GEOAppleMediaServicesMediaTypeForGeoSubtype();
  objc_initWeak(buf, self);
  v13 = +[MKAppleMediaServices sharedInstance];
  v14 = [v6 adamID];
  v24 = v14;
  v15 = [NSArray arrayWithObjects:&v24 count:1];
  v16 = +[UIScreen mainScreen];
  [v16 scale];
  v18 = v17;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1007CF74C;
  v20[3] = &unk_10162A578;
  objc_copyWeak(v22, buf);
  v22[1] = v9;
  v19 = v7;
  v21 = v19;
  [v13 appleMediaServicesResultsWithIdentifiers:v15 artworkSize:v12 screenScale:8 type:v20 source:64.0 completion:{64.0, v18}];

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
}

- (void)_resolveCollectionDetails
{
  v3 = [(CuratedCollectionResolver *)self curatedCollection];
  if (![v3 isSuppressed])
  {
    v4 = [(CuratedCollectionResolver *)self curatedCollection];
    v5 = [v4 isBlocked];

    if (v5)
    {
      goto LABEL_4;
    }

    v9 = +[NSMutableArray array];
    [(CuratedCollectionResolver *)self setPlaceCollectionItems:v9];

    v10 = sub_1007CEE68();
    v11 = os_signpost_id_generate(v10);

    v12 = sub_1007CEE68();
    v13 = v12;
    if (v11 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v12))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v13, OS_SIGNPOST_INTERVAL_BEGIN, v11, "ResolvingCollectionItems", "", buf, 2u);
    }

    v14 = dispatch_group_create();
    dispatch_group_enter(v14);
    v15 = +[MKMapService sharedService];
    v16 = [(CuratedCollectionResolver *)self curatedCollection];
    v17 = [v16 itemIds];
    v18 = MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray();
    v19 = [(CuratedCollectionResolver *)self collectionIdentifier];
    v20 = [v15 ticketForCuratedCollectionItems:v18 collection:v19 traits:0];

    v21 = [(CuratedCollectionResolver *)self tickets];
    [v21 addObject:v20];

    *buf = 0;
    v36 = buf;
    v37 = 0x3032000000;
    v38 = sub_1007CFD30;
    v39 = sub_1007CFD40;
    v40 = 0;
    objc_initWeak(&location, self);
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1007CFD48;
    v30[3] = &unk_10162A550;
    objc_copyWeak(&v33, &location);
    v32 = buf;
    v22 = v14;
    v31 = v22;
    [v20 submitWithHandler:v30 networkActivity:0];
    v23 = [(CuratedCollectionResolver *)self curatedCollection];
    v24 = [v23 mediaLinks];
    v25 = [v24 firstObject];

    if (v25 && MapsFeature_IsEnabled_GuidesMediaIntegration())
    {
      [(CuratedCollectionResolver *)self _resolveMediaLink:v25 withGroup:v22];
    }

    v26 = [v25 thirdPartyLinks];
    if ([v26 count])
    {
      IsEnabled_GuidesMediaIntegrationThirdPartyLinks = MapsFeature_IsEnabled_GuidesMediaIntegrationThirdPartyLinks();

      if (!IsEnabled_GuidesMediaIntegrationThirdPartyLinks)
      {
LABEL_17:
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1007CFDF0;
        block[3] = &unk_10165E540;
        block[5] = buf;
        block[6] = v11;
        block[4] = self;
        dispatch_group_notify(v22, &_dispatch_main_q, block);

        objc_destroyWeak(&v33);
        objc_destroyWeak(&location);
        _Block_object_dispose(buf, 8);

        return;
      }

      v26 = [v25 thirdPartyLinks];
      [(CuratedCollectionResolver *)self _resolveThirdPartyLinks:v26 withGroup:v22];
    }

    goto LABEL_17;
  }

LABEL_4:
  v6 = GEOErrorDomain();
  v28 = [NSError errorWithDomain:v6 code:-6 userInfo:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v8 = [(CuratedCollectionResolver *)self curatedCollection];
  [WeakRetained didFailToResolveCollectionWithError:v28 withFetchedCollection:v8];
}

- (void)cancel
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(CuratedCollectionResolver *)self tickets];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 cancel];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)resolveCollectionIncludingCollectionDetails:(BOOL)a3
{
  v3 = a3;
  v5 = [(CuratedCollectionResolver *)self curatedCollection];

  if (v5)
  {
    if (v3)
    {

      [(CuratedCollectionResolver *)self _resolveCollectionDetails];
    }
  }

  else
  {
    v6 = +[CuratedCollectionSyncManager sharedManager];
    v7 = [(CuratedCollectionResolver *)self collectionIdentifier];
    v8 = MKMapItemIdentifiersToGEOMapItemIdentifier();
    v9 = [v6 collectionIsSavedWithIdentifier:v8];

    v10 = +[MKMapService sharedService];
    v11 = [(CuratedCollectionResolver *)self collectionIdentifier];
    v24 = v11;
    v12 = [NSArray arrayWithObjects:&v24 count:1];
    v13 = [v10 ticketForCuratedCollections:v12 isBatchLookup:0 overrideSuppress:v9 traits:0];

    v14 = [(CuratedCollectionResolver *)self tickets];
    [v14 addObject:v13];

    objc_initWeak(&location, self);
    v15 = sub_1007CEE68();
    v16 = os_signpost_id_generate(v15);

    v17 = sub_1007CEE68();
    v18 = v17;
    if ((v16 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v18, OS_SIGNPOST_INTERVAL_BEGIN, v16, "ResolvingCollection", "", buf, 2u);
    }

    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1007D02E0;
    v19[3] = &unk_10162A528;
    v20[1] = v16;
    objc_copyWeak(v20, &location);
    v21 = v3;
    v19[4] = self;
    [v13 submitWithHandler:v19 networkActivity:0];
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

- (void)_commonInitWithCuratedCollectionIdentifier:(id)a3
{
  objc_storeStrong(&self->_collectionIdentifier, a3);
  v7 = a3;
  v5 = objc_alloc_init(NSMutableArray);
  tickets = self->_tickets;
  self->_tickets = v5;
}

- (CuratedCollectionResolver)initWithFullyClientizedCuratedCollection:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v15.receiver = self;
  v15.super_class = CuratedCollectionResolver;
  v9 = [(CuratedCollectionResolver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, v8);
    objc_storeStrong(&v10->_curatedCollection, a3);
    v11 = [MKMapItemIdentifier alloc];
    v12 = [v7 collectionIdentifier];
    v13 = [v11 initWithGEOMapItemIdentifier:v12];

    [(CuratedCollectionResolver *)v10 _commonInitWithCuratedCollectionIdentifier:v13];
  }

  return v10;
}

- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = CuratedCollectionResolver;
  v8 = [(CuratedCollectionResolver *)&v12 init];
  if (v8)
  {
    v9 = objc_retainBlock(v7);
    handler = v8->_handler;
    v8->_handler = v9;

    [(CuratedCollectionResolver *)v8 _commonInitWithCuratedCollectionIdentifier:v6];
  }

  return v8;
}

- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)a3 delegate:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = CuratedCollectionResolver;
  v8 = [(CuratedCollectionResolver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, v7);
    [(CuratedCollectionResolver *)v9 _commonInitWithCuratedCollectionIdentifier:v6];
  }

  return v9;
}

@end