@interface CLFindMyAccessoryAbsoluteWildConfiguration
- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithCoder:(id)coder;
- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithDesiredNextKeyRollDate:(id)date nextWildIndex:(unsigned int)index;
- (id)encodeConfiguration;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CLFindMyAccessoryAbsoluteWildConfiguration

- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithDesiredNextKeyRollDate:(id)date nextWildIndex:(unsigned int)index
{
  v8.receiver = self;
  v8.super_class = CLFindMyAccessoryAbsoluteWildConfiguration;
  v6 = [(CLFindMyAccessoryAbsoluteWildConfiguration *)&v8 init];
  if (v6)
  {
    v6->_desiredKeyRollDate = [date copy];
    v6->_nextWildIndex = index;
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

- (CLFindMyAccessoryAbsoluteWildConfiguration)initWithCoder:(id)coder
{
  [coder decodeObjectOfClass:objc_opt_class() forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
  [coder decodeIntForKey:@"kCLFindMyAccessoryWildConfigurationNextWildKeyIndex"];

  return MEMORY[0x1EEE66B58](self, sel_initWithDesiredNextKeyRollDate_nextWildIndex_);
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_desiredKeyRollDate forKey:@"kCLFindMyAccessoryWildConfigurationRollDate"];
  nextWildIndex = self->_nextWildIndex;

  [coder encodeInt:nextWildIndex forKey:@"kCLFindMyAccessoryWildConfigurationNextWildKeyIndex"];
}

@end