@interface BLSDurationAttribute
+ (id)cancelAfterInterval:(double)interval;
+ (id)timeoutAfterInterval:(double)interval;
+ (id)warnAfterInterval:(double)interval;
- (BLSDurationAttribute)initWithCoder:(id)coder;
- (BLSDurationAttribute)initWithDuration:(double)duration;
- (BLSDurationAttribute)initWithXPCDictionary:(id)dictionary;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (unint64_t)hash;
- (void)encodeWithXPCDictionary:(id)dictionary;
@end

@implementation BLSDurationAttribute

- (unint64_t)hash
{
  builder = [MEMORY[0x277CF0C40] builder];
  v4 = [builder appendDouble:self->_duration];
  v5 = [builder hash];

  return v5;
}

+ (id)cancelAfterInterval:(double)interval
{
  v3 = [(BLSDurationAttribute *)[BLSInvalidationDurationAttribute alloc] initWithDuration:interval];

  return v3;
}

+ (id)warnAfterInterval:(double)interval
{
  v3 = [(BLSDurationAttribute *)[BLSWarningDurationAttribute alloc] initWithDuration:interval];

  return v3;
}

+ (id)timeoutAfterInterval:(double)interval
{
  v3 = [(BLSDurationAttribute *)[BLSTimeoutDurationAttribute alloc] initWithDuration:interval];

  return v3;
}

- (BLSDurationAttribute)initWithDuration:(double)duration
{
  selfCopy = self;
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
    v9.receiver = selfCopy;
    v9.super_class = BLSDurationAttribute;
    v7 = [(BLSAttribute *)&v9 init];
    if (v7)
    {
      v7->_duration = duration;
    }

    selfCopy = v7;
    v6 = selfCopy;
  }

  return v6;
}

- (NSString)description
{
  v3 = [MEMORY[0x277CF0C00] builderWithObject:self];
  v4 = [v3 appendTimeInterval:@"duration" withName:1 decomposeUnits:self->_duration];
  build = [v3 build];

  return build;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (BLSDurationAttribute)initWithXPCDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = xpc_dictionary_get_double(dictionaryCopy, [@"duration" UTF8String]);

  return [(BLSDurationAttribute *)self initWithDuration:v5];
}

- (void)encodeWithXPCDictionary:(id)dictionary
{
  xdict = dictionary;
  xpc_dictionary_set_double(xdict, [@"duration" UTF8String], self->_duration);
}

- (BLSDurationAttribute)initWithCoder:(id)coder
{
  [coder decodeDoubleForKey:@"duration"];

  return [(BLSDurationAttribute *)self initWithDuration:?];
}

@end