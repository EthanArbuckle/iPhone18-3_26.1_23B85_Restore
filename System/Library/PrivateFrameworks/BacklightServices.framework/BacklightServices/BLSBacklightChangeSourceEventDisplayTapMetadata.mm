@interface BLSBacklightChangeSourceEventDisplayTapMetadata
- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithCoder:(id)coder;
- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithPosition:(CGPoint)position;
- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (CGPoint)position;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSBacklightChangeSourceEventDisplayTapMetadata

- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithPosition:(CGPoint)position
{
  y = position.y;
  x = position.x;
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
  build = [v3 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendCGPoint:{self->_position.x, self->_position.y}];
  v5 = [builder hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      p_position = &self->_position;
      [(BLSBacklightChangeSourceEventDisplayTapMetadata *)equalCopy position];
      v8 = p_position->y == v7 && p_position->x == v6;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"position" UTF8String];
  BSDeserializeCGPointFromXPCDictionaryWithKey();
  v6 = v5;
  v8 = v7;

  return [(BLSBacklightChangeSourceEventDisplayTapMetadata *)self initWithPosition:v6, v8];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [@"position" UTF8String];
  x = self->_position.x;
  y = self->_position.y;
  BSSerializeCGPointToXPCDictionaryWithKey();
}

- (BLSBacklightChangeSourceEventDisplayTapMetadata)initWithCoder:(id)coder
{
  [coder decodePointForKey:@"position"];

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