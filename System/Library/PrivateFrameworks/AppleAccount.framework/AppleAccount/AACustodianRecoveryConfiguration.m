@interface AACustodianRecoveryConfiguration
- (AACustodianRecoveryConfiguration)initWithCoder:(id)a3;
- (AACustodianRecoveryConfiguration)initWithConfigurationDictionary:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AACustodianRecoveryConfiguration

- (AACustodianRecoveryConfiguration)initWithConfigurationDictionary:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = AACustodianRecoveryConfiguration;
  v5 = [(AACustodianRecoveryConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [v4 objectForKeyedSubscript:@"codeLength"];
    v5->_codeLength = [v6 integerValue];
    v7 = [v4 objectForKeyedSubscript:@"maxSessionTTL"];
    v5->_maxSessionTime = [v7 integerValue];
  }

  return v5;
}

- (AACustodianRecoveryConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = AACustodianRecoveryConfiguration;
  v5 = [(AACustodianRecoveryConfiguration *)&v7 init];
  if (v5)
  {
    v5->_codeLength = [v4 decodeIntegerForKey:@"codeLength"];
    v5->_maxSessionTime = [v4 decodeIntegerForKey:@"maxSessionTTL"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  codeLength = self->_codeLength;
  v5 = a3;
  [v5 encodeInteger:codeLength forKey:@"codeLength"];
  [v5 encodeInteger:self->_maxSessionTime forKey:@"maxSessionTTL"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  result = [[AACustodianRecoveryConfiguration allocWithZone:?]];
  *(result + 1) = self->_codeLength;
  *(result + 2) = self->_maxSessionTime;
  return result;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:self->_codeLength];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:self->_maxSessionTime];
  v7 = [v3 stringWithFormat:@"<%@: %p> codeLength: %@, maxSessionTime: %@", v4, self, v5, v6];

  return v7;
}

@end