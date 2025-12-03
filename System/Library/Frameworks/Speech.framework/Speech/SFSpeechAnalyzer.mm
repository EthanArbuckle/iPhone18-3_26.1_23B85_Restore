@interface SFSpeechAnalyzer
+ (void)configurationForClientIdentifier:(id)identifier formatForNewLines:(BOOL)lines queue:(id)queue transcriberOptions:(id)options languageDetectorOptions:(id)detectorOptions speechDetectorOptions:(id)speechDetectorOptions transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)self0 languageDetectorResultDelegate:(id)self1 speechDetectorResultDelegate:(id)self2 considering:(id)self3 completion:(id)self4;
+ (void)endModelRetentionWithCompletion:(id)completion;
+ (void)speechAnalyzerWithConfiguration:(id)configuration inputAudioFile:(id)file options:(id)options restrictedLogging:(BOOL)logging contextualNamedEntities:(id)entities didChangeVolatileRange:(id)range completion:(id)completion;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format formatForNewLines:(BOOL)lines transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)self0 transcriberOptions:(id)self1 options:(id)self2 languageDetectorOptions:(id)self3 speechDetectorOptions:(id)self4 restrictedLogging:(BOOL)self5 contextualNamedEntities:(id)self6 didChangeVolatileRange:(id)self7;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format formatForNewLines:(BOOL)lines transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)self0 transcriberOptions:(id)self1 options:(id)self2 languageDetectorOptions:(id)self3 speechDetectorOptions:(id)self4 restrictedLogging:(BOOL)self5 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)self0 languageDetectorOptions:(id)self1 restrictedLogging:(BOOL)self2 contextualNamedEntities:(id)self3 didChangeVolatileRange:(id)self4;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)self0 languageDetectorOptions:(id)self1 restrictedLogging:(BOOL)self2 geoLMRegionID:(id)self3 contextualNamedEntities:(id)self4 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)queue transcriberOptions:(id)self0 options:(id)self1 languageDetectorOptions:(id)self2 speechDetectorOptions:(id)self3 restrictedLogging:(BOOL)self4 contextualNamedEntities:(id)self5 didChangeVolatileRange:(id)self6;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)queue transcriberOptions:(id)self0 options:(id)self1 languageDetectorOptions:(id)self2 speechDetectorOptions:(id)self3 restrictedLogging:(BOOL)self4 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)a9 restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)a9 restrictedLogging:(BOOL)self0 geoLMRegionID:(id)self1 contextualNamedEntities:(id)self2 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithConfiguration:(id)configuration options:(id)options restrictedLogging:(BOOL)logging contextualNamedEntities:(id)entities didChangeVolatileRange:(id)range;
- (SFSpeechAnalyzer)initWithConfiguration:(id)configuration options:(id)options restrictedLogging:(BOOL)logging didChangeVolatileRange:(id)range;
- (SFSpeechAnalyzer)initWithConfiguration:(id)configuration options:(id)options restrictedLogging:(BOOL)logging geoLMRegionID:(id)d contextualNamedEntities:(id)entities didChangeVolatileRange:(id)range;
- (void)addAudio:(id)audio;
- (void)finalizeThrough:(id *)through completion:(id)completion;
- (void)finishAudio;
- (void)prepareToAnalyzeReportingInto:(NSProgress *)into completion:(id)completion;
- (void)requestResultAtEndpointTimes:(id)times;
- (void)setDidChangeVolatileRange:(id)range completion:;
@end

@implementation SFSpeechAnalyzer

