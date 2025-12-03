@interface CLBeaconIdentityCondition
+ (id)any;
- (BOOL)isEqual:(id)equal;
- (CLBeaconIdentityCondition)initWithCoder:(id)coder;
- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid;
- (id)_initWithUUID:(id)d major:(id)major minor:(id)minor;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLBeaconIdentityCondition

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLBeaconIdentityCondition;
  [(CLCondition *)&v3 dealloc];
}

- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid
{
  if (!uuid)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  return [(CLBeaconIdentityCondition *)self _initWithUUID:uuid major:0 minor:0];
}

- (id)_initWithUUID:(id)d major:(id)major minor:(id)minor
{
  v10.receiver = self;
  v10.super_class = CLBeaconIdentityCondition;
  initCondition = [(CLCondition *)&v10 initCondition];
  if (initCondition)
  {
    initCondition[9] = d;
    initCondition[10] = major;
    initCondition[11] = minor;
  }

  return initCondition;
}

+ (id)any
{
  v2 = [[CLBeaconIdentityCondition alloc] _initWithUUID:0 major:0 minor:0];

  return v2;
}

- (CLBeaconIdentityCondition)initWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconIdentityConstraintUUID"];
  v7 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconIdentityConstraintMajor"];
  v8 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconIdentityConstraintMinor"];

  return [(CLBeaconIdentityCondition *)self _initWithUUID:v6 major:v7 minor:v8];
}

- (void)encodeWithCoder:(id)coder
{
  if (([coder allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [coder encodeObject:self->_UUID forKey:@"kCLBeaconIdentityConstraintUUID"];
  [coder encodeObject:self->_major forKey:@"kCLBeaconIdentityConstraintMajor"];
  minor = self->_minor;

  [coder encodeObject:minor forKey:@"kCLBeaconIdentityConstraintMinor"];
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (-[CLBeaconIdentityCondition UUID](self, "UUID") || [equal UUID])
    {
      v5 = -[NSUUID isEqual:](-[CLBeaconIdentityCondition UUID](self, "UUID"), "isEqual:", [equal UUID]);
    }

    else
    {
      v5 = 1;
    }

    if (-[CLBeaconIdentityCondition major](self, "major") || [equal major])
    {
      v6 = -[NSNumber isEqual:](-[CLBeaconIdentityCondition major](self, "major"), "isEqual:", [equal major]);
    }

    else
    {
      v6 = 1;
    }

    if (-[CLBeaconIdentityCondition minor](self, "minor") || [equal minor])
    {
      v7 = -[NSNumber isEqual:](-[CLBeaconIdentityCondition minor](self, "minor"), "isEqual:", [equal minor]);
      if (v5)
      {
        return v6 & v7;
      }
    }

    else
    {
      v7 = 1;
      if (v5)
      {
        return v6 & v7;
      }
    }
  }

  return 0;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)[(CLBeaconIdentityCondition *)self UUID] hash];
  v4 = [(NSNumber *)[(CLBeaconIdentityCondition *)self major] hash]^ v3;
  return v4 ^ [(NSNumber *)[(CLBeaconIdentityCondition *)self minor] hash];
}

@end