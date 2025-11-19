@interface GuidesHomeAnalyticsManager
- (GuidesHomeAnalyticsManager)initWithGuideLocationId:(id)a3 isCuratedGuidesHome:(BOOL)a4;
- (void)cleanUp;
- (void)guideHomeTappedFilter:(id)a3 atIndex:(unint64_t)a4 carouselIndex:(unint64_t)a5;
- (void)guidesHomeCityGuidesMoreButtonTapped;
- (void)guidesHomeCitySelectorTapped;
- (void)guidesHomeClosed;
- (void)guidesHomeDisplayFilteredGuideList:(id)a3;
- (void)guidesHomeRevealed;
- (void)guidesHomeScrolledDown;
- (void)guidesHomeScrolledUp;
- (void)guidesHomeTappedCityGuide:(id)a3 atIndex:(unint64_t)a4 carouselIndex:(unint64_t)a5;
- (void)guidesHomeTappedEditorPickedGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7;
- (void)guidesHomeTappedFeaturedGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5;
- (void)guidesHomeTappedFilteredGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7 filterValue:(id)a8;
- (void)guidesHomeTappedLatestGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7;
- (void)guidesHomeTappedPublisher:(id)a3 atIndex:(unint64_t)a4 carouselIndex:(unint64_t)a5;
- (void)guidesHomeTappedTemporalGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7;
- (void)logEvent;
- (void)updateAnalyticsManagerWithGuideLocationId:(id)a3 isCuratedGuidesHome:(BOOL)a4;
@end

@implementation GuidesHomeAnalyticsManager

- (void)cleanUp
{
  self->event.action = 0;
  value = self->event.value;
  self->event.value = 0;

  collectionId = self->event.collectionId;
  self->event.collectionId = 0;

  collectionCurrentlySaved = self->event.collectionCurrentlySaved;
  self->event.collectionCurrentlySaved = 0;

  verticalIndex = self->event.verticalIndex;
  self->event.verticalIndex = 0;

  horizontalIndex = self->event.horizontalIndex;
  self->event.horizontalIndex = 0;

  v8 = objc_alloc_init(NSMutableArray);
  possibleActions = self->event.possibleActions;
  self->event.possibleActions = v8;

  v10 = objc_alloc_init(NSMutableArray);
  impossibleActions = self->event.impossibleActions;
  self->event.impossibleActions = v10;

  repeatableIndex = self->event.repeatableIndex;
  self->event.repeatableIndex = 0;

  providerId = self->event.providerId;
  self->event.providerId = 0;
}

- (void)logEvent
{
  action = self->event.action;
  target = self->event.target;
  value = self->event.value;
  publisherId = self->event.publisherId;
  if (publisherId)
  {
    v12 = self->event.publisherId;
    v7 = [NSArray arrayWithObjects:&v12 count:1];
  }

  else
  {
    v7 = 0;
  }

  collectionId = self->event.collectionId;
  v11 = *&self->event.collectionCurrentlySaved;
  horizontalIndex = self->event.horizontalIndex;
  v10 = [NSNumber numberWithInt:self->event.cardType];
  [GEOAPPortal captureCuratedCollectionUserAction:action target:target value:value publisherId:v7 following:0 collectionId:collectionId collectionCategory:0 collectionCurrentlySaved:v11 verticalIndex:horizontalIndex horizontalIndex:v10 placeCardType:self->event.possibleActions possibleActions:self->event.impossibleActions impossibleActions:self->event.providerId providerId:self->event.repeatableIndex repeatableSectionIndex:0 modules:?];

  if (publisherId)
  {
  }
}

