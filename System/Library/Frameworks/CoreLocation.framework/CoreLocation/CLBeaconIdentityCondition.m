@interface CLBeaconIdentityCondition
+ (id)any;
- (BOOL)isEqual:(id)a3;
- (CLBeaconIdentityCondition)initWithCoder:(id)a3;
- (CLBeaconIdentityCondition)initWithUUID:(NSUUID *)uuid;
- (id)_initWithUUID:(id)a3 major:(id)a4 minor:(id)a5;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
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

- (id)_initWithUUID:(id)a3 major:(id)a4 minor:(id)a5
{
  v10.receiver = self;
  v10.super_class = CLBeaconIdentityCondition;
  v8 = [(CLCondition *)&v10 initCondition];
  if (v8)
  {
    v8[9] = a3;
    v8[10] = a4;
    v8[11] = a5;
  }

  return v8;
}

+ (id)any
{
  v2 = [[CLBeaconIdentityCondition alloc] _initWithUUID:0 major:0 minor:0];

  return v2;
}

- (CLBeaconIdentityCondition)initWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  v6 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconIdentityConstraintUUID"];
  v7 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconIdentityConstraintMajor"];
  v8 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLBeaconIdentityConstraintMinor"];

  return [(CLBeaconIdentityCondition *)self _initWithUUID:v6 major:v7 minor:v8];
}

- (void)encodeWithCoder:(id)a3
{
  if (([a3 allowsKeyedCoding] & 1) == 0)
  {
    [objc_msgSend(MEMORY[0x1E696AAA8] "currentHandler")];
  }

  [a3 encodeObject:self->_UUID forKey:@"kCLBeaconIdentityConstraintUUID"];
  [a3 encodeObject:self->_major forKey:@"kCLBeaconIdentityConstraintMajor"];
  minor = self->_minor;

  [a3 encodeObject:minor forKey:@"kCLBeaconIdentityConstraintMinor"];
}

- (BOOL)isEqual:(id)a3
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (-[CLBeaconIdentityCondition UUID](self, "UUID") || [a3 UUID])
    {
      v5 = -[NSUUID isEqual:](-[CLBeaconIdentityCondition UUID](self, "UUID"), "isEqual:", [a3 UUID]);
    }

    else
    {
      v5 = 1;
    }

    if (-[CLBeaconIdentityCondition major](self, "major") || [a3 major])
    {
      v6 = -[NSNumber isEqual:](-[CLBeaconIdentityCondition major](self, "major"), "isEqual:", [a3 major]);
    }

    else
    {
      v6 = 1;
    }

    if (-[CLBeaconIdentityCondition minor](self, "minor") || [a3 minor])
    {
      v7 = -[NSNumber isEqual:](-[CLBeaconIdentityCondition minor](self, "minor"), "isEqual:", [a3 minor]);
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