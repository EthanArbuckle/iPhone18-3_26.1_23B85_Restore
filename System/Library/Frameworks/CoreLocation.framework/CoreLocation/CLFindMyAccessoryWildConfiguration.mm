@interface CLFindMyAccessoryWildConfiguration
- (CLFindMyAccessoryWildConfiguration)initWithCoder:(id)a3;
- (CLFindMyAccessoryWildConfiguration)initWithDesiredNextKeyRollDate:(id)a3 keyRollInterval:(unsigned int)a4 keysRemainingInWildPeriod:(unsigned __int16)a5 wildPeriodKeyCount:(unsigned __int16)a6;
- (id)encodeConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessoryWildConfiguration

- (CLFindMyAccessoryWildConfiguration)initWithDesiredNextKeyRollDate:(id)a3 keyRollInterval:(unsigned int)a4 keysRemainingInWildPeriod:(unsigned __int16)a5 wildPeriodKeyCount:(unsigned __int16)a6
{
  v12.receiver = self;
  v12.super_class = CLFindMyAccessoryWildConfiguration;
  v10 = [(CLFindMyAccessoryWildConfiguration *)&v12 init];
  if (v10)
  {
    v10->_desiredKeyRollDate = [a3 copy];
    v10->_keyRollInterval = a4;
    v10->_keysRemaining = a5;
    v10->_keyCount = a6;
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

- (CLFindMyAccessoryWildConfiguration)initWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = CLFindMyAccessoryWildConfiguration;
  v4 = [(CLFindMyAccessoryWildConfiguration *)&v6 init];
  if (v4)
  {
    v4->_desiredKeyRollDate = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
    v4->_keyRollInterval = [a3 decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationKeyRollInterval"];
    v4->_keysRemaining = [a3 decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationKeysRemaining"];
    v4->_keyCount = [a3 decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationKeyCount"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt:self->_keyCount forKey:@"kCLFindMyAccessoryWildConfigurationKeyCount"];
  [a3 encodeInt:self->_keysRemaining forKey:@"kCLFindMyAccessoryWildConfigurationKeysRemaining"];
  [a3 encodeInt:self->_keyRollInterval forKey:@"kCLFindMyAccessoryWildConfigurationKeyRollInterval"];
  desiredKeyRollDate = self->_desiredKeyRollDate;

  [a3 encodeObject:desiredKeyRollDate forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
}

@end