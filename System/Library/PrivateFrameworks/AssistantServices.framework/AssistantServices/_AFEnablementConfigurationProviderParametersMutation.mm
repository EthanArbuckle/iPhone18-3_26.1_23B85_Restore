@interface _AFEnablementConfigurationProviderParametersMutation
- (BOOL)getNewUser;
- (BOOL)getRecognitionLanguageWithMultipleOutputVoicesExists;
- (_AFEnablementConfigurationProviderParametersMutation)initWithBase:(id)base;
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
    outputVoiceCountForRecognitionLanguage = self->_outputVoiceCountForRecognitionLanguage;
  }

  else
  {
    outputVoiceCountForRecognitionLanguage = [(AFEnablementConfigurationProviderParameters *)self->_base outputVoiceCountForRecognitionLanguage];
  }

  return outputVoiceCountForRecognitionLanguage;
}

- (id)getDateEndedResolvingExperiment
{
  if ((*&self->_mutationFlags & 0x200) != 0)
  {
    dateEndedResolvingExperiment = self->_dateEndedResolvingExperiment;
  }

  else
  {
    dateEndedResolvingExperiment = [(AFEnablementConfigurationProviderParameters *)self->_base dateEndedResolvingExperiment];
  }

  return dateEndedResolvingExperiment;
}

- (id)getDateStartedResolvingExperiment
{
  if ((*&self->_mutationFlags & 0x100) != 0)
  {
    dateStartedResolvingExperiment = self->_dateStartedResolvingExperiment;
  }

  else
  {
    dateStartedResolvingExperiment = [(AFEnablementConfigurationProviderParameters *)self->_base dateStartedResolvingExperiment];
  }

  return dateStartedResolvingExperiment;
}

- (id)getExperimentFetchError
{
  if ((*&self->_mutationFlags & 0x80) != 0)
  {
    experimentFetchError = self->_experimentFetchError;
  }

  else
  {
    experimentFetchError = [(AFEnablementConfigurationProviderParameters *)self->_base experimentFetchError];
  }

  return experimentFetchError;
}

- (id)getExperiment
{
  if ((*&self->_mutationFlags & 0x40) != 0)
  {
    experiment = self->_experiment;
  }

  else
  {
    experiment = [(AFEnablementConfigurationProviderParameters *)self->_base experiment];
  }

  return experiment;
}

- (id)getDateEndedResolvingUserStatus
{
  if ((*&self->_mutationFlags & 0x20) != 0)
  {
    dateEndedResolvingUserStatus = self->_dateEndedResolvingUserStatus;
  }

  else
  {
    dateEndedResolvingUserStatus = [(AFEnablementConfigurationProviderParameters *)self->_base dateEndedResolvingUserStatus];
  }

  return dateEndedResolvingUserStatus;
}

- (id)getDateStartedResolvingUserStatus
{
  if ((*&self->_mutationFlags & 0x10) != 0)
  {
    dateStartedResolvingUserStatus = self->_dateStartedResolvingUserStatus;
  }

  else
  {
    dateStartedResolvingUserStatus = [(AFEnablementConfigurationProviderParameters *)self->_base dateStartedResolvingUserStatus];
  }

  return dateStartedResolvingUserStatus;
}

- (id)getUserStatusFetchError
{
  if ((*&self->_mutationFlags & 8) != 0)
  {
    userStatusFetchError = self->_userStatusFetchError;
  }

  else
  {
    userStatusFetchError = [(AFEnablementConfigurationProviderParameters *)self->_base userStatusFetchError];
  }

  return userStatusFetchError;
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

- (_AFEnablementConfigurationProviderParametersMutation)initWithBase:(id)base
{
  baseCopy = base;
  v9.receiver = self;
  v9.super_class = _AFEnablementConfigurationProviderParametersMutation;
  v6 = [(_AFEnablementConfigurationProviderParametersMutation *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_base, base);
  }

  return v7;
}

@end