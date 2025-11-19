@interface _SFSpeechRecognizerSupportedFeatures
- (_SFSpeechRecognizerSupportedFeatures)initWithCoder:(id)a3;
- (_SFSpeechRecognizerSupportedFeatures)initWithLocale:(id)a3 taskNames:(id)a4 singleUtterance:(BOOL)a5 concatenateUtterances:(BOOL)a6 voiceCommandActiveSet:(id)a7 modelOptions:(id)a8 endpointDetectionOptions:(id)a9 speechDetectionOptions:(id)a10 flags:(unint64_t)a11;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation _SFSpeechRecognizerSupportedFeatures

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(NSLocale *)self->_locale localeIdentifier];
  speechDetectionOptions = self->_speechDetectionOptions;
  v6 = [v3 stringWithFormat:@"<_SFSpeechRecognizerSupportedFeatures (%p): locale %@, taskNames %@, singleUtterance %d, concatenateUtterances %d, modelOptions %@, endpointDetectionOptions %@, speechDetectionOptions %@, flags %#lx>", self, v4, self->_taskNames, self->_isSingleUtteranceTask, self->_concatenateUtterances, self->_modelOptions, self->_endpointDetectionOptions, speechDetectionOptions, self->_flags];

  return v6;
}

- (_SFSpeechRecognizerSupportedFeatures)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = _SFSpeechRecognizerSupportedFeatures;
  v5 = [(_SFSpeechRecognizerSupportedFeatures *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"_taskNames"];
    taskNames = v5->_taskNames;
    v5->_taskNames = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_voiceCommandActiveSet"];
    voiceCommandActiveSet = v5->_voiceCommandActiveSet;
    v5->_voiceCommandActiveSet = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_modelOptions"];
    modelOptions = v5->_modelOptions;
    v5->_modelOptions = v15;

    v5->_flags = [v4 decodeIntegerForKey:@"_flags"];
    v5->_isSingleUtteranceTask = [v4 decodeBoolForKey:@"_isSingleUtteranceTask"];
    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_endpointDetectionOptions"];
    endpointDetectionOptions = v5->_endpointDetectionOptions;
    v5->_endpointDetectionOptions = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_speechDetectionOptions"];
    speechDetectionOptions = v5->_speechDetectionOptions;
    v5->_speechDetectionOptions = v19;

    v5->_concatenateUtterances = [v4 decodeBoolForKey:@"_concatenateUtterances"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(_SFSpeechRecognizerSupportedFeatures *)self locale];
  [v10 encodeObject:v4 forKey:@"_locale"];

  v5 = [(_SFSpeechRecognizerSupportedFeatures *)self taskNames];
  [v10 encodeObject:v5 forKey:@"_taskNames"];

  v6 = [(_SFSpeechRecognizerSupportedFeatures *)self voiceCommandActiveSet];
  [v10 encodeObject:v6 forKey:@"_voiceCommandActiveSet"];

  v7 = [(_SFSpeechRecognizerSupportedFeatures *)self modelOptions];
  [v10 encodeObject:v7 forKey:@"_modelOptions"];

  [v10 encodeInteger:-[_SFSpeechRecognizerSupportedFeatures flags](self forKey:{"flags"), @"_flags"}];
  [v10 encodeBool:-[_SFSpeechRecognizerSupportedFeatures isSingleUtteranceTask](self forKey:{"isSingleUtteranceTask"), @"_isSingleUtteranceTask"}];
  v8 = [(_SFSpeechRecognizerSupportedFeatures *)self endpointDetectionOptions];
  [v10 encodeObject:v8 forKey:@"_endpointDetectionOptions"];

  v9 = [(_SFSpeechRecognizerSupportedFeatures *)self speechDetectionOptions];
  [v10 encodeObject:v9 forKey:@"_speechDetectionOptions"];

  [v10 encodeBool:-[_SFSpeechRecognizerSupportedFeatures concatenateUtterances](self forKey:{"concatenateUtterances"), @"_concatenateUtterances"}];
}

- (_SFSpeechRecognizerSupportedFeatures)initWithLocale:(id)a3 taskNames:(id)a4 singleUtterance:(BOOL)a5 concatenateUtterances:(BOOL)a6 voiceCommandActiveSet:(id)a7 modelOptions:(id)a8 endpointDetectionOptions:(id)a9 speechDetectionOptions:(id)a10 flags:(unint64_t)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a7;
  v19 = a8;
  v20 = a9;
  v21 = a10;
  v33.receiver = self;
  v33.super_class = _SFSpeechRecognizerSupportedFeatures;
  v22 = [(_SFSpeechRecognizerSupportedFeatures *)&v33 init];
  if (v22)
  {
    v23 = [v16 copy];
    locale = v22->_locale;
    v22->_locale = v23;

    v25 = [v17 copy];
    taskNames = v22->_taskNames;
    v22->_taskNames = v25;

    v27 = [v18 copy];
    voiceCommandActiveSet = v22->_voiceCommandActiveSet;
    v22->_voiceCommandActiveSet = v27;

    v29 = [v19 copy];
    modelOptions = v22->_modelOptions;
    v22->_modelOptions = v29;

    v22->_flags = a11;
    objc_storeStrong(&v22->_endpointDetectionOptions, a9);
    objc_storeStrong(&v22->_speechDetectionOptions, a10);
    v22->_isSingleUtteranceTask = a5;
    v22->_concatenateUtterances = a6;
  }

  return v22;
}

@end