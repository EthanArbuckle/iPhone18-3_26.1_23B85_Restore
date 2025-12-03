@interface AirPodsAudioSystemInputs
- (BOOL)validateAndInitializeParameters:(id)parameters;
- (BOOL)validateAndInitializeSpecifications:(id)specifications;
- (id)makeOutputFromDictionary:(id)dictionary validationFailed:(BOOL *)failed;
- (id)validOutputDeviceSet;
@end

@implementation AirPodsAudioSystemInputs

- (BOOL)validateAndInitializeParameters:(id)parameters
{
  parametersCopy = parameters;
  v50.receiver = self;
  v50.super_class = AirPodsAudioSystemInputs;
  if ([(AudioSystemInputsCommon *)&v50 validateAndInitializeParameters:parametersCopy])
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = parametersCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Validating 8290 parameters: %@", buf, 0xCu);
    }

    chamberInputs = [(AirPodsAudioSystemInputs *)self chamberInputs];

    if (!chamberInputs)
    {
      v7 = objc_alloc_init(DAChamberInputs);
      [(AirPodsAudioSystemInputs *)self setChamberInputs:v7];
    }

    chamberInputs2 = [(AirPodsAudioSystemInputs *)self chamberInputs];
    v9 = [chamberInputs2 validateAndInitializeParameters:parametersCopy] ^ 1;
    buf[0] = v9;

    if ((v9 & 1) == 0)
    {
      v10 = [NSSet setWithObject:objc_opt_class()];
      v11 = [parametersCopy dk_arrayFromRequiredKey:@"energyBins" types:v10 maxLength:1000 failed:buf];
      frequencyBins = self->_frequencyBins;
      self->_frequencyBins = v11;

      [(NSArray *)self->_frequencyBins count];
      if ([(NSArray *)self->_frequencyBins count]<= 1)
      {
        buf[0] = 1;
      }

      v13 = [parametersCopy dk_numberFromKey:@"stimulusFrontCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9B0 failed:buf];
      stimulusFrontCroppingLength = self->_stimulusFrontCroppingLength;
      self->_stimulusFrontCroppingLength = v13;

      v15 = [parametersCopy dk_numberFromKey:@"stimulusCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9E0 failed:buf];
      stimulusCroppingLength = self->_stimulusCroppingLength;
      self->_stimulusCroppingLength = v15;

      v17 = [parametersCopy dk_numberFromKey:@"dataFrontCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9B0 failed:buf];
      dataFrontCroppingLength = self->_dataFrontCroppingLength;
      self->_dataFrontCroppingLength = v17;

      v19 = [parametersCopy dk_numberFromKey:@"dataCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9E0 failed:buf];
      dataCroppingLength = self->_dataCroppingLength;
      self->_dataCroppingLength = v19;

      v21 = [parametersCopy dk_numberFromKey:@"crackleBaseFrequency" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA10 failed:buf];
      crackleBaseFrequency = self->_crackleBaseFrequency;
      self->_crackleBaseFrequency = v21;

      v23 = [parametersCopy dk_numberFromKey:@"crackleSamplingRate" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA28 failed:buf];
      crackleSamplingRate = self->_crackleSamplingRate;
      self->_crackleSamplingRate = v23;

      v25 = [parametersCopy dk_numberFromKey:@"crackleNeighborDistance" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA40 failed:buf];
      crackleNeighborDistance = self->_crackleNeighborDistance;
      self->_crackleNeighborDistance = v25;

      v27 = [parametersCopy dk_numberFromKey:@"crackleNumberOfStages" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA58 failed:buf];
      crackleNumberOfStages = self->_crackleNumberOfStages;
      self->_crackleNumberOfStages = v27;

      v29 = [NSSet setWithObject:objc_opt_class()];
      v30 = [parametersCopy dk_arrayFromRequiredKey:@"crackleFilterCoeffs" types:v29 maxLength:70 failed:buf];
      crackleFilterCoeffs = self->_crackleFilterCoeffs;
      self->_crackleFilterCoeffs = v30;

      if (![(NSArray *)self->_crackleFilterCoeffs count])
      {
        buf[0] = 1;
      }

      v32 = [parametersCopy dk_numberFromKey:@"micRecordingsType" lowerBound:&off_10001D9F8 upperBound:&off_10001DA70 defaultValue:&off_10001D9F8 failed:buf];
      self->_micRecordingsType = [v32 intValue];

      micRecordingsType = self->_micRecordingsType;
      switch(micRecordingsType)
      {
        case 3:
          v51[0] = @"Bottom";
          v51[1] = @"Back";
          v51[2] = @"Top";
          v51[3] = @"BNC";
          inputNameToValue3 = [NSArray arrayWithObjects:v51 count:4];
          v35 = objc_opt_new();
          if ([inputNameToValue3 count])
          {
            v42 = 0;
            do
            {
              inputNameToValue = [(AirPodsAudioSystemInputs *)self inputNameToValue];
              v44 = [inputNameToValue3 objectAtIndexedSubscript:v42];
              v45 = [inputNameToValue objectForKeyedSubscript:v44];

              if (v45)
              {
                inputNameToValue2 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
                v47 = [inputNameToValue3 objectAtIndexedSubscript:v42];
                v48 = [inputNameToValue2 objectForKeyedSubscript:v47];
                [v35 addObject:v48];
              }

              ++v42;
            }

            while ([inputNameToValue3 count] > v42);
          }

          v36 = [v35 copy];
          break;
        case 2:
          inputNameToValue3 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
          v35 = [inputNameToValue3 objectForKeyedSubscript:@"Bottom"];
          v52[0] = v35;
          inputNameToValue4 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
          v39 = [inputNameToValue4 objectForKeyedSubscript:@"BNC"];
          v52[1] = v39;
          v40 = [NSArray arrayWithObjects:v52 count:2];
          micBufferNumbers = self->_micBufferNumbers;
          self->_micBufferNumbers = v40;

LABEL_24:
          goto LABEL_25;
        case 1:
          inputNameToValue3 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
          v35 = [inputNameToValue3 objectForKeyedSubscript:@"Bottom"];
          v53 = v35;
          v36 = [NSArray arrayWithObjects:&v53 count:1];
          break;
        default:
LABEL_25:
          self->_unpairAirPodsOnFinish = [parametersCopy dk_BOOLFromKey:@"unpairDeviceOnFinish" defaultValue:0 failed:buf];
          self->_useBundledAudioStimulus = [parametersCopy dk_BOOLFromKey:@"useBundledAudioStimulus" defaultValue:1 failed:buf];
          v37 = buf[0] ^ 1;
          goto LABEL_26;
      }

      inputNameToValue4 = self->_micBufferNumbers;
      self->_micBufferNumbers = v36;
      goto LABEL_24;
    }
  }

  v37 = 0;
LABEL_26:

  return v37 & 1;
}

- (BOOL)validateAndInitializeSpecifications:(id)specifications
{
  v8.receiver = self;
  v8.super_class = AirPodsAudioSystemInputs;
  specificationsCopy = specifications;
  v9 = ![(AudioSystemInputsCommon *)&v8 validateAndInitializeSpecifications:specificationsCopy];
  v5 = [specificationsCopy dk_dictionaryFromRequiredKey:@"inputComponents" failed:&v9];

  inputNameToValue = self->_inputNameToValue;
  self->_inputNameToValue = v5;

  return (v9 & 1) == 0;
}

- (id)makeOutputFromDictionary:(id)dictionary validationFailed:(BOOL *)failed
{
  v10.receiver = self;
  v10.super_class = AirPodsAudioSystemInputs;
  dictionaryCopy = dictionary;
  v6 = [(AudioSystemInputsCommon *)&v10 makeOutputFromDictionary:dictionaryCopy validationFailed:failed];
  v7 = [dictionaryCopy dk_numberFromRequiredKey:@"numberOfChannels" lowerBound:&off_10001DB50 upperBound:&off_10001DB60 failed:{failed, v10.receiver, v10.super_class}];
  [v6 setNumberOfChannels:{objc_msgSend(v7, "intValue")}];

  v8 = [dictionaryCopy dk_numberFromKey:@"audioTestType" lowerBound:&off_10001D9B0 upperBound:&off_10001D9F8 defaultValue:&off_10001D9B0 failed:failed];

  [v6 setAudioTestType:{objc_msgSend(v8, "intValue")}];

  return v6;
}

- (id)validOutputDeviceSet
{
  v3 = [NSMutableSet alloc];
  v7.receiver = self;
  v7.super_class = AirPodsAudioSystemInputs;
  validOutputDeviceSet = [(AudioSystemInputsCommon *)&v7 validOutputDeviceSet];
  v5 = [v3 initWithSet:validOutputDeviceSet];

  [v5 addObject:@"LeftBud"];
  [v5 addObject:@"RightBud"];

  return v5;
}

@end