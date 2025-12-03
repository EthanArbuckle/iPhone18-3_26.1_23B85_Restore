@interface GuidesHomeAnalyticsManager
- (GuidesHomeAnalyticsManager)initWithGuideLocationId:(id)id isCuratedGuidesHome:(BOOL)home;
- (void)cleanUp;
- (void)guideHomeTappedFilter:(id)filter atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex;
- (void)guidesHomeCityGuidesMoreButtonTapped;
- (void)guidesHomeCitySelectorTapped;
- (void)guidesHomeClosed;
- (void)guidesHomeDisplayFilteredGuideList:(id)list;
- (void)guidesHomeRevealed;
- (void)guidesHomeScrolledDown;
- (void)guidesHomeScrolledUp;
- (void)guidesHomeTappedCityGuide:(id)guide atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex;
- (void)guidesHomeTappedEditorPickedGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex;
- (void)guidesHomeTappedFeaturedGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved;
- (void)guidesHomeTappedFilteredGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex filterValue:(id)value;
- (void)guidesHomeTappedLatestGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex;
- (void)guidesHomeTappedPublisher:(id)publisher atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex;
- (void)guidesHomeTappedTemporalGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex;
- (void)logEvent;
- (void)updateAnalyticsManagerWithGuideLocationId:(id)id isCuratedGuidesHome:(BOOL)home;
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

- (void)guidesHomeTappedFilteredGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex filterValue:(id)value
{
  guideCopy = guide;
  idCopy = id;
  valueCopy = value;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_100BF160C;
  v21[3] = &unk_10164D6B0;
  objc_copyWeak(v25, &location);
  v22 = guideCopy;
  v23 = idCopy;
  savedCopy = saved;
  v25[1] = index;
  v25[2] = carouselIndex;
  v24 = valueCopy;
  v18 = valueCopy;
  v19 = idCopy;
  v20 = guideCopy;
  dispatch_async(utilityQueue, v21);

  objc_destroyWeak(v25);
  objc_destroyWeak(&location);
}

- (void)guidesHomeDisplayFilteredGuideList:(id)list
{
  listCopy = list;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF182C;
  block[3] = &unk_101661340;
  objc_copyWeak(&v9, &location);
  v8 = listCopy;
  v6 = listCopy;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)guideHomeTappedFilter:(id)filter atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex
{
  filterCopy = filter;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF1B0C;
  block[3] = &unk_10164D638;
  objc_copyWeak(v13, &location);
  v12 = filterCopy;
  v13[1] = index;
  v13[2] = carouselIndex;
  v10 = filterCopy;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedEditorPickedGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex
{
  guideCopy = guide;
  idCopy = id;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF1D04;
  block[3] = &unk_10164D660;
  objc_copyWeak(v20, &location);
  v18 = guideCopy;
  v19 = idCopy;
  savedCopy = saved;
  v20[1] = index;
  v20[2] = carouselIndex;
  v15 = idCopy;
  v16 = guideCopy;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedTemporalGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex
{
  guideCopy = guide;
  idCopy = id;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF1F5C;
  block[3] = &unk_10164D660;
  objc_copyWeak(v20, &location);
  v18 = guideCopy;
  v19 = idCopy;
  savedCopy = saved;
  v20[1] = index;
  v20[2] = carouselIndex;
  v15 = idCopy;
  v16 = guideCopy;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedLatestGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex
{
  guideCopy = guide;
  idCopy = id;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF21B4;
  block[3] = &unk_10164D660;
  objc_copyWeak(v20, &location);
  v18 = guideCopy;
  v19 = idCopy;
  savedCopy = saved;
  v20[1] = index;
  v20[2] = carouselIndex;
  v15 = idCopy;
  v16 = guideCopy;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v20);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedPublisher:(id)publisher atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex
{
  publisherCopy = publisher;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF23DC;
  block[3] = &unk_10164D638;
  objc_copyWeak(v13, &location);
  v12 = publisherCopy;
  v13[1] = index;
  v13[2] = carouselIndex;
  v10 = publisherCopy;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(v13);
  objc_destroyWeak(&location);
}

- (void)guidesHomeTappedCityGuide:(id)guide atIndex:(unint64_t)index carouselIndex:(unint64_t)carouselIndex
{
  guideCopy = guide;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF25E8;
  block[3] = &unk_10164D638;
  objc_copyWeak(v13, &location);
  v12 = guideCopy;
  v13[1] = index;
  v13[2] = carouselIndex;
  v10 = guideCopy;
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

- (void)guidesHomeTappedFeaturedGuide:(id)guide publisherId:(id)id isCurrentlySaved:(BOOL)saved
{
  guideCopy = guide;
  idCopy = id;
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100BF2C48;
  block[3] = &unk_10164D610;
  objc_copyWeak(&v16, &location);
  savedCopy = saved;
  v14 = guideCopy;
  v15 = idCopy;
  v11 = idCopy;
  v12 = guideCopy;
  dispatch_async(utilityQueue, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)updateAnalyticsManagerWithGuideLocationId:(id)id isCuratedGuidesHome:(BOOL)home
{
  homeCopy = home;
  idCopy = id;
  guideLocationId = self->_guideLocationId;
  if (guideLocationId == idCopy)
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
      v14 = idCopy;
      v11 = "GuidesHomeAnalyticsManager *refreshed* to report analytics for : %@";
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, v11, &v13, 0xCu);
    }
  }

  else if (v10)
  {
    v13 = 138412290;
    v14 = idCopy;
    v11 = "GuidesHomeAnalyticsManager initialized to report analytics for : %@";
    goto LABEL_7;
  }

  objc_storeStrong(&self->_guideLocationId, id);
  self->_isCuratedGuidesHome = homeCopy;
  if (homeCopy)
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

- (GuidesHomeAnalyticsManager)initWithGuideLocationId:(id)id isCuratedGuidesHome:(BOOL)home
{
  homeCopy = home;
  idCopy = id;
  v11.receiver = self;
  v11.super_class = GuidesHomeAnalyticsManager;
  v7 = [(GuidesHomeAnalyticsManager *)&v11 init];
  if (v7)
  {
    v8 = geo_dispatch_queue_create_with_qos();
    utilityQueue = v7->_utilityQueue;
    v7->_utilityQueue = v8;

    v7->event.cardType = 14;
    [(GuidesHomeAnalyticsManager *)v7 updateAnalyticsManagerWithGuideLocationId:idCopy isCuratedGuidesHome:homeCopy];
  }

  return v7;
}

@end