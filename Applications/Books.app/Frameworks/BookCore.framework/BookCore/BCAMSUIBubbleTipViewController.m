@interface BCAMSUIBubbleTipViewController
- (BCAMSUIBubbleTipViewController)initWithRequest:(id)a3 placement:(id)a4 messageType:(int64_t)a5;
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

@implementation BCAMSUIBubbleTipViewController

- (BCAMSUIBubbleTipViewController)initWithRequest:(id)a3 placement:(id)a4 messageType:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [(BCAMSUIBubbleTipViewController *)self initWithRequest:v8];
  v11 = v10;
  if (v10)
  {
    [(BCAMSUIBubbleTipViewController *)v10 setPlacement:v9];
    [(BCAMSUIBubbleTipViewController *)v11 setBc_request:v8];
    [(BCAMSUIBubbleTipViewController *)v11 setMessageType:a5];
    v11->_isOnScreen = 1;
  }

  return v11;
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBubbleTipViewController;
  [(BCAMSUIBubbleTipViewController *)&v4 viewDidAppear:a3];
  [(BCAMSUIBubbleTipViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = BCAMSUIBubbleTipViewController;
  [(BCAMSUIBubbleTipViewController *)&v4 viewWillDisappear:a3];
  [(BCAMSUIBubbleTipViewController *)self bc_analyticsVisibilityUpdateSubtree];
}

- (void)setIsOnScreen:(BOOL)a3
{
  if ([(BCAMSUIBubbleTipViewController *)self isOnScreen]!= a3)
  {
    self->_isOnScreen = a3;
    if ([(BCAMSUIBubbleTipViewController *)self bc_analyticsVisibility])
    {
      if (!self->_isOnScreen || ([(BCAMSUIBubbleTipViewController *)self bc_startImpressionEventTracking], !self->_isOnScreen))
      {

        [(BCAMSUIBubbleTipViewController *)self bc_submitImpressionEvent];
      }
    }
  }
}

- (void)reportActionTriggered:(id)a3
{
  v15 = a3;
  v4 = [(BCAMSUIBubbleTipViewController *)self ba_effectiveAnalyticsTracker];
  if (v4)
  {
    if ([(BCAMSUIBubbleTipViewController *)self messageType]== &dword_4 + 2)
    {
      v5 = [(BCAMSUIBubbleTipViewController *)self presentingViewController];
      [(BCAMSUIBubbleTipViewController *)self setMessageType:v5 == 0];
    }

    v6 = [(BCAMSUIBubbleTipViewController *)self bc_request];
    v7 = sub_B4B00(v6);

    v8 = +[BAEventReporter sharedReporter];
    v9 = [v15 deepLink];
    v10 = [v9 absoluteString];
    v11 = [(BCAMSUIBubbleTipViewController *)self messageType];
    v12 = [(BCAMSUIBubbleTipViewController *)self messageId];
    v13 = [v7 count] != 0;
    v14 = [(BCAMSUIBubbleTipViewController *)self placement];
    [v8 emitUnifiedMessageActionEventWithTracker:v4 startDate:v10 messageType:v11 messageIdentifier:v12 hasActionable:v13 actionIdentifier:v7 placementName:v14];
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
  v12 = [(BCAMSUIBubbleTipViewController *)self ba_effectiveAnalyticsTracker];
  if (v12)
  {
    v3 = [(BCAMSUIBubbleTipViewController *)self impressionStartTime];

    if (v3)
    {
      v4 = [(BCAMSUIBubbleTipViewController *)self bc_request];
      v5 = sub_B4B00(v4);

      v6 = +[BAEventReporter sharedReporter];
      v7 = [(BCAMSUIBubbleTipViewController *)self impressionStartTime];
      v8 = [(BCAMSUIBubbleTipViewController *)self messageType];
      v9 = [(BCAMSUIBubbleTipViewController *)self messageId];
      v10 = [v5 count] != 0;
      v11 = [(BCAMSUIBubbleTipViewController *)self placement];
      [v6 emitUnifiedMessageExposureEventWithTracker:v12 startDate:v7 messageType:v8 messageIdentifier:v9 hasActionable:v10 actionIdentifier:v5 placementName:v11];
    }
  }

  [(BCAMSUIBubbleTipViewController *)self setImpressionStartTime:0];
}

- (id)messageId
{
  v2 = [(BCAMSUIBubbleTipViewController *)self bc_request];
  v3 = [v2 metricsEvent];
  v4 = [v3 underlyingDictionary];
  v5 = [v4 objectForKeyedSubscript:@"messageId"];

  return v5;
}

- (id)messagePlacement
{
  v2 = [(BCAMSUIBubbleTipViewController *)self bc_request];
  v3 = [v2 metricsEvent];
  v4 = [v3 underlyingDictionary];
  v5 = [v4 objectForKeyedSubscript:@"placement"];

  return v5;
}

@end