@interface BLSBacklightChangeSourceEventDisplayTapMetadata
- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithCoder:(id)a3;
- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithPosition:(CGPoint)a3;
- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGPoint)position;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSBacklightChangeSourceEventDisplayTapMetadata

- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithPosition:(CGPoint)a3
{
  y = a3.y;
  x = a3.x;
  v6.receiver = self;
  v6.super_class = BLSBacklightChangeSourceEventDisplayTapMetadata;
  result = [(BLSBacklightChangeSourceEventDisplayTapMetadata *)&v6 init];
  if (result)
  {
    result->_position.x = x;
    result->_position.y = y;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendPoint:@"position" withName:{self->_position.x, self->_position.y}];
  v5 = [v3 build];

  return v5;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendCGPoint:{self->_position.x, self->_position.y}];
  v5 = [v3 hash];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      p_position = &self->_position;
      [(BLSBacklightChangeSourceEventDisplayTapMetadata *)v4 position];
      v8 = p_position->y == v7 && p_position->x == v6;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  [@"position" UTF8String];
  BSDeserializeCGPointFromXPCDictionaryWithKey();
  v6 = v5;
  v8 = v7;

  return [(BLSBacklightChangeSourceEventDisplayTapMetadata *)self initWithPosition:v6, v8];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  v6 = a3;
  [@"position" UTF8String];
  x = self->_position.x;
  y = self->_position.y;
  BSSerializeCGPointToXPCDictionaryWithKey();
}

- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithCoder:(id)a3
{
  [a3 decodePointForKey:@"position"];

  return [(BLSBacklightChangeSourceEventDisplayTapMetadata *)self initWithPosition:?];
}

- (CGPoint)position
{
  x = self->_position.x;
  y = self->_position.y;
  result.y = y;
  result.x = x;
  return result;
}

@end