@interface AEAssessmentParticipantConfiguration
+ (id)instanceFromIndividualConfiguration:(id)configuration;
- (AEAssessmentParticipantConfiguration)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)individualConfiguration;
- (uint64_t)isEqualToConfiguration:(uint64_t)configuration;
- (unint64_t)hash;
@end

@implementation AEAssessmentParticipantConfiguration

- (AEAssessmentParticipantConfiguration)init
{
  v6.receiver = self;
  v6.super_class = AEAssessmentParticipantConfiguration;
  v2 = [(AEAssessmentParticipantConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    *&v2->_allowsNetworkAccess = 1;
    configurationInfo = v2->_configurationInfo;
    v2->_configurationInfo = MEMORY[0x277CBEC10];
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[AEAssessmentParticipantConfiguration allocWithZone:?]];
  v4->_allowsNetworkAccess = self->_allowsNetworkAccess;
  v4->_required = self->_required;
  v5 = [(NSDictionary *)self->_configurationInfo copy];
  configurationInfo = v4->_configurationInfo;
  v4->_configurationInfo = v5;

  return v4;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x277CCABB0] numberWithBool:self->_allowsNetworkAccess];
  v4 = [v3 hash];
  v5 = [MEMORY[0x277CCABB0] numberWithBool:self->_required];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSDictionary *)self->_configurationInfo hash];

  return v6 ^ v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy)
  {
    if (equalCopy == self)
    {
      v6 = 1;
      goto LABEL_6;
    }

    if ([(AEAssessmentParticipantConfiguration *)equalCopy isMemberOfClass:objc_opt_class()])
    {
      v6 = [(AEAssessmentParticipantConfiguration *)self isEqualToConfiguration:v5];
      goto LABEL_6;
    }
  }

  v6 = 0;
LABEL_6:

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = @"No";
  if (self->_allowsNetworkAccess)
  {
    v6 = @"Yes";
  }

  else
  {
    v6 = @"No";
  }

  if (self->_required)
  {
    v5 = @"Yes";
  }

  return [v3 stringWithFormat:@"<%@: %p { allowsNetworkAccess = %@, required = %@, configurationInfo = %@ }>", v4, self, v6, v5, self->_configurationInfo];
}

- (id)individualConfiguration
{
  v3 = objc_opt_new();
  [v3 setAllowsNetworkAccess:self->_allowsNetworkAccess];
  [v3 setRequired:self->_required];
  v4 = [(NSDictionary *)self->_configurationInfo copy];
  [v3 setConfigurationInfo:v4];

  return v3;
}

+ (id)instanceFromIndividualConfiguration:(id)configuration
{
  if (configuration)
  {
    configurationCopy = configuration;
    v4 = objc_opt_new();
    *(v4 + 8) = [configurationCopy allowsNetworkAccess];
    *(v4 + 9) = [configurationCopy isRequired];
    configurationInfo = [configurationCopy configurationInfo];

    v6 = [configurationInfo copy];
    v7 = *(v4 + 16);
    *(v4 + 16) = v6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (uint64_t)isEqualToConfiguration:(uint64_t)configuration
{
  v3 = a2;
  v4 = v3;
  if (configuration)
  {
    if (*(configuration + 8) == *(v3 + 8) && *(configuration + 9) == *(v3 + 9))
    {
      v5 = *(configuration + 16);
      if (v5 | v4[2])
      {
        configuration = [v5 isEqual:?];
      }

      else
      {
        configuration = 1;
      }
    }

    else
    {
      configuration = 0;
    }
  }

  return configuration;
}

@end