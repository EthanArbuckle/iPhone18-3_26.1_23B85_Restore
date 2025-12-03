@interface CuratedCollectionResolver
- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)identifier delegate:(id)delegate;
- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)identifier handler:(id)handler;
- (CuratedCollectionResolver)initWithFullyClientizedCuratedCollection:(id)collection delegate:(id)delegate;
- (CuratedCollectionResolverDelegate)delegate;
- (void)_commonInitWithCuratedCollectionIdentifier:(id)identifier;
- (void)_finishedResolvingItems;
- (void)_resolveAppClips;
- (void)_resolveCollectionDetails;
- (void)_resolveMediaLink:(id)link withGroup:(id)group;
- (void)_resolveThirdPartyLinks:(id)links withGroup:(id)group;
- (void)cancel;
- (void)resolveCollectionIncludingCollectionDetails:(BOOL)details;
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
  curatedCollection = [(CuratedCollectionResolver *)self curatedCollection];
  v5 = [v3 collectionIsSaved:curatedCollection];

  if (v5)
  {
    v6 = +[CuratedCollectionSyncManager sharedManager];
    curatedCollection2 = [(CuratedCollectionResolver *)self curatedCollection];
    [v6 updateSavedCuratedCollection:curatedCollection2 completion:0];
  }

  placeCollectionItems = [(CuratedCollectionResolver *)self placeCollectionItems];
  v25 = [placeCollectionItems copy];

  delegate = [(CuratedCollectionResolver *)self delegate];

  if (delegate)
  {
    curatedCollection3 = [(CuratedCollectionResolver *)self curatedCollection];
    mediaLinks = [curatedCollection3 mediaLinks];
    firstObject = [mediaLinks firstObject];

    v13 = [CuratedCollectionResolverInfo alloc];
    mediaIntegration = [(CuratedCollectionResolver *)self mediaIntegration];
    relatedCollectionItemIndex = [firstObject relatedCollectionItemIndex];
    position = [firstObject position];
    thirdPartyLinks = [(CuratedCollectionResolver *)self thirdPartyLinks];
    v18 = [(CuratedCollectionResolverInfo *)v13 initWithCollectionItems:v25 mediaIntegration:mediaIntegration mediaIntegrationCollectionItemIndex:relatedCollectionItemIndex mediaIntegrationPosition:position thirdPartyLinks:thirdPartyLinks];

    delegate2 = [(CuratedCollectionResolver *)self delegate];
    curatedCollection4 = [(CuratedCollectionResolver *)self curatedCollection];
    [delegate2 didResolveCollection:curatedCollection4 resolverInfo:v18];
  }

  handler = [(CuratedCollectionResolver *)self handler];

  if (handler)
  {
    handler2 = [(CuratedCollectionResolver *)self handler];
    curatedCollection5 = [(CuratedCollectionResolver *)self curatedCollection];
    error = [(CuratedCollectionResolver *)self error];
    (handler2)[2](handler2, curatedCollection5, v25, error);
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
  selfCopy = self;
  placeCollectionItems = [(CuratedCollectionResolver *)self placeCollectionItems];
  v6 = [placeCollectionItems countByEnumeratingWithState:&v27 objects:v31 count:16];
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
          objc_enumerationMutation(placeCollectionItems);
        }

        v10 = *(*(&v27 + 1) + 8 * i);
        appClip = [v10 appClip];
        if (appClip)
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
          [v12 appClipWithQuickLink:appClip completion:v23];
        }
      }

      v7 = [placeCollectionItems countByEnumeratingWithState:&v27 objects:v31 count:16];
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
  block[4] = selfCopy;
  v17 = v4;
  dispatch_group_notify(v3, &_dispatch_main_q, block);
}

- (void)_resolveThirdPartyLinks:(id)links withGroup:(id)group
{
  linksCopy = links;
  groupCopy = group;
  dispatch_group_enter(groupCopy);
  v8 = sub_1007CEE68();
  v9 = os_signpost_id_generate(v8);

  v10 = sub_1007CEE68();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ResolvingThirdPartyMediaLink", "", buf, 2u);
  }

  v12 = [linksCopy _maps_map:&stru_10162A5B8];
  v13 = [NSDictionary dictionaryWithObjects:linksCopy forKeys:v12];
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
  v19 = groupCopy;
  v22 = v19;
  [v14 appleMediaServicesResultsWithIdentifiers:v12 artworkSize:1 screenScale:8 type:v20 source:64.0 completion:{64.0, v17}];

  objc_destroyWeak(v23);
  objc_destroyWeak(buf);
}

