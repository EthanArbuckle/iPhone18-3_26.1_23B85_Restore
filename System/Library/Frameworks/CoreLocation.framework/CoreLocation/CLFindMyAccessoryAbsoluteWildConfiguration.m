@interface CLFindMyAccessoryAbsoluteWildConfiguration
- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithCoder:(id)a3;
- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithDesiredNextKeyRollDate:(id)a3 nextWildIndex:(unsigned int)a4;
- (id)encodeConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CLFindMyAccessoryAbsoluteWildConfiguration

- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithDesiredNextKeyRollDate:(id)a3 nextWildIndex:(unsigned int)a4
{
  v8.receiver = self;
  v8.super_class = CLFindMyAccessoryAbsoluteWildConfiguration;
  v6 = [(CLFindMyAccessoryAbsoluteWildConfiguration *)&v8 init];
  if (v6)
  {
    v6->_desiredKeyRollDate = [a3 copy];
    v6->_nextWildIndex = a4;
  }

  return v6;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLFindMyAccessoryAbsoluteWildConfiguration;
  [(CLFindMyAccessoryAbsoluteWildConfiguration *)&v3 dealloc];
}

- (id)encodeConfiguration
{
  -[NSDate timeIntervalSinceDate:](self->_desiredKeyRollDate, "timeIntervalSinceDate:", [MEMORY[0x1E695DF00] date]);
  nextWildIndex = self->_nextWildIndex;
  v6[0] = (v3 * 1000.0);
  v6[1] = nextWildIndex;
  return [MEMORY[0x1E695DEF0] dataWithBytes:v6 length:8];
}

- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithCoder:(id)a3
{
  [a3 decodeObjectOfClass:objc_opt_class() forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
  [a3 decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationNextWildKeyIndex"];

  return MEMORY[0x1EEE66B58](self, sel_initWithDesiredNextKeyRollDate_nextWildIndex_);
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_desiredKeyRollDate forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
  nextWildIndex = self->_nextWildIndex;

  [a3 encodeInt:nextWildIndex forKey:@"kCLFindMyAccessoryWildConfigurationNextWildKeyIndex"];
}

@end