- (void)guidesHomeClosed
{
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BF11D4;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(utilityQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)guidesHomeScrolledDown
{
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BF130C;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(utilityQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)guidesHomeScrolledUp
{
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BF1444;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(utilityQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedFilteredGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7 filterValue:(id)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a8;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100BF160C;
  v21[3] = &unk_10164D6B0;
  objc_copyWeak(v25, &location);
  v22 = v14;
  v23 = v15;
  v26 = a5;
  v25[1] = a6;
  v25[2] = a7;
  v24 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  dispatch_async(utilityQueue, v21);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

- (void)guidesHomeDisplayFilteredGuideList:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF182C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)guideHomeTappedFilter:(id)a3 atIndex:(unint64_t)a4 carouselIndex:(unint64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF1B0C;
  block[3] = &unk_10164D638;
  objc_copyWeak(v13, &location);
  v12 = v8;
  v13[1] = a4;
  v13[2] = a5;
  v10 = v8;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedEditorPickedGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF1D04;
  block[3] = &unk_10164D660;
  objc_copyWeak(v20, &location);
  v18 = v12;
  v19 = v13;
  v21 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v15 = v13;
  v16 = v12;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedTemporalGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF1F5C;
  block[3] = &unk_10164D660;
  objc_copyWeak(v20, &location);
  v18 = v12;
  v19 = v13;
  v21 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v15 = v13;
  v16 = v12;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedLatestGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5 atIndex:(unint64_t)a6 carouselIndex:(unint64_t)a7
{
  v12 = a3;
  v13 = a4;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF21B4;
  block[3] = &unk_10164D660;
  objc_copyWeak(v20, &location);
  v18 = v12;
  v19 = v13;
  v21 = a5;
  v20[1] = a6;
  v20[2] = a7;
  v15 = v13;
  v16 = v12;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedPublisher:(id)a3 atIndex:(unint64_t)a4 carouselIndex:(unint64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF23DC;
  block[3] = &unk_10164D638;
  objc_copyWeak(v13, &location);
  v12 = v8;
  v13[1] = a4;
  v13[2] = a5;
  v10 = v8;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedCityGuide:(id)a3 atIndex:(unint64_t)a4 carouselIndex:(unint64_t)a5
{
  v8 = a3;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF25E8;
  block[3] = &unk_10164D638;
  objc_copyWeak(v13, &location);
  v12 = v8;
  v13[1] = a4;
  v13[2] = a5;
  v10 = v8;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)guidesHomeRevealed
{
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BF27C4;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(utilityQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)guidesHomeCityGuidesMoreButtonTapped
{
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF2968;
  block[3] = &unk_101661340;
  objc_copyWeak(&v5, &location);
  block[4] = self;
  dispatch_async(utilityQueue, block);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)guidesHomeCitySelectorTapped
{
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100BF2AAC;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(utilityQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedFeaturedGuide:(id)a3 publisherId:(id)a4 isCurrentlySaved:(BOOL)a5
{
  v8 = a3;
  v9 = a4;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF2C48;
  block[3] = &unk_10164D610;
  objc_copyWeak(&v16, &location);
  v17 = a5;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)updateAnalyticsManagerWithGuideLocationId:(id)a3 isCuratedGuidesHome:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  guideLocationId = self->_guideLocationId;
  if (guideLocationId == v7)
  {
    goto LABEL_12;
  }

  v9 = sub_1007982D8();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG);
  if (guideLocationId)
  {
    if (v10)
    {
      v13 = 138412290;
      v14 = v7;
      v11 = "GuidesHomeAnalyticsManager *refreshed* to report analytics for : %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v11, &v13, 0xCu);
    }
  }

  else if (v10)
  {
    v13 = 138412290;
    v14 = v7;
    v11 = "GuidesHomeAnalyticsManager initialized to report analytics for : %@";
    goto LABEL_7;
  }

  objc_storeStrong(&self->_guideLocationId, a3);
  self->_isCuratedGuidesHome = v4;
  if (v4)
  {
    v12 = 19;
  }

  else
  {
    v12 = 28;
  }

  self->event.target = v12;
LABEL_12:
}

- (GuidesHomeAnalyticsManager)initWithGuideLocationId:(id)a3 isCuratedGuidesHome:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v11.receiver = self;
  v11.super_class = GuidesHomeAnalyticsManager;
  v7 = [(GuidesHomeAnalyticsManager *)&v11 init];
  if (v7)
  {
    v8 = geo_dispatch_queue_create_with_qos();
    utilityQueue = v7->_utilityQueue;
    v7->_utilityQueue = v8;

    v7->event.cardType = 14;
    [(GuidesHomeAnalyticsManager *)v7 updateAnalyticsManagerWithGuideLocationId:v6 isCuratedGuidesHome:v4];
  }

  return v7;
}

@end