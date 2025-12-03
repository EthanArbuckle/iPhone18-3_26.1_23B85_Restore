@interface SpotlightIndexMonitor
- (SpotlightIndexMonitor)init;
- (void)dealloc;
- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler;
- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler;
@end

@implementation SpotlightIndexMonitor

- (SpotlightIndexMonitor)init
{
  v3 = +[BagService appstoredService];
  v4 = v3;
  if (self)
  {
    v18.receiver = self;
    v18.super_class = SpotlightIndexMonitor;
    v5 = [(SpotlightIndexMonitor *)&v18 init];
    self = v5;
    if (v5)
    {
      objc_storeStrong(&v5->_bagService, v3);
      v6 = [[CSSearchableIndex alloc] initWithName:@"com.apple.appstored.Navigation" bundleIdentifier:@"com.apple.AppStore"];
      navigationIndex = self->_navigationIndex;
      self->_navigationIndex = v6;

      [(CSSearchableIndex *)self->_navigationIndex setIndexDelegate:self];
      objc_initWeak(&location, self);
      v19[0] = @"arcade-in-spotlight-enabled";
      v19[1] = @"language-tag";
      v8 = [NSArray arrayWithObjects:v19 count:2];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1002BCD4C;
      v15[3] = &unk_10051C970;
      objc_copyWeak(&v16, &location);
      v9 = [v4 addChangeObserverLimitedToKeys:v8 observer:v15];
      bagChangedObserverToken = self->_bagChangedObserverToken;
      self->_bagChangedObserverToken = v9;

      bagService = self->_bagService;
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_1002BCDB4;
      v13[3] = &unk_10051DFC8;
      self = self;
      selfCopy = self;
      [(BagService *)bagService recentBagNoTimeoutWithCompletionHandler:v13];

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  return self;
}

- (void)dealloc
{
  [(BagService *)self->_bagService removeChangeObserverWithToken:self->_bagChangedObserverToken];
  [(CSSearchableIndex *)self->_navigationIndex setIndexDelegate:0];
  v3.receiver = self;
  v3.super_class = SpotlightIndexMonitor;
  [(SpotlightIndexMonitor *)&v3 dealloc];
}

- (void)searchableIndex:(id)index reindexAllSearchableItemsWithAcknowledgementHandler:(id)handler
{
  (*(handler + 2))(handler, a2, index);

  sub_1002BD094(self);
}

- (void)searchableIndex:(id)index reindexSearchableItemsWithIdentifiers:(id)identifiers acknowledgementHandler:(id)handler
{
  (*(handler + 2))(handler, a2, index, identifiers);

  sub_1002BD094(self);
}

@end