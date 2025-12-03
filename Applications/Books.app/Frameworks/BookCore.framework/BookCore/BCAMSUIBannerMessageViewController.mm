@interface BCAMSUIBannerMessageViewController
- (BCAMSUIBannerMessageViewController)initWithRequest:(id)request placement:(id)placement;
- (id)messageId;
- (id)messagePlacement;
- (void)bc_analyticsVisibilityDidAppear;
- (void)bc_analyticsVisibilityDidDisappear;
- (void)bc_startImpressionEventTracking;
- (void)bc_submitImpressionEvent;
- (void)reportActionTriggered:(id)triggered;
- (void)setIsOnScreen:(BOOL)screen;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation BCAMSUIBannerMessageViewController

- (BCAMSUIBannerMessageViewController)initWithRequest:(id)request placement:(id)placement
{
  requestCopy = request;
  placementCopy = placement;
  v8 = [(BCAMSUIBannerMessageViewController *)self initWithRequest:requestCopy];
  v9 = v8;
  if (v8)
  {
    [(BCAMSUIBannerMessageViewController *)v8 setPlacement:placementCopy];
    [(BCAMSUIBannerMessageViewController *)v9 setBc_request:requestCopy];
    v9->_isOnScreen = 1;
  }

  return v9;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBannerMessageViewController;
  [(BCAMSUIBannerMessageViewController *)&v4 viewDidAppear:appear];
  [(BCAMSUIBannerMessageViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBannerMessageViewController;
  [(BCAMSUIBannerMessageViewController *)&v4 viewWillDisappear:disappear];
  [(BCAMSUIBannerMessageViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)setIsOnScreen:(BOOL)screen
{
  if ([(BCAMSUIBannerMessageViewController *)self isOnScreen]!= screen)
  {
    self->_isOnScreen = screen;
    if ([(BCAMSUIBannerMessageViewController *)self bc_analyticsVisibility])
    {
      if (!self->_isOnScreen || ([(BCAMSUIBannerMessageViewController *)self bc_startImpressionEventTracking], !self->_isOnScreen))
      {

        [(BCAMSUIBannerMessageViewController *)self bc_submitImpressionEvent];
      }
    }
  }
}

- (void)reportActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  ba_effectiveAnalyticsTracker = [(BCAMSUIBannerMessageViewController *)self ba_effectiveAnalyticsTracker];
  if (ba_effectiveAnalyticsTracker)
  {
    bc_request = [(BCAMSUIBannerMessageViewController *)self bc_request];
    v6 = sub_B4B00(bc_request);

    v7 = +[BAEventReporter sharedReporter];
    deepLink = [triggeredCopy deepLink];
    absoluteString = [deepLink absoluteString];
    presentingViewController = [(BCAMSUIBannerMessageViewController *)self presentingViewController];
    if (presentingViewController)
    {
      v11 = 2;
    }

    else
    {
      v11 = 3;
    }

    messageId = [(BCAMSUIBannerMessageViewController *)self messageId];
    v13 = [v6 count] != 0;
    placement = [(BCAMSUIBannerMessageViewController *)self placement];
    [v7 emitUnifiedMessageActionEventWithTracker:ba_effectiveAnalyticsTracker startDate:absoluteString messageType:v11 messageIdentifier:messageId hasActionable:v13 actionIdentifier:v6 placementName:placement];
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
  ba_effectiveAnalyticsTracker = [(BCAMSUIBannerMessageViewController *)self ba_effectiveAnalyticsTracker];
  if (ba_effectiveAnalyticsTracker)
  {
    impressionStartTime = [(BCAMSUIBannerMessageViewController *)self impressionStartTime];

    if (impressionStartTime)
    {
      bc_request = [(BCAMSUIBannerMessageViewController *)self bc_request];
      v5 = sub_B4B00(bc_request);

      v6 = +[BAEventReporter sharedReporter];
      impressionStartTime2 = [(BCAMSUIBannerMessageViewController *)self impressionStartTime];
      presentingViewController = [(BCAMSUIBannerMessageViewController *)self presentingViewController];
      if (presentingViewController)
      {
        v9 = 2;
      }

      else
      {
        v9 = 3;
      }

      messageId = [(BCAMSUIBannerMessageViewController *)self messageId];
      v11 = [v5 count] != 0;
      placement = [(BCAMSUIBannerMessageViewController *)self placement];
      [v6 emitUnifiedMessageExposureEventWithTracker:ba_effectiveAnalyticsTracker startDate:impressionStartTime2 messageType:v9 messageIdentifier:messageId hasActionable:v11 actionIdentifier:v5 placementName:placement];
    }
  }

  [(BCAMSUIBannerMessageViewController *)self setImpressionStartTime:0];
}

- (id)messageId
{
  bc_request = [(BCAMSUIBannerMessageViewController *)self bc_request];
  metricsEvent = [bc_request metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];
  v5 = [underlyingDictionary objectForKeyedSubscript:@"messageId"];

  return v5;
}

- (id)messagePlacement
{
  bc_request = [(BCAMSUIBannerMessageViewController *)self bc_request];
  metricsEvent = [bc_request metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];
  v5 = [underlyingDictionary objectForKeyedSubscript:@"placement"];

  return v5;
}

@end