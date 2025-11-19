@interface SFSpeechAnalyzer
+ (void)configurationForClientIdentifier:(id)a3 formatForNewLines:(BOOL)a4 queue:(id)a5 transcriberOptions:(id)a6 languageDetectorOptions:(id)a7 speechDetectorOptions:(id)a8 transcriberResultDelegate:(id)a9 endpointingResultDelegate:(id)a10 languageDetectorResultDelegate:(id)a11 speechDetectorResultDelegate:(id)a12 considering:(id)a13 completion:(id)a14;
+ (void)endModelRetentionWithCompletion:(id)a3;
+ (void)speechAnalyzerWithConfiguration:(id)a3 inputAudioFile:(id)a4 options:(id)a5 restrictedLogging:(BOOL)a6 contextualNamedEntities:(id)a7 didChangeVolatileRange:(id)a8 completion:(id)a9;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 formatForNewLines:(BOOL)a5 transcriberResultDelegate:(id)a6 endpointingResultDelegate:(id)a7 languageDetectorResultDelegate:(id)a8 speechDetectorResultDelegate:(id)a9 queue:(id)a10 transcriberOptions:(id)a11 options:(id)a12 languageDetectorOptions:(id)a13 speechDetectorOptions:(id)a14 restrictedLogging:(BOOL)a15 contextualNamedEntities:(id)a16 didChangeVolatileRange:(id)a17;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 formatForNewLines:(BOOL)a5 transcriberResultDelegate:(id)a6 endpointingResultDelegate:(id)a7 languageDetectorResultDelegate:(id)a8 speechDetectorResultDelegate:(id)a9 queue:(id)a10 transcriberOptions:(id)a11 options:(id)a12 languageDetectorOptions:(id)a13 speechDetectorOptions:(id)a14 restrictedLogging:(BOOL)a15 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 queue:(id)a8 transcriberOptions:(id)a9 options:(id)a10 languageDetectorOptions:(id)a11 restrictedLogging:(BOOL)a12 contextualNamedEntities:(id)a13 didChangeVolatileRange:(id)a14;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 queue:(id)a8 transcriberOptions:(id)a9 options:(id)a10 languageDetectorOptions:(id)a11 restrictedLogging:(BOOL)a12 geoLMRegionID:(id)a13 contextualNamedEntities:(id)a14 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 speechDetectorResultDelegate:(id)a8 queue:(id)a9 transcriberOptions:(id)a10 options:(id)a11 languageDetectorOptions:(id)a12 speechDetectorOptions:(id)a13 restrictedLogging:(BOOL)a14 contextualNamedEntities:(id)a15 didChangeVolatileRange:(id)a16;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 speechDetectorResultDelegate:(id)a8 queue:(id)a9 transcriberOptions:(id)a10 options:(id)a11 languageDetectorOptions:(id)a12 speechDetectorOptions:(id)a13 restrictedLogging:(BOOL)a14 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 queue:(id)a7 transcriberOptions:(id)a8 options:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 queue:(id)a7 transcriberOptions:(id)a8 options:(id)a9 restrictedLogging:(BOOL)a10 geoLMRegionID:(id)a11 contextualNamedEntities:(id)a12 didChangeVolatileRange:(id)aBlock;
- (SFSpeechAnalyzer)initWithConfiguration:(id)a3 options:(id)a4 restrictedLogging:(BOOL)a5 contextualNamedEntities:(id)a6 didChangeVolatileRange:(id)a7;
- (SFSpeechAnalyzer)initWithConfiguration:(id)a3 options:(id)a4 restrictedLogging:(BOOL)a5 didChangeVolatileRange:(id)a6;
- (SFSpeechAnalyzer)initWithConfiguration:(id)a3 options:(id)a4 restrictedLogging:(BOOL)a5 geoLMRegionID:(id)a6 contextualNamedEntities:(id)a7 didChangeVolatileRange:(id)a8;
- (void)addAudio:(id)a3;
- (void)finalizeThrough:(id *)a3 completion:(id)a4;
- (void)finishAudio;
- (void)prepareToAnalyzeReportingInto:(NSProgress *)a3 completion:(id)a4;
- (void)requestResultAtEndpointTimes:(id)a3;
- (void)setDidChangeVolatileRange:(id)a3 completion:;
@end

@implementation SFSpeechAnalyzer

