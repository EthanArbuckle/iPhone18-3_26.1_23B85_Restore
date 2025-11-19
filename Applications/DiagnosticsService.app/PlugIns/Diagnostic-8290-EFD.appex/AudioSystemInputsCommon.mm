@interface AudioSystemInputsCommon
- (BOOL)validateAndInitializeParameters:(id)a3;
- (BOOL)validateAndInitializeSpecifications:(id)a3;
- (id)makeOutputFromDictionary:(id)a3 validationFailed:(BOOL *)a4;
@end

@implementation AudioSystemInputsCommon

- (BOOL)validateAndInitializeParameters:(id)a3
{
  v4 = a3;
  v54 = 0;
  v5 = &DKTemporaryDirectoryURL_ptr;
  v6 = [NSSet setWithObject:objc_opt_class()];
  v7 = [v4 dk_arrayFromRequiredKey:@"sources" types:v6 maxLength:80 failed:&v54 validator:&stru_10001C6B8];
  sources = self->_sources;
  self->_sources = v7;

  if (![(NSArray *)self->_sources count])
  {
    v54 = 1;
  }

  dword_100024210 = [(NSArray *)self->_sources count]- 1;
  v9 = [NSSet setWithObject:objc_opt_class()];
  v48 = v4;
  v10 = [v4 dk_arrayFromRequiredKey:@"sequence" types:v9 maxLength:70 failed:&v54];

  v11 = objc_alloc_init(NSMutableArray);
  sequences = self->_sequences;
  self->_sequences = v11;

  v49 = v10;
  if ([v10 count])
  {
    v13 = 0;
    do
    {
      v14 = [v10 objectAtIndexedSubscript:v13];
      v15 = objc_alloc_init(NSMutableArray);
      v16 = v5;
      v17 = [v5[157] setWithObject:objc_opt_class()];
      v18 = [v14 dk_arrayFromRequiredKey:@"outputs" types:v17 maxLength:70 failed:&v54];

      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v19 = v18;
      v20 = [v19 countByEnumeratingWithState:&v50 objects:v57 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v51;
        do
        {
          for (i = 0; i != v21; i = i + 1)
          {
            if (*v51 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v24 = [(AudioSystemInputsCommon *)self makeOutputFromDictionary:*(*(&v50 + 1) + 8 * i) validationFailed:&v54];
            [v15 addObject:v24];
          }

          v21 = [v19 countByEnumeratingWithState:&v50 objects:v57 count:16];
        }

        while (v21);
      }

      v25 = objc_alloc_init(Sequence);
      v26 = [NSNumber numberWithInteger:v13];
      [(Sequence *)v25 setIndex:v26];

      [(Sequence *)v25 setOutputs:v15];
      [(NSMutableArray *)self->_sequences addObject:v25];

      ++v13;
      v10 = v49;
      v5 = v16;
    }

    while (v13 < [v49 count]);
  }

  v27 = [v48 dk_dictionaryFromRequiredKey:@"interruptDetectors" failed:&v54];
  v55 = @"active";
  v56 = &__kCFBooleanFalse;
  v28 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
  v29 = [v27 dk_dictionaryFromKey:@"motion" defaultValue:v28 failed:&v54];
  self->_motionDetectorActive = [v29 dk_BOOLFromRequiredKey:@"active" failed:&v54];
  if ((v54 & 1) == 0 && [(AudioSystemInputsCommon *)self isMotionDetectorActive])
  {
    v30 = [v29 dk_numberFromRequiredKey:@"threshold" lowerBound:&off_10001DAF0 upperBound:&off_10001DB00 failed:&v54];
    motionDetectorThreshold = self->_motionDetectorThreshold;
    self->_motionDetectorThreshold = v30;
  }

  v32 = [v27 dk_dictionaryFromKey:@"headphones" defaultValue:v28 failed:&v54];
  self->_headphonesDetectorActive = [v32 dk_BOOLFromRequiredKey:@"active" failed:&v54];
  v33 = [v27 dk_dictionaryFromKey:@"accessory" defaultValue:v28 failed:&v54];
  self->_accessoryDetectorActive = [v33 dk_BOOLFromRequiredKey:@"active" failed:&v54];
  if ((v54 & 1) == 0 && [(AudioSystemInputsCommon *)self isAccessoryDetectorActive])
  {
    v34 = [v5[157] setWithObject:objc_opt_class()];
    v35 = [v33 dk_arrayFromRequiredKey:@"modelNumbers" types:v34 maxLength:50 failed:&v54 validator:&stru_10001C6D8];
    accessoryDetectorModelNumbers = self->_accessoryDetectorModelNumbers;
    self->_accessoryDetectorModelNumbers = v35;
  }

  v37 = [v27 dk_dictionaryFromKey:@"orientation" defaultValue:v28 failed:&v54];
  self->_orientationDetectorActive = [v37 dk_BOOLFromRequiredKey:@"active" failed:&v54];
  if ((v54 & 1) == 0 && [(AudioSystemInputsCommon *)self isOrientationDetectorActive])
  {
    v38 = [v37 dk_numberFromRequiredKey:@"xThreshold" lowerBound:&off_10001DB10 upperBound:&off_10001DB20 failed:&v54];
    orientationDetectorXThreshold = self->_orientationDetectorXThreshold;
    self->_orientationDetectorXThreshold = v38;

    v40 = [v37 dk_numberFromRequiredKey:@"zThreshold" lowerBound:&off_10001DB10 upperBound:&off_10001DB20 failed:&v54];
    orientationDetectorZThreshold = self->_orientationDetectorZThreshold;
    self->_orientationDetectorZThreshold = v40;
  }

  self->_saveRawRecording = [v48 dk_BOOLFromRequiredKey:@"saveRawRecording" failed:&v54];
  v42 = [v48 dk_numberFromRequiredKey:@"fileDownloadTimeout" lowerBound:&off_10001D878 upperBound:&off_10001D890 failed:&v54];
  fileDownloadTimeout = self->_fileDownloadTimeout;
  self->_fileDownloadTimeout = v42;

  v44 = [v48 dk_numberFromRequiredKey:@"sequenceTimeout" lowerBound:&off_10001D878 upperBound:&off_10001D890 failed:&v54];
  sequenceTimeout = self->_sequenceTimeout;
  self->_sequenceTimeout = v44;

  self->_useDBValuesFromSystem = [v48 dk_BOOLFromKey:@"useDBValuesFromSystem" defaultValue:0 failed:&v54];
  self->_useMeasurementMode = [v48 dk_BOOLFromKey:@"useMeasurementMode" defaultValue:0 failed:&v54];
  v46 = v54;

  return (v46 & 1) == 0;
}

- (BOOL)validateAndInitializeSpecifications:(id)a3
{
  v4 = a3;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23[0] = 0;
  v5 = [v4 dk_dictionaryFromRequiredKey:@"inputComponents" failed:v23];
  v6 = objc_alloc_init(NSMutableDictionary);
  inputValueToName = self->_inputValueToName;
  self->_inputValueToName = v6;

  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10000E168;
  v16[3] = &unk_10001C700;
  v8 = v5;
  v18 = self;
  v19 = &v20;
  v17 = v8;
  [v8 enumerateKeysAndObjectsUsingBlock:v16];
  if ((v21[3] & 1) == 0)
  {
    v9 = [v8 count];
    if (v9 != [(NSMutableDictionary *)self->_inputValueToName count])
    {
      *(v21 + 24) = 1;
    }
  }

  v10 = objc_alloc_init(NSMutableDictionary);
  outputSpecifications = self->_outputSpecifications;
  self->_outputSpecifications = v10;

  v12 = [v4 dk_dictionaryFromRequiredKey:@"outputComponents" failed:v21 + 3];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10000E20C;
  v15[3] = &unk_10001C750;
  v15[4] = self;
  v15[5] = &v20;
  [v12 enumerateKeysAndObjectsUsingBlock:v15];
  v13 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  return (v13 & 1) == 0;
}

- (id)makeOutputFromDictionary:(id)a3 validationFailed:(BOOL *)a4
{
  v6 = a3;
  v7 = objc_alloc_init([(AudioSystemInputsCommon *)self outputsClass]);
  v8 = [(AudioSystemInputsCommon *)self validOutputDeviceSet];
  v9 = [v6 dk_stringFromRequiredKey:@"output" inSet:v8 failed:a4];
  [v7 setOutputDevice:v9];

  v10 = [NSNumber numberWithInt:dword_100024210];
  v11 = [v6 dk_numberFromRequiredKey:@"source" lowerBound:&off_10001D8A8 upperBound:v10 failed:a4];
  [v7 setSource:v11];

  v12 = [v6 dk_numberFromRequiredKey:@"volume" lowerBound:&off_10001DB30 upperBound:&off_10001DB40 failed:a4];

  [v7 setVolume:v12];

  return v7;
}

@end