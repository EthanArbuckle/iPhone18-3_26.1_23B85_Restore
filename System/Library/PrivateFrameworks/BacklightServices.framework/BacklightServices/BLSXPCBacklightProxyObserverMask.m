@interface BLSXPCBacklightProxyObserverMask
+ (id)maskForObserver:(id)a3;
- (BLSXPCBacklightProxyObserverMask)initWithCoder:(id)a3;
- (BLSXPCBacklightProxyObserverMask)initWithObserver:(id)a3;
- (BLSXPCBacklightProxyObserverMask)initWithObservingDidCompleteUpdateToState:(BOOL)a3 observingEventsArray:(BOOL)a4 didChangeAlwaysOnEnabled:(BOOL)a5 activatingWithEvent:(BOOL)a6 deactivatingWithEvent:(BOOL)a7 performingEvent:(BOOL)a8;
- (BLSXPCBacklightProxyObserverMask)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSXPCBacklightProxyObserverMask

+ (id)maskForObserver:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithObserver:v4];

  return v5;
}

- (BLSXPCBacklightProxyObserverMask)initWithObservingDidCompleteUpdateToState:(BOOL)a3 observingEventsArray:(BOOL)a4 didChangeAlwaysOnEnabled:(BOOL)a5 activatingWithEvent:(BOOL)a6 deactivatingWithEvent:(BOOL)a7 performingEvent:(BOOL)a8
{
  v15.receiver = self;
  v15.super_class = BLSXPCBacklightProxyObserverMask;
  result = [(BLSXPCBacklightProxyObserverMask *)&v15 init];
  if (result)
  {
    result->_observingDidCompleteUpdateToState = a3;
    result->_observingEventsArray = a4;
    result->_observingDidChangeAlwaysOnEnabled = a5;
    result->_observingActivatingWithEvent = a6;
    result->_observingDeactivatingWithEvent = a7;
    result->_observingPerformingEvent = a8;
  }

  return result;
}

- (BLSXPCBacklightProxyObserverMask)initWithObserver:(id)a3
{
  v4 = a3;
  v5 = objc_opt_respondsToSelector();
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v6 = objc_opt_respondsToSelector();
  }

  v7 = objc_opt_respondsToSelector();
  v8 = objc_opt_respondsToSelector();
  v9 = objc_opt_respondsToSelector();
  v10 = [(BLSXPCBacklightProxyObserverMask *)self initWithObservingDidCompleteUpdateToState:v6 & 1 observingEventsArray:v5 & 1 didChangeAlwaysOnEnabled:v7 & 1 activatingWithEvent:v8 & 1 deactivatingWithEvent:v9 & 1 performingEvent:objc_opt_respondsToSelector() & 1];

  return v10;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendBool:self->_observingDidCompleteUpdateToState withName:@"didUpdateToState" ifEqualTo:1];
  v5 = [v3 appendBool:self->_observingEventsArray withName:@"eventsArray" ifEqualTo:1];
  v6 = [v3 appendBool:self->_observingDidChangeAlwaysOnEnabled withName:@"alwaysOnEnabled" ifEqualTo:1];
  v7 = [v3 appendBool:self->_observingActivatingWithEvent withName:@"activating" ifEqualTo:1];
  v8 = [v3 appendBool:self->_observingDeactivatingWithEvent withName:@"deactivating" ifEqualTo:1];
  v9 = [v3 appendBool:self->_observingPerformingEvent withName:@"performingEvent" ifEqualTo:1];
  v10 = [v3 build];

  return v10;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendBool:self->_observingDidCompleteUpdateToState];
  v5 = [v3 appendBool:self->_observingEventsArray];
  v6 = [v3 appendBool:self->_observingDidChangeAlwaysOnEnabled];
  v7 = [v3 appendBool:self->_observingActivatingWithEvent];
  v8 = [v3 appendBool:self->_observingDeactivatingWithEvent];
  v9 = [v3 appendBool:self->_observingPerformingEvent];
  v10 = [v3 hash];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:v4 ofExpectedClass:objc_opt_class()];
  observingDidCompleteUpdateToState = self->_observingDidCompleteUpdateToState;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __44__BLSXPCBacklightProxyObserverMask_isEqual___block_invoke;
  v38[3] = &unk_278428FA8;
  v7 = v4;
  v39 = v7;
  v8 = [v5 appendBool:observingDidCompleteUpdateToState counterpart:v38];
  observingEventsArray = self->_observingEventsArray;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __44__BLSXPCBacklightProxyObserverMask_isEqual___block_invoke_2;
  v36[3] = &unk_278428FA8;
  v10 = v7;
  v37 = v10;
  v11 = [v5 appendBool:observingEventsArray counterpart:v36];
  observingDidChangeAlwaysOnEnabled = self->_observingDidChangeAlwaysOnEnabled;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __44__BLSXPCBacklightProxyObserverMask_isEqual___block_invoke_3;
  v34[3] = &unk_278428FA8;
  v13 = v10;
  v35 = v13;
  v14 = [v5 appendBool:observingDidChangeAlwaysOnEnabled counterpart:v34];
  observingActivatingWithEvent = self->_observingActivatingWithEvent;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __44__BLSXPCBacklightProxyObserverMask_isEqual___block_invoke_4;
  v32[3] = &unk_278428FA8;
  v16 = v13;
  v33 = v16;
  v17 = [v5 appendBool:observingActivatingWithEvent counterpart:v32];
  observingDeactivatingWithEvent = self->_observingDeactivatingWithEvent;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __44__BLSXPCBacklightProxyObserverMask_isEqual___block_invoke_5;
  v30[3] = &unk_278428FA8;
  v19 = v16;
  v31 = v19;
  v20 = [v5 appendBool:observingDeactivatingWithEvent counterpart:v30];
  observingPerformingEvent = self->_observingPerformingEvent;
  v25 = MEMORY[0x277D85DD0];
  v26 = 3221225472;
  v27 = __44__BLSXPCBacklightProxyObserverMask_isEqual___block_invoke_6;
  v28 = &unk_278428FA8;
  v29 = v19;
  v22 = v19;
  v23 = [v5 appendBool:observingPerformingEvent counterpart:&v25];
  LOBYTE(observingPerformingEvent) = [v5 isEqual];

  return observingPerformingEvent;
}

