@interface BLSBacklightChangeEvent
- (BLSBacklightChangeEvent)initWithCoder:(id)a3;
- (BLSBacklightChangeEvent)initWithEventID:(unint64_t)a3 state:(int64_t)a4 previousState:(int64_t)a5 wasTransitioning:(BOOL)a6 changeRequest:(id)a7;
- (BLSBacklightChangeEvent)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSBacklightChangeEvent

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendUInt64:self->_eventID withName:@"id"];
  v5 = NSStringFromBLSBacklightState(self->_state);
  [v3 appendString:v5 withName:@"state"];

  v6 = NSStringFromBLSBacklightState(self->_previousState);
  [v3 appendString:v6 withName:@"previousState"];

  v7 = [v3 appendBool:self->_transitioning withName:@"->" ifEqualTo:1];
  v8 = [v3 appendObject:self->_changeRequest withName:@"request"];
  v9 = [v3 build];

  return v9;
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __49__BLSBacklightChangeEvent_bls_shortLoggingString__block_invoke;
  v10 = &unk_278428688;
  v11 = self;
  v12 = v3;
  v4 = v3;
  [v4 appendProem:0 block:&v7];
  v5 = [v4 description];

  return v5;
}

void __49__BLSBacklightChangeEvent_bls_shortLoggingString__block_invoke(uint64_t a1)
{
  v3 = *(*(a1 + 32) + 24);
  v2 = *(*(a1 + 32) + 32);
  if (v2 != v3)
  {
    v4 = *(a1 + 40);
    v5 = NSStringFromBLSBacklightState(v2);
    if (*(*(a1 + 32) + 8))
    {
      v6 = @"•->";
    }

    else
    {
      v6 = 0;
    }

    [v4 appendString:v5 withName:v6];

    v2 = *(*(a1 + 32) + 24);
  }

  v7 = *(a1 + 40);
  v8 = NSStringFromBLSBacklightState(v2);
  if (*(*(a1 + 32) + 8))
  {
    v9 = @"-•->";
  }

  else
  {
    v9 = @"->";
  }

  [v7 appendString:v8 withName:v9];

  v14 = *(*(a1 + 32) + 40);
  v10 = *(a1 + 40);
  v11 = [v14 explanation];
  v12 = NSStringFromBLSBacklightChangeSourceEvent([v14 sourceEvent]);
  [v10 appendString:v11 withName:v12];

  v13 = [*(a1 + 40) appendUInt64:*(*(a1 + 32) + 16) withName:0];
}

- (BLSBacklightChangeEvent)initWithEventID:(unint64_t)a3 state:(int64_t)a4 previousState:(int64_t)a5 wasTransitioning:(BOOL)a6 changeRequest:(id)a7
{
  v13 = a7;
  v17.receiver = self;
  v17.super_class = BLSBacklightChangeEvent;
  v14 = [(BLSBacklightChangeEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_eventID = a3;
    v14->_state = a4;
    v14->_previousState = a5;
    v14->_transitioning = a6;
    objc_storeStrong(&v14->_changeRequest, a7);
  }

  return v15;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendUnsignedInteger:self->_eventID];
  v5 = [v3 appendUnsignedInteger:HIDWORD(self->_eventID)];
  v6 = [v3 appendInteger:self->_state];
  v7 = [v3 appendInteger:self->_previousState];
  v8 = [v3 appendBool:self->_transitioning];
  v9 = [v3 appendObject:self->_changeRequest];
  v10 = [v3 hash];

  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      eventID = self->_eventID;
      if (eventID == [(BLSBacklightChangeEvent *)v5 eventID]&& (state = self->_state, state == [(BLSBacklightChangeEvent *)v5 state]) && (previousState = self->_previousState, previousState == [(BLSBacklightChangeEvent *)v5 previousState]) && (transitioning = self->_transitioning, transitioning == [(BLSBacklightChangeEvent *)v5 wasTransitioning]))
      {
        changeRequest = self->_changeRequest;
        v11 = [(BLSBacklightChangeEvent *)v5 changeRequest];
        v12 = [(BLSBacklightChangeRequest *)changeRequest isEqual:v11];
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (BLSBacklightChangeEvent)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [@"id" UTF8String];
  v6 = [@"state" UTF8String];
  v7 = [@"previousState" UTF8String];
  v8 = [@"->" UTF8String];
  v9 = [@"request" UTF8String];
  int64 = xpc_dictionary_get_int64(v4, v5);
  v11 = xpc_dictionary_get_int64(v4, v6);
  v12 = xpc_dictionary_get_int64(v4, v7);
  v13 = xpc_dictionary_get_BOOL(v4, v8);
  v14 = xpc_dictionary_get_dictionary(v4, v9);
  if (v14)
  {
    v15 = [[BLSBacklightChangeRequest alloc] initWithXPCDictionary:v14];
  }

  else
  {
    v16 = bls_backlight_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(BLSBacklightChangeEvent *)v4 initWithXPCDictionary:v16];
    }

    v15 = 0;
  }

  v17 = [(BLSBacklightChangeEvent *)self initWithEventID:int64 state:v11 previousState:v12 wasTransitioning:v13 changeRequest:v15];

  return v17;
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = [@"id" UTF8String];
  v6 = [@"state" UTF8String];
  v7 = [@"previousState" UTF8String];
  v8 = [@"->" UTF8String];
  v9 = [@"request" UTF8String];
  xpc_dictionary_set_int64(v4, v5, self->_eventID);
  xpc_dictionary_set_int64(v4, v6, self->_state);
  xpc_dictionary_set_int64(v4, v7, self->_previousState);
  xpc_dictionary_set_BOOL(v4, v8, self->_transitioning);
  value = xpc_dictionary_create(0, 0, 0);
  [(BLSBacklightChangeRequest *)self->_changeRequest encodeWithXPCDictionary:value];
  xpc_dictionary_set_value(v4, v9, value);
}

- (BLSBacklightChangeEvent)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"id"];
  v6 = [v4 decodeIntegerForKey:@"state"];
  v7 = [v4 decodeIntegerForKey:@"previousState"];
  v8 = [v4 decodeBoolForKey:@"->"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"request"];

  v10 = [(BLSBacklightChangeEvent *)self initWithEventID:v5 state:v6 previousState:v7 wasTransitioning:v8 changeRequest:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  eventID = self->_eventID;
  v5 = a3;
  [v5 encodeInt64:eventID forKey:@"id"];
  [v5 encodeInteger:self->_state forKey:@"state"];
  [v5 encodeInteger:self->_previousState forKey:@"previousState"];
  [v5 encodeBool:self->_transitioning forKey:@"->"];
  [v5 encodeObject:self->_changeRequest forKey:@"request"];
}

- (void)initWithXPCDictionary:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_21FE25000, a2, OS_LOG_TYPE_FAULT, "change request missing from encoding: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end