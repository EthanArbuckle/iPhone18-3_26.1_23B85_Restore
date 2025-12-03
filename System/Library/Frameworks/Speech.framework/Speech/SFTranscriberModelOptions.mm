@interface SFTranscriberModelOptions
- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0 enableFullPayloadCorrection:(BOOL)self1 languageModelCustomizationConfig:(id)self2;
@end

@implementation SFTranscriberModelOptions

- (SFTranscriberModelOptions)initWithSupplementalModelURL:(id)l farField:(BOOL)field geoLMRegionID:(id)d modelOverrideURL:(id)rL speechProfileURLs:(id)ls taskForMemoryLock:(id)lock atypicalSpeech:(BOOL)speech enableParallelLoading:(BOOL)self0 enableFullPayloadCorrection:(BOOL)self1 languageModelCustomizationConfig:(id)self2
{
  dCopy = d;
  lsCopy = ls;
  configCopy = config;
  v37.receiver = self;
  v37.super_class = SFTranscriberModelOptions;
  lockCopy = lock;
  rLCopy = rL;
  lCopy = l;
  v24 = [(SFTranscriberModelOptions *)&v37 init];
  v25 = [lCopy copy];

  supplementalModelURL = v24->_supplementalModelURL;
  v24->_supplementalModelURL = v25;

  v24->_farField = field;
  geoLMRegionID = v24->_geoLMRegionID;
  v24->_geoLMRegionID = dCopy;
  v28 = dCopy;

  v29 = [rLCopy copy];
  modelOverrideURL = v24->_modelOverrideURL;
  v24->_modelOverrideURL = v29;

  speechProfileURLs = v24->_speechProfileURLs;
  v24->_speechProfileURLs = lsCopy;
  v32 = lsCopy;

  v33 = [lockCopy copy];
  taskForMemoryLock = v24->_taskForMemoryLock;
  v24->_taskForMemoryLock = v33;

  v24->_atypicalSpeech = speech;
  v24->_enableParallelLoading = loading;
  v24->_enableFullPayloadCorrection = correction;
  languageModelCustomizationConfig = v24->_languageModelCustomizationConfig;
  v24->_languageModelCustomizationConfig = configCopy;

  return v24;
}

@end