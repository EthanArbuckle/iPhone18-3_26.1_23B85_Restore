@interface _AFEnablementConfigurationProviderParametersMutation
- (BOOL)getNewUser;
- (BOOL)getRecognitionLanguageWithMultipleOutputVoicesExists;
- (_AFEnablementConfigurationProviderParametersMutation)initWithBase:(id)a3;
- (id)getDateEndedResolvingExperiment;
- (id)getDateEndedResolvingUserStatus;
- (id)getDateStartedResolvingExperiment;
- (id)getDateStartedResolvingUserStatus;
- (id)getExperiment;
- (id)getExperimentFetchError;
- (id)getOutputVoiceCountForRecognitionLanguage;
- (id)getUserStatusFetchError;
- (int64_t)getEnablementFlow;
@end

@implementation _AFEnablementConfigurationProviderParametersMutation

- (BOOL)getRecognitionLanguageWithMultipleOutputVoicesExists
{
  if ((*&self->_mutationFlags & 0x800) != 0)
  {
    return self->_recognitionLanguageWithMultipleOutputVoicesExists;
  }

  else
  {
    return [(AFEnablementConfigurationProviderParameters *)self->_base recognitionLanguageWithMultipleOutputVoicesExists];
  }
}

- (id)getOutputVoiceCountForRecognitionLanguage
{
  if ((*&self->_mutationFlags & 0x400) != 0)
  {
    v2 = self->_outputVoiceCountForRecognitionLanguage;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base outputVoiceCountForRecognitionLanguage];
  }

  return v2;
}

- (id)getDateEndedResolvingExperiment
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    v2 = self->_dateEndedResolvingExperiment;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base dateEndedResolvingExperiment];
  }

  return v2;
}

- (id)getDateStartedResolvingExperiment
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    v2 = self->_dateStartedResolvingExperiment;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base dateStartedResolvingExperiment];
  }

  return v2;
}

- (id)getExperimentFetchError
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    v2 = self->_experimentFetchError;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base experimentFetchError];
  }

  return v2;
}

- (id)getExperiment
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    v2 = self->_experiment;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base experiment];
  }

  return v2;
}

- (id)getDateEndedResolvingUserStatus
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    v2 = self->_dateEndedResolvingUserStatus;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base dateEndedResolvingUserStatus];
  }

  return v2;
}

- (id)getDateStartedResolvingUserStatus
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    v2 = self->_dateStartedResolvingUserStatus;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base dateStartedResolvingUserStatus];
  }

  return v2;
}

- (id)getUserStatusFetchError
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    v2 = self->_userStatusFetchError;
  }

  else
  {
    v2 = [(AFEnablementConfigurationProviderParameters *)self->_base userStatusFetchError];
  }

  return v2;
}

- (BOOL)getNewUser
{
  if ((*&self->_mutationFlags & 4) != 0)
  {
    return self->_newUser;
  }

  else
  {
    return [(AFEnablementConfigurationProviderParameters *)self->_base newUser];
  }
}

- (int64_t)getEnablementFlow
{
  if ((*&self->_mutationFlags & 2) != 0)
  {
    return self->_enablementFlow;
  }

  else
  {
    return [(AFEnablementConfigurationProviderParameters *)self->_base enablementFlow];
  }
}

- (_AFEnablementConfigurationProviderParametersMutation)initWithBase:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = _AFEnablementConfigurationProviderParametersMutation;
  v6 = [(_AFEnablementConfigurationProviderParametersMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, a3);
  }

  return v7;
}

@end