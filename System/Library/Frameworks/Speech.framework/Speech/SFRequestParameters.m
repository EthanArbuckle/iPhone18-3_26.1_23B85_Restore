@interface SFRequestParameters
- (BOOL)isEqual:(id)a3;
- (SFRequestParameters)initWithCoder:(id)a3;
- (id)clientIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFRequestParameters

- (SFRequestParameters)initWithCoder:(id)a3
{
  v39[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v37.receiver = self;
  v37.super_class = SFRequestParameters;
  v5 = [(SFRequestParameters *)&v37 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::applicationVersion"];
    applicationVersion = v5->_applicationVersion;
    v5->_applicationVersion = v8;

    v10 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [v4 decodeObjectOfClasses:v12 forKey:@"SFRequestParameters::inlineItemList"];
    inlineItemList = v5->_inlineItemList;
    v5->_inlineItemList = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::taskIdentifier"];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::task"];
    task = v5->_task;
    v5->_task = v19;

    v21 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::language"];
    language = v5->_language;
    v5->_language = v21;

    v5->_narrowband = [v4 decodeBoolForKey:@"SFRequestParameters::narrowband"];
    v23 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [v4 decodeObjectOfClasses:v25 forKey:@"SFRequestParameters::recognitionOverrides"];
    recognitionOverrides = v5->_recognitionOverrides;
    v5->_recognitionOverrides = v26;

    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::modelOverrideURL"];
    modelOverrideURL = v5->_modelOverrideURL;
    v5->_modelOverrideURL = v28;

    [v4 decodeDoubleForKey:@"SFRequestParameters::maximumRecognitionDuration"];
    v5->_maximumRecognitionDuration = v30;
    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::dynamicLanguageModel"];
    dynamicLanguageModel = v5->_dynamicLanguageModel;
    v5->_dynamicLanguageModel = v31;

    v33 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::dynamicVocabulary"];
    dynamicVocabulary = v5->_dynamicVocabulary;
    v5->_dynamicVocabulary = v33;

    v5->_detectMultipleUtterances = [v4 decodeBoolForKey:@"SFRequestParameters::detectMultipleUtterances"];
    v5->_onDeviceOnly = [v4 decodeBoolForKey:@"SFRequestParameters::onDeviceOnly"];
    v5->_enableAutoPunctuation = [v4 decodeBoolForKey:@"SFRequestParameters::enableAutoPunctuation"];
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  applicationName = self->_applicationName;
  v5 = a3;
  [v5 encodeObject:applicationName forKey:@"SFRequestParameters::applicationName"];
  [v5 encodeObject:self->_applicationVersion forKey:@"SFRequestParameters::applicationVersion"];
  [v5 encodeObject:self->_inlineItemList forKey:@"SFRequestParameters::inlineItemList"];
  [v5 encodeObject:self->_requestIdentifier forKey:@"SFRequestParameters::requestIdentifier"];
  [v5 encodeObject:self->_taskIdentifier forKey:@"SFRequestParameters::taskIdentifier"];
  [v5 encodeObject:self->_task forKey:@"SFRequestParameters::task"];
  [v5 encodeObject:self->_language forKey:@"SFRequestParameters::language"];
  [v5 encodeBool:self->_narrowband forKey:@"SFRequestParameters::narrowband"];
  [v5 encodeObject:self->_recognitionOverrides forKey:@"SFRequestParameters::recognitionOverrides"];
  [v5 encodeObject:self->_modelOverrideURL forKey:@"SFRequestParameters::modelOverrideURL"];
  [v5 encodeDouble:@"SFRequestParameters::maximumRecognitionDuration" forKey:self->_maximumRecognitionDuration];
  [v5 encodeObject:self->_dynamicLanguageModel forKey:@"SFRequestParameters::dynamicLanguageModel"];
  [v5 encodeObject:self->_dynamicVocabulary forKey:@"SFRequestParameters::dynamicVocabulary"];
  [v5 encodeBool:self->_detectMultipleUtterances forKey:@"SFRequestParameters::detectMultipleUtterances"];
  [v5 encodeBool:self->_onDeviceOnly forKey:@"SFRequestParameters::onDeviceOnly"];
  [v5 encodeBool:self->_enableAutoPunctuation forKey:@"SFRequestParameters::enableAutoPunctuation"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SFRequestParameters;
  v3 = [(SFRequestParameters *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", applicationName=%@, applicationVersion=%@, inlineItemList=%@, requestIdentifier=%@ task=%@ language=%@ narrowband=%d recognitionOverrides=%@ modelOverrideURL=%@ maximumRecognitionDuration=%f dynamicLanguageModel=%@ dynamicVocabulary=%@ detectMultipleUtterances=%d onDeviceOnly=%d enableAutoPunctuation=%d", self->_applicationName, self->_applicationVersion, self->_inlineItemList, self->_requestIdentifier, self->_task, self->_language, self->_narrowband, self->_recognitionOverrides, self->_modelOverrideURL, *&self->_maximumRecognitionDuration, self->_dynamicLanguageModel, self->_dynamicVocabulary, self->_detectMultipleUtterances, self->_onDeviceOnly, self->_enableAutoPunctuation];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  applicationName = self->_applicationName;
  if (applicationName != v4[2] && ![(NSString *)applicationName isEqual:?])
  {
    goto LABEL_29;
  }

  applicationVersion = self->_applicationVersion;
  if (applicationVersion != v4[3] && ![(NSString *)applicationVersion isEqual:?])
  {
    goto LABEL_29;
  }

  inlineItemList = self->_inlineItemList;
  if (inlineItemList != v4[4] && ![(NSArray *)inlineItemList isEqual:?])
  {
    goto LABEL_29;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier != v4[5] && ![(NSString *)requestIdentifier isEqual:?])
  {
    goto LABEL_29;
  }

  if (((taskIdentifier = self->_taskIdentifier, taskIdentifier == v4[6]) || [(NSString *)taskIdentifier isEqual:?]) && ((task = self->_task, task == v4[8]) || [(NSString *)task isEqual:?]) && ((language = self->_language, language == v4[7]) || [(NSString *)language isEqual:?]) && self->_narrowband == *(v4 + 8) && ((recognitionOverrides = self->_recognitionOverrides, recognitionOverrides == v4[9]) || [(NSDictionary *)recognitionOverrides isEqual:?]) && ((modelOverrideURL = self->_modelOverrideURL, modelOverrideURL == v4[10]) || [(NSURL *)modelOverrideURL isEqual:?]) && self->_maximumRecognitionDuration == *(v4 + 11) && ((dynamicLanguageModel = self->_dynamicLanguageModel, dynamicLanguageModel == v4[12]) || [(NSURL *)dynamicLanguageModel isEqual:?]) && ((dynamicVocabulary = self->_dynamicVocabulary, dynamicVocabulary == v4[13]) || [(NSURL *)dynamicVocabulary isEqual:?]) && self->_detectMultipleUtterances == *(v4 + 9) && self->_onDeviceOnly == *(v4 + 10))
  {
    v16 = self->_enableAutoPunctuation == *(v4 + 11);
  }

  else
  {
LABEL_29:
    v16 = 0;
  }

  return v16;
}

- (id)clientIdentifier
{
  applicationName = self->_applicationName;
  if (applicationName)
  {
    v3 = applicationName;
  }

  else
  {
    v3 = +[SFUtilities defaultClientID];
  }

  return v3;
}

@end