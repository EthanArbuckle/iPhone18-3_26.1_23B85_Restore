@interface SFRequestParameters
- (BOOL)isEqual:(id)equal;
- (SFRequestParameters)initWithCoder:(id)coder;
- (id)clientIdentifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SFRequestParameters

- (SFRequestParameters)initWithCoder:(id)coder
{
  v39[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = SFRequestParameters;
  v5 = [(SFRequestParameters *)&v37 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::applicationName"];
    applicationName = v5->_applicationName;
    v5->_applicationName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::applicationVersion"];
    applicationVersion = v5->_applicationVersion;
    v5->_applicationVersion = v8;

    v10 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
    v12 = [v10 setWithArray:v11];
    v13 = [coderCopy decodeObjectOfClasses:v12 forKey:@"SFRequestParameters::inlineItemList"];
    inlineItemList = v5->_inlineItemList;
    v5->_inlineItemList = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::requestIdentifier"];
    requestIdentifier = v5->_requestIdentifier;
    v5->_requestIdentifier = v15;

    v17 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::taskIdentifier"];
    taskIdentifier = v5->_taskIdentifier;
    v5->_taskIdentifier = v17;

    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::task"];
    task = v5->_task;
    v5->_task = v19;

    v21 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::language"];
    language = v5->_language;
    v5->_language = v21;

    v5->_narrowband = [coderCopy decodeBoolForKey:@"SFRequestParameters::narrowband"];
    v23 = MEMORY[0x1E695DFD8];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
    v25 = [v23 setWithArray:v24];
    v26 = [coderCopy decodeObjectOfClasses:v25 forKey:@"SFRequestParameters::recognitionOverrides"];
    recognitionOverrides = v5->_recognitionOverrides;
    v5->_recognitionOverrides = v26;

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::modelOverrideURL"];
    modelOverrideURL = v5->_modelOverrideURL;
    v5->_modelOverrideURL = v28;

    [coderCopy decodeDoubleForKey:@"SFRequestParameters::maximumRecognitionDuration"];
    v5->_maximumRecognitionDuration = v30;
    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::dynamicLanguageModel"];
    dynamicLanguageModel = v5->_dynamicLanguageModel;
    v5->_dynamicLanguageModel = v31;

    v33 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"SFRequestParameters::dynamicVocabulary"];
    dynamicVocabulary = v5->_dynamicVocabulary;
    v5->_dynamicVocabulary = v33;

    v5->_detectMultipleUtterances = [coderCopy decodeBoolForKey:@"SFRequestParameters::detectMultipleUtterances"];
    v5->_onDeviceOnly = [coderCopy decodeBoolForKey:@"SFRequestParameters::onDeviceOnly"];
    v5->_enableAutoPunctuation = [coderCopy decodeBoolForKey:@"SFRequestParameters::enableAutoPunctuation"];
  }

  v35 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  applicationName = self->_applicationName;
  coderCopy = coder;
  [coderCopy encodeObject:applicationName forKey:@"SFRequestParameters::applicationName"];
  [coderCopy encodeObject:self->_applicationVersion forKey:@"SFRequestParameters::applicationVersion"];
  [coderCopy encodeObject:self->_inlineItemList forKey:@"SFRequestParameters::inlineItemList"];
  [coderCopy encodeObject:self->_requestIdentifier forKey:@"SFRequestParameters::requestIdentifier"];
  [coderCopy encodeObject:self->_taskIdentifier forKey:@"SFRequestParameters::taskIdentifier"];
  [coderCopy encodeObject:self->_task forKey:@"SFRequestParameters::task"];
  [coderCopy encodeObject:self->_language forKey:@"SFRequestParameters::language"];
  [coderCopy encodeBool:self->_narrowband forKey:@"SFRequestParameters::narrowband"];
  [coderCopy encodeObject:self->_recognitionOverrides forKey:@"SFRequestParameters::recognitionOverrides"];
  [coderCopy encodeObject:self->_modelOverrideURL forKey:@"SFRequestParameters::modelOverrideURL"];
  [coderCopy encodeDouble:@"SFRequestParameters::maximumRecognitionDuration" forKey:self->_maximumRecognitionDuration];
  [coderCopy encodeObject:self->_dynamicLanguageModel forKey:@"SFRequestParameters::dynamicLanguageModel"];
  [coderCopy encodeObject:self->_dynamicVocabulary forKey:@"SFRequestParameters::dynamicVocabulary"];
  [coderCopy encodeBool:self->_detectMultipleUtterances forKey:@"SFRequestParameters::detectMultipleUtterances"];
  [coderCopy encodeBool:self->_onDeviceOnly forKey:@"SFRequestParameters::onDeviceOnly"];
  [coderCopy encodeBool:self->_enableAutoPunctuation forKey:@"SFRequestParameters::enableAutoPunctuation"];
}

