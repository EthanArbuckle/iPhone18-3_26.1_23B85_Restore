@interface AXUIReachabilityAnimationBehaviorSettings
- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState;
- (AXUIReachabilityAnimationBehaviorSettings)initWithPayload:(id)payload;
@end

@implementation AXUIReachabilityAnimationBehaviorSettings

- (AXUIReachabilityAnimationBehaviorSettings)initWithPayload:(id)payload
{
  payloadCopy = payload;
  v19.receiver = self;
  v19.super_class = AXUIReachabilityAnimationBehaviorSettings;
  v5 = [(AXUIReachabilityAnimationBehaviorSettings *)&v19 init];
  if (v5)
  {
    v6 = [payloadCopy objectForKeyedSubscript:@"trackingDampingRatio"];
    [v6 doubleValue];
    v5->_trackingDampingRatio = v7;

    v8 = [payloadCopy objectForKeyedSubscript:@"dampingRatio"];
    [v8 doubleValue];
    v5->_dampingRatio = v9;

    v10 = [payloadCopy objectForKeyedSubscript:@"trackingResponse"];
    [v10 doubleValue];
    v5->_trackingResponse = v11;

    v12 = [payloadCopy objectForKeyedSubscript:@"response"];
    [v12 doubleValue];
    v5->_response = v13;

    v14 = [payloadCopy objectForKeyedSubscript:@"trackingRetargetImpulse"];
    [v14 doubleValue];
    v5->_trackingRetargetImpulse = v15;

    v16 = [payloadCopy objectForKeyedSubscript:@"retargetImpulse"];
    [v16 doubleValue];
    v5->_retargetImpulse = v17;
  }

  return v5;
}

- ($6E732EA7D3E0C9EC9CEEF7385E7E4683)parametersForTransitionFromState:(SEL)state toState:(int)toState
{
  retstr->var9 = 0.0;
  *&retstr->var5 = 0u;
  *&retstr->var7 = 0u;
  *&retstr->var2 = 0u;
  v5 = 16;
  v6 = 32;
  if (a5 == 1)
  {
    v6 = 24;
  }

  v7 = 48;
  if (a5 == 1)
  {
    v7 = 40;
  }

  v8 = *(&self->var0 + v7);
  v9 = *(&self->var0 + v6);
  if (a5 == 1)
  {
    v5 = 8;
  }

  retstr->var0 = *(&self->var0 + v5);
  retstr->var1 = v9;
  retstr->var10 = v8;
  return self;
}

@end