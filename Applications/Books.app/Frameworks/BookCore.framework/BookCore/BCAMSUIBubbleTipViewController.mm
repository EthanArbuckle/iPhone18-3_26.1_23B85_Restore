@interface BCAMSUIBubbleTipViewController
- (BCAMSUIBubbleTipViewController)initWithRequest:(id)request placement:(id)placement messageType:(int64_t)type;
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

@implementation BCAMSUIBubbleTipViewController

- (BCAMSUIBubbleTipViewController)initWithRequest:(id)request placement:(id)placement messageType:(int64_t)type
{
  requestCopy = request;
  placementCopy = placement;
  v10 = [(BCAMSUIBubbleTipViewController *)self initWithRequest:requestCopy];
  v11 = v10;
  if (v10)
  {
    [(BCAMSUIBubbleTipViewController *)v10 setPlacement:placementCopy];
    [(BCAMSUIBubbleTipViewController *)v11 setBc_request:requestCopy];
    [(BCAMSUIBubbleTipViewController *)v11 setMessageType:type];
    v11->_isOnScreen = 1;
  }

  return v11;
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBubbleTipViewController;
  [(BCAMSUIBubbleTipViewController *)&v4 viewDidAppear:appear];
  [(BCAMSUIBubbleTipViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBubbleTipViewController;
  [(BCAMSUIBubbleTipViewController *)&v4 viewWillDisappear:disappear];
  [(BCAMSUIBubbleTipViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)setIsOnScreen:(BOOL)screen
{
  if ([(BCAMSUIBubbleTipViewController *)self isOnScreen]!= screen)
  {
    self->_isOnScreen = screen;
    if ([(BCAMSUIBubbleTipViewController *)self bc_analyticsVisibility])
    {
      if (!self->_isOnScreen || ([(BCAMSUIBubbleTipViewController *)self bc_startImpressionEventTracking], !self->_isOnScreen))
      {

        [(BCAMSUIBubbleTipViewController *)self bc_submitImpressionEvent];
      }
    }
  }
}

- (void)reportActionTriggered:(id)triggered
{
  triggeredCopy = triggered;
  ba_effectiveAnalyticsTracker = [(BCAMSUIBubbleTipViewController *)self ba_effectiveAnalyticsTracker];
  if (ba_effectiveAnalyticsTracker)
  {
    if ([(BCAMSUIBubbleTipViewController *)self messageType]== &dword_4 + 2)
    {
      presentingViewController = [(BCAMSUIBubbleTipViewController *)self presentingViewController];
      [(BCAMSUIBubbleTipViewController *)self setMessageType:presentingViewController == 0];
    }

    bc_request = [(BCAMSUIBubbleTipViewController *)self bc_request];
    v7 = sub_B4B00(bc_request);

    v8 = +[BAEventReporter sharedReporter];
    deepLink = [triggeredCopy deepLink];
    absoluteString = [deepLink absoluteString];
    messageType = [(BCAMSUIBubbleTipViewController *)self messageType];
    messageId = [(BCAMSUIBubbleTipViewController *)self messageId];
    v13 = [v7 count] != 0;
    placement = [(BCAMSUIBubbleTipViewController *)self placement];
    [v8 emitUnifiedMessageActionEventWithTracker:ba_effectiveAnalyticsTracker startDate:absoluteString messageType:messageType messageIdentifier:messageId hasActionable:v13 actionIdentifier:v7 placementName:placement];
  }
}

- (void)bc_analyticsVisibilityDidAppear
{
  v3.receiver = self;
  v3.super_class = BCAMSUIBubbleTipViewController;
  [(BCAMSUIBubbleTipViewController *)&v3 bc_analyticsVisibilityDidAppear];
  if ([(BCAMSUIBubbleTipViewController *)self isOnScreen])
  {
    [(BCAMSUIBubbleTipViewController *)self bc_startImpressionEventTracking];
  }
}

- (void)bc_analyticsVisibilityDidDisappear
{
  v3.receiver = self;
  v3.super_class = BCAMSUIBubbleTipViewController;
  [(BCAMSUIBubbleTipViewController *)&v3 bc_analyticsVisibilityDidDisappear];
  if ([(BCAMSUIBubbleTipViewController *)self isOnScreen])
  {
    [(BCAMSUIBubbleTipViewController *)self bc_submitImpressionEvent];
  }
}

- (void)bc_startImpressionEventTracking
{
  v3 = +[NSDate now];
  [(BCAMSUIBubbleTipViewController *)self setImpressionStartTime:v3];
}

- (void)bc_submitImpressionEvent
{
  ba_effectiveAnalyticsTracker = [(BCAMSUIBubbleTipViewController *)self ba_effectiveAnalyticsTracker];
  if (ba_effectiveAnalyticsTracker)
  {
    impressionStartTime = [(BCAMSUIBubbleTipViewController *)self impressionStartTime];

    if (impressionStartTime)
    {
      bc_request = [(BCAMSUIBubbleTipViewController *)self bc_request];
      v5 = sub_B4B00(bc_request);

      v6 = +[BAEventReporter sharedReporter];
      impressionStartTime2 = [(BCAMSUIBubbleTipViewController *)self impressionStartTime];
      messageType = [(BCAMSUIBubbleTipViewController *)self messageType];
      messageId = [(BCAMSUIBubbleTipViewController *)self messageId];
      v10 = [v5 count] != 0;
      placement = [(BCAMSUIBubbleTipViewController *)self placement];
      [v6 emitUnifiedMessageExposureEventWithTracker:ba_effectiveAnalyticsTracker startDate:impressionStartTime2 messageType:messageType messageIdentifier:messageId hasActionable:v10 actionIdentifier:v5 placementName:placement];
    }
  }

  [(BCAMSUIBubbleTipViewController *)self setImpressionStartTime:0];
}

- (id)messageId
{
  bc_request = [(BCAMSUIBubbleTipViewController *)self bc_request];
  metricsEvent = [bc_request metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];
  v5 = [underlyingDictionary objectForKeyedSubscript:@"messageId"];

  return v5;
}

- (id)messagePlacement
{
  bc_request = [(BCAMSUIBubbleTipViewController *)self bc_request];
  metricsEvent = [bc_request metricsEvent];
  underlyingDictionary = [metricsEvent underlyingDictionary];
  v5 = [underlyingDictionary objectForKeyedSubscript:@"placement"];

  return v5;
}

@end