- (void)_resolveMediaLink:(id)link withGroup:(id)group
{
  linkCopy = link;
  groupCopy = group;
  dispatch_group_enter(groupCopy);
  v8 = sub_1007CEE68();
  v9 = os_signpost_id_generate(v8);

  v10 = sub_1007CEE68();
  v11 = v10;
  if ((v9 - 1) <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(buf[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ResolvingMediaLink", "", buf, 2u);
  }

  [linkCopy mediaSubType];
  v12 = GEOAppleMediaServicesMediaTypeForGeoSubtype();
  objc_initWeak(buf, self);
  v13 = +[MKAppleMediaServices sharedInstance];
  adamID = [linkCopy adamID];
  v24 = adamID;
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
  v19 = groupCopy;
  v21 = v19;
  [v13 appleMediaServicesResultsWithIdentifiers:v15 artworkSize:v12 screenScale:8 type:v20 source:64.0 completion:{64.0, v18}];

  objc_destroyWeak(v22);
  objc_destroyWeak(buf);
}

- (void)_resolveCollectionDetails
{
  curatedCollection = [(CuratedCollectionResolver *)self curatedCollection];
  if (![curatedCollection isSuppressed])
  {
    curatedCollection2 = [(CuratedCollectionResolver *)self curatedCollection];
    isBlocked = [curatedCollection2 isBlocked];

    if (isBlocked)
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
    curatedCollection3 = [(CuratedCollectionResolver *)self curatedCollection];
    itemIds = [curatedCollection3 itemIds];
    v18 = MKMapItemIdentifiersArrayFromGEOMapItemIdentifiersArray();
    collectionIdentifier = [(CuratedCollectionResolver *)self collectionIdentifier];
    v20 = [v15 ticketForCuratedCollectionItems:v18 collection:collectionIdentifier traits:0];

    tickets = [(CuratedCollectionResolver *)self tickets];
    [tickets addObject:v20];

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
    curatedCollection4 = [(CuratedCollectionResolver *)self curatedCollection];
    mediaLinks = [curatedCollection4 mediaLinks];
    firstObject = [mediaLinks firstObject];

    if (firstObject && MapsFeature_IsEnabled_GuidesMediaIntegration())
    {
      [(CuratedCollectionResolver *)self _resolveMediaLink:firstObject withGroup:v22];
    }

    thirdPartyLinks = [firstObject thirdPartyLinks];
    if ([thirdPartyLinks count])
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

      thirdPartyLinks = [firstObject thirdPartyLinks];
      [(CuratedCollectionResolver *)self _resolveThirdPartyLinks:thirdPartyLinks withGroup:v22];
    }

    goto LABEL_17;
  }

LABEL_4:
  v6 = GEOErrorDomain();
  v28 = [NSError errorWithDomain:v6 code:-6 userInfo:0];

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  curatedCollection5 = [(CuratedCollectionResolver *)self curatedCollection];
  [WeakRetained didFailToResolveCollectionWithError:v28 withFetchedCollection:curatedCollection5];
}

- (void)cancel
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  tickets = [(CuratedCollectionResolver *)self tickets];
  v3 = [tickets countByEnumeratingWithState:&v8 objects:v12 count:16];
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
          objc_enumerationMutation(tickets);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if (objc_opt_respondsToSelector())
        {
          [v7 cancel];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [tickets countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)resolveCollectionIncludingCollectionDetails:(BOOL)details
{
  detailsCopy = details;
  curatedCollection = [(CuratedCollectionResolver *)self curatedCollection];

  if (curatedCollection)
  {
    if (detailsCopy)
    {

      [(CuratedCollectionResolver *)self _resolveCollectionDetails];
    }
  }

  else
  {
    v6 = +[CuratedCollectionSyncManager sharedManager];
    collectionIdentifier = [(CuratedCollectionResolver *)self collectionIdentifier];
    v8 = MKMapItemIdentifiersToGEOMapItemIdentifier();
    v9 = [v6 collectionIsSavedWithIdentifier:v8];

    v10 = +[MKMapService sharedService];
    collectionIdentifier2 = [(CuratedCollectionResolver *)self collectionIdentifier];
    v24 = collectionIdentifier2;
    v12 = [NSArray arrayWithObjects:&v24 count:1];
    v13 = [v10 ticketForCuratedCollections:v12 isBatchLookup:0 overrideSuppress:v9 traits:0];

    tickets = [(CuratedCollectionResolver *)self tickets];
    [tickets addObject:v13];

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
    v21 = detailsCopy;
    v19[4] = self;
    [v13 submitWithHandler:v19 networkActivity:0];
    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

- (void)_commonInitWithCuratedCollectionIdentifier:(id)identifier
{
  objc_storeStrong(&self->_collectionIdentifier, identifier);
  identifierCopy = identifier;
  v5 = objc_alloc_init(NSMutableArray);
  tickets = self->_tickets;
  self->_tickets = v5;
}

- (CuratedCollectionResolver)initWithFullyClientizedCuratedCollection:(id)collection delegate:(id)delegate
{
  collectionCopy = collection;
  delegateCopy = delegate;
  v15.receiver = self;
  v15.super_class = CuratedCollectionResolver;
  v9 = [(CuratedCollectionResolver *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeWeak(&v9->_delegate, delegateCopy);
    objc_storeStrong(&v10->_curatedCollection, collection);
    v11 = [MKMapItemIdentifier alloc];
    collectionIdentifier = [collectionCopy collectionIdentifier];
    v13 = [v11 initWithGEOMapItemIdentifier:collectionIdentifier];

    [(CuratedCollectionResolver *)v10 _commonInitWithCuratedCollectionIdentifier:v13];
  }

  return v10;
}

- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)identifier handler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  v12.receiver = self;
  v12.super_class = CuratedCollectionResolver;
  v8 = [(CuratedCollectionResolver *)&v12 init];
  if (v8)
  {
    v9 = objc_retainBlock(handlerCopy);
    handler = v8->_handler;
    v8->_handler = v9;

    [(CuratedCollectionResolver *)v8 _commonInitWithCuratedCollectionIdentifier:identifierCopy];
  }

  return v8;
}

- (CuratedCollectionResolver)initWithCuratedCollectionIdentifier:(id)identifier delegate:(id)delegate
{
  identifierCopy = identifier;
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = CuratedCollectionResolver;
  v8 = [(CuratedCollectionResolver *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    [(CuratedCollectionResolver *)v9 _commonInitWithCuratedCollectionIdentifier:identifierCopy];
  }

  return v9;
}

@end