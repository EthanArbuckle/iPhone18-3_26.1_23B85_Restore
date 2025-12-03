@interface BKAnalyticsSessionHost
- (BKAnalyticsSessionHost)initWithAnalyticsManager:(id)manager;
- (id)contentPrivateIDForContentID:(id)d;
- (id)contentUserIDForContentID:(id)d;
- (id)keyWindowAnalyticsTracker;
- (id)primaryAnalyticsController;
- (void)listeningSessionWillEnd;
- (void)playSessionDidEnd:(id)end playTime:(double)time;
- (void)readSessionDidEnd:(id)end readTime:(double)time;
@end

@implementation BKAnalyticsSessionHost

- (BKAnalyticsSessionHost)initWithAnalyticsManager:(id)manager
{
  managerCopy = manager;
  v7.receiver = self;
  v7.super_class = BKAnalyticsSessionHost;
  v5 = [(BKAnalyticsSessionHost *)&v7 init];
  if (v5)
  {
    if (!managerCopy)
    {
      sub_100791DB8();
    }

    [(BKAnalyticsSessionHost *)v5 setAnalyticsManager:managerCopy];
  }

  return v5;
}

- (id)primaryAnalyticsController
{
  v2 = +[BKAppDelegate delegate];
  primaryAnalyticsController = [v2 primaryAnalyticsController];

  return primaryAnalyticsController;
}

- (id)keyWindowAnalyticsTracker
{
  v2 = +[BKAppDelegate delegate];
  keyWindowAnalyticsTracker = [v2 keyWindowAnalyticsTracker];

  return keyWindowAnalyticsTracker;
}

- (void)listeningSessionWillEnd
{
  v3 = +[UIApplication sharedApplication];
  applicationState = [v3 applicationState];

  if (applicationState == 2)
  {
    analyticsManager = [(BKAnalyticsSessionHost *)self analyticsManager];
    analyticsController = [analyticsManager analyticsController];

    applicationTracker = [analyticsController applicationTracker];
    [applicationTracker pushSessionEndReasonDataWithReason:2 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAnalyticsSessionHost.m" line:56];
  }
}

- (void)playSessionDidEnd:(id)end playTime:(double)time
{
  endCopy = end;
  if ([endCopy length])
  {
    analyticsManager = [(BKAnalyticsSessionHost *)self analyticsManager];
    [analyticsManager analyticsAccumulatedListenTime];
    [analyticsManager setAnalyticsAccumulatedListenTime:v7 + time];

    analyticsManager2 = [(BKAnalyticsSessionHost *)self analyticsManager];
    analyticsAccumulatedListenIDs = [analyticsManager2 analyticsAccumulatedListenIDs];
    [analyticsAccumulatedListenIDs addObject:endCopy];
  }
}

- (void)readSessionDidEnd:(id)end readTime:(double)time
{
  endCopy = end;
  if ([endCopy length])
  {
    analyticsManager = [(BKAnalyticsSessionHost *)self analyticsManager];
    [analyticsManager analyticsAccumulatedReadTime];
    [analyticsManager setAnalyticsAccumulatedReadTime:v7 + time];

    analyticsManager2 = [(BKAnalyticsSessionHost *)self analyticsManager];
    analyticsAccumulatedReadIDs = [analyticsManager2 analyticsAccumulatedReadIDs];
    [analyticsAccumulatedReadIDs addObject:endCopy];
  }
}

- (id)contentPrivateIDForContentID:(id)d
{
  dCopy = d;
  analyticsManager = [(BKAnalyticsSessionHost *)self analyticsManager];
  analyticsController = [analyticsManager analyticsController];
  v7 = [analyticsController contentPrivateIDForContentID:dCopy];

  return v7;
}

- (id)contentUserIDForContentID:(id)d
{
  dCopy = d;
  analyticsManager = [(BKAnalyticsSessionHost *)self analyticsManager];
  analyticsController = [analyticsManager analyticsController];
  v7 = [analyticsController contentUserIDForContentID:dCopy];

  return v7;
}

@end