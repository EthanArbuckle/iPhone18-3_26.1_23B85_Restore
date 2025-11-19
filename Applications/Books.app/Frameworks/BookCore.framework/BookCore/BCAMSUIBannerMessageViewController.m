@interface BCAMSUIBannerMessageViewController
- (BCAMSUIBannerMessageViewController)initWithRequest:(id)a3 placement:(id)a4;
- (id)messageId;
- (id)messagePlacement;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityDidDisappear;
- (void)bc_startImpressionEventTracking;
- (void)bc_submitImpressionEvent;
- (void)reportActionTriggered:(id)a3;
- (void)setIsOnScreen:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation BCAMSUIBannerMessageViewController

- (BCAMSUIBannerMessageViewController)initWithRequest:(id)a3 placement:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(BCAMSUIBannerMessageViewController *)self initWithRequest:v6];
  v9 = v8;
  if (v8)
  {
    [(BCAMSUIBannerMessageViewController *)v8 setPlacement:v7];
    [(BCAMSUIBannerMessageViewController *)v9 setBc_request:v6];
    v9->_isOnScreen = 1;
  }

  return v9;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBannerMessageViewController;
  [(BCAMSUIBannerMessageViewController *)&v4 viewDidAppear:a3];
  [(BCAMSUIBannerMessageViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBannerMessageViewController;
  [(BCAMSUIBannerMessageViewController *)&v4 viewWillDisappear:a3];
  [(BCAMSUIBannerMessageViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)setIsOnScreen:(BOOL)a3
{
  if ([(BCAMSUIBannerMessageViewController *)self isOnScreen]!= a3)
  {
    self->_isOnScreen = a3;
    if ([(BCAMSUIBannerMessageViewController *)self bc_analyticsVisibility])
    {
      if (!self->_isOnScreen || ([(BCAMSUIBannerMessageViewController *)self bc_startImpressionEventTracking], !self->_isOnScreen))
      {

        [(BCAMSUIBannerMessageViewController *)self bc_submitImpressionEvent];
      }
    }
  }
}

- (void)reportActionTriggered:(id)a3
{
  v15 = a3;
  v4 = [(BCAMSUIBannerMessageViewController *)self ba_effectiveAnalyticsTracker];
  if (v4)
  {
    v5 = [(BCAMSUIBannerMessageViewController *)self bc_request];
    v6 = sub_B4B00(v5);

    v7 = +[BAEventReporter sharedReporter];
    v8 = [v15 deepLink];
    v9 = [v8 absoluteString];
    v10 = [(BCAMSUIBannerMessageViewController *)self presentingViewController];
    if (v10)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    v12 = [(BCAMSUIBannerMessageViewController *)self messageId];
    v13 = [v6 count] != 0;
    v14 = [(BCAMSUIBannerMessageViewController *)self placement];
    [v7 emitUnifiedMessageActionEventWithTracker:v4 startDate:v9 messageType:v11 messageIdentifier:v12 hasActionable:v13 actionIdentifier:v6 placementName:v14];
  }
}

- (void)bc_analyticsVisibilityDidAppear
{
  v3.receiver = self;
  v3.super_class = BCAMSUIBannerMessageViewController;
  [(BCAMSUIBannerMessageViewController *)&v3 bc_analyticsVisibilityDidAppear];
  if ([(BCAMSUIBannerMessageViewController *)self isOnScreen])
  {
    [(BCAMSUIBannerMessageViewController *)self bc_startImpressionEventTracking];
  }
}

- (void)bc_analyticsVisibilityDidDisappear
{
  v3.receiver = self;
  v3.super_class = BCAMSUIBannerMessageViewController;
  [(BCAMSUIBannerMessageViewController *)&v3 bc_analyticsVisibilityDidDisappear];
  if ([(BCAMSUIBannerMessageViewController *)self isOnScreen])
  {
    [(BCAMSUIBannerMessageViewController *)self bc_submitImpressionEvent];
  }
}

- (void)bc_startImpressionEventTracking
{
  v3 = +[NSDate now];
  [(BCAMSUIBannerMessageViewController *)self setImpressionStartTime:v3];
}

- (void)bc_submitImpressionEvent
{
  v13 = [(BCAMSUIBannerMessageViewController *)self ba_effectiveAnalyticsTracker];
  if (v13)
  {
    v3 = [(BCAMSUIBannerMessageViewController *)self impressionStartTime];

    if (v3)
    {
      v4 = [(BCAMSUIBannerMessageViewController *)self bc_request];
      v5 = sub_B4B00(v4);

      v6 = +[BAEventReporter sharedReporter];
      v7 = [(BCAMSUIBannerMessageViewController *)self impressionStartTime];
      v8 = [(BCAMSUIBannerMessageViewController *)self presentingViewController];
      if (v8)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      v10 = [(BCAMSUIBannerMessageViewController *)self messageId];
      v11 = [v5 count] != 0;
      v12 = [(BCAMSUIBannerMessageViewController *)self placement];
      [v6 emitUnifiedMessageExposureEventWithTracker:v13 startDate:v7 messageType:v9 messageIdentifier:v10 hasActionable:v11 actionIdentifier:v5 placementName:v12];
    }
  }

  [(BCAMSUIBannerMessageViewController *)self setImpressionStartTime:0];
}

- (id)messageId
{
  v2 = [(BCAMSUIBannerMessageViewController *)self bc_request];
  v3 = [v2 metricsEvent];
  v4 = [v3 underlyingDictionary];
  v5 = [v4 objectForKeyedSubscript:@"messageId"];

  return v5;
}

- (id)messagePlacement
{
  v2 = [(BCAMSUIBannerMessageViewController *)self bc_request];
  v3 = [v2 metricsEvent];
  v4 = [v3 underlyingDictionary];
  v5 = [v4 objectForKeyedSubscript:@"placement"];

  return v5;
}

@end