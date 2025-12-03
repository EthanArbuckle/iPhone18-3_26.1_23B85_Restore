@interface CVACMWiFiData
+ (id)classes;
+ (id)withData:(id)data;
- (CVACMWiFiData)initWithCoder:(id)coder;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CVACMWiFiData

+ (id)classes
{
  if (qword_27E3C8648 == -1)
  {
    v3 = qword_27E3C8640;
  }

  else
  {
    sub_24019CC40();
    v3 = qword_27E3C8640;
  }

  return v3;
}

+ (id)withData:(id)data
{
  dataCopy = data;
  v4 = +[CVACMWiFiData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:dataCopy classes:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  return v6;
}

- (CVACMWiFiData)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CVACMWiFiData;
  v5 = [(CVACMWiFiData *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [coderCopy decodeObjectForKey:@"BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v7;

    v5->_RSSI = [coderCopy decodeIntForKey:@"RSSI"];
    v5->_channel = [coderCopy decodeIntForKey:@"channel"];
    v5->_channelFlags = [coderCopy decodeIntForKey:@"channelFlags"];
    v5->_isPersonalHotspot = [coderCopy decodeBoolForKey:@"isPersonalHotspot"];
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v9;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [coderCopy encodeObject:self->_BSSID forKey:@"BSSID"];
  [coderCopy encodeInt:self->_RSSI forKey:@"RSSI"];
  [coderCopy encodeInt:self->_channel forKey:@"channel"];
  [coderCopy encodeInt:self->_channelFlags forKey:@"channelFlags"];
  [coderCopy encodeBool:self->_isPersonalHotspot forKey:@"isPersonalHotspot"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  objc_autoreleasePoolPop(v4);
}

- (id)dictionary
{
  v13[6] = *MEMORY[0x277D85DE8];
  BSSID = self->_BSSID;
  if (!BSSID)
  {
    BSSID = &stru_28521B010;
  }

  v13[0] = BSSID;
  v12[0] = @"BSSID";
  v12[1] = @"RSSI";
  v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_RSSI];
  v13[1] = v4;
  v12[2] = @"channel";
  v5 = [MEMORY[0x277CCABB0] numberWithInt:self->_channel];
  v13[2] = v5;
  v12[3] = @"channelFlags";
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_channelFlags];
  v13[3] = v6;
  v12[4] = @"isPersonalHotspot";
  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isPersonalHotspot];
  v13[4] = v7;
  v12[5] = @"timestamp";
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_timestamp];
  v13[5] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (id)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  dictionary = [(CVACMWiFiData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, dictionary];

  return v6;
}

@end