@interface CLBeaconRegion
+ (id)any;
- (BOOL)isEqual:(id)equal;
- (CLBeaconIdentityConstraint)beaconIdentityConstraint;
- (CLBeaconRegion)init;
- (CLBeaconRegion)initWithBeaconIdentityConstraint:(CLBeaconIdentityConstraint *)beaconIdentityConstraint identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithCoder:(id)coder;
- (CLBeaconRegion)initWithIdentifier:(id)identifier;
- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major minor:(CLBeaconMinorValue)minor identifier:(NSString *)identifier;
- (NSMutableDictionary)peripheralDataWithMeasuredPower:(NSNumber *)measuredPower;
- (char)_measuredPowerForDevice;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setGutsWithProximityUUID:(id)d major:(id)major minor:(id)minor notifyOnDisplay:(BOOL)display;
@end

@implementation CLBeaconRegion

+ (id)any
{
  if (qword_1EAFE5118 != -1)
  {
    dispatch_once(&qword_1EAFE5118, &unk_1F0E6D7D0);
  }

  return qword_1EAFE5110;
}

- (void)setGutsWithProximityUUID:(id)d major:(id)major minor:(id)minor notifyOnDisplay:(BOOL)display
{
  v10 = d != 0;
  if (d)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (major)
  {
    v10 = v11;
  }

  if (minor)
  {
    v10 |= 4u;
  }

  self->_definitionMask = v10;
  self->_UUID = [d copy];
  self->_major = [major copy];
  self->_minor = [minor copy];
  self->_notifyEntryStateOnDisplay = display;
}

- (CLBeaconRegion)init
{
  selfCopy = self;
  if (![(CLBeaconRegion *)self UUID])
  {

    return 0;
  }

  return selfCopy;
}

- (CLBeaconRegion)initWithIdentifier:(id)identifier
{
  v6.receiver = self;
  v6.super_class = CLBeaconRegion;
  v3 = [(CLRegion *)&v6 initWithIdentifier:identifier andRegionType:0];
  v4 = v3;
  if (v3)
  {
    [(CLBeaconRegion *)v3 setGutsWithProximityUUID:0 major:0 minor:0 notifyOnDisplay:0];
  }

  return v4;
}

- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid identifier:(NSString *)identifier
{
  if (uuid)
  {
    v8.receiver = self;
    v8.super_class = CLBeaconRegion;
    v5 = [(CLRegion *)&v8 initWithIdentifier:identifier andRegionType:0];
    v6 = v5;
    if (v5)
    {
      [(CLBeaconRegion *)v5 setGutsWithProximityUUID:uuid major:0 minor:0 notifyOnDisplay:0];
    }
  }

  else
  {

    return 0;
  }

  return v6;
}

- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major minor:(CLBeaconMinorValue)minor identifier:(NSString *)identifier
{
  if (uuid)
  {

    return MEMORY[0x1EEE66B58](self, sel_initWithUUID_major_minor_identifier_notifyEntryStateOnDisplay_);
  }

  else
  {

    return 0;
  }
}

- (CLBeaconRegion)initWithBeaconIdentityConstraint:(CLBeaconIdentityConstraint *)beaconIdentityConstraint identifier:(NSString *)identifier
{
  if (!beaconIdentityConstraint)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v9.receiver = self;
  v9.super_class = CLBeaconRegion;
  v7 = [(CLRegion *)&v9 initWithIdentifier:identifier andRegionType:0];
  if (v7)
  {
    [(CLBeaconRegion *)v7 setGutsWithProximityUUID:[(CLBeaconIdentityCondition *)beaconIdentityConstraint UUID] major:[(CLBeaconIdentityCondition *)beaconIdentityConstraint major] minor:[(CLBeaconIdentityCondition *)beaconIdentityConstraint minor] notifyOnDisplay:0];
  }

  return v7;
}

