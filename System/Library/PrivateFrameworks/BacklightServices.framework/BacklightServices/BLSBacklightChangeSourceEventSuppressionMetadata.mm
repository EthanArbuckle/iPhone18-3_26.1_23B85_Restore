@interface BLSBacklightChangeSourceEventSuppressionMetadata
- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithCoder:(id)coder;
- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithType:(unint64_t)type reason:(unint64_t)reason;
- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSBacklightChangeSourceEventSuppressionMetadata

- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithType:(unint64_t)type reason:(unint64_t)reason
{
  v7.receiver = self;
  v7.super_class = BLSBacklightChangeSourceEventSuppressionMetadata;
  result = [(BLSBacklightChangeSourceEventSuppressionMetadata *)&v7 init];
  if (result)
  {
    result->_type = type;
    result->_reason = reason;
  }

  return result;
}

- (id)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = v3;
  if (self->_type == 1)
  {
    v5 = @"Suppress";
  }

  else
  {
    v5 = @"Unsuppress";
  }

  [v3 appendString:v5 withName:@"type"];
  v6 = NSStringFromBLSAlwaysOnSuppressionReason(self->_reason);
  [v4 appendString:v6 withName:@"reason"];

  build = [v4 build];

  return build;
}

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendInteger:self->_type];
  v5 = [builder appendInteger:self->_reason];
  v6 = [builder hash];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [MEMORY[0x277CF0C20] builderWithObject:equalCopy ofExpectedClass:objc_opt_class()];
  type = self->_type;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __60__BLSBacklightChangeSourceEventSuppressionMetadata_isEqual___block_invoke;
  v18[3] = &unk_278428B28;
  v7 = equalCopy;
  v19 = v7;
  v8 = [v5 appendInteger:type counterpart:v18];
  reason = self->_reason;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __60__BLSBacklightChangeSourceEventSuppressionMetadata_isEqual___block_invoke_2;
  v16 = &unk_278428B28;
  v17 = v7;
  v10 = v7;
  v11 = [v5 appendInteger:reason counterpart:&v13];
  LOBYTE(reason) = [v5 isEqual];

  return reason;
}

- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  uTF8String = [@"type" UTF8String];
  uTF8String2 = [@"reason" UTF8String];
  int64 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String);
  v8 = xpc_dictionary_get_int64(dictionaryCopy, uTF8String2);

  return [(BLSBacklightChangeSourceEventSuppressionMetadata *)self initWithType:int64 reason:v8];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  uTF8String = [@"type" UTF8String];
  uTF8String2 = [@"reason" UTF8String];
  xpc_dictionary_set_int64(xdict, uTF8String, self->_type);
  xpc_dictionary_set_int64(xdict, uTF8String2, self->_reason);
}

- (BLSBacklightChangeSourceEventSuppressionMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeIntegerForKey:@"type"];
  v6 = [coderCopy decodeIntegerForKey:@"reason"];

  return [(BLSBacklightChangeSourceEventSuppressionMetadata *)self initWithType:v5 reason:v6];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  coderCopy = coder;
  [coderCopy encodeInteger:type forKey:@"type"];
  [coderCopy encodeInteger:self->_reason forKey:@"reason"];
}

@end