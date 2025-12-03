@interface NIAcwgM1Msg
- (AcwgM1MsgStruct)toStruct;
- (NIAcwgM1Msg)initWithCoder:(id)coder;
- (NIAcwgM1Msg)initWithSupportedUwbConfigIds:(id)ids supportedPulseShapeCombos:(id)combos channelBitmask:(unsigned __int8)bitmask uwbSessionId:(unsigned int)id;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgM1Msg

- (NIAcwgM1Msg)initWithSupportedUwbConfigIds:(id)ids supportedPulseShapeCombos:(id)combos channelBitmask:(unsigned __int8)bitmask uwbSessionId:(unsigned int)id
{
  idsCopy = ids;
  combosCopy = combos;
  v16.receiver = self;
  v16.super_class = NIAcwgM1Msg;
  v13 = [(NIAcwgM1Msg *)&v16 init];
  v14 = v13;
  if (v13)
  {
    objc_storeStrong(&v13->_supportedUwbConfigIds, ids);
    objc_storeStrong(&v14->_supportedPulseShapeCombos, combos);
    v14->_channelBitmask = bitmask;
    v14->_uwbSessionId = id;
    v14->_finalData2Bitmask = 0;
    v14->_selectedProtocolVersion = 256;
  }

  return v14;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@:\n", v5];

  [v6 appendFormat:@"supportedUwbConfigIds:%@\n", self->_supportedUwbConfigIds];
  [v6 appendFormat:@"supportedPulseShapeCombos:%@\n", self->_supportedPulseShapeCombos];
  [v6 appendFormat:@"channelBitmask:0x%02x\n", self->_channelBitmask];
  [v6 appendFormat:@"uwbSessionId:0x%08x (%u)\n", self->_uwbSessionId, self->_uwbSessionId];
  [v6 appendFormat:@"finalData2Bitmask:0x%02x\n", self->_finalData2Bitmask];
  [v6 appendFormat:@"selectedProtocolVersion:0x%04x>\n", self->_selectedProtocolVersion];

  return v6;
}

- (AcwgM1MsgStruct)toStruct
{
  nsNumberArrayToStdVector<unsigned short>(self->_supportedUwbConfigIds, v7);
  nsNumberArrayToStdVector<unsigned char>(self->_supportedPulseShapeCombos, __p);
  rose::alisha::AcwgM1MsgStruct::AcwgM1MsgStruct(retstr, v7, __p, self->_channelBitmask, self->_uwbSessionId, self->_finalData2Bitmask, self->_selectedProtocolVersion);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  result = v7[0];
  if (v7[0])
  {
    v7[1] = v7[0];
    operator delete(v7[0]);
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  supportedUwbConfigIds = self->_supportedUwbConfigIds;
  supportedPulseShapeCombos = self->_supportedPulseShapeCombos;
  channelBitmask = self->_channelBitmask;
  uwbSessionId = self->_uwbSessionId;
  finalData2Bitmask = self->_finalData2Bitmask;
  selectedProtocolVersion = self->_selectedProtocolVersion;

  return [v4 initWithSupportedUwbConfigIds:supportedUwbConfigIds supportedPulseShapeCombos:supportedPulseShapeCombos channelBitmask:channelBitmask uwbSessionId:uwbSessionId finalData2Bitmask:finalData2Bitmask selectedProtocolVersion:selectedProtocolVersion];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeObject:self->_supportedUwbConfigIds forKey:@"supportedUwbConfigIds"];
  [coderCopy encodeObject:self->_supportedPulseShapeCombos forKey:@"supportedPulseShapeCombos"];
  [coderCopy encodeInt:self->_channelBitmask forKey:@"channelBitmask"];
  [coderCopy encodeInt64:self->_uwbSessionId forKey:@"uwbSessionId"];
  [coderCopy encodeInt:self->_finalData2Bitmask forKey:@"finalData2Bitmask"];
  [coderCopy encodeInt:self->_selectedProtocolVersion forKey:@"selectedProtocolVersion"];
}

- (NIAcwgM1Msg)initWithCoder:(id)coder
{
  coderCopy = coder;
  if (self)
  {
    v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedUwbConfigIds"];
    supportedUwbConfigIds = self->_supportedUwbConfigIds;
    self->_supportedUwbConfigIds = v5;

    v7 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"supportedPulseShapeCombos"];
    supportedPulseShapeCombos = self->_supportedPulseShapeCombos;
    self->_supportedPulseShapeCombos = v7;

    self->_channelBitmask = [coderCopy decodeIntForKey:@"channelBitmask"];
    self->_uwbSessionId = [coderCopy decodeInt64ForKey:@"uwbSessionId"];
    self->_finalData2Bitmask = [coderCopy decodeIntForKey:@"finalData2Bitmask"];
    self->_selectedProtocolVersion = [coderCopy decodeIntForKey:@"selectedProtocolVersion"];
  }

  return self;
}

@end