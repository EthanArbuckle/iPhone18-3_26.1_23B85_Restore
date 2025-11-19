@interface NIAcwgM2Msg
+ (id)fromStruct:(AcwgM2MsgStruct)a3;
- (AcwgM2MsgStruct)toStruct;
- (NIAcwgM2Msg)initWithCoder:(id)a3;
- (NIAcwgM2Msg)initWithSelectedUwbConfigId:(unsigned __int16)a3 selectedPulseShapeCombo:(unsigned __int8)a4 selectedChannelBitmask:(unsigned __int8)a5 supportedSyncCodeIndexBitmask:(unsigned int)a6 minRanMultiplier:(unsigned __int8)a7 supportedSlotBitmask:(unsigned __int8)a8 supportedHoppingConfigBitmask:(unsigned __int8)a9;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation NIAcwgM2Msg

- (NIAcwgM2Msg)initWithSelectedUwbConfigId:(unsigned __int16)a3 selectedPulseShapeCombo:(unsigned __int8)a4 selectedChannelBitmask:(unsigned __int8)a5 supportedSyncCodeIndexBitmask:(unsigned int)a6 minRanMultiplier:(unsigned __int8)a7 supportedSlotBitmask:(unsigned __int8)a8 supportedHoppingConfigBitmask:(unsigned __int8)a9
{
  v16.receiver = self;
  v16.super_class = NIAcwgM2Msg;
  result = [(NIAcwgM2Msg *)&v16 init];
  if (result)
  {
    result->_selectedUwbConfigId = a3;
    result->_selectedPulseShapeCombo = a4;
    result->_selectedChannelBitmask = a5;
    result->_supportedSyncCodeIndexBitmask = a6;
    result->_minRanMultiplier = a7;
    result->_supportedSlotBitmask = a8;
    *&result->_supportedHoppingConfigBitmask = a9;
  }

  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  [v6 appendFormat:@"selectedUwbConfigId:%u\n", self->_selectedUwbConfigId];
  [v6 appendFormat:@"selectedPulseShapeCombo:%u\n", self->_selectedPulseShapeCombo];
  [v6 appendFormat:@"selectedChannelBitmask:0x%02x\n", self->_selectedChannelBitmask];
  [v6 appendFormat:@"supportedSyncCodeIndexBitmask:0x%08x\n", self->_supportedSyncCodeIndexBitmask];
  [v6 appendFormat:@"minRanMultiplier:%u\n", self->_minRanMultiplier];
  [v6 appendFormat:@"supportedSlotBitmask:0x%02x\n", self->_supportedSlotBitmask];
  [v6 appendFormat:@"supportedHoppingConfigBitmask:0x%02x\n", self->_supportedHoppingConfigBitmask];
  [v6 appendFormat:@"selectedFinalData2Bitmask:0x%02x>", self->_selectedFinalData2Bitmask];

  return v6;
}

- (AcwgM2MsgStruct)toStruct
{
  v2 = *&self->_minRanMultiplier;
  v3 = self->_selectedUwbConfigId | (self->_selectedPulseShapeCombo << 16) | (self->_selectedChannelBitmask << 24) | (self->_supportedSyncCodeIndexBitmask << 32);
  result.var0 = v3;
  result.var1 = BYTE2(v3);
  result.var2 = BYTE3(v3);
  result.var3 = HIDWORD(v3);
  result.var4 = v2;
  result.var5 = BYTE1(v2);
  result.var6 = BYTE2(v2);
  result.var7 = HIBYTE(v2);
  return result;
}

+ (id)fromStruct:(AcwgM2MsgStruct)a3
{
  BYTE1(v5) = a3.var7;
  LOBYTE(v5) = a3.var6;
  v3 = [[a1 alloc] initWithSelectedUwbConfigId:a3.var0 selectedPulseShapeCombo:a3.var1 selectedChannelBitmask:a3.var2 supportedSyncCodeIndexBitmask:a3.var3 minRanMultiplier:a3.var4 supportedSlotBitmask:a3.var5 supportedHoppingConfigBitmask:v5 selectedFinalData2Bitmask:?];

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  LOWORD(v6) = *&self->_supportedHoppingConfigBitmask;
  return [v4 initWithSelectedUwbConfigId:self->_selectedUwbConfigId selectedPulseShapeCombo:self->_selectedPulseShapeCombo selectedChannelBitmask:self->_selectedChannelBitmask supportedSyncCodeIndexBitmask:self->_supportedSyncCodeIndexBitmask minRanMultiplier:self->_minRanMultiplier supportedSlotBitmask:self->_supportedSlotBitmask supportedHoppingConfigBitmask:v6 selectedFinalData2Bitmask:?];
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt:self->_selectedUwbConfigId forKey:@"selectedUwbConfigId"];
  [v4 encodeInt:self->_selectedPulseShapeCombo forKey:@"selectedPulseShapeCombo"];
  [v4 encodeInt:self->_selectedChannelBitmask forKey:@"selectedChannelBitmask"];
  [v4 encodeInt64:self->_supportedSyncCodeIndexBitmask forKey:@"supportedSyncCodeIndexBitmask"];
  [v4 encodeInt:self->_minRanMultiplier forKey:@"minRanMultiplier"];
  [v4 encodeInt:self->_supportedSlotBitmask forKey:@"supportedSlotBitmask"];
  [v4 encodeInt:self->_supportedHoppingConfigBitmask forKey:@"supportedHoppingConfigBitmask"];
  [v4 encodeInt:self->_selectedFinalData2Bitmask forKey:@"selectedFinalData2Bitmask"];
}

- (NIAcwgM2Msg)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self)
  {
    self->_selectedUwbConfigId = [v4 decodeIntForKey:@"selectedUwbConfigId"];
    self->_selectedPulseShapeCombo = [v5 decodeIntForKey:@"selectedPulseShapeCombo"];
    self->_selectedChannelBitmask = [v5 decodeIntForKey:@"selectedChannelBitmask"];
    self->_supportedSyncCodeIndexBitmask = [v5 decodeInt64ForKey:@"supportedSyncCodeIndexBitmask"];
    self->_minRanMultiplier = [v5 decodeIntForKey:@"minRanMultiplier"];
    self->_supportedSlotBitmask = [v5 decodeIntForKey:@"supportedSlotBitmask"];
    self->_supportedHoppingConfigBitmask = [v5 decodeIntForKey:@"supportedHoppingConfigBitmask"];
    self->_selectedFinalData2Bitmask = [v5 decodeIntForKey:@"selectedFinalData2Bitmask"];
  }

  return self;
}

@end