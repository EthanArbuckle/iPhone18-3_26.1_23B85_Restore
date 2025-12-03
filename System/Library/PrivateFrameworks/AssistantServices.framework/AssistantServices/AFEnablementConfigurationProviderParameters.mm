@interface AFEnablementConfigurationProviderParameters
+ (id)newWithBuilder:(id)builder;
- (AFEnablementConfigurationProviderParameters)initWithBuilder:(id)builder;
- (AFEnablementConfigurationProviderParameters)initWithCoder:(id)coder;
- (AFEnablementConfigurationProviderParameters)initWithEnablementFlow:(int64_t)flow newUser:(BOOL)user userStatusFetchError:(id)error dateStartedResolvingUserStatus:(id)status dateEndedResolvingUserStatus:(id)userStatus experiment:(id)experiment experimentFetchError:(id)fetchError dateStartedResolvingExperiment:(id)self0 dateEndedResolvingExperiment:(id)self1 outputVoiceCountForRecognitionLanguage:(id)self2 recognitionLanguageWithMultipleOutputVoicesExists:(BOOL)self3;
- (BOOL)isEqual:(id)equal;
- (id)_descriptionWithIndent:(unint64_t)indent;
- (id)mutatedCopyWithMutator:(id)mutator;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AFEnablementConfigurationProviderParameters

