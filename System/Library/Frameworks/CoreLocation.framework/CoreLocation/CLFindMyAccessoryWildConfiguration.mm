@interface CLFindMyAccessoryWildConfiguration
- (CLFindMyAccessoryWildConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryWildConfiguration)initWithDesiredNextKeyRollDate:(id)date keyRollInterval:(unsigned int)interval keysRemainingInWildPeriod:(unsigned __int16)period wildPeriodKeyCount:(unsigned __int16)count;
- (id)encodeConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryWildConfiguration

- (CLFindMyAccessoryWildConfiguration)initWithDesiredNextKeyRollDate:(id)date keyRollInterval:(unsigned int)interval keysRemainingInWildPeriod:(unsigned __int16)period wildPeriodKeyCount:(unsigned __int16)count
{
  v12.receiver = self;
  v12.super_class = CLFindMyAccessoryWildConfiguration;
  v10 = [(CLFindMyAccessoryWildConfiguration *)&v12 init];
  if (v10)
  {
    v10->_desiredKeyRollDate = [date copy];
    v10->_keyRollInterval = interval;
    v10->_keysRemaining = period;
    v10->_keyCount = count;
  }

  return v10;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryWildConfiguration;
  [(CLFindMyAccessoryWildConfiguration *)&v3 dealloc];
}

- (id)encodeConfiguration
{
  -[NSDate timeIntervalSinceDate:](self->_desiredKeyRollDate, "timeIntervalSinceDate:", [MEMORY[0x1E695DF00] date]);
  if (v3 <= 0.0)
  {
    LODWORD(v4) = self->_keyRollInterval;
    v3 = v3 + v4;
    keysRemaining = self->_keysRemaining;
    v7 = keysRemaining != 0;
    v5 = keysRemaining - 1;
    if (v5 == 0 || !v7)
    {
      LOWORD(v5) = self->_keyCount;
    }

    self->_keysRemaining = v5;
  }

  else
  {
    LOWORD(v5) = self->_keysRemaining;
  }

  v9 = (v3 * 1000.0);
  v10 = v5;
  keyCount = self->_keyCount;
  return [MEMORY[0x1E695DEF0] dataWithBytes:&v9 length:8];
}

- (CLFindMyAccessoryWildConfiguration)initWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = CLFindMyAccessoryWildConfiguration;
  v4 = [(CLFindMyAccessoryWildConfiguration *)&v6 init];
  if (v4)
  {
    v4->_desiredKeyRollDate = [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
    v4->_keyRollInterval = [coder decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationKeyRollInterval"];
    v4->_keysRemaining = [coder decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationKeysRemaining"];
    v4->_keyCount = [coder decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationKeyCount"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt:self->_keyCount forKey:@"kCLFindMyAccessoryWildConfigurationKeyCount"];
  [coder encodeInt:self->_keysRemaining forKey:@"kCLFindMyAccessoryWildConfigurationKeysRemaining"];
  [coder encodeInt:self->_keyRollInterval forKey:@"kCLFindMyAccessoryWildConfigurationKeyRollInterval"];
  desiredKeyRollDate = self->_desiredKeyRollDate;

  [coder encodeObject:desiredKeyRollDate forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
}

@end