+ (void)configurationForClientIdentifier:(id)a3 formatForNewLines:(BOOL)a4 queue:(id)a5 transcriberOptions:(id)a6 languageDetectorOptions:(id)a7 speechDetectorOptions:(id)a8 transcriberResultDelegate:(id)a9 endpointingResultDelegate:(id)a10 languageDetectorResultDelegate:(id)a11 speechDetectorResultDelegate:(id)a12 considering:(id)a13 completion:(id)a14
{
  v29 = a4;
  v17 = _Block_copy(a14);
  v18 = sub_1AC79FF68();
  v27 = v19;
  v28 = v18;
  v20 = swift_allocObject();
  *(v20 + 16) = v17;
  v21 = a5;
  v26 = a6;
  v25 = a7;
  v24 = a8;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = a13;
  sub_1AC651398(v28, v27, v29, v21, a6, a7, a8, a9, a10, a11, a12, a13, sub_1AC658E74, v20);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

+ (void)speechAnalyzerWithConfiguration:(id)a3 inputAudioFile:(id)a4 options:(id)a5 restrictedLogging:(BOOL)a6 contextualNamedEntities:(id)a7 didChangeVolatileRange:(id)a8 completion:(id)a9
{
  v25 = a6;
  v13 = sub_1AC79F7F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = _Block_copy(a8);
  v19 = _Block_copy(a9);
  sub_1AC79F7A8();
  if (a7)
  {
    type metadata accessor for SFContextualNamedEntity();
    a7 = sub_1AC7A0158();
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
  v22 = a3;
  v23 = a5;
  sub_1AC651694(v22, v17, a5, v25, a7, v18, v20, sub_1AC658CF8, v21);

  sub_1AC5C3958(v18);

  (*(v14 + 8))(v17, v13);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 formatForNewLines:(BOOL)a5 transcriberResultDelegate:(id)a6 endpointingResultDelegate:(id)a7 languageDetectorResultDelegate:(id)a8 speechDetectorResultDelegate:(id)a9 queue:(id)a10 transcriberOptions:(id)a11 options:(id)a12 languageDetectorOptions:(id)a13 speechDetectorOptions:(id)a14 restrictedLogging:(BOOL)a15 contextualNamedEntities:(id)a16 didChangeVolatileRange:(id)a17
{
  v36 = a5;
  v20 = _Block_copy(a17);
  v21 = sub_1AC79FF68();
  v34 = v22;
  v35 = v21;
  if (a16)
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

  v31 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  LOBYTE(v30) = 0;
  return sub_1AC6524A0(v35, v34, v31, v36, a6, a7, a8, a9, v24, a11, a12, a13, a14, v30, v33, v32, v23);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 formatForNewLines:(BOOL)a5 transcriberResultDelegate:(id)a6 endpointingResultDelegate:(id)a7 languageDetectorResultDelegate:(id)a8 speechDetectorResultDelegate:(id)a9 queue:(id)a10 transcriberOptions:(id)a11 options:(id)a12 languageDetectorOptions:(id)a13 speechDetectorOptions:(id)a14 restrictedLogging:(BOOL)a15 didChangeVolatileRange:(id)aBlock
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

  v29 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  v27 = a14;
  return sub_1AC65273C(v32, v31, v29, a5, a6, a7, a8, a9, v23, a11, a12, a13, a14, a15, v30, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 speechDetectorResultDelegate:(id)a8 queue:(id)a9 transcriberOptions:(id)a10 options:(id)a11 languageDetectorOptions:(id)a12 speechDetectorOptions:(id)a13 restrictedLogging:(BOOL)a14 contextualNamedEntities:(id)a15 didChangeVolatileRange:(id)a16
{
  v19 = _Block_copy(a16);
  v20 = sub_1AC79FF68();
  v32 = v21;
  v33 = v20;
  if (a15)
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

  v29 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  return sub_1AC652AE8(v33, v32, v29, a5, a6, a7, a8, v23, a10, a11, a12, a13, a14, v31, v30, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 speechDetectorResultDelegate:(id)a8 queue:(id)a9 transcriberOptions:(id)a10 options:(id)a11 languageDetectorOptions:(id)a12 speechDetectorOptions:(id)a13 restrictedLogging:(BOOL)a14 didChangeVolatileRange:(id)aBlock
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

  v28 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  v26 = a13;
  return sub_1AC652E40(v31, v30, v28, a5, a6, a7, a8, v22, a10, a11, a12, a13, a14, v29, v21);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 queue:(id)a8 transcriberOptions:(id)a9 options:(id)a10 languageDetectorOptions:(id)a11 restrictedLogging:(BOOL)a12 contextualNamedEntities:(id)a13 didChangeVolatileRange:(id)a14
{
  v18 = _Block_copy(a14);
  v19 = sub_1AC79FF68();
  v30 = v20;
  v31 = v19;
  if (a13)
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

  v22 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v23 = a8;
  v24 = a9;
  v25 = a10;
  v26 = a11;
  return sub_1AC65313C(v31, v30, v22, a5, a6, a7, v23, a9, a10, a11, a12, v28, v18, v21);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 languageDetectorResultDelegate:(id)a7 queue:(id)a8 transcriberOptions:(id)a9 options:(id)a10 languageDetectorOptions:(id)a11 restrictedLogging:(BOOL)a12 geoLMRegionID:(id)a13 contextualNamedEntities:(id)a14 didChangeVolatileRange:(id)aBlock
{
  v18 = _Block_copy(aBlock);
  v19 = sub_1AC79FF68();
  v33 = v20;
  v34 = v19;
  if (a13)
  {
    sub_1AC79FF68();
    v31 = v21;
  }

  else
  {
    v31 = 0;
  }

  if (a14)
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

  v23 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = a8;
  v25 = a9;
  v26 = a10;
  v27 = a11;
  return sub_1AC653444(v34, v33, v23, a5, a6, a7, v24, a9, a10, a11, a12, v29, v31, v30, v18, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 queue:(id)a7 transcriberOptions:(id)a8 options:(id)a9 restrictedLogging:(BOOL)a10 geoLMRegionID:(id)a11 contextualNamedEntities:(id)a12 didChangeVolatileRange:(id)aBlock
{
  v17 = a12;
  v18 = _Block_copy(aBlock);
  v19 = sub_1AC79FF68();
  v30 = v20;
  v31 = v19;
  if (a11)
  {
    sub_1AC79FF68();
    v29 = v21;
  }

  else
  {
    v29 = 0;
  }

  if (a12)
  {
    type metadata accessor for SFContextualNamedEntity();
    v17 = sub_1AC7A0158();
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

  v23 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v24 = a7;
  v25 = a8;
  v26 = a9;
  return sub_1AC653774(v31, v30, v23, a5, a6, v24, v25, a9, a10, v28, v29, v17, v18, v22);
}

- (SFSpeechAnalyzer)initWithClientIdentifier:(id)a3 audioFormat:(id)a4 transcriberResultDelegate:(id)a5 endpointingResultDelegate:(id)a6 queue:(id)a7 transcriberOptions:(id)a8 options:(id)a9 restrictedLogging:(BOOL)a10 didChangeVolatileRange:(id)aBlock
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

  v21 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = a7;
  v23 = a8;
  v24 = a9;
  return sub_1AC653ABC(v17, v19, v21, a5, a6, v22, v23, a9, a10, v16, v20);
}

- (SFSpeechAnalyzer)initWithConfiguration:(id)a3 options:(id)a4 restrictedLogging:(BOOL)a5 contextualNamedEntities:(id)a6 didChangeVolatileRange:(id)a7
{
  v10 = _Block_copy(a7);
  if (a6)
  {
    type metadata accessor for SFContextualNamedEntity();
    a6 = sub_1AC7A0158();
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

  v12 = a3;
  v13 = a4;
  return sub_1AC653D9C(v12, a4, 0, a6, v10, v11);
}

- (SFSpeechAnalyzer)initWithConfiguration:(id)a3 options:(id)a4 restrictedLogging:(BOOL)a5 geoLMRegionID:(id)a6 contextualNamedEntities:(id)a7 didChangeVolatileRange:(id)a8
{
  v13 = _Block_copy(a8);
  if (a6)
  {
    sub_1AC79FF68();
    a6 = v14;
  }

  if (a7)
  {
    type metadata accessor for SFContextualNamedEntity();
    a7 = sub_1AC7A0158();
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

  v16 = a3;
  v17 = a4;
  return sub_1AC654258(v16, a4, a5, v18, a6, a7, v13, v15);
}

- (SFSpeechAnalyzer)initWithConfiguration:(id)a3 options:(id)a4 restrictedLogging:(BOOL)a5 didChangeVolatileRange:(id)a6
{
  v9 = _Block_copy(a6);
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

  v11 = a3;
  v12 = a4;
  return sub_1AC654470(v11, a4, a5, v9, v10);
}

- (void)addAudio:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1AC65605C();
}

- (void)finishAudio
{
  v2 = self;
  sub_1AC65490C();
}

- (void)setDidChangeVolatileRange:(id)a3 completion:
{
  v4 = v3;
  v6 = _Block_copy(a3);
  v7 = _Block_copy(v4);
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v7;
  v8[4] = self;
  v9 = self;

  sub_1AC72CEC8();
}

- (void)finalizeThrough:(id *)a3 completion:(id)a4
{
  var0 = a3->var0;
  var3 = a3->var3;
  v7 = *&a3->var1;
  v8 = _Block_copy(a4);
  v9 = swift_allocObject();
  v9[2] = var0;
  v9[3] = v7;
  v9[4] = var3;
  v9[5] = v8;
  v9[6] = self;
  v10 = self;

  sub_1AC72CEC8();
}

- (void)requestResultAtEndpointTimes:(id)a3
{
  sub_1AC5CF764(0, &qword_1EB56C668, 0x1E696B098);
  sub_1AC7A0158();
  v4 = self;
  sub_1AC65605C();
}

- (void)prepareToAnalyzeReportingInto:(NSProgress *)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_1AC72CEC8();
}

+ (void)endModelRetentionWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = a1;

  sub_1AC72CEC8();
}

@end