- (void)encodeWithCoder:(id)coder
{
  v4 = MEMORY[0x1E696AD98];
  enablementFlow = self->_enablementFlow;
  coderCopy = coder;
  v7 = [v4 numberWithInteger:enablementFlow];
  [coderCopy encodeObject:v7 forKey:@"AFEnablementConfigurationProviderParameters::enablementFlow"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_newUser];
  [coderCopy encodeObject:v8 forKey:@"AFEnablementConfigurationProviderParameters::newUser"];

  [coderCopy encodeObject:self->_userStatusFetchError forKey:@"AFEnablementConfigurationProviderParameters::userStatusFetchError"];
  [coderCopy encodeObject:self->_dateStartedResolvingUserStatus forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingUserStatus"];
  [coderCopy encodeObject:self->_dateEndedResolvingUserStatus forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingUserStatus"];
  [coderCopy encodeObject:self->_experiment forKey:@"AFEnablementConfigurationProviderParameters::experiment"];
  [coderCopy encodeObject:self->_experimentFetchError forKey:@"AFEnablementConfigurationProviderParameters::experimentFetchError"];
  [coderCopy encodeObject:self->_dateStartedResolvingExperiment forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingExperiment"];
  [coderCopy encodeObject:self->_dateEndedResolvingExperiment forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingExperiment"];
  [coderCopy encodeObject:self->_outputVoiceCountForRecognitionLanguage forKey:@"AFEnablementConfigurationProviderParameters::outputVoiceCountForRecognitionLanguage"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_recognitionLanguageWithMultipleOutputVoicesExists];
  [coderCopy encodeObject:v9 forKey:@"AFEnablementConfigurationProviderParameters::recognitionLanguageWithMultipleOutputVoicesExists"];
}

- (AFEnablementConfigurationProviderParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::enablementFlow"];
  integerValue = [v4 integerValue];

  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::newUser"];
  bOOLValue = [v5 BOOLValue];

  v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::userStatusFetchError"];
  v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingUserStatus"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingUserStatus"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::experiment"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::experimentFetchError"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingExperiment"];
  v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingExperiment"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"AFEnablementConfigurationProviderParameters::outputVoiceCountForRecognitionLanguage"];

  v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::recognitionLanguageWithMultipleOutputVoicesExists"];

  LOBYTE(coderCopy) = [v16 BOOLValue];
  LOBYTE(v19) = coderCopy;
  v17 = [(AFEnablementConfigurationProviderParameters *)self initWithEnablementFlow:integerValue newUser:bOOLValue userStatusFetchError:v21 dateStartedResolvingUserStatus:v20 dateEndedResolvingUserStatus:v6 experiment:v7 experimentFetchError:v8 dateStartedResolvingExperiment:v9 dateEndedResolvingExperiment:v10 outputVoiceCountForRecognitionLanguage:v15 recognitionLanguageWithMultipleOutputVoicesExists:v19];

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      enablementFlow = self->_enablementFlow;
      if (enablementFlow == [(AFEnablementConfigurationProviderParameters *)v5 enablementFlow]&& (newUser = self->_newUser, newUser == [(AFEnablementConfigurationProviderParameters *)v5 newUser]) && (recognitionLanguageWithMultipleOutputVoicesExists = self->_recognitionLanguageWithMultipleOutputVoicesExists, recognitionLanguageWithMultipleOutputVoicesExists == [(AFEnablementConfigurationProviderParameters *)v5 recognitionLanguageWithMultipleOutputVoicesExists]))
      {
        userStatusFetchError = [(AFEnablementConfigurationProviderParameters *)v5 userStatusFetchError];
        userStatusFetchError = self->_userStatusFetchError;
        if (userStatusFetchError == userStatusFetchError || [(NSError *)userStatusFetchError isEqual:userStatusFetchError])
        {
          dateStartedResolvingUserStatus = [(AFEnablementConfigurationProviderParameters *)v5 dateStartedResolvingUserStatus];
          dateStartedResolvingUserStatus = self->_dateStartedResolvingUserStatus;
          if (dateStartedResolvingUserStatus == dateStartedResolvingUserStatus || [(NSDate *)dateStartedResolvingUserStatus isEqual:dateStartedResolvingUserStatus])
          {
            dateEndedResolvingUserStatus = [(AFEnablementConfigurationProviderParameters *)v5 dateEndedResolvingUserStatus];
            dateEndedResolvingUserStatus = self->_dateEndedResolvingUserStatus;
            if (dateEndedResolvingUserStatus == dateEndedResolvingUserStatus || [(NSDate *)dateEndedResolvingUserStatus isEqual:dateEndedResolvingUserStatus])
            {
              experiment = [(AFEnablementConfigurationProviderParameters *)v5 experiment];
              experiment = self->_experiment;
              if (experiment == experiment || [(AFExperiment *)experiment isEqual:experiment])
              {
                experimentFetchError = [(AFEnablementConfigurationProviderParameters *)v5 experimentFetchError];
                experimentFetchError = self->_experimentFetchError;
                if (experimentFetchError == experimentFetchError || [(NSError *)experimentFetchError isEqual:experimentFetchError])
                {
                  dateStartedResolvingExperiment = [(AFEnablementConfigurationProviderParameters *)v5 dateStartedResolvingExperiment];
                  dateStartedResolvingExperiment = self->_dateStartedResolvingExperiment;
                  if (dateStartedResolvingExperiment == dateStartedResolvingExperiment || [(NSDate *)dateStartedResolvingExperiment isEqual:dateStartedResolvingExperiment])
                  {
                    dateEndedResolvingExperiment = [(AFEnablementConfigurationProviderParameters *)v5 dateEndedResolvingExperiment];
                    dateEndedResolvingExperiment = self->_dateEndedResolvingExperiment;
                    if (dateEndedResolvingExperiment == dateEndedResolvingExperiment || [(NSDate *)dateEndedResolvingExperiment isEqual:dateEndedResolvingExperiment])
                    {
                      v27 = dateEndedResolvingExperiment;
                      outputVoiceCountForRecognitionLanguage = [(AFEnablementConfigurationProviderParameters *)v5 outputVoiceCountForRecognitionLanguage];
                      outputVoiceCountForRecognitionLanguage = self->_outputVoiceCountForRecognitionLanguage;
                      v25 = outputVoiceCountForRecognitionLanguage == outputVoiceCountForRecognitionLanguage || [(NSDictionary *)outputVoiceCountForRecognitionLanguage isEqual:outputVoiceCountForRecognitionLanguage];

                      dateEndedResolvingExperiment = v27;
                    }

                    else
                    {
                      v25 = 0;
                    }
                  }

                  else
                  {
                    v25 = 0;
                  }
                }

                else
                {
                  v25 = 0;
                }
              }

              else
              {
                v25 = 0;
              }
            }

            else
            {
              v25 = 0;
            }
          }

          else
          {
            v25 = 0;
          }
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

- (unint64_t)hash
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:self->_enablementFlow];
  v4 = [v3 hash];
  v5 = [MEMORY[0x1E696AD98] numberWithBool:self->_newUser];
  v6 = [v5 hash] ^ v4;
  v7 = [(NSError *)self->_userStatusFetchError hash];
  v8 = v7 ^ [(NSDate *)self->_dateStartedResolvingUserStatus hash];
  v9 = v8 ^ [(NSDate *)self->_dateEndedResolvingUserStatus hash];
  v10 = v6 ^ v9 ^ [(AFExperiment *)self->_experiment hash];
  v11 = [(NSError *)self->_experimentFetchError hash];
  v12 = v11 ^ [(NSDate *)self->_dateStartedResolvingExperiment hash];
  v13 = v12 ^ [(NSDate *)self->_dateEndedResolvingExperiment hash];
  v14 = v13 ^ [(NSDictionary *)self->_outputVoiceCountForRecognitionLanguage hash];
  v15 = [MEMORY[0x1E696AD98] numberWithBool:self->_recognitionLanguageWithMultipleOutputVoicesExists];
  v16 = v14 ^ [v15 hash];

  return v10 ^ v16;
}

- (id)_descriptionWithIndent:(unint64_t)indent
{
  v4 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14.receiver = self;
  v14.super_class = AFEnablementConfigurationProviderParameters;
  v5 = [(AFEnablementConfigurationProviderParameters *)&v14 description];
  enablementFlow = self->_enablementFlow;
  if (enablementFlow > 9)
  {
    v7 = @"(unknown)";
  }

  else
  {
    v7 = off_1E73465B0[enablementFlow];
  }

  v8 = v7;
  v9 = v8;
  v10 = @"NO";
  if (self->_newUser)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  if (self->_recognitionLanguageWithMultipleOutputVoicesExists)
  {
    v10 = @"YES";
  }

  v12 = [v4 initWithFormat:@"%@ {enablementFlow = %@, newUser = %@, userStatusFetchError = %@, dateStartedResolvingUserStatus = %@, dateEndedResolvingUserStatus = %@, experiment = %@, experimentFetchError = %@, dateStartedResolvingExperiment = %@, dateEndedResolvingExperiment = %@, outputVoiceCountForRecognitionLanguage = %@, recognitionLanguageWithMultipleOutputVoicesExists = %@}", v5, v8, v11, *&self->_userStatusFetchError, *&self->_dateEndedResolvingUserStatus, *&self->_experimentFetchError, self->_dateEndedResolvingExperiment, self->_outputVoiceCountForRecognitionLanguage, v10];

  return v12;
}

- (AFEnablementConfigurationProviderParameters)initWithEnablementFlow:(int64_t)flow newUser:(BOOL)user userStatusFetchError:(id)error dateStartedResolvingUserStatus:(id)status dateEndedResolvingUserStatus:(id)userStatus experiment:(id)experiment experimentFetchError:(id)fetchError dateStartedResolvingExperiment:(id)self0 dateEndedResolvingExperiment:(id)self1 outputVoiceCountForRecognitionLanguage:(id)self2 recognitionLanguageWithMultipleOutputVoicesExists:(BOOL)self3
{
  errorCopy = error;
  statusCopy = status;
  userStatusCopy = userStatus;
  experimentCopy = experiment;
  fetchErrorCopy = fetchError;
  resolvingExperimentCopy = resolvingExperiment;
  endedResolvingExperimentCopy = endedResolvingExperiment;
  languageCopy = language;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __340__AFEnablementConfigurationProviderParameters_initWithEnablementFlow_newUser_userStatusFetchError_dateStartedResolvingUserStatus_dateEndedResolvingUserStatus_experiment_experimentFetchError_dateStartedResolvingExperiment_dateEndedResolvingExperiment_outputVoiceCountForRecognitionLanguage_recognitionLanguageWithMultipleOutputVoicesExists___block_invoke;
  v37[3] = &unk_1E7344B98;
  v45 = languageCopy;
  flowCopy = flow;
  userCopy = user;
  v38 = errorCopy;
  v39 = statusCopy;
  v40 = userStatusCopy;
  v41 = experimentCopy;
  v42 = fetchErrorCopy;
  v43 = resolvingExperimentCopy;
  v44 = endedResolvingExperimentCopy;
  existsCopy = exists;
  v24 = languageCopy;
  v25 = endedResolvingExperimentCopy;
  v26 = resolvingExperimentCopy;
  v27 = fetchErrorCopy;
  v28 = experimentCopy;
  v29 = userStatusCopy;
  v30 = statusCopy;
  v31 = errorCopy;
  v32 = [(AFEnablementConfigurationProviderParameters *)self initWithBuilder:v37];

  return v32;
}

void __340__AFEnablementConfigurationProviderParameters_initWithEnablementFlow_newUser_userStatusFetchError_dateStartedResolvingUserStatus_dateEndedResolvingUserStatus_experiment_experimentFetchError_dateStartedResolvingExperiment_dateEndedResolvingExperiment_outputVoiceCountForRecognitionLanguage_recognitionLanguageWithMultipleOutputVoicesExists___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 96);
  v4 = a2;
  [v4 setEnablementFlow:v3];
  [v4 setNewUser:*(a1 + 104)];
  [v4 setUserStatusFetchError:*(a1 + 32)];
  [v4 setDateStartedResolvingUserStatus:*(a1 + 40)];
  [v4 setDateEndedResolvingUserStatus:*(a1 + 48)];
  [v4 setExperiment:*(a1 + 56)];
  [v4 setExperimentFetchError:*(a1 + 64)];
  [v4 setDateStartedResolvingExperiment:*(a1 + 72)];
  [v4 setDateEndedResolvingExperiment:*(a1 + 80)];
  [v4 setOutputVoiceCountForRecognitionLanguage:*(a1 + 88)];
  [v4 setRecognitionLanguageWithMultipleOutputVoicesExists:*(a1 + 105)];
}

- (AFEnablementConfigurationProviderParameters)initWithBuilder:(id)builder
{
  builderCopy = builder;
  v33.receiver = self;
  v33.super_class = AFEnablementConfigurationProviderParameters;
  v5 = [(AFEnablementConfigurationProviderParameters *)&v33 init];
  v6 = v5;
  if (builderCopy && v5)
  {
    v7 = [[_AFEnablementConfigurationProviderParametersMutation alloc] initWithBase:0];
    builderCopy[2](builderCopy, v7);
    if ([(_AFEnablementConfigurationProviderParametersMutation *)v7 isDirty])
    {
      v6->_enablementFlow = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getEnablementFlow];
      v6->_newUser = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getNewUser];
      getUserStatusFetchError = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getUserStatusFetchError];
      v9 = [getUserStatusFetchError copy];
      userStatusFetchError = v6->_userStatusFetchError;
      v6->_userStatusFetchError = v9;

      getDateStartedResolvingUserStatus = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateStartedResolvingUserStatus];
      v12 = [getDateStartedResolvingUserStatus copy];
      dateStartedResolvingUserStatus = v6->_dateStartedResolvingUserStatus;
      v6->_dateStartedResolvingUserStatus = v12;

      getDateEndedResolvingUserStatus = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateEndedResolvingUserStatus];
      v15 = [getDateEndedResolvingUserStatus copy];
      dateEndedResolvingUserStatus = v6->_dateEndedResolvingUserStatus;
      v6->_dateEndedResolvingUserStatus = v15;

      getExperiment = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getExperiment];
      v18 = [getExperiment copy];
      experiment = v6->_experiment;
      v6->_experiment = v18;

      getExperimentFetchError = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getExperimentFetchError];
      v21 = [getExperimentFetchError copy];
      experimentFetchError = v6->_experimentFetchError;
      v6->_experimentFetchError = v21;

      getDateStartedResolvingExperiment = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateStartedResolvingExperiment];
      v24 = [getDateStartedResolvingExperiment copy];
      dateStartedResolvingExperiment = v6->_dateStartedResolvingExperiment;
      v6->_dateStartedResolvingExperiment = v24;

      getDateEndedResolvingExperiment = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateEndedResolvingExperiment];
      v27 = [getDateEndedResolvingExperiment copy];
      dateEndedResolvingExperiment = v6->_dateEndedResolvingExperiment;
      v6->_dateEndedResolvingExperiment = v27;

      getOutputVoiceCountForRecognitionLanguage = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getOutputVoiceCountForRecognitionLanguage];
      v30 = [getOutputVoiceCountForRecognitionLanguage copy];
      outputVoiceCountForRecognitionLanguage = v6->_outputVoiceCountForRecognitionLanguage;
      v6->_outputVoiceCountForRecognitionLanguage = v30;

      v6->_recognitionLanguageWithMultipleOutputVoicesExists = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getRecognitionLanguageWithMultipleOutputVoicesExists];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)builder
{
  builderCopy = builder;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:builderCopy];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)mutator
{
  mutatorCopy = mutator;
  if (mutatorCopy)
  {
    v5 = [[_AFEnablementConfigurationProviderParametersMutation alloc] initWithBase:self];
    mutatorCopy[2](mutatorCopy, v5);
    if ([(_AFEnablementConfigurationProviderParametersMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFEnablementConfigurationProviderParameters);
      v6->_enablementFlow = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getEnablementFlow];
      v6->_newUser = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getNewUser];
      getUserStatusFetchError = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getUserStatusFetchError];
      v8 = [getUserStatusFetchError copy];
      userStatusFetchError = v6->_userStatusFetchError;
      v6->_userStatusFetchError = v8;

      getDateStartedResolvingUserStatus = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateStartedResolvingUserStatus];
      v11 = [getDateStartedResolvingUserStatus copy];
      dateStartedResolvingUserStatus = v6->_dateStartedResolvingUserStatus;
      v6->_dateStartedResolvingUserStatus = v11;

      getDateEndedResolvingUserStatus = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateEndedResolvingUserStatus];
      v14 = [getDateEndedResolvingUserStatus copy];
      dateEndedResolvingUserStatus = v6->_dateEndedResolvingUserStatus;
      v6->_dateEndedResolvingUserStatus = v14;

      getExperiment = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getExperiment];
      v17 = [getExperiment copy];
      experiment = v6->_experiment;
      v6->_experiment = v17;

      getExperimentFetchError = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getExperimentFetchError];
      v20 = [getExperimentFetchError copy];
      experimentFetchError = v6->_experimentFetchError;
      v6->_experimentFetchError = v20;

      getDateStartedResolvingExperiment = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateStartedResolvingExperiment];
      v23 = [getDateStartedResolvingExperiment copy];
      dateStartedResolvingExperiment = v6->_dateStartedResolvingExperiment;
      v6->_dateStartedResolvingExperiment = v23;

      getDateEndedResolvingExperiment = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateEndedResolvingExperiment];
      v26 = [getDateEndedResolvingExperiment copy];
      dateEndedResolvingExperiment = v6->_dateEndedResolvingExperiment;
      v6->_dateEndedResolvingExperiment = v26;

      getOutputVoiceCountForRecognitionLanguage = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getOutputVoiceCountForRecognitionLanguage];
      v29 = [getOutputVoiceCountForRecognitionLanguage copy];
      outputVoiceCountForRecognitionLanguage = v6->_outputVoiceCountForRecognitionLanguage;
      v6->_outputVoiceCountForRecognitionLanguage = v29;

      v6->_recognitionLanguageWithMultipleOutputVoicesExists = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getRecognitionLanguageWithMultipleOutputVoicesExists];
    }

    else
    {
      v6 = [(AFEnablementConfigurationProviderParameters *)self copy];
    }
  }

  else
  {
    v6 = [(AFEnablementConfigurationProviderParameters *)self copy];
  }

  return v6;
}

@end