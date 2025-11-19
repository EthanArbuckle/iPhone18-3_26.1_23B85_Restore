@interface PublisherAnalyticsManager
- (PublisherAnalyticsManager)initWithPublisherId:(id)a3 usingAttribution:(id)a4;
- (void)cleanUp;
- (void)logEvent;
- (void)publisherCollectionTapped:(id)a3 atIndex:(unint64_t)a4 isCurrentlySaved:(BOOL)a5;
- (void)publisherCollectionsScrolledDown;
- (void)publisherCollectionsScrolledUp;
- (void)publisherFilterTappedWithValue:(id)a3 atIndex:(unint64_t)a4;
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

- (void)publisherCollectionTapped:(id)a3 atIndex:(unint64_t)a4 isCurrentlySaved:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 2099;
  v9 = [v8 muid];

  v10 = [NSNumber numberWithUnsignedLongLong:v9];
  collectionId = self->event.collectionId;
  self->event.collectionId = v10;

  v12 = [NSNumber numberWithBool:v5];
  collectionCurrentlySaved = self->event.collectionCurrentlySaved;
  self->event.collectionCurrentlySaved = v12;

  v14 = [NSNumber numberWithUnsignedInteger:a4];
  verticalIndex = self->event.verticalIndex;
  self->event.verticalIndex = v14;

  [(PublisherAnalyticsManager *)self logEvent];
}

- (void)publisherFilterTappedWithValue:(id)a3 atIndex:(unint64_t)a4
{
  v6 = a3;
  [(PublisherAnalyticsManager *)self cleanUp];
  self->event.action = 49;
  value = self->event.value;
  self->event.value = v6;
  v8 = v6;

  v9 = [NSNumber numberWithUnsignedInteger:a4];
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
  v3 = [(GEOCollectionPublisherAttribution *)self->_attribution applicationAdamId];
  v4 = 72;
  if (!v3)
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
  v3 = [(GEOCollectionPublisherAttribution *)self->_attribution applicationAdamId];
  if (v3)
  {
    v4 = 72;
  }

  else
  {
    v4 = 80;
  }

  [*(&self->super.isa + v4) addObject:v8];

  v5 = [NSNumber numberWithInt:2170];
  v6 = [(GEOCollectionPublisherAttribution *)self->_attribution websiteURL];
  if (v6)
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
  v3 = [(GEOCollectionPublisherAttribution *)self->_attribution websiteURL];
  v4 = 72;
  if (!v3)
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

- (PublisherAnalyticsManager)initWithPublisherId:(id)a3 usingAttribution:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = PublisherAnalyticsManager;
  v8 = [(PublisherAnalyticsManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    *&v8->event.target = 0xE00000105;
    v10 = [[NSNumber alloc] initWithUnsignedLongLong:{objc_msgSend(v6, "muid")}];
    publisherId = v9->event.publisherId;
    v9->event.publisherId = v10;

    objc_storeStrong(&v9->_attribution, a4);
  }

  return v9;
}

@end