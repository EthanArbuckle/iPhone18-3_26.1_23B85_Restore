@interface _SFSpeechRecognizerSupportedFeatures
- (_SFSpeechRecognizerSupportedFeatures)initWithCoder:(id)coder;
- (_SFSpeechRecognizerSupportedFeatures)initWithLocale:(id)locale taskNames:(id)names singleUtterance:(BOOL)utterance concatenateUtterances:(BOOL)utterances voiceCommandActiveSet:(id)set modelOptions:(id)options endpointDetectionOptions:(id)detectionOptions speechDetectionOptions:(id)self0 flags:(unint64_t)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _SFSpeechRecognizerSupportedFeatures

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  localeIdentifier = [(NSLocale *)self->_locale localeIdentifier];
  speechDetectionOptions = self->_speechDetectionOptions;
  v6 = [v3 stringWithFormat:@"<_SFSpeechRecognizerSupportedFeatures (%p): locale %@, taskNames %@, singleUtterance %d, concatenateUtterances %d, modelOptions %@, endpointDetectionOptions %@, speechDetectionOptions %@, flags %#lx>", self, localeIdentifier, self->_taskNames, self->_isSingleUtteranceTask, self->_concatenateUtterances, self->_modelOptions, self->_endpointDetectionOptions, speechDetectionOptions, self->_flags];

  return v6;
}

- (_SFSpeechRecognizerSupportedFeatures)initWithCoder:(id)coder
{
  coderCopy = coder;
  v22.receiver = self;
  v22.super_class = _SFSpeechRecognizerSupportedFeatures;
  v5 = [(_SFSpeechRecognizerSupportedFeatures *)&v22 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_locale"];
    locale = v5->_locale;
    v5->_locale = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"_taskNames"];
    taskNames = v5->_taskNames;
    v5->_taskNames = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_voiceCommandActiveSet"];
    voiceCommandActiveSet = v5->_voiceCommandActiveSet;
    v5->_voiceCommandActiveSet = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_modelOptions"];
    modelOptions = v5->_modelOptions;
    v5->_modelOptions = v15;

    v5->_flags = [coderCopy decodeIntegerForKey:@"_flags"];
    v5->_isSingleUtteranceTask = [coderCopy decodeBoolForKey:@"_isSingleUtteranceTask"];
    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_endpointDetectionOptions"];
    endpointDetectionOptions = v5->_endpointDetectionOptions;
    v5->_endpointDetectionOptions = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_speechDetectionOptions"];
    speechDetectionOptions = v5->_speechDetectionOptions;
    v5->_speechDetectionOptions = v19;

    v5->_concatenateUtterances = [coderCopy decodeBoolForKey:@"_concatenateUtterances"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  locale = [(_SFSpeechRecognizerSupportedFeatures *)self locale];
  [coderCopy encodeObject:locale forKey:@"_locale"];

  taskNames = [(_SFSpeechRecognizerSupportedFeatures *)self taskNames];
  [coderCopy encodeObject:taskNames forKey:@"_taskNames"];

  voiceCommandActiveSet = [(_SFSpeechRecognizerSupportedFeatures *)self voiceCommandActiveSet];
  [coderCopy encodeObject:voiceCommandActiveSet forKey:@"_voiceCommandActiveSet"];

  modelOptions = [(_SFSpeechRecognizerSupportedFeatures *)self modelOptions];
  [coderCopy encodeObject:modelOptions forKey:@"_modelOptions"];

  [coderCopy encodeInteger:-[_SFSpeechRecognizerSupportedFeatures flags](self forKey:{"flags"), @"_flags"}];
  [coderCopy encodeBool:-[_SFSpeechRecognizerSupportedFeatures isSingleUtteranceTask](self forKey:{"isSingleUtteranceTask"), @"_isSingleUtteranceTask"}];
  endpointDetectionOptions = [(_SFSpeechRecognizerSupportedFeatures *)self endpointDetectionOptions];
  [coderCopy encodeObject:endpointDetectionOptions forKey:@"_endpointDetectionOptions"];

  speechDetectionOptions = [(_SFSpeechRecognizerSupportedFeatures *)self speechDetectionOptions];
  [coderCopy encodeObject:speechDetectionOptions forKey:@"_speechDetectionOptions"];

  [coderCopy encodeBool:-[_SFSpeechRecognizerSupportedFeatures concatenateUtterances](self forKey:{"concatenateUtterances"), @"_concatenateUtterances"}];
}

- (_SFSpeechRecognizerSupportedFeatures)initWithLocale:(id)locale taskNames:(id)names singleUtterance:(BOOL)utterance concatenateUtterances:(BOOL)utterances voiceCommandActiveSet:(id)set modelOptions:(id)options endpointDetectionOptions:(id)detectionOptions speechDetectionOptions:(id)self0 flags:(unint64_t)self1
{
  localeCopy = locale;
  namesCopy = names;
  setCopy = set;
  optionsCopy = options;
  detectionOptionsCopy = detectionOptions;
  speechDetectionOptionsCopy = speechDetectionOptions;
  v33.receiver = self;
  v33.super_class = _SFSpeechRecognizerSupportedFeatures;
  v22 = [(_SFSpeechRecognizerSupportedFeatures *)&v33 init];
  if (v22)
  {
    v23 = [localeCopy copy];
    locale = v22->_locale;
    v22->_locale = v23;

    v25 = [namesCopy copy];
    taskNames = v22->_taskNames;
    v22->_taskNames = v25;

    v27 = [setCopy copy];
    voiceCommandActiveSet = v22->_voiceCommandActiveSet;
    v22->_voiceCommandActiveSet = v27;

    v29 = [optionsCopy copy];
    modelOptions = v22->_modelOptions;
    v22->_modelOptions = v29;

    v22->_flags = flags;
    objc_storeStrong(&v22->_endpointDetectionOptions, detectionOptions);
    objc_storeStrong(&v22->_speechDetectionOptions, speechDetectionOptions);
    v22->_isSingleUtteranceTask = utterance;
    v22->_concatenateUtterances = utterances;
  }

  return v22;
}

@end