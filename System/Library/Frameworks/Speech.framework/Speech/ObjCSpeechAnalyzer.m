@interface ObjCSpeechAnalyzer
+ (void)assetsDownloadRequestForClientIdentifier:(NSString *)a3 transcriberOptions:(SFSpeechAnalyzerTranscriberOptions *)a4 completion:(id)a5;
- (_TtC6Speech18ObjCSpeechAnalyzer)initWithObjCSpeechAnalyzer:(id)a3 clientIdentifier:(id)a4 audioFormat:(id)a5 formatForNewLines:(BOOL)a6 transcriberResultDelegate:(id)a7 endpointingResultDelegate:(id)a8 languageDetectorResultDelegate:(id)a9 speechDetectorResultDelegate:(id)a10 queue:(id)a11 transcriberOptions:(id)a12 options:(id)a13 languageDetectorOptions:(id)a14 speechDetectorOptions:(id)a15 contextualNamedEntities:(id)a16 didChangeVolatileRange:(id)a17;
- (void)requestResultAtEndpointTimes:(id)a3;
- (void)setAnalysisContextWithContextualNamedEntities:(NSArray *)a3 completionHandler:(id)a4;
- (void)setInputAudioFile:(NSURL *)a3 withAudioFormat:(AVAudioFormat *)a4 completionHandler:(id)a5;
@end

@implementation ObjCSpeechAnalyzer

- (_TtC6Speech18ObjCSpeechAnalyzer)initWithObjCSpeechAnalyzer:(id)a3 clientIdentifier:(id)a4 audioFormat:(id)a5 formatForNewLines:(BOOL)a6 transcriberResultDelegate:(id)a7 endpointingResultDelegate:(id)a8 languageDetectorResultDelegate:(id)a9 speechDetectorResultDelegate:(id)a10 queue:(id)a11 transcriberOptions:(id)a12 options:(id)a13 languageDetectorOptions:(id)a14 speechDetectorOptions:(id)a15 contextualNamedEntities:(id)a16 didChangeVolatileRange:(id)a17
{
  HIDWORD(v36) = a6;
  v19 = _Block_copy(a17);
  v35 = sub_1AC79FF68();
  v34 = v20;
  if (a16)
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

  v31 = a3;
  v30 = a5;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v22 = a11;
  v23 = a12;
  v24 = a13;
  v25 = a14;
  v26 = a15;
  sub_1AC7331CC(v31, v35, v34, v30, HIDWORD(v36), a7, a8, a9, a10, v22, a12, a13, a14, a15, v33, v32, v21, v30, v31, v32, a15, a14, a13, a12, v33, a11, v34, v35, v36);
  v28 = v27;
  _Block_release(a17);
  return v28;
}

+ (void)assetsDownloadRequestForClientIdentifier:(NSString *)a3 transcriberOptions:(SFSpeechAnalyzerTranscriberOptions *)a4 completion:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = a1;
  v10 = a3;
  v11 = a4;

  sub_1AC72CEC8();
}

- (void)requestResultAtEndpointTimes:(id)a3
{
  sub_1AC5CF764(0, &qword_1EB56C668, 0x1E696B098);
  sub_1AC7A0158();
  v4 = self;
  sub_1AC73A848();
}

- (void)setInputAudioFile:(NSURL *)a3 withAudioFormat:(AVAudioFormat *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_1AC72CEC8();
}

- (void)setAnalysisContextWithContextualNamedEntities:(NSArray *)a3 completionHandler:(id)a4
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

@end