+ (void)configurationForClientIdentifier:(id)identifier formatForNewLines:(BOOL)lines queue:(id)queue transcriberOptions:(id)options languageDetectorOptions:(id)detectorOptions speechDetectorOptions:(id)speechDetectorOptions transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)self0 languageDetectorResultDelegate:(id)self1 speechDetectorResultDelegate:(id)self2 considering:(id)self3 completion:(id)self4
{
  linesCopy = lines;
  v17 = _Block_copy(completion);
  v18 = sub_1AC79FF68();
  v27 = v19;
  v28 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  queueCopy = queue;
  optionsCopy = options;
  detectorOptionsCopy = detectorOptions;
  speechDetectorOptionsCopy = speechDetectorOptions;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  consideringCopy = considering;
  sub_1AC651398(v28, v27, linesCopy, queueCopy, options, detectorOptions, speechDetectorOptions, delegate, resultDelegate, detectorResultDelegate, speechDetectorResultDelegate, considering, sub_1AC658E74, v20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

+ (void)speechAnalyzerWithConfiguration:(id)configuration inputAudioFile:(id)file options:(id)options restrictedLogging:(BOOL)logging contextualNamedEntities:(id)entities didChangeVolatileRange:(id)range completion:(id)completion
{
  loggingCopy = logging;
  v13 = sub_1AC79F7F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(range);
  v19 = _Block_copy(completion);
  sub_1AC79F7A8();
  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    entities = sub_1AC7A0158();
  }

  if (v18)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    v18 = sub_1AC658ED0;
  }

  else
  {
    v20 = 0;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  configurationCopy = configuration;
  optionsCopy = options;
  sub_1AC651694(configurationCopy, v17, options, loggingCopy, entities, v18, v20, sub_1AC658CF8, v21);

  sub_1AC5C3958(v18);

  (*(v14 + 8))(v17, v13);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format formatForNewLines:(BOOL)lines transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)self0 transcriberOptions:(id)self1 options:(id)self2 languageDetectorOptions:(id)self3 speechDetectorOptions:(id)self4 restrictedLogging:(BOOL)self5 contextualNamedEntities:(id)self6 didChangeVolatileRange:(id)self7
{
  linesCopy = lines;
  v20 = _Block_copy(range);
  v21 = sub_1AC79FF68();
  v34 = v22;
  v35 = v21;
  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    v33 = sub_1AC7A0158();
  }

  else
  {
    v33 = 0;
  }

  if (v20)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = v20;
    v32 = sub_1AC658ED0;
  }

  else
  {
    v32 = 0;
    v23 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v26 = a12;
  detectorOptionsCopy = detectorOptions;
  speechDetectorOptionsCopy = speechDetectorOptions;
  LOBYTE(v30) = 0;
  return sub_1AC6524A0(v35, v34, formatCopy, linesCopy, delegate, resultDelegate, detectorResultDelegate, speechDetectorResultDelegate, queueCopy, options, a12, detectorOptions, speechDetectorOptions, v30, v33, v32, v23);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format formatForNewLines:(BOOL)lines transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)self0 transcriberOptions:(id)self1 options:(id)self2 languageDetectorOptions:(id)self3 speechDetectorOptions:(id)self4 restrictedLogging:(BOOL)self5 didChangeVolatileRange:(id)aBlock
{
  v19 = _Block_copy(aBlock);
  v20 = sub_1AC79FF68();
  v31 = v21;
  v32 = v20;
  if (v19)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    v30 = sub_1AC658ED0;
  }

  else
  {
    v30 = 0;
    v22 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v25 = a12;
  detectorOptionsCopy = detectorOptions;
  speechDetectorOptionsCopy = speechDetectorOptions;
  return sub_1AC65273C(v32, v31, formatCopy, lines, delegate, resultDelegate, detectorResultDelegate, speechDetectorResultDelegate, queueCopy, options, a12, detectorOptions, speechDetectorOptions, logging, v30, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)queue transcriberOptions:(id)self0 options:(id)self1 languageDetectorOptions:(id)self2 speechDetectorOptions:(id)self3 restrictedLogging:(BOOL)self4 contextualNamedEntities:(id)self5 didChangeVolatileRange:(id)self6
{
  v19 = _Block_copy(range);
  v20 = sub_1AC79FF68();
  v32 = v21;
  v33 = v20;
  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    v31 = sub_1AC7A0158();
  }

  else
  {
    v31 = 0;
  }

  if (v19)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v19;
    v30 = sub_1AC658ED0;
  }

  else
  {
    v30 = 0;
    v22 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v25 = a11;
  detectorOptionsCopy = detectorOptions;
  speechDetectorOptionsCopy = speechDetectorOptions;
  return sub_1AC652AE8(v33, v32, formatCopy, delegate, resultDelegate, detectorResultDelegate, speechDetectorResultDelegate, queueCopy, options, a11, detectorOptions, speechDetectorOptions, logging, v31, v30, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate speechDetectorResultDelegate:(id)speechDetectorResultDelegate queue:(id)queue transcriberOptions:(id)self0 options:(id)self1 languageDetectorOptions:(id)self2 speechDetectorOptions:(id)self3 restrictedLogging:(BOOL)self4 didChangeVolatileRange:(id)aBlock
{
  v18 = _Block_copy(aBlock);
  v19 = sub_1AC79FF68();
  v30 = v20;
  v31 = v19;
  if (v18)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    v29 = sub_1AC658ED0;
  }

  else
  {
    v29 = 0;
    v21 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v24 = a11;
  detectorOptionsCopy = detectorOptions;
  speechDetectorOptionsCopy = speechDetectorOptions;
  return sub_1AC652E40(v31, v30, formatCopy, delegate, resultDelegate, detectorResultDelegate, speechDetectorResultDelegate, queueCopy, options, a11, detectorOptions, speechDetectorOptions, logging, v29, v21);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)self0 languageDetectorOptions:(id)self1 restrictedLogging:(BOOL)self2 contextualNamedEntities:(id)self3 didChangeVolatileRange:(id)self4
{
  v18 = _Block_copy(range);
  v19 = sub_1AC79FF68();
  v30 = v20;
  v31 = v19;
  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    v28 = sub_1AC7A0158();
  }

  else
  {
    v28 = 0;
  }

  if (v18)
  {
    v21 = swift_allocObject();
    *(v21 + 16) = v18;
    v18 = sub_1AC658ED0;
  }

  else
  {
    v21 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v25 = a10;
  detectorOptionsCopy = detectorOptions;
  return sub_1AC65313C(v31, v30, formatCopy, delegate, resultDelegate, detectorResultDelegate, queueCopy, options, a10, detectorOptions, logging, v28, v18, v21);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate languageDetectorResultDelegate:(id)detectorResultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)self0 languageDetectorOptions:(id)self1 restrictedLogging:(BOOL)self2 geoLMRegionID:(id)self3 contextualNamedEntities:(id)self4 didChangeVolatileRange:(id)aBlock
{
  v18 = _Block_copy(aBlock);
  v19 = sub_1AC79FF68();
  v33 = v20;
  v34 = v19;
  if (d)
  {
    sub_1AC79FF68();
    v31 = v21;
  }

  else
  {
    v31 = 0;
  }

  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    v30 = sub_1AC7A0158();
  }

  else
  {
    v30 = 0;
  }

  if (v18)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    v18 = sub_1AC658ED0;
  }

  else
  {
    v22 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v26 = a10;
  detectorOptionsCopy = detectorOptions;
  return sub_1AC653444(v34, v33, formatCopy, delegate, resultDelegate, detectorResultDelegate, queueCopy, options, a10, detectorOptions, logging, v29, v31, v30, v18, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)a9 restrictedLogging:(BOOL)self0 geoLMRegionID:(id)self1 contextualNamedEntities:(id)self2 didChangeVolatileRange:(id)aBlock
{
  entitiesCopy = entities;
  v18 = _Block_copy(aBlock);
  v19 = sub_1AC79FF68();
  v30 = v20;
  v31 = v19;
  if (d)
  {
    sub_1AC79FF68();
    v29 = v21;
  }

  else
  {
    v29 = 0;
  }

  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    entitiesCopy = sub_1AC7A0158();
  }

  if (v18)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = v18;
    v18 = sub_1AC658ED0;
  }

  else
  {
    v22 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v26 = a9;
  return sub_1AC653774(v31, v30, formatCopy, delegate, resultDelegate, queueCopy, optionsCopy, a9, logging, v28, v29, entitiesCopy, v18, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)identifier audioFormat:(id)format transcriberResultDelegate:(id)delegate endpointingResultDelegate:(id)resultDelegate queue:(id)queue transcriberOptions:(id)options options:(id)a9 restrictedLogging:(BOOL)self0 didChangeVolatileRange:(id)aBlock
{
  v16 = _Block_copy(aBlock);
  v17 = sub_1AC79FF68();
  v19 = v18;
  if (v16)
  {
    v20 = swift_allocObject();
    *(v20 + 16) = v16;
    v16 = sub_1AC658ED0;
  }

  else
  {
    v20 = 0;
  }

  formatCopy = format;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  queueCopy = queue;
  optionsCopy = options;
  v24 = a9;
  return sub_1AC653ABC(v17, v19, formatCopy, delegate, resultDelegate, queueCopy, optionsCopy, a9, logging, v16, v20);
}

- (SFSpeechAnalyzer)initWithConfiguration:(id)configuration options:(id)options restrictedLogging:(BOOL)logging contextualNamedEntities:(id)entities didChangeVolatileRange:(id)range
{
  v10 = _Block_copy(range);
  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    entities = sub_1AC7A0158();
  }

  if (v10)
  {
    v11 = swift_allocObject();
    *(v11 + 16) = v10;
    v10 = sub_1AC658ED0;
  }

  else
  {
    v11 = 0;
  }

  configurationCopy = configuration;
  optionsCopy = options;
  return sub_1AC653D9C(configurationCopy, options, 0, entities, v10, v11);
}

- (SFSpeechAnalyzer)initWithConfiguration:(id)configuration options:(id)options restrictedLogging:(BOOL)logging geoLMRegionID:(id)d contextualNamedEntities:(id)entities didChangeVolatileRange:(id)range
{
  v13 = _Block_copy(range);
  if (d)
  {
    sub_1AC79FF68();
    d = v14;
  }

  if (entities)
  {
    type metadata accessor for SFContextualNamedEntity();
    entities = sub_1AC7A0158();
  }

  if (v13)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v13 = sub_1AC658ED0;
  }

  else
  {
    v15 = 0;
  }

  configurationCopy = configuration;
  optionsCopy = options;
  return sub_1AC654258(configurationCopy, options, logging, v18, d, entities, v13, v15);
}

