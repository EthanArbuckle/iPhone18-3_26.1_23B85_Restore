@interface BLSBacklightChangeEvent
- (BLSBacklightChangeEvent)initWithCoder:(id)coder;
- (BLSBacklightChangeEvent)initWithEventID:(unint64_t)d state:(int64_t)state previousState:(int64_t)previousState wasTransitioning:(BOOL)transitioning changeRequest:(id)request;
- (BLSBacklightChangeEvent)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)bls_shortLoggingString;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
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
  build = [v3 build];

  return build;
}

- (id)bls_shortLoggingString
{
  v3 = objc_opt_new();
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __49__BLSBacklightChangeEvent_bls_shortLoggingString__block_invoke;
  v10 = &unk_278428688;
  selfCopy = self;
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

- (BLSBacklightChangeEvent)initWithEventID:(unint64_t)d state:(int64_t)state previousState:(int64_t)previousState wasTransitioning:(BOOL)transitioning changeRequest:(id)request
{
  requestCopy = request;
  v17.receiver = self;
  v17.super_class = BLSBacklightChangeEvent;
  v14 = [(BLSBacklightChangeEvent *)&v17 init];
  v15 = v14;
  if (v14)
  {
    v14->_eventID = d;
    v14->_state = state;
    v14->_previousState = previousState;
    v14->_transitioning = transitioning;
    objc_storeStrong(&v14->_changeRequest, request);
  }

  return v15;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendUnsignedInteger:self->_eventID];
  v5 = [builder appendUnsignedInteger:HIDWORD(self->_eventID)];
  v6 = [builder appendInteger:self->_state];
  v7 = [builder appendInteger:self->_previousState];
  v8 = [builder appendBool:self->_transitioning];
  v9 = [builder appendObject:self->_changeRequest];
  v10 = [builder hash];

  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v12 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      eventID = self->_eventID;
      if (eventID == [(BLSBacklightChangeEvent *)v5 eventID]&& (state = self->_state, state == [(BLSBacklightChangeEvent *)v5 state]) && (previousState = self->_previousState, previousState == [(BLSBacklightChangeEvent *)v5 previousState]) && (transitioning = self->_transitioning, transitioning == [(BLSBacklightChangeEvent *)v5 wasTransitioning]))
      {
        changeRequest = self->_changeRequest;
        changeRequest = [(BLSBacklightChangeEvent *)v5 changeRequest];
        v12 = [(BLSBacklightChangeRequest *)changeRequest isEqual:changeRequest];
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

- (BLSBacklightChangeEvent)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"id" UTF8String];
  uTF8String2 = [@"state" UTF8String];
  uTF8String3 = [@"previousState" UTF8String];
  uTF8String4 = [@"->" UTF8String];
  uTF8String5 = [@"request" UTF8String];
  int64 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String);
  v11 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String2);
  v12 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String3);
  v13 = xpc_dictionary_get_BOOL(dictionaryCopy, uTF8String4);
  v14 = xpc_dictionary_get_dictionary(dictionaryCopy, uTF8String5);
  if (v14)
  {
    v15 = [[BLSBacklightChangeRequest alloc] initWithXPCDictionary:v14];
  }

  else
  {
    v16 = bls_backlight_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
    {
      [(BLSBacklightChangeEvent *)dictionaryCopy initWithXPCDictionary:v16];
    }

    v15 = 0;
  }

  v17 = [(BLSBacklightChangeEvent *)self initWithEventID:int64 state:v11 previousState:v12 wasTransitioning:v13 changeRequest:v15];

  return v17;
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"id" UTF8String];
  uTF8String2 = [@"state" UTF8String];
  uTF8String3 = [@"previousState" UTF8String];
  uTF8String4 = [@"->" UTF8String];
  uTF8String5 = [@"request" UTF8String];
  xpc_dictionary_set_int64(dictionaryCopy, uTF8String, self->_eventID);
  xpc_dictionary_set_int64(dictionaryCopy, uTF8String2, self->_state);
  xpc_dictionary_set_int64(dictionaryCopy, uTF8String3, self->_previousState);
  xpc_dictionary_set_BOOL(dictionaryCopy, uTF8String4, self->_transitioning);
  value = xpc_dictionary_create(0, 0, 0);
  [(BLSBacklightChangeRequest *)self->_changeRequest encodeWithXPCDictionary:value];
  xpc_dictionary_set_value(dictionaryCopy, uTF8String5, value);
}

- (BLSBacklightChangeEvent)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"id"];
  v6 = [coderCopy decodeIntegerForKey:@"state"];
  v7 = [coderCopy decodeIntegerForKey:@"previousState"];
  v8 = [coderCopy decodeBoolForKey:@"->"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"request"];

  v10 = [(BLSBacklightChangeEvent *)self initWithEventID:v5 state:v6 previousState:v7 wasTransitioning:v8 changeRequest:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  eventID = self->_eventID;
  coderCopy = coder;
  [coderCopy encodeInt64:eventID forKey:@"id"];
  [coderCopy encodeInteger:self->_state forKey:@"state"];
  [coderCopy encodeInteger:self->_previousState forKey:@"previousState"];
  [coderCopy encodeBool:self->_transitioning forKey:@"->"];
  [coderCopy encodeObject:self->_changeRequest forKey:@"request"];
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