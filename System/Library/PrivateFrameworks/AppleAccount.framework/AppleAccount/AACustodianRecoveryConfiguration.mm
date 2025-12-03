@interface AACustodianRecoveryConfiguration
- (AACustodianRecoveryConfiguration)initWithCoder:(id)coder;
- (AACustodianRecoveryConfiguration)initWithConfigurationDictionary:(id)dictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AACustodianRecoveryConfiguration

- (AACustodianRecoveryConfiguration)initWithConfigurationDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = AACustodianRecoveryConfiguration;
  v5 = [(AACustodianRecoveryConfiguration *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"codeLength"];
    v5->_codeLength = [v6 integerValue];
    v7 = [dictionaryCopy objectForKeyedSubscript:@"maxSessionTTL"];
    v5->_maxSessionTime = [v7 integerValue];
  }

  return v5;
}

- (AACustodianRecoveryConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = AACustodianRecoveryConfiguration;
  v5 = [(AACustodianRecoveryConfiguration *)&v7 init];
  if (v5)
  {
    v5->_codeLength = [coderCopy decodeIntegerForKey:@"codeLength"];
    v5->_maxSessionTime = [coderCopy decodeIntegerForKey:@"maxSessionTTL"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  codeLength = self->_codeLength;
  coderCopy = coder;
  [coderCopy encodeInteger:codeLength forKey:@"codeLength"];
  [coderCopy encodeInteger:self->_maxSessionTime forKey:@"maxSessionTTL"];
}

- (id)copyWithZone:(_NSZone *)zone
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