- (BLSXPCBacklightProxyObserverMask)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [@"didUpdateToState" UTF8String];
  v6 = [@"eventsArray" UTF8String];
  v7 = [@"alwaysOnEnabled" UTF8String];
  v8 = [@"activating" UTF8String];
  v9 = [@"deactivating" UTF8String];
  v10 = [@"performingEvent" UTF8String];
  v11 = xpc_dictionary_get_BOOL(v4, v5);
  v12 = xpc_dictionary_get_BOOL(v4, v6);
  v13 = xpc_dictionary_get_BOOL(v4, v7);
  v14 = xpc_dictionary_get_BOOL(v4, v8);
  v15 = xpc_dictionary_get_BOOL(v4, v9);
  v16 = xpc_dictionary_get_BOOL(v4, v10);

  return [(BLSXPCBacklightProxyObserverMask *)self initWithObservingDidCompleteUpdateToState:v11 observingEventsArray:v12 didChangeAlwaysOnEnabled:v13 activatingWithEvent:v14 deactivatingWithEvent:v15 performingEvent:v16];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  v4 = [@"didUpdateToState" UTF8String];
  v5 = [@"eventsArray" UTF8String];
  v6 = [@"alwaysOnEnabled" UTF8String];
  v7 = [@"activating" UTF8String];
  v8 = [@"deactivating" UTF8String];
  v9 = [@"performingEvent" UTF8String];
  xpc_dictionary_set_BOOL(xdict, v4, self->_observingDidCompleteUpdateToState);
  xpc_dictionary_set_BOOL(xdict, v5, self->_observingEventsArray);
  xpc_dictionary_set_BOOL(xdict, v6, self->_observingDidChangeAlwaysOnEnabled);
  xpc_dictionary_set_BOOL(xdict, v7, self->_observingActivatingWithEvent);
  xpc_dictionary_set_BOOL(xdict, v8, self->_observingDeactivatingWithEvent);
  xpc_dictionary_set_BOOL(xdict, v9, self->_observingPerformingEvent);
}

- (BLSXPCBacklightProxyObserverMask)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeBoolForKey:@"didUpdateToState"];
  v6 = [v4 decodeBoolForKey:@"eventsArray"];
  v7 = [v4 decodeBoolForKey:@"alwaysOnEnabled"];
  v8 = [v4 decodeBoolForKey:@"activating"];
  v9 = [v4 decodeBoolForKey:@"deactivating"];
  v10 = [v4 decodeBoolForKey:@"performingEvent"];

  return [(BLSXPCBacklightProxyObserverMask *)self initWithObservingDidCompleteUpdateToState:v5 observingEventsArray:v6 didChangeAlwaysOnEnabled:v7 activatingWithEvent:v8 deactivatingWithEvent:v9 performingEvent:v10];
}

- (void)encodeWithCoder:(id)a3
{
  observingDidCompleteUpdateToState = self->_observingDidCompleteUpdateToState;
  v5 = a3;
  [v5 encodeBool:observingDidCompleteUpdateToState forKey:@"didUpdateToState"];
  [v5 encodeBool:self->_observingEventsArray forKey:@"eventsArray"];
  [v5 encodeBool:self->_observingDidChangeAlwaysOnEnabled forKey:@"alwaysOnEnabled"];
  [v5 encodeBool:self->_observingActivatingWithEvent forKey:@"activating"];
  [v5 encodeBool:self->_observingDeactivatingWithEvent forKey:@"deactivating"];
  [v5 encodeBool:self->_observingPerformingEvent forKey:@"performingEvent"];
}

@end