- (SFSpeechAnalyzer)initWithConfiguration:(id)configuration options:(id)options restrictedLogging:(BOOL)logging didChangeVolatileRange:(id)range
{
  v9 = _Block_copy(range);
  if (v9)
  {
    v10 = swift_allocObject();
    *(v10 + 16) = v9;
    v9 = sub_1AC658ED0;
  }

  else
  {
    v10 = 0;
  }

  configurationCopy = configuration;
  optionsCopy = options;
  return sub_1AC654470(configurationCopy, options, logging, v9, v10);
}

- (void)addAudio:(id)audio
{
  audioCopy = audio;
  selfCopy = self;
  sub_1AC65605C();
}

- (void)finishAudio
{
  selfCopy = self;
  sub_1AC65490C();
}

- (void)setDidChangeVolatileRange:(id)range completion:
{
  v4 = v3;
  v6 = _Block_copy(range);
  v7 = _Block_copy(v4);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  selfCopy = self;

  sub_1AC72CEC8();
}

- (void)finalizeThrough:(id *)through completion:(id)completion
{
  var0 = through->var0;
  var3 = through->var3;
  v7 = *&through->var1;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  v9[2] = var0;
  v9[3] = v7;
  v9[4] = var3;
  v9[5] = v8;
  v9[6] = self;
  selfCopy = self;

  sub_1AC72CEC8();
}

- (void)requestResultAtEndpointTimes:(id)times
{
  sub_1AC5CF764(0, &qword_1EB56C668, 0x1E696B098);
  sub_1AC7A0158();
  selfCopy = self;
  sub_1AC65605C();
}

- (void)prepareToAnalyzeReportingInto:(NSProgress *)into completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = into;
  v7[3] = v6;
  v7[4] = self;
  intoCopy = into;
  selfCopy = self;

  sub_1AC72CEC8();
}

+ (void)endModelRetentionWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = self;

  sub_1AC72CEC8();
}

@end