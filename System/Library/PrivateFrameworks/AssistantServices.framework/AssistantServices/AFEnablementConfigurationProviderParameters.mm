@interface AFEnablementConfigurationProviderParameters
+ (id)newWithBuilder:(id)a3;
- (AFEnablementConfigurationProviderParameters)initWithBuilder:(id)a3;
- (AFEnablementConfigurationProviderParameters)initWithCoder:(id)a3;
- (AFEnablementConfigurationProviderParameters)initWithEnablementFlow:(int64_t)a3 newUser:(BOOL)a4 userStatusFetchError:(id)a5 dateStartedResolvingUserStatus:(id)a6 dateEndedResolvingUserStatus:(id)a7 experiment:(id)a8 experimentFetchError:(id)a9 dateStartedResolvingExperiment:(id)a10 dateEndedResolvingExperiment:(id)a11 outputVoiceCountForRecognitionLanguage:(id)a12 recognitionLanguageWithMultipleOutputVoicesExists:(BOOL)a13;
- (BOOL)isEqual:(id)a3;
- (id)_descriptionWithIndent:(unint64_t)a3;
- (id)mutatedCopyWithMutator:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation AFEnablementConfigurationProviderParameters

- (void)encodeWithCoder:(id)a3
{
  v4 = MEMORY[0x1E696AD98];
  enablementFlow = self->_enablementFlow;
  v6 = a3;
  v7 = [v4 numberWithInteger:enablementFlow];
  [v6 encodeObject:v7 forKey:@"AFEnablementConfigurationProviderParameters::enablementFlow"];

  v8 = [MEMORY[0x1E696AD98] numberWithBool:self->_newUser];
  [v6 encodeObject:v8 forKey:@"AFEnablementConfigurationProviderParameters::newUser"];

  [v6 encodeObject:self->_userStatusFetchError forKey:@"AFEnablementConfigurationProviderParameters::userStatusFetchError"];
  [v6 encodeObject:self->_dateStartedResolvingUserStatus forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingUserStatus"];
  [v6 encodeObject:self->_dateEndedResolvingUserStatus forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingUserStatus"];
  [v6 encodeObject:self->_experiment forKey:@"AFEnablementConfigurationProviderParameters::experiment"];
  [v6 encodeObject:self->_experimentFetchError forKey:@"AFEnablementConfigurationProviderParameters::experimentFetchError"];
  [v6 encodeObject:self->_dateStartedResolvingExperiment forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingExperiment"];
  [v6 encodeObject:self->_dateEndedResolvingExperiment forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingExperiment"];
  [v6 encodeObject:self->_outputVoiceCountForRecognitionLanguage forKey:@"AFEnablementConfigurationProviderParameters::outputVoiceCountForRecognitionLanguage"];
  v9 = [MEMORY[0x1E696AD98] numberWithBool:self->_recognitionLanguageWithMultipleOutputVoicesExists];
  [v6 encodeObject:v9 forKey:@"AFEnablementConfigurationProviderParameters::recognitionLanguageWithMultipleOutputVoicesExists"];
}

- (AFEnablementConfigurationProviderParameters)initWithCoder:(id)a3
{
  v3 = a3;
  v4 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::enablementFlow"];
  v23 = [v4 integerValue];

  v5 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::newUser"];
  v22 = [v5 BOOLValue];

  v21 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::userStatusFetchError"];
  v20 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingUserStatus"];
  v6 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingUserStatus"];
  v7 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::experiment"];
  v8 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::experimentFetchError"];
  v9 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateStartedResolvingExperiment"];
  v10 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::dateEndedResolvingExperiment"];
  v11 = MEMORY[0x1E695DFD8];
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [v11 setWithObjects:{v12, v13, objc_opt_class(), 0}];
  v15 = [v3 decodeObjectOfClasses:v14 forKey:@"AFEnablementConfigurationProviderParameters::outputVoiceCountForRecognitionLanguage"];

  v16 = [v3 decodeObjectOfClass:objc_opt_class() forKey:@"AFEnablementConfigurationProviderParameters::recognitionLanguageWithMultipleOutputVoicesExists"];

  LOBYTE(v3) = [v16 BOOLValue];
  LOBYTE(v19) = v3;
  v17 = [(AFEnablementConfigurationProviderParameters *)self initWithEnablementFlow:v23 newUser:v22 userStatusFetchError:v21 dateStartedResolvingUserStatus:v20 dateEndedResolvingUserStatus:v6 experiment:v7 experimentFetchError:v8 dateStartedResolvingExperiment:v9 dateEndedResolvingExperiment:v10 outputVoiceCountForRecognitionLanguage:v15 recognitionLanguageWithMultipleOutputVoicesExists:v19];

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v25 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      enablementFlow = self->_enablementFlow;
      if (enablementFlow == [(AFEnablementConfigurationProviderParameters *)v5 enablementFlow]&& (newUser = self->_newUser, newUser == [(AFEnablementConfigurationProviderParameters *)v5 newUser]) && (recognitionLanguageWithMultipleOutputVoicesExists = self->_recognitionLanguageWithMultipleOutputVoicesExists, recognitionLanguageWithMultipleOutputVoicesExists == [(AFEnablementConfigurationProviderParameters *)v5 recognitionLanguageWithMultipleOutputVoicesExists]))
      {
        v9 = [(AFEnablementConfigurationProviderParameters *)v5 userStatusFetchError];
        userStatusFetchError = self->_userStatusFetchError;
        if (userStatusFetchError == v9 || [(NSError *)userStatusFetchError isEqual:v9])
        {
          v11 = [(AFEnablementConfigurationProviderParameters *)v5 dateStartedResolvingUserStatus];
          dateStartedResolvingUserStatus = self->_dateStartedResolvingUserStatus;
          if (dateStartedResolvingUserStatus == v11 || [(NSDate *)dateStartedResolvingUserStatus isEqual:v11])
          {
            v13 = [(AFEnablementConfigurationProviderParameters *)v5 dateEndedResolvingUserStatus];
            dateEndedResolvingUserStatus = self->_dateEndedResolvingUserStatus;
            if (dateEndedResolvingUserStatus == v13 || [(NSDate *)dateEndedResolvingUserStatus isEqual:v13])
            {
              v15 = [(AFEnablementConfigurationProviderParameters *)v5 experiment];
              experiment = self->_experiment;
              if (experiment == v15 || [(AFExperiment *)experiment isEqual:v15])
              {
                v17 = [(AFEnablementConfigurationProviderParameters *)v5 experimentFetchError];
                experimentFetchError = self->_experimentFetchError;
                if (experimentFetchError == v17 || [(NSError *)experimentFetchError isEqual:v17])
                {
                  v19 = [(AFEnablementConfigurationProviderParameters *)v5 dateStartedResolvingExperiment];
                  dateStartedResolvingExperiment = self->_dateStartedResolvingExperiment;
                  if (dateStartedResolvingExperiment == v19 || [(NSDate *)dateStartedResolvingExperiment isEqual:v19])
                  {
                    v21 = [(AFEnablementConfigurationProviderParameters *)v5 dateEndedResolvingExperiment];
                    dateEndedResolvingExperiment = self->_dateEndedResolvingExperiment;
                    if (dateEndedResolvingExperiment == v21 || [(NSDate *)dateEndedResolvingExperiment isEqual:v21])
                    {
                      v27 = v21;
                      v23 = [(AFEnablementConfigurationProviderParameters *)v5 outputVoiceCountForRecognitionLanguage];
                      outputVoiceCountForRecognitionLanguage = self->_outputVoiceCountForRecognitionLanguage;
                      v25 = outputVoiceCountForRecognitionLanguage == v23 || [(NSDictionary *)outputVoiceCountForRecognitionLanguage isEqual:v23];

                      v21 = v27;
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

- (id)_descriptionWithIndent:(unint64_t)a3
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

- (AFEnablementConfigurationProviderParameters)initWithEnablementFlow:(int64_t)a3 newUser:(BOOL)a4 userStatusFetchError:(id)a5 dateStartedResolvingUserStatus:(id)a6 dateEndedResolvingUserStatus:(id)a7 experiment:(id)a8 experimentFetchError:(id)a9 dateStartedResolvingExperiment:(id)a10 dateEndedResolvingExperiment:(id)a11 outputVoiceCountForRecognitionLanguage:(id)a12 recognitionLanguageWithMultipleOutputVoicesExists:(BOOL)a13
{
  v16 = a5;
  v17 = a6;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v37[0] = MEMORY[0x1E69E9820];
  v37[1] = 3221225472;
  v37[2] = __340__AFEnablementConfigurationProviderParameters_initWithEnablementFlow_newUser_userStatusFetchError_dateStartedResolvingUserStatus_dateEndedResolvingUserStatus_experiment_experimentFetchError_dateStartedResolvingExperiment_dateEndedResolvingExperiment_outputVoiceCountForRecognitionLanguage_recognitionLanguageWithMultipleOutputVoicesExists___block_invoke;
  v37[3] = &unk_1E7344B98;
  v45 = v23;
  v46 = a3;
  v47 = a4;
  v38 = v16;
  v39 = v17;
  v40 = v18;
  v41 = v19;
  v42 = v20;
  v43 = v21;
  v44 = v22;
  v48 = a13;
  v24 = v23;
  v25 = v22;
  v26 = v21;
  v27 = v20;
  v28 = v19;
  v29 = v18;
  v30 = v17;
  v31 = v16;
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

- (AFEnablementConfigurationProviderParameters)initWithBuilder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = AFEnablementConfigurationProviderParameters;
  v5 = [(AFEnablementConfigurationProviderParameters *)&v33 init];
  v6 = v5;
  if (v4 && v5)
  {
    v7 = [[_AFEnablementConfigurationProviderParametersMutation alloc] initWithBase:0];
    v4[2](v4, v7);
    if ([(_AFEnablementConfigurationProviderParametersMutation *)v7 isDirty])
    {
      v6->_enablementFlow = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getEnablementFlow];
      v6->_newUser = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getNewUser];
      v8 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getUserStatusFetchError];
      v9 = [v8 copy];
      userStatusFetchError = v6->_userStatusFetchError;
      v6->_userStatusFetchError = v9;

      v11 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateStartedResolvingUserStatus];
      v12 = [v11 copy];
      dateStartedResolvingUserStatus = v6->_dateStartedResolvingUserStatus;
      v6->_dateStartedResolvingUserStatus = v12;

      v14 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateEndedResolvingUserStatus];
      v15 = [v14 copy];
      dateEndedResolvingUserStatus = v6->_dateEndedResolvingUserStatus;
      v6->_dateEndedResolvingUserStatus = v15;

      v17 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getExperiment];
      v18 = [v17 copy];
      experiment = v6->_experiment;
      v6->_experiment = v18;

      v20 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getExperimentFetchError];
      v21 = [v20 copy];
      experimentFetchError = v6->_experimentFetchError;
      v6->_experimentFetchError = v21;

      v23 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateStartedResolvingExperiment];
      v24 = [v23 copy];
      dateStartedResolvingExperiment = v6->_dateStartedResolvingExperiment;
      v6->_dateStartedResolvingExperiment = v24;

      v26 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getDateEndedResolvingExperiment];
      v27 = [v26 copy];
      dateEndedResolvingExperiment = v6->_dateEndedResolvingExperiment;
      v6->_dateEndedResolvingExperiment = v27;

      v29 = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getOutputVoiceCountForRecognitionLanguage];
      v30 = [v29 copy];
      outputVoiceCountForRecognitionLanguage = v6->_outputVoiceCountForRecognitionLanguage;
      v6->_outputVoiceCountForRecognitionLanguage = v30;

      v6->_recognitionLanguageWithMultipleOutputVoicesExists = [(_AFEnablementConfigurationProviderParametersMutation *)v7 getRecognitionLanguageWithMultipleOutputVoicesExists];
    }
  }

  return v6;
}

+ (id)newWithBuilder:(id)a3
{
  v3 = a3;
  v4 = [objc_alloc(objc_opt_class()) initWithBuilder:v3];

  return v4;
}

- (id)mutatedCopyWithMutator:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [[_AFEnablementConfigurationProviderParametersMutation alloc] initWithBase:self];
    v4[2](v4, v5);
    if ([(_AFEnablementConfigurationProviderParametersMutation *)v5 isDirty])
    {
      v6 = objc_alloc_init(AFEnablementConfigurationProviderParameters);
      v6->_enablementFlow = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getEnablementFlow];
      v6->_newUser = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getNewUser];
      v7 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getUserStatusFetchError];
      v8 = [v7 copy];
      userStatusFetchError = v6->_userStatusFetchError;
      v6->_userStatusFetchError = v8;

      v10 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateStartedResolvingUserStatus];
      v11 = [v10 copy];
      dateStartedResolvingUserStatus = v6->_dateStartedResolvingUserStatus;
      v6->_dateStartedResolvingUserStatus = v11;

      v13 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateEndedResolvingUserStatus];
      v14 = [v13 copy];
      dateEndedResolvingUserStatus = v6->_dateEndedResolvingUserStatus;
      v6->_dateEndedResolvingUserStatus = v14;

      v16 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getExperiment];
      v17 = [v16 copy];
      experiment = v6->_experiment;
      v6->_experiment = v17;

      v19 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getExperimentFetchError];
      v20 = [v19 copy];
      experimentFetchError = v6->_experimentFetchError;
      v6->_experimentFetchError = v20;

      v22 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateStartedResolvingExperiment];
      v23 = [v22 copy];
      dateStartedResolvingExperiment = v6->_dateStartedResolvingExperiment;
      v6->_dateStartedResolvingExperiment = v23;

      v25 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getDateEndedResolvingExperiment];
      v26 = [v25 copy];
      dateEndedResolvingExperiment = v6->_dateEndedResolvingExperiment;
      v6->_dateEndedResolvingExperiment = v26;

      v28 = [(_AFEnablementConfigurationProviderParametersMutation *)v5 getOutputVoiceCountForRecognitionLanguage];
      v29 = [v28 copy];
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