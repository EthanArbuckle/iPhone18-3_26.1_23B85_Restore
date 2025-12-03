@interface VCVideoRuleCollectionKey
- (BOOL)isEqual:(id)equal;
- (VCVideoRuleCollectionKey)initWithPayload:(int)payload transportType:(unsigned __int8)type encodingType:(unsigned __int8)encodingType;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation VCVideoRuleCollectionKey

- (VCVideoRuleCollectionKey)initWithPayload:(int)payload transportType:(unsigned __int8)type encodingType:(unsigned __int8)encodingType
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCVideoRuleCollectionKey;
  result = [(VCVideoRuleCollectionKey *)&v9 init];
  if (result)
  {
    result->_payload = payload;
    result->_transportType = type;
    result->_encodingType = encodingType;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  payload = self->_payload;
  transportType = self->_transportType;
  encodingType = self->_encodingType;

  return [v4 initWithPayload:payload transportType:transportType encodingType:encodingType];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    return 1;
  }

  if (!equal)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  payload = self->_payload;
  if (payload != [equal payload])
  {
    return 0;
  }

  transportType = self->_transportType;
  if (transportType != [equal transportType])
  {
    return 0;
  }

  encodingType = self->_encodingType;
  return encodingType == [equal encodingType];
}

- (id)description
{
  if (self->_transportType == 1)
  {
    v2 = @"WiFi";
  }

  else
  {
    v2 = @"Cellular";
  }

  v3 = @"decoding";
  if (self->_encodingType == 1)
  {
    v3 = @"encoding";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"Payload:%d %@ %@ rules", self->_payload, v2, v3];
}

@end