- (id)description
{
  v6.receiver = self;
  v6.super_class = SFRequestParameters;
  v3 = [(SFRequestParameters *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@", applicationName=%@, applicationVersion=%@, inlineItemList=%@, requestIdentifier=%@ task=%@ language=%@ narrowband=%d recognitionOverrides=%@ modelOverrideURL=%@ maximumRecognitionDuration=%f dynamicLanguageModel=%@ dynamicVocabulary=%@ detectMultipleUtterances=%d onDeviceOnly=%d enableAutoPunctuation=%d", self->_applicationName, self->_applicationVersion, self->_inlineItemList, self->_requestIdentifier, self->_task, self->_language, self->_narrowband, self->_recognitionOverrides, self->_modelOverrideURL, *&self->_maximumRecognitionDuration, self->_dynamicLanguageModel, self->_dynamicVocabulary, self->_detectMultipleUtterances, self->_onDeviceOnly, self->_enableAutoPunctuation];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  applicationName = self->_applicationName;
  if (applicationName != equalCopy[2] && ![(NSString *)applicationName isEqual:?])
  {
    goto LABEL_29;
  }

  applicationVersion = self->_applicationVersion;
  if (applicationVersion != equalCopy[3] && ![(NSString *)applicationVersion isEqual:?])
  {
    goto LABEL_29;
  }

  inlineItemList = self->_inlineItemList;
  if (inlineItemList != equalCopy[4] && ![(NSArray *)inlineItemList isEqual:?])
  {
    goto LABEL_29;
  }

  requestIdentifier = self->_requestIdentifier;
  if (requestIdentifier != equalCopy[5] && ![(NSString *)requestIdentifier isEqual:?])
  {
    goto LABEL_29;
  }

  if (((taskIdentifier = self->_taskIdentifier, taskIdentifier == equalCopy[6]) || [(NSString *)taskIdentifier isEqual:?]) && ((task = self->_task, task == equalCopy[8]) || [(NSString *)task isEqual:?]) && ((language = self->_language, language == equalCopy[7]) || [(NSString *)language isEqual:?]) && self->_narrowband == *(equalCopy + 8) && ((recognitionOverrides = self->_recognitionOverrides, recognitionOverrides == equalCopy[9]) || [(NSDictionary *)recognitionOverrides isEqual:?]) && ((modelOverrideURL = self->_modelOverrideURL, modelOverrideURL == equalCopy[10]) || [(NSURL *)modelOverrideURL isEqual:?]) && self->_maximumRecognitionDuration == *(equalCopy + 11) && ((dynamicLanguageModel = self->_dynamicLanguageModel, dynamicLanguageModel == equalCopy[12]) || [(NSURL *)dynamicLanguageModel isEqual:?]) && ((dynamicVocabulary = self->_dynamicVocabulary, dynamicVocabulary == equalCopy[13]) || [(NSURL *)dynamicVocabulary isEqual:?]) && self->_detectMultipleUtterances == *(equalCopy + 9) && self->_onDeviceOnly == *(equalCopy + 10))
  {
    v16 = self->_enableAutoPunctuation == *(equalCopy + 11);
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