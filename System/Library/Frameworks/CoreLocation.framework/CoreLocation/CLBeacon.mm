@interface CLBeacon
- (CLBeacon)initWithCoder:(id)coder;
- (CLBeacon)initWithProximityUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi;
- (CLBeacon)initWithUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi timestamp:(double)timestamp;
- (id)description;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBeacon

- (CLBeacon)initWithProximityUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi
{
  v16.receiver = self;
  v16.super_class = CLBeacon;
  v14 = [(CLBeacon *)&v16 init];
  if (v14)
  {
    v14->_internal = objc_alloc_init(CLBeaconInternal);
    v14->_internal->proximityUUID = [d copy];
    v14->_internal->major = [major copy];
    v14->_internal->minor = [minor copy];
    v14->_internal->proximity = proximity;
    v14->_internal->accuracy = accuracy;
    v14->_internal->rssi = rssi;
  }

  return v14;
}

- (CLBeacon)initWithUUID:(id)d major:(id)major minor:(id)minor proximity:(int64_t)proximity accuracy:(double)accuracy rssi:(int64_t)rssi timestamp:(double)timestamp
{
  result = [(CLBeacon *)self initWithProximityUUID:d major:major minor:minor proximity:proximity accuracy:rssi rssi:accuracy];
  result->_internal->timestamp = timestamp;
  return result;
}

- (void)dealloc
{
  self->_internal->proximityUUID = 0;

  self->_internal->major = 0;
  self->_internal->minor = 0;

  self->_internal = 0;
  v3.receiver = self;
  v3.super_class = CLBeacon;
  [(CLBeacon *)&v3 dealloc];
}

- (CLBeacon)initWithCoder:(id)coder
{
  v8.receiver = self;
  v8.super_class = CLBeacon;
  v4 = [(CLBeacon *)&v8 init];
  if (v4)
  {
    v4->_internal = objc_alloc_init(CLBeaconInternal);
    if ([coder allowsKeyedCoding])
    {
      v4->_internal->proximityUUID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconCodingKeyProximityUUID"];
      v4->_internal->major = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconCodingKeyMajor"];
      v4->_internal->minor = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconCodingKeyMinor"];
      v4->_internal->proximity = [coder decodeIntForKey:@"kCLBeaconCodingKeyProximity"];
      [coder decodeDoubleForKey:@"kCLBeaconCodingKeyAccuracy"];
      v4->_internal->accuracy = v5;
      v4->_internal->rssi = [coder decodeIntegerForKey:@"kCLBeaconCodingKeyRSSI"];
    }

    else
    {
      v4->_internal->proximityUUID = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(coder, "decodeObject")}];
      v4->_internal->major = [coder decodeObject];
      v4->_internal->minor = [coder decodeObject];
      [coder decodeValueOfObjCType:"q" at:&v4->_internal->proximity];
      [coder decodeValueOfObjCType:"d" at:&v4->_internal->accuracy];
      [coder decodeValueOfObjCType:"q" at:&v4->_internal->rssi];
    }

    [coder decodeDoubleForKey:@"kCLBeaconCodingKeyTimestamp"];
    v4->_internal->timestamp = v6;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  allowsKeyedCoding = [coder allowsKeyedCoding];
  internal = self->_internal;
  if (allowsKeyedCoding)
  {
    [coder encodeObject:internal->proximityUUID forKey:@"kCLBeaconCodingKeyProximityUUID"];
    [coder encodeObject:self->_internal->major forKey:@"kCLBeaconCodingKeyMajor"];
    [coder encodeObject:self->_internal->minor forKey:@"kCLBeaconCodingKeyMinor"];
    [coder encodeInt:LODWORD(self->_internal->proximity) forKey:@"kCLBeaconCodingKeyProximity"];
    [coder encodeDouble:@"kCLBeaconCodingKeyAccuracy" forKey:self->_internal->accuracy];
    [coder encodeInteger:self->_internal->rssi forKey:@"kCLBeaconCodingKeyRSSI"];
  }

  else
  {
    [coder encodeObject:{-[NSUUID UUIDString](internal->proximityUUID, "UUIDString")}];
    [coder encodeObject:self->_internal->major];
    [coder encodeObject:self->_internal->minor];
    [coder encodeValueOfObjCType:"q" at:&self->_internal->proximity];
    [coder encodeValueOfObjCType:"d" at:&self->_internal->accuracy];
    [coder encodeValueOfObjCType:"q" at:&self->_internal->rssi];
  }

  timestamp = self->_internal->timestamp;

  [coder encodeDouble:@"kCLBeaconCodingKeyTimestamp" forKey:timestamp];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  uUID = [(CLBeacon *)self UUID];
  major = [(CLBeacon *)self major];
  minor = [(CLBeacon *)self minor];
  proximity = [(CLBeacon *)self proximity];
  [(CLBeacon *)self accuracy];
  return [v3 stringWithFormat:@"CLBeacon (uuid:%@, major:%@, minor:%@, proximity:%d +/- %.2fm, rssi:%ld, timestamp:%@)", uUID, major, minor, proximity, v8, -[CLBeacon rssi](self, "rssi"), -[CLBeacon timestamp](self, "timestamp")];
}

@end