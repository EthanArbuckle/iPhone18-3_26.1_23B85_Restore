@interface BKAnalyticsSessionHost
- (BKAnalyticsSessionHost)initWithAnalyticsManager:(id)a3;
- (id)contentPrivateIDForContentID:(id)a3;
- (id)contentUserIDForContentID:(id)a3;
- (id)keyWindowAnalyticsTracker;
- (id)primaryAnalyticsController;
- (void)listeningSessionWillEnd;
- (void)playSessionDidEnd:(id)a3 playTime:(double)a4;
- (void)readSessionDidEnd:(id)a3 readTime:(double)a4;
@end

@implementation BKAnalyticsSessionHost

- (BKAnalyticsSessionHost)initWithAnalyticsManager:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = BKAnalyticsSessionHost;
  v5 = [(BKAnalyticsSessionHost *)&v7 init];
  if (v5)
  {
    if (!v4)
    {
      sub_100791DB8();
    }

    [(BKAnalyticsSessionHost *)v5 setAnalyticsManager:v4];
  }

  return v5;
}

- (id)primaryAnalyticsController
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 primaryAnalyticsController];

  return v3;
}

- (id)keyWindowAnalyticsTracker
{
  v2 = +[BKAppDelegate delegate];
  v3 = [v2 keyWindowAnalyticsTracker];

  return v3;
}

- (void)listeningSessionWillEnd
{
  v3 = +[UIApplication sharedApplication];
  v4 = [v3 applicationState];

  if (v4 == 2)
  {
    v5 = [(BKAnalyticsSessionHost *)self analyticsManager];
    v7 = [v5 analyticsController];

    v6 = [v7 applicationTracker];
    [v6 pushSessionEndReasonDataWithReason:2 file:@"/Library/Caches/com.apple.xbs/Sources/Alder/ios/BKAnalyticsSessionHost.m" line:56];
  }
}

- (void)playSessionDidEnd:(id)a3 playTime:(double)a4
{
  v10 = a3;
  if ([v10 length])
  {
    v6 = [(BKAnalyticsSessionHost *)self analyticsManager];
    [v6 analyticsAccumulatedListenTime];
    [v6 setAnalyticsAccumulatedListenTime:v7 + a4];

    v8 = [(BKAnalyticsSessionHost *)self analyticsManager];
    v9 = [v8 analyticsAccumulatedListenIDs];
    [v9 addObject:v10];
  }
}

- (void)readSessionDidEnd:(id)a3 readTime:(double)a4
{
  v10 = a3;
  if ([v10 length])
  {
    v6 = [(BKAnalyticsSessionHost *)self analyticsManager];
    [v6 analyticsAccumulatedReadTime];
    [v6 setAnalyticsAccumulatedReadTime:v7 + a4];

    v8 = [(BKAnalyticsSessionHost *)self analyticsManager];
    v9 = [v8 analyticsAccumulatedReadIDs];
    [v9 addObject:v10];
  }
}

- (id)contentPrivateIDForContentID:(id)a3
{
  v4 = a3;
  v5 = [(BKAnalyticsSessionHost *)self analyticsManager];
  v6 = [v5 analyticsController];
  v7 = [v6 contentPrivateIDForContentID:v4];

  return v7;
}

- (id)contentUserIDForContentID:(id)a3
{
  v4 = a3;
  v5 = [(BKAnalyticsSessionHost *)self analyticsManager];
  v6 = [v5 analyticsController];
  v7 = [v6 contentUserIDForContentID:v4];

  return v7;
}

@end