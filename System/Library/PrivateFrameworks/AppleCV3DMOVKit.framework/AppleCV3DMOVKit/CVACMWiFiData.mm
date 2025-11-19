@interface CVACMWiFiData
+ (id)classes;
+ (id)withData:(id)a3;
- (CVACMWiFiData)initWithCoder:(id)a3;
- (id)debugDescription;
- (id)dictionary;
- (void)encodeWithCoder:(id)a3;
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

+ (id)withData:(id)a3
{
  v3 = a3;
  v4 = +[CVACMWiFiData classes];
  v5 = [CVAMetadataWrapper decodeNSCoderObject:v3 classes:v4];

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

- (CVACMWiFiData)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CVACMWiFiData;
  v5 = [(CVACMWiFiData *)&v11 init];
  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = [v4 decodeObjectForKey:@"BSSID"];
    BSSID = v5->_BSSID;
    v5->_BSSID = v7;

    v5->_RSSI = [v4 decodeIntForKey:@"RSSI"];
    v5->_channel = [v4 decodeIntForKey:@"channel"];
    v5->_channelFlags = [v4 decodeIntForKey:@"channelFlags"];
    v5->_isPersonalHotspot = [v4 decodeBoolForKey:@"isPersonalHotspot"];
    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v9;
    objc_autoreleasePoolPop(v6);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = objc_autoreleasePoolPush();
  [v5 encodeObject:self->_BSSID forKey:@"BSSID"];
  [v5 encodeInt:self->_RSSI forKey:@"RSSI"];
  [v5 encodeInt:self->_channel forKey:@"channel"];
  [v5 encodeInt:self->_channelFlags forKey:@"channelFlags"];
  [v5 encodeBool:self->_isPersonalHotspot forKey:@"isPersonalHotspot"];
  [v5 encodeDouble:@"timestamp" forKey:self->_timestamp];
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
  v5 = [(CVACMWiFiData *)self dictionary];
  v6 = [v3 stringWithFormat:@"<%@: %@>", v4, v5];

  return v6;
}

@end