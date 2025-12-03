@interface PublisherAnalyticsManager
- (PublisherAnalyticsManager)initWithPublisherId:(id)id usingAttribution:(id)attribution;
- (void)cleanUp;
- (void)logEvent;
- (void)publisherCollectionTapped:(id)tapped atIndex:(unint64_t)index isCurrentlySaved:(BOOL)saved;
- (void)publisherCollectionsScrolledDown;
- (void)publisherCollectionsScrolledUp;
- (void)publisherFilterTappedWithValue:(id)value atIndex:(unint64_t)index;
- (void)publisherHeaderAppButtonTapped;
- (void)publisherHeaderCloseButtonTapped;
- (void)publisherHeaderShareButtonTapped;
- (void)publisherHeaderWebsiteButtonTapped;
- (void)publisherTrayRevealed;
- (void)publisherTryAgainTapped;
@end

@implementation PublisherAnalyticsManager

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
}

- (void)logEvent
{
  action = self->event.action;
  target = self->event.target;
  value = self->event.value;
  publisherId = self->event.publisherId;
  v6 = [NSArray arrayWithObjects:&publisherId count:1];
  collectionId = self->event.collectionId;
  v10 = *&self->event.collectionCurrentlySaved;
  horizontalIndex = self->event.horizontalIndex;
  v9 = [NSNumber numberWithInt:self->event.cardType];
  [GEOAPPortal captureCuratedCollectionUserAction:action target:target value:value publisherId:v6 following:0 collectionId:collectionId collectionCategory:0 collectionCurrentlySaved:v10 verticalIndex:horizontalIndex horizontalIndex:v9 placeCardType:self->event.possibleActions possibleActions:self->event.impossibleActions impossibleActions:0 modules:?];
}

- (void)publisherTryAgainTapped
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 2171;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherCollectionTapped:(id)tapped atIndex:(unint64_t)index isCurrentlySaved:(BOOL)saved
{
  savedCopy = saved;
  tappedCopy = tapped;
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 2099;
  muid = [tappedCopy muid];

  v10 = [NSNumber numberWithUnsignedLongLong:muid];
  collectionId = self->event.collectionId;
  self->event.collectionId = v10;

  v12 = [NSNumber numberWithBool:savedCopy];
  collectionCurrentlySaved = self->event.collectionCurrentlySaved;
  self->event.collectionCurrentlySaved = v12;

  v14 = [NSNumber numberWithUnsignedInteger:index];
  verticalIndex = self->event.verticalIndex;
  self->event.verticalIndex = v14;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherFilterTappedWithValue:(id)value atIndex:(unint64_t)index
{
  valueCopy = value;
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 49;
  value = self->event.value;
  self->event.value = valueCopy;
  v8 = valueCopy;

  v9 = [NSNumber numberWithUnsignedInteger:index];
  horizontalIndex = self->event.horizontalIndex;
  self->event.horizontalIndex = v9;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherCollectionsScrolledUp
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 7;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherCollectionsScrolledDown
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 8;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherHeaderCloseButtonTapped
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 4;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherHeaderWebsiteButtonTapped
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 2170;
  v6 = [NSNumber numberWithInt:2103];
  applicationAdamId = [(GEOCollectionPublisherAttribution *)self->_attribution applicationAdamId];
  v4 = 72;
  if (!applicationAdamId)
  {
    v4 = 80;
  }

  [*(&self->super.isa + v4) addObject:v6];

  v5 = [NSNumber numberWithInt:2097];
  [(NSMutableArray *)self->event.possibleActions addObject:v5];
  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherHeaderShareButtonTapped
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 2097;
  v8 = [NSNumber numberWithInt:2103];
  applicationAdamId = [(GEOCollectionPublisherAttribution *)self->_attribution applicationAdamId];
  if (applicationAdamId)
  {
    v4 = 72;
  }

  else
  {
    v4 = 80;
  }

  [*(&self->super.isa + v4) addObject:v8];

  v5 = [NSNumber numberWithInt:2170];
  websiteURL = [(GEOCollectionPublisherAttribution *)self->_attribution websiteURL];
  if (websiteURL)
  {
    v7 = 72;
  }

  else
  {
    v7 = 80;
  }

  [*(&self->super.isa + v7) addObject:v5];

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherHeaderAppButtonTapped
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 2103;
  v6 = [NSNumber numberWithInt:2170];
  websiteURL = [(GEOCollectionPublisherAttribution *)self->_attribution websiteURL];
  v4 = 72;
  if (!websiteURL)
  {
    v4 = 80;
  }

  [*(&self->super.isa + v4) addObject:v6];

  v5 = [NSNumber numberWithInt:2097];
  [(NSMutableArray *)self->event.possibleActions addObject:v5];
  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherTrayRevealed
{
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 21;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (PublisherAnalyticsManager)initWithPublisherId:(id)id usingAttribution:(id)attribution
{
  idCopy = id;
  attributionCopy = attribution;
  v13.receiver = self;
  v13.super_class = PublisherAnalyticsManager;
  v8 = [(PublisherAnalyticsManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    *&v8->event.target = 0xE00000105;
    v10 = [[NSNumber alloc] initWithUnsignedLongLong:{objc_msgSend(idCopy, "muid")}];
    publisherId = v9->event.publisherId;
    v9->event.publisherId = v10;

    objc_storeStrong(&v9->_attribution, attribution);
  }

  return v9;
}

@end