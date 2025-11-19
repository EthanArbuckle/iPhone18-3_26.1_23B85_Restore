@interface SFTranscriberModelOptions
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)a3 farField:(BOOL)a4 geoLMRegionID:(id)a5 modelOverrideURL:(id)a6 speechProfileURLs:(id)a7 taskForMemoryLock:(id)a8 atypicalSpeech:(BOOL)a9 enableParallelLoading:(BOOL)a10 enableFullPayloadCorrection:(BOOL)a11 languageModelCustomizationConfig:(id)a12;
@end

@implementation SFTranscriberModelOptions

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)a3 farField:(BOOL)a4 geoLMRegionID:(id)a5 modelOverrideURL:(id)a6 speechProfileURLs:(id)a7 taskForMemoryLock:(id)a8 atypicalSpeech:(BOOL)a9 enableParallelLoading:(BOOL)a10 enableFullPayloadCorrection:(BOOL)a11 languageModelCustomizationConfig:(id)a12
{
  v18 = a5;
  v19 = a7;
  v20 = a12;
  v37.receiver = self;
  v37.super_class = SFTranscriberModelOptions;
  v21 = a8;
  v22 = a6;
  v23 = a3;
  v24 = [(SFTranscriberModelOptions *)&v37 init];
  v25 = [v23 copy];

  supplementalModelURL = v24->_supplementalModelURL;
  v24->_supplementalModelURL = v25;

  v24->_farField = a4;
  geoLMRegionID = v24->_geoLMRegionID;
  v24->_geoLMRegionID = v18;
  v28 = v18;

  v29 = [v22 copy];
  modelOverrideURL = v24->_modelOverrideURL;
  v24->_modelOverrideURL = v29;

  speechProfileURLs = v24->_speechProfileURLs;
  v24->_speechProfileURLs = v19;
  v32 = v19;

  v33 = [v21 copy];
  taskForMemoryLock = v24->_taskForMemoryLock;
  v24->_taskForMemoryLock = v33;

  v24->_atypicalSpeech = a9;
  v24->_enableParallelLoading = a10;
  v24->_enableFullPayloadCorrection = a11;
  languageModelCustomizationConfig = v24->_languageModelCustomizationConfig;
  v24->_languageModelCustomizationConfig = v20;

  return v24;
}

@end