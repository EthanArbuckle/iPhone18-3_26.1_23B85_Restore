@interface AXSetSwitchControlSwitchIntentResponse
- (AXSetSwitchControlSwitchIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity;
@end

@implementation AXSetSwitchControlSwitchIntentResponse

- (AXSetSwitchControlSwitchIntentResponse)initWithCode:(int64_t)code userActivity:(id)activity
{
  activityCopy = activity;
  v10.receiver = self;
  v10.super_class = AXSetSwitchControlSwitchIntentResponse;
  v7 = [(AXSetSwitchControlSwitchIntentResponse *)&v10 init];
  v8 = v7;
  if (v7)
  {
    v7->_code = code;
    [(AXSetSwitchControlSwitchIntentResponse *)v7 setUserActivity:activityCopy];
  }

  return v8;
}

@end