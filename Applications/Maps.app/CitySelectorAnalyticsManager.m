@interface CitySelectorAnalyticsManager
- (CitySelectorAnalyticsManager)init;
- (void)citySelectorRevealed;
@end

@implementation CitySelectorAnalyticsManager

- (void)citySelectorRevealed
{
  objc_initWeak(&location, self);
  utilityQueue = self->_utilityQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100DB17CC;
  v4[3] = &unk_101661B98;
  objc_copyWeak(&v5, &location);
  dispatch_async(utilityQueue, v4);
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

- (CitySelectorAnalyticsManager)init
{
  v7.receiver = self;
  v7.super_class = CitySelectorAnalyticsManager;
  v2 = [(CitySelectorAnalyticsManager *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->event.target = 27;
    v4 = geo_dispatch_queue_create_with_qos();
    utilityQueue = v3->_utilityQueue;
    v3->_utilityQueue = v4;
  }

  return v3;
}

@end