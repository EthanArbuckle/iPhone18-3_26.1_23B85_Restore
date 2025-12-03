@interface ObjCSpeechAnalyzer
+ (void)assetsDownloadRequestForClientIdentifier:(NSString *)identifier transcriberOptions:(SFSpeechAnalyzerTranscriberOptions *)options completion:(id)completion;
- (_TtC6Speech18ObjCSpeechAnalyzer)initWithObjCSpeechAnalyzer:(id)analyzer clientIdentifier:(id)identifier audioFormat:(id)format formatForNewLines:(BOOL)lines transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)self0 queue:(id)self1 transcriberOptions:(id)self2 options:(id)self3 languageDetectorOptions:(id)self4 speechDetectorOptions:(id)self5 contextualNamedEntities:(id)self6 didChangeVolatileRange:(id)self7;
- (void)requestResultAtEndpointTimes:(id)times;
- (void)setAnalysisContextWithContextualNamedEntities:(NSArray *)entities completionHandler:(id)handler;
- (void)setInputAudioFile:(NSURL *)file withAudioFormat:(AVAudioFormat *)format completionHandler:(id)handler;
@end

@implementation ObjCSpeechAnalyzer

- (_TtC6Speech18ObjCSpeechAnalyzer)initWithObjCSpeechAnalyzer:(id)analyzer clientIdentifier:(id)identifier audioFormat:(id)format formatForNewLines:(BOOL)lines transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)self0 queue:(id)self1 transcriberOptions:(id)self2 options:(id)self3 languageDetectorOptions:(id)self4 speechDetectorOptions:(id)self5 contextualNamedEntities:(id)self6 didChangeVolatileRange:(id)self7
{
  HIDWORD(v36) = lines;
  v19 = _Block_copy(range);
  v35 = sub_1AC79FF68();
  v34 = v20;
  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    v33 = sub_1AC7A0158();
  }

  else
  {
    v33 = 0;
  }

  if (v19)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    v32 = sub_1AC73ECF8;
  }

  else
  {
    v32 = 0;
    v21 = 0;
  }

  analyzerCopy = analyzer;
  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v24 = a13;
  detectorOptionsCopy = detectorOptions;
  speechDetectorOptionsCopy = speechDetectorOptions;
  sub_1AC7331CC(analyzerCopy, v35, v34, formatCopy, HIDWORD(v36), delegate, resultDelegate, detectorResultDelegate, speechDetectorResultDelegate, queueCopy, options, a13, detectorOptions, speechDetectorOptions, v33, v32, v21, formatCopy, analyzerCopy, v32, speechDetectorOptions, detectorOptions, a13, options, v33, queue, v34, v35, v36);
  v28 = v27;
  _Block_release(range);
  return v28;
}

+ (void)assetsDownloadRequestForClientIdentifier:(NSString *)identifier transcriberOptions:(SFSpeechAnalyzerTranscriberOptions *)options completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = identifier;
  v9[3] = options;
  v9[4] = v8;
  v9[5] = self;
  identifierCopy = identifier;
  optionsCopy = options;

  sub_1AC72CEC8();
}

- (void)requestResultAtEndpointTimes:(id)times
{
  sub_1AC5CF764(0, &qword_1EB56C668, 0x1E696B098);
  sub_1AC7A0158();
  selfCopy = self;
  sub_1AC73A848();
}

- (void)setInputAudioFile:(NSURL *)file withAudioFormat:(AVAudioFormat *)format completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = file;
  v9[3] = format;
  v9[4] = v8;
  v9[5] = self;
  fileCopy = file;
  formatCopy = format;
  selfCopy = self;

  sub_1AC72CEC8();
}

- (void)setAnalysisContextWithContextualNamedEntities:(NSArray *)entities completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = entities;
  v7[3] = v6;
  v7[4] = self;
  entitiesCopy = entities;
  selfCopy = self;

  sub_1AC72CEC8();
}

@end