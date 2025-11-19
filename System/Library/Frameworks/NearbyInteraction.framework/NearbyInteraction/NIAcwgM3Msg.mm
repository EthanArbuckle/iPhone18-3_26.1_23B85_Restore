@interface NIAcwgM3Msg
- (AcwgM3MsgStruct)toStruct;
- (NIAcwgM3Msg)initWithCoder:(id)a3;
- (NIAcwgM3Msg)initWithSelectedRanMultiplier:(unsigned __int8)a3 selectedNumChapsPerSlot:(unsigned __int8)a4 numResponders:(unsigned __int8)a5 numSlotsPerRound:(unsigned __int8)a6 supportedSyncCodeIndexBitmask:(unsigned int)a7 selectedHoppingConfigBitmask:(unsigned __int8)a8 macMode:(unsigned __int8)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAcwgM3Msg

- (NIAcwgM3Msg)initWithSelectedRanMultiplier:(unsigned __int8)a3 selectedNumChapsPerSlot:(unsigned __int8)a4 numResponders:(unsigned __int8)a5 numSlotsPerRound:(unsigned __int8)a6 supportedSyncCodeIndexBitmask:(unsigned int)a7 selectedHoppingConfigBitmask:(unsigned __int8)a8 macMode:(unsigned __int8)a9
{
  v16.receiver = self;
  v16.super_class = NIAcwgM3Msg;
  result = [(NIAcwgM3Msg *)&v16 init];
  if (result)
  {
    result->_selectedRanMultiplier = a3;
    result->_selectedNumChapsPerSlot = a4;
    result->_numResponders = a5;
    result->_numSlotsPerRound = a6;
    result->_supportedSyncCodeIndexBitmask = a7;
    result->_selectedHoppingConfigBitmask = a8;
    result->_macMode = a9;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOBYTE(v6) = self->_macMode;
  return [v4 initWithSelectedRanMultiplier:self->_selectedRanMultiplier selectedNumChapsPerSlot:self->_selectedNumChapsPerSlot numResponders:self->_numResponders numSlotsPerRound:self->_numSlotsPerRound supportedSyncCodeIndexBitmask:self->_supportedSyncCodeIndexBitmask selectedHoppingConfigBitmask:self->_selectedHoppingConfigBitmask macMode:v6];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_selectedRanMultiplier forKey:@"selectedRanMultiplier"];
  [v4 encodeInt:self->_selectedNumChapsPerSlot forKey:@"selectedNumChapsPerSlot"];
  [v4 encodeInt:self->_numResponders forKey:@"numResponders"];
  [v4 encodeInt:self->_numSlotsPerRound forKey:@"numSlotsPerRound"];
  [v4 encodeInt64:self->_supportedSyncCodeIndexBitmask forKey:@"supportedSyncCodeIndexBitmask"];
  [v4 encodeInt:self->_selectedHoppingConfigBitmask forKey:@"selectedHoppingConfigBitmask"];
  [v4 encodeInt:self->_macMode forKey:@"macMode"];
}

- (NIAcwgM3Msg)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_selectedRanMultiplier = [v4 decodeIntForKey:@"selectedRanMultiplier"];
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