- (CLBeaconRegion)initWithCoder:(id)coder
{
  v10.receiver = self;
  v10.super_class = CLBeaconRegion;
  v4 = [(CLRegion *)&v10 initWithCoder:?];
  if (v4)
  {
    v9 = 0;
    if ([coder allowsKeyedCoding])
    {
      v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconRegionCodingKeyProximityUUID"];
      decodeObject = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconRegionCodingKeyMajor"];
      decodeObject2 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconRegionCodingKeyMinor"];
      v9 = [coder decodeBoolForKey:@"kCLBeaconRegionNotifyEntryStateOnDisplay"];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(coder, "decodeObject")}];
      decodeObject = [coder decodeObject];
      decodeObject2 = [coder decodeObject];
      [coder decodeValueOfObjCType:"B" at:&v9];
    }

    [(CLRegion *)v4 setType:0];
    [(CLBeaconRegion *)v4 setGutsWithProximityUUID:v5 major:decodeObject minor:decodeObject2 notifyOnDisplay:v9];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = CLBeaconRegion;
  [(CLRegion *)&v9 encodeWithCoder:?];
  notifyEntryStateOnDisplay = [(CLBeaconRegion *)self notifyEntryStateOnDisplay];
  v8 = notifyEntryStateOnDisplay;
  allowsKeyedCoding = [coder allowsKeyedCoding];
  uUID = [(CLBeaconRegion *)self UUID];
  if (allowsKeyedCoding)
  {
    [coder encodeObject:uUID forKey:@"kCLBeaconRegionCodingKeyProximityUUID"];
    [coder encodeObject:-[CLBeaconRegion major](self forKey:{"major"), @"kCLBeaconRegionCodingKeyMajor"}];
    [coder encodeObject:-[CLBeaconRegion minor](self forKey:{"minor"), @"kCLBeaconRegionCodingKeyMinor"}];
    [coder encodeBool:notifyEntryStateOnDisplay forKey:@"kCLBeaconRegionNotifyEntryStateOnDisplay"];
  }

  else
  {
    [coder encodeObject:{-[NSUUID UUIDString](uUID, "UUIDString")}];
    [coder encodeObject:{-[CLBeaconRegion major](self, "major")}];
    [coder encodeObject:{-[CLBeaconRegion minor](self, "minor")}];
    [coder encodeValueOfObjCType:"B" at:&v8];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = CLBeaconRegion;
  v4 = [(CLRegion *)&v6 copyWithZone:zone];
  if (v4)
  {
    [v4 setGutsWithProximityUUID:-[CLBeaconRegion UUID](self major:"UUID") minor:-[CLBeaconRegion major](self notifyOnDisplay:{"major"), -[CLBeaconRegion minor](self, "minor"), -[CLBeaconRegion notifyEntryStateOnDisplay](self, "notifyEntryStateOnDisplay")}];
  }

  return v4;
}

- (void)dealloc
{
  self->_UUID = 0;
  self->_major = 0;
  self->_minor = 0;
  v3.receiver = self;
  v3.super_class = CLBeaconRegion;
  [(CLRegion *)&v3 dealloc];
}

- (unint64_t)hash
{
  if ([(NSString *)[(CLRegion *)self identifier] isEqualToString:&stru_1F0E6F140])
  {
    beaconIdentityConstraint = [(CLBeaconRegion *)self beaconIdentityConstraint];

    return [(CLBeaconIdentityCondition *)beaconIdentityConstraint hash];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CLBeaconRegion;
    return [(CLRegion *)&v5 hash];
  }
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [equal isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      if (-[NSString isEqualToString:](-[CLRegion identifier](self, "identifier"), "isEqualToString:", &stru_1F0E6F140) && -[NSString isEqualToString:](-[CLRegion identifier](self, "identifier"), "isEqualToString:", [equal identifier]))
      {
        beaconIdentityConstraint = [(CLBeaconRegion *)self beaconIdentityConstraint];
        beaconIdentityConstraint2 = [equal beaconIdentityConstraint];

        LOBYTE(v5) = [(CLBeaconIdentityCondition *)beaconIdentityConstraint isEqual:beaconIdentityConstraint2];
      }

      else
      {
        identifier = [(CLRegion *)self identifier];
        identifier2 = [equal identifier];

        LOBYTE(v5) = [(NSString *)identifier isEqualToString:identifier2];
      }
    }
  }

  return v5;
}

- (char)_measuredPowerForDevice
{
  sub_19B87BBB4();

  return sub_19B93CD70();
}

- (NSMutableDictionary)peripheralDataWithMeasuredPower:(NSNumber *)measuredPower
{
  v13 = *MEMORY[0x1E69E9840];
  memset(uu, 0, sizeof(uu));
  uuid_clear(uu);
  if ([(CLBeaconRegion *)self UUID])
  {
    [(NSUUID *)[(CLBeaconRegion *)self UUID] getUUIDBytes:uu];
  }

  v11 = 0;
  if ([(CLBeaconRegion *)self major])
  {
    v11 = bswap32([(NSNumber *)[(CLBeaconRegion *)self major] shortValue]) >> 16;
  }

  v10 = 0;
  if ([(CLBeaconRegion *)self minor])
  {
    v10 = bswap32([(NSNumber *)[(CLBeaconRegion *)self minor] shortValue]) >> 16;
  }

  if (measuredPower)
  {
    charValue = [(NSNumber *)measuredPower charValue];
  }

  else
  {
    charValue = [(CLBeaconRegion *)self _measuredPowerForDevice];
  }

  v9 = charValue;
  v6 = [MEMORY[0x1E695DF88] dataWithCapacity:21];
  [v6 appendBytes:uu length:16];
  [v6 appendBytes:&v11 length:2];
  [v6 appendBytes:&v10 length:2];
  [v6 appendBytes:&v9 length:1];
  result = [MEMORY[0x1E695DF90] dictionaryWithObject:v6 forKey:*MEMORY[0x1E695D1E8]];
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

- (CLBeaconIdentityConstraint)beaconIdentityConstraint
{
  v2 = [(CLBeaconIdentityCondition *)[CLBeaconIdentityConstraint alloc] _initWithUUID:[(CLBeaconRegion *)self UUID] major:[(CLBeaconRegion *)self major] minor:[(CLBeaconRegion *)self minor]];

  return v2;
}

@end