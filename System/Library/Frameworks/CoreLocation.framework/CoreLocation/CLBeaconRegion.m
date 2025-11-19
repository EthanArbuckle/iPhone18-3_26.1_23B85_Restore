@interface CLBeaconRegion
+ (id)any;
- (BOOL)isEqual:(id)a3;
- (CLBeaconIdentityConstraint)beaconIdentityConstraint;
- (CLBeaconRegion)init;
- (CLBeaconRegion)initWithBeaconIdentityConstraint:(CLBeaconIdentityConstraint *)beaconIdentityConstraint identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithCoder:(id)a3;
- (CLBeaconRegion)initWithIdentifier:(id)a3;
- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid identifier:(NSString *)identifier;
- (CLBeaconRegion)initWithUUID:(NSUUID *)uuid major:(CLBeaconMajorValue)major minor:(CLBeaconMinorValue)minor identifier:(NSString *)identifier;
- (NSMutableDictionary)peripheralDataWithMeasuredPower:(NSNumber *)measuredPower;
- (char)_measuredPowerForDevice;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setGutsWithProximityUUID:(id)a3 major:(id)a4 minor:(id)a5 notifyOnDisplay:(BOOL)a6;
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

- (void)setGutsWithProximityUUID:(id)a3 major:(id)a4 minor:(id)a5 notifyOnDisplay:(BOOL)a6
{
  v10 = a3 != 0;
  if (a3)
  {
    v11 = 3;
  }

  else
  {
    v11 = 2;
  }

  if (a4)
  {
    v10 = v11;
  }

  if (a5)
  {
    v10 |= 4u;
  }

  self->_definitionMask = v10;
  self->_UUID = [a3 copy];
  self->_major = [a4 copy];
  self->_minor = [a5 copy];
  self->_notifyEntryStateOnDisplay = a6;
}

- (CLBeaconRegion)init
{
  v2 = self;
  if (![(CLBeaconRegion *)self UUID])
  {

    return 0;
  }

  return v2;
}

- (CLBeaconRegion)initWithIdentifier:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLBeaconRegion;
  v3 = [(CLRegion *)&v6 initWithIdentifier:a3 andRegionType:0];
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

- (CLBeaconRegion)initWithCoder:(id)a3
{
  v10.receiver = self;
  v10.super_class = CLBeaconRegion;
  v4 = [(CLRegion *)&v10 initWithCoder:?];
  if (v4)
  {
    v9 = 0;
    if ([a3 allowsKeyedCoding])
    {
      v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconRegionCodingKeyProximityUUID"];
      v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconRegionCodingKeyMajor"];
      v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconRegionCodingKeyMinor"];
      v9 = [a3 decodeBoolForKey:@"kCLBeaconRegionNotifyEntryStateOnDisplay"];
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:{objc_msgSend(a3, "decodeObject")}];
      v6 = [a3 decodeObject];
      v7 = [a3 decodeObject];
      [a3 decodeValueOfObjCType:"B" at:&v9];
    }

    [(CLRegion *)v4 setType:0];
    [(CLBeaconRegion *)v4 setGutsWithProximityUUID:v5 major:v6 minor:v7 notifyOnDisplay:v9];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v9.receiver = self;
  v9.super_class = CLBeaconRegion;
  [(CLRegion *)&v9 encodeWithCoder:?];
  v5 = [(CLBeaconRegion *)self notifyEntryStateOnDisplay];
  v8 = v5;
  v6 = [a3 allowsKeyedCoding];
  v7 = [(CLBeaconRegion *)self UUID];
  if (v6)
  {
    [a3 encodeObject:v7 forKey:@"kCLBeaconRegionCodingKeyProximityUUID"];
    [a3 encodeObject:-[CLBeaconRegion major](self forKey:{"major"), @"kCLBeaconRegionCodingKeyMajor"}];
    [a3 encodeObject:-[CLBeaconRegion minor](self forKey:{"minor"), @"kCLBeaconRegionCodingKeyMinor"}];
    [a3 encodeBool:v5 forKey:@"kCLBeaconRegionNotifyEntryStateOnDisplay"];
  }

  else
  {
    [a3 encodeObject:{-[NSUUID UUIDString](v7, "UUIDString")}];
    [a3 encodeObject:{-[CLBeaconRegion major](self, "major")}];
    [a3 encodeObject:{-[CLBeaconRegion minor](self, "minor")}];
    [a3 encodeValueOfObjCType:"B" at:&v8];
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = CLBeaconRegion;
  v4 = [(CLRegion *)&v6 copyWithZone:a3];
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
    v3 = [(CLBeaconRegion *)self beaconIdentityConstraint];

    return [(CLBeaconIdentityCondition *)v3 hash];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CLBeaconRegion;
    return [(CLRegion *)&v5 hash];
  }
}

- (BOOL)isEqual:(id)a3
{
  if (self == a3)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    v5 = [a3 isMemberOfClass:objc_opt_class()];
    if (v5)
    {
      if (-[NSString isEqualToString:](-[CLRegion identifier](self, "identifier"), "isEqualToString:", &stru_1F0E6F140) && -[NSString isEqualToString:](-[CLRegion identifier](self, "identifier"), "isEqualToString:", [a3 identifier]))
      {
        v6 = [(CLBeaconRegion *)self beaconIdentityConstraint];
        v7 = [a3 beaconIdentityConstraint];

        LOBYTE(v5) = [(CLBeaconIdentityCondition *)v6 isEqual:v7];
      }

      else
      {
        v8 = [(CLRegion *)self identifier];
        v9 = [a3 identifier];

        LOBYTE(v5) = [(NSString *)v8 isEqualToString:v9];
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
    v5 = [(NSNumber *)measuredPower charValue];
  }

  else
  {
    v5 = [(CLBeaconRegion *)self _measuredPowerForDevice];
  }

  v9 = v5;
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