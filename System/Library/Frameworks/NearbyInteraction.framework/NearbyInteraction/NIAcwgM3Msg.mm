@interface NIAcwgM3Msg
- (AcwgM3MsgStruct)toStruct;
- (NIAcwgM3Msg)initWithCoder:(id)coder;
- (NIAcwgM3Msg)initWithSelectedRanMultiplier:(unsigned __int8)multiplier selectedNumChapsPerSlot:(unsigned __int8)slot numResponders:(unsigned __int8)responders numSlotsPerRound:(unsigned __int8)round supportedSyncCodeIndexBitmask:(unsigned int)bitmask selectedHoppingConfigBitmask:(unsigned __int8)configBitmask macMode:(unsigned __int8)mode;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgM3Msg

- (NIAcwgM3Msg)initWithSelectedRanMultiplier:(unsigned __int8)multiplier selectedNumChapsPerSlot:(unsigned __int8)slot numResponders:(unsigned __int8)responders numSlotsPerRound:(unsigned __int8)round supportedSyncCodeIndexBitmask:(unsigned int)bitmask selectedHoppingConfigBitmask:(unsigned __int8)configBitmask macMode:(unsigned __int8)mode
{
  v16.receiver = self;
  v16.super_class = NIAcwgM3Msg;
  result = [(NIAcwgM3Msg *)&v16 init];
  if (result)
  {
    result->_selectedRanMultiplier = multiplier;
    result->_selectedNumChapsPerSlot = slot;
    result->_numResponders = responders;
    result->_numSlotsPerRound = round;
    result->_supportedSyncCodeIndexBitmask = bitmask;
    result->_selectedHoppingConfigBitmask = configBitmask;
    result->_macMode = mode;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  [v6 appendFormat:@"selectedRanMultiplier:%u\n", self->_selectedRanMultiplier];
  [v6 appendFormat:@"selectedNumChapsPerSlot:%u\n", self->_selectedNumChapsPerSlot];
  [v6 appendFormat:@"numResponders:%u\n", self->_numResponders];
  [v6 appendFormat:@"numSlotsPerRound:%u\n", self->_numSlotsPerRound];
  [v6 appendFormat:@"supportedSyncCodeIndexBitmask:0x%08x\n", self->_supportedSyncCodeIndexBitmask];
  [v6 appendFormat:@"selectedHoppingConfigBitmask:0x%02x\n", self->_selectedHoppingConfigBitmask];
  [v6 appendFormat:@"macMode:%u>", self->_macMode];

  return v6;
}

- (AcwgM3MsgStruct)toStruct
{
  v2 = *&self->_selectedHoppingConfigBitmask;
  v3 = *&self->_selectedRanMultiplier | (self->_supportedSyncCodeIndexBitmask << 32);
  result.var0 = v3;
  result.var1 = BYTE1(v3);
  result.var2 = BYTE2(v3);
  result.var3 = BYTE3(v3);
  result.var4 = HIDWORD(v3);
  result.var5 = v2;
  result.var6 = BYTE1(v2);
  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOBYTE(v6) = self->_macMode;
  return [v4 initWithSelectedRanMultiplier:self->_selectedRanMultiplier selectedNumChapsPerSlot:self->_selectedNumChapsPerSlot numResponders:self->_numResponders numSlotsPerRound:self->_numSlotsPerRound supportedSyncCodeIndexBitmask:self->_supportedSyncCodeIndexBitmask selectedHoppingConfigBitmask:self->_selectedHoppingConfigBitmask macMode:v6];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_selectedRanMultiplier forKey:@"selectedRanMultiplier"];
  [coderCopy encodeInt:self->_selectedNumChapsPerSlot forKey:@"selectedNumChapsPerSlot"];
  [coderCopy encodeInt:self->_numResponders forKey:@"numResponders"];
  [coderCopy encodeInt:self->_numSlotsPerRound forKey:@"numSlotsPerRound"];
  [coderCopy encodeInt64:self->_supportedSyncCodeIndexBitmask forKey:@"supportedSyncCodeIndexBitmask"];
  [coderCopy encodeInt:self->_selectedHoppingConfigBitmask forKey:@"selectedHoppingConfigBitmask"];
  [coderCopy encodeInt:self->_macMode forKey:@"macMode"];
}

- (NIAcwgM3Msg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_selectedRanMultiplier = [coderCopy decodeIntForKey:@"selectedRanMultiplier"];
    self->_selectedNumChapsPerSlot = [v5 decodeIntForKey:@"selectedNumChapsPerSlot"];
    self->_numResponders = [v5 decodeIntForKey:@"numResponders"];
    self->_numSlotsPerRound = [v5 decodeIntForKey:@"numSlotsPerRound"];
    self->_supportedSyncCodeIndexBitmask = [v5 decodeInt64ForKey:@"supportedSyncCodeIndexBitmask"];
    self->_selectedHoppingConfigBitmask = [v5 decodeIntForKey:@"selectedHoppingConfigBitmask"];
    self->_macMode = [v5 decodeIntForKey:@"macMode"];
  }

  return self;
}

@end