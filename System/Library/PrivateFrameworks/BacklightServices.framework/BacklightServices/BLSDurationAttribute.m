@interface BLSDurationAttribute
+ (id)cancelAfterInterval:(double)a3;
+ (id)timeoutAfterInterval:(double)a3;
+ (id)warnAfterInterval:(double)a3;
- (BLSDurationAttribute)initWithCoder:(id)a3;
- (BLSDurationAttribute)initWithDuration:(double)a3;
- (BLSDurationAttribute)initWithXPCDictionary:(id)a3;
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)a3;
@end

@implementation BLSDurationAttribute

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CF0C40] builder];
  v4 = [v3 appendDouble:self->_duration];
  v5 = [v3 hash];

  return v5;
}

+ (id)cancelAfterInterval:(double)a3
{
  v3 = [(BLSDurationAttribute *)[BLSInvalidationDurationAttribute alloc] initWithDuration:a3];

  return v3;
}

+ (id)warnAfterInterval:(double)a3
{
  v3 = [(BLSDurationAttribute *)[BLSWarningDurationAttribute alloc] initWithDuration:a3];

  return v3;
}

+ (id)timeoutAfterInterval:(double)a3
{
  v3 = [(BLSDurationAttribute *)[BLSTimeoutDurationAttribute alloc] initWithDuration:a3];

  return v3;
}

- (BLSDurationAttribute)initWithDuration:(double)a3
{
  v4 = self;
  if ([(BLSDurationAttribute *)self isMemberOfClass:objc_opt_class()])
  {
    v5 = bls_assertions_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [BLSDurationAttribute initWithDuration:v5];
    }

    v6 = 0;
  }

  else
  {
    v9.receiver = v4;
    v9.super_class = BLSDurationAttribute;
    v7 = [(BLSAttribute *)&v9 init];
    if (v7)
    {
      v7->_duration = a3;
    }

    v4 = v7;
    v6 = v4;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendTimeInterval:@"duration" withName:1 decomposeUnits:self->_duration];
  v5 = [v3 build];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      duration = self->_duration;
      [(BLSDurationAttribute *)v5 duration];
      if (duration == v7)
      {
        v8 = objc_opt_class();
        v9 = v8 == objc_opt_class();
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (BLSDurationAttribute)initWithXPCDictionary:(id)a3
{
  v4 = a3;
  v5 = xpc_dictionary_get_double(v4, [@"duration" UTF8String]);

  return [(BLSDurationAttribute *)self initWithDuration:v5];
}

- (void)encodeWithXPCDictionary:(id)a3
{
  xdict = a3;
  xpc_dictionary_set_double(xdict, [@"duration" UTF8String], self->_duration);
}

- (BLSDurationAttribute)initWithCoder:(id)a3
{
  [a3 decodeDoubleForKey:@"duration"];

  return [(BLSDurationAttribute *)self initWithDuration:?];
}

@end