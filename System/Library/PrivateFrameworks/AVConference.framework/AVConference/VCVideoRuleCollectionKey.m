@interface VCVideoRuleCollectionKey
- (BOOL)isEqual:(id)a3;
- (VCVideoRuleCollectionKey)initWithPayload:(int)a3 transportType:(unsigned __int8)a4 encodingType:(unsigned __int8)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation VCVideoRuleCollectionKey

- (VCVideoRuleCollectionKey)initWithPayload:(int)a3 transportType:(unsigned __int8)a4 encodingType:(unsigned __int8)a5
{
  v10 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = VCVideoRuleCollectionKey;
  result = [(VCVideoRuleCollectionKey *)&v9 init];
  if (result)
  {
    result->_payload = a3;
    result->_transportType = a4;
    result->_encodingType = a5;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  payload = self->_payload;
  transportType = self->_transportType;
  encodingType = self->_encodingType;

  return [v4 initWithPayload:payload transportType:transportType encodingType:encodingType];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  payload = self->_payload;
  if (payload != [a3 payload])
  {
    return 0;
  }

  transportType = self->_transportType;
  if (transportType != [a3 transportType])
  {
    return 0;
  }

  encodingType = self->_encodingType;
  return encodingType == [a3 encodingType];
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