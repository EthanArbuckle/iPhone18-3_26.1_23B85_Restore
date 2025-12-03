@interface BLSBacklightChangeSourceEventDisplaySwipeMetadata
- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithCoder:(id)coder;
- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithDirection:(int64_t)direction;
- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSBacklightChangeSourceEventDisplaySwipeMetadata

- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithDirection:(int64_t)direction
{
  v5.receiver = self;
  v5.super_class = BLSBacklightChangeSourceEventDisplaySwipeMetadata;
  result = [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)&v5 init];
  if (result)
  {
    result->_direction = direction;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  v5 = self->_direction - 1;
  if (v5 > 3)
  {
    v6 = @"Unknown";
  }

  else
  {
    v6 = off_278428E78[v5];
  }

  [v3 appendString:v6 withName:@"direction"];
  build = [v4 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_direction];
  v5 = [builder hash];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      direction = self->_direction;
      v6 = direction == [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)equalCopy direction];
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  int64 = xpc_dictionary_get_int64(dictionaryCopy, [@"direction" UTF8String]);

  return [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)self initWithDirection:int64];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_int64(xdict, [@"direction" UTF8String], self->_direction);
}

- (BLSBacklightChangeSourceEventDisplaySwipeMetadata)initWithCoder:(id)coder
{
  v4 = [coder decodeIntegerForKey:@"direction"];

  return [(BLSBacklightChangeSourceEventDisplaySwipeMetadata *)self initWithDirection:v4];
}

@end