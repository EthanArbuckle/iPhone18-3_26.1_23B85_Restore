@interface BLSXPCBacklightProxyObserverMask
+ (id)maskForObserver:(id)observer;
- (BLSXPCBacklightProxyObserverMask)initWithCoder:(id)coder;
- (BLSXPCBacklightProxyObserverMask)initWithObserver:(id)observer;
- (BLSXPCBacklightProxyObserverMask)initWithObservingDidCompleteUpdateToState:(BOOL)state observingEventsArray:(BOOL)array didChangeAlwaysOnEnabled:(BOOL)enabled activatingWithEvent:(BOOL)event deactivatingWithEvent:(BOOL)withEvent performingEvent:(BOOL)performingEvent;
- (BLSXPCBacklightProxyObserverMask)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSXPCBacklightProxyObserverMask

+ (id)maskForObserver:(id)observer
{
  observerCopy = observer;
  v5 = [[self alloc] initWithObserver:observerCopy];

  return v5;
}

- (BLSXPCBacklightProxyObserverMask)initWithObservingDidCompleteUpdateToState:(BOOL)state observingEventsArray:(BOOL)array didChangeAlwaysOnEnabled:(BOOL)enabled activatingWithEvent:(BOOL)event deactivatingWithEvent:(BOOL)withEvent performingEvent:(BOOL)performingEvent
{
  v15.receiver = self;
  v15.super_class = BLSXPCBacklightProxyObserverMask;
  result = [(BLSXPCBacklightProxyObserverMask *)&v15 init];
  if (result)
  {
    result->_observingDidCompleteUpdateToState = state;
    result->_observingEventsArray = array;
    result->_observingDidChangeAlwaysOnEnabled = enabled;
    result->_observingActivatingWithEvent = event;
    result->_observingDeactivatingWithEvent = withEvent;
    result->_observingPerformingEvent = performingEvent;
  }

  return result;
}

- (BLSXPCBacklightProxyObserverMask)initWithObserver:(id)observer
{
  observerCopy = observer;
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
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendBool:self->_observingDidCompleteUpdateToState];
  v5 = [builder appendBool:self->_observingEventsArray];
  v6 = [builder appendBool:self->_observingDidChangeAlwaysOnEnabled];
  v7 = [builder appendBool:self->_observingActivatingWithEvent];
  v8 = [builder appendBool:self->_observingDeactivatingWithEvent];
  v9 = [builder appendBool:self->_observingPerformingEvent];
  v10 = [builder hash];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  observingDidCompleteUpdateToState = self->_observingDidCompleteUpdateToState;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __44__BLSXPCBacklightProxyObserverMask_isEqual___block_invoke;
  v38[3] = &unk_278428FA8;
  v7 = equalCopy;
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

- (BLSXPCBacklightProxyObserverMask)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"didUpdateToState" UTF8String];
  uTF8String2 = [@"eventsArray" UTF8String];
  uTF8String3 = [@"alwaysOnEnabled" UTF8String];
  uTF8String4 = [@"activating" UTF8String];
  uTF8String5 = [@"deactivating" UTF8String];
  uTF8String6 = [@"performingEvent" UTF8String];
  v11 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String);
  v12 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String2);
  v13 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String3);
  v14 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String4);
  v15 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String5);
  v16 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String6);

  return [(BLSXPCBacklightProxyObserverMask *)self initWithObservingDidCompleteUpdateToState:v11 observingEventsArray:v12 didChangeAlwaysOnEnabled:v13 activatingWithEvent:v14 deactivatingWithEvent:v15 performingEvent:v16];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  uTF8String = [@"didUpdateToState" UTF8String];
  uTF8String2 = [@"eventsArray" UTF8String];
  uTF8String3 = [@"alwaysOnEnabled" UTF8String];
  uTF8String4 = [@"activating" UTF8String];
  uTF8String5 = [@"deactivating" UTF8String];
  uTF8String6 = [@"performingEvent" UTF8String];
  xpc_dictionary_set_BOOL(xdict, uTF8String, self->_observingDidCompleteUpdateToState);
  xpc_dictionary_set_BOOL(xdict, uTF8String2, self->_observingEventsArray);
  xpc_dictionary_set_BOOL(xdict, uTF8String3, self->_observingDidChangeAlwaysOnEnabled);
  xpc_dictionary_set_BOOL(xdict, uTF8String4, self->_observingActivatingWithEvent);
  xpc_dictionary_set_BOOL(xdict, uTF8String5, self->_observingDeactivatingWithEvent);
  xpc_dictionary_set_BOOL(xdict, uTF8String6, self->_observingPerformingEvent);
}

- (BLSXPCBacklightProxyObserverMask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeBoolForKey:@"didUpdateToState"];
  v6 = [coderCopy decodeBoolForKey:@"eventsArray"];
  v7 = [coderCopy decodeBoolForKey:@"alwaysOnEnabled"];
  v8 = [coderCopy decodeBoolForKey:@"activating"];
  v9 = [coderCopy decodeBoolForKey:@"deactivating"];
  v10 = [coderCopy decodeBoolForKey:@"performingEvent"];

  return [(BLSXPCBacklightProxyObserverMask *)self initWithObservingDidCompleteUpdateToState:v5 observingEventsArray:v6 didChangeAlwaysOnEnabled:v7 activatingWithEvent:v8 deactivatingWithEvent:v9 performingEvent:v10];
}

- (void)encodeWithCoder:(id)coder
{
  observingDidCompleteUpdateToState = self->_observingDidCompleteUpdateToState;
  coderCopy = coder;
  [coderCopy encodeBool:observingDidCompleteUpdateToState forKey:@"didUpdateToState"];
  [coderCopy encodeBool:self->_observingEventsArray forKey:@"eventsArray"];
  [coderCopy encodeBool:self->_observingDidChangeAlwaysOnEnabled forKey:@"alwaysOnEnabled"];
  [coderCopy encodeBool:self->_observingActivatingWithEvent forKey:@"activating"];
  [coderCopy encodeBool:self->_observingDeactivatingWithEvent forKey:@"deactivating"];
  [coderCopy encodeBool:self->_observingPerformingEvent forKey:@"performingEvent"];
}

@end