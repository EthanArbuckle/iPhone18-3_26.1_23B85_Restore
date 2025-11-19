@interface AirPodsAudioSystemInputs
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializeSpecifications:(id)a3;
- (id)makeOutputFromDictionary:(id)a3 validationFailed:(BOOL *)a4;
- (id)validOutputDeviceSet;
@end

@implementation AirPodsAudioSystemInputs

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v50.receiver = self;
  v50.super_class = AirPodsAudioSystemInputs;
  if ([(AudioSystemInputsCommon *)&v50 validateAndInitializeParameters:v4])
  {
    v5 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v55 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Validating 8290 parameters: %@", buf, 0xCu);
    }

    v6 = [(AirPodsAudioSystemInputs *)self chamberInputs];

    if (!v6)
    {
      v7 = objc_alloc_init(DAChamberInputs);
      [(AirPodsAudioSystemInputs *)self setChamberInputs:v7];
    }

    v8 = [(AirPodsAudioSystemInputs *)self chamberInputs];
    v9 = [v8 validateAndInitializeParameters:v4] ^ 1;
    buf[0] = v9;

    if ((v9 & 1) == 0)
    {
      v10 = [NSSet setWithObject:objc_opt_class()];
      v11 = [v4 dk_arrayFromRequiredKey:@"energyBins" types:v10 maxLength:1000 failed:buf];
      frequencyBins = self->_frequencyBins;
      self->_frequencyBins = v11;

      [(NSArray *)self->_frequencyBins count];
      if ([(NSArray *)self->_frequencyBins count]<= 1)
      {
        buf[0] = 1;
      }

      v13 = [v4 dk_numberFromKey:@"stimulusFrontCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9B0 failed:buf];
      stimulusFrontCroppingLength = self->_stimulusFrontCroppingLength;
      self->_stimulusFrontCroppingLength = v13;

      v15 = [v4 dk_numberFromKey:@"stimulusCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9E0 failed:buf];
      stimulusCroppingLength = self->_stimulusCroppingLength;
      self->_stimulusCroppingLength = v15;

      v17 = [v4 dk_numberFromKey:@"dataFrontCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9B0 failed:buf];
      dataFrontCroppingLength = self->_dataFrontCroppingLength;
      self->_dataFrontCroppingLength = v17;

      v19 = [v4 dk_numberFromKey:@"dataCroppingLength" lowerBound:&off_10001D9B0 upperBound:&off_10001D9C8 defaultValue:&off_10001D9E0 failed:buf];
      dataCroppingLength = self->_dataCroppingLength;
      self->_dataCroppingLength = v19;

      v21 = [v4 dk_numberFromKey:@"crackleBaseFrequency" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA10 failed:buf];
      crackleBaseFrequency = self->_crackleBaseFrequency;
      self->_crackleBaseFrequency = v21;

      v23 = [v4 dk_numberFromKey:@"crackleSamplingRate" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA28 failed:buf];
      crackleSamplingRate = self->_crackleSamplingRate;
      self->_crackleSamplingRate = v23;

      v25 = [v4 dk_numberFromKey:@"crackleNeighborDistance" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA40 failed:buf];
      crackleNeighborDistance = self->_crackleNeighborDistance;
      self->_crackleNeighborDistance = v25;

      v27 = [v4 dk_numberFromKey:@"crackleNumberOfStages" lowerBound:&off_10001D9F8 upperBound:&off_10001D9C8 defaultValue:&off_10001DA58 failed:buf];
      crackleNumberOfStages = self->_crackleNumberOfStages;
      self->_crackleNumberOfStages = v27;

      v29 = [NSSet setWithObject:objc_opt_class()];
      v30 = [v4 dk_arrayFromRequiredKey:@"crackleFilterCoeffs" types:v29 maxLength:70 failed:buf];
      crackleFilterCoeffs = self->_crackleFilterCoeffs;
      self->_crackleFilterCoeffs = v30;

      if (![(NSArray *)self->_crackleFilterCoeffs count])
      {
        buf[0] = 1;
      }

      v32 = [v4 dk_numberFromKey:@"micRecordingsType" lowerBound:&off_10001D9F8 upperBound:&off_10001DA70 defaultValue:&off_10001D9F8 failed:buf];
      self->_micRecordingsType = [v32 intValue];

      micRecordingsType = self->_micRecordingsType;
      switch(micRecordingsType)
      {
        case 3:
          v51[0] = @"Bottom";
          v51[1] = @"Back";
          v51[2] = @"Top";
          v51[3] = @"BNC";
          v34 = [NSArray arrayWithObjects:v51 count:4];
          v35 = objc_opt_new();
          if ([v34 count])
          {
            v42 = 0;
            do
            {
              v43 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
              v44 = [v34 objectAtIndexedSubscript:v42];
              v45 = [v43 objectForKeyedSubscript:v44];

              if (v45)
              {
                v46 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
                v47 = [v34 objectAtIndexedSubscript:v42];
                v48 = [v46 objectForKeyedSubscript:v47];
                [v35 addObject:v48];
              }

              ++v42;
            }

            while ([v34 count] > v42);
          }

          v36 = [v35 copy];
          break;
        case 2:
          v34 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
          v35 = [v34 objectForKeyedSubscript:@"Bottom"];
          v52[0] = v35;
          v38 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
          v39 = [v38 objectForKeyedSubscript:@"BNC"];
          v52[1] = v39;
          v40 = [NSArray arrayWithObjects:v52 count:2];
          micBufferNumbers = self->_micBufferNumbers;
          self->_micBufferNumbers = v40;

LABEL_24:
          goto LABEL_25;
        case 1:
          v34 = [(AirPodsAudioSystemInputs *)self inputNameToValue];
          v35 = [v34 objectForKeyedSubscript:@"Bottom"];
          v53 = v35;
          v36 = [NSArray arrayWithObjects:&v53 count:1];
          break;
        default:
LABEL_25:
          self->_unpairAirPodsOnFinish = [v4 dk_BOOLFromKey:@"unpairDeviceOnFinish" defaultValue:0 failed:buf];
          self->_useBundledAudioStimulus = [v4 dk_BOOLFromKey:@"useBundledAudioStimulus" defaultValue:1 failed:buf];
          v37 = buf[0] ^ 1;
          goto LABEL_26;
      }

      v38 = self->_micBufferNumbers;
      self->_micBufferNumbers = v36;
      goto LABEL_24;
    }
  }

  v37 = 0;
LABEL_26:

  return v37 & 1;
}

- (BOOL)validateAndInitializeSpecifications:(id)a3
{
  v8.receiver = self;
  v8.super_class = AirPodsAudioSystemInputs;
  v4 = a3;
  v9 = ![(AudioSystemInputsCommon *)&v8 validateAndInitializeSpecifications:v4];
  v5 = [v4 dk_dictionaryFromRequiredKey:@"inputComponents" failed:&v9];

  inputNameToValue = self->_inputNameToValue;
  self->_inputNameToValue = v5;

  return (v9 & 1) == 0;
}

- (id)makeOutputFromDictionary:(id)a3 validationFailed:(BOOL *)a4
{
  v10.receiver = self;
  v10.super_class = AirPodsAudioSystemInputs;
  v5 = a3;
  v6 = [(AudioSystemInputsCommon *)&v10 makeOutputFromDictionary:v5 validationFailed:a4];
  v7 = [v5 dk_numberFromRequiredKey:@"numberOfChannels" lowerBound:&off_10001DB50 upperBound:&off_10001DB60 failed:{a4, v10.receiver, v10.super_class}];
  [v6 setNumberOfChannels:{objc_msgSend(v7, "intValue")}];

  v8 = [v5 dk_numberFromKey:@"audioTestType" lowerBound:&off_10001D9B0 upperBound:&off_10001D9F8 defaultValue:&off_10001D9B0 failed:a4];

  [v6 setAudioTestType:{objc_msgSend(v8, "intValue")}];

  return v6;
}

- (id)validOutputDeviceSet
{
  v3 = [NSMutableSet alloc];
  v7.receiver = self;
  v7.super_class = AirPodsAudioSystemInputs;
  v4 = [(AudioSystemInputsCommon *)&v7 validOutputDeviceSet];
  v5 = [v3 initWithSet:v4];

  [v5 addObject:@"LeftBud"];
  [v5 addObject:@"RightBud"];

  return v5;
}

@end