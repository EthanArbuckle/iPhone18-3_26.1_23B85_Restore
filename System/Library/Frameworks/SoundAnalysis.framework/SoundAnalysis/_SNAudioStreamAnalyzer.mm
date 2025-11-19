@interface _SNAudioStreamAnalyzer
- (BOOL)addRequest:(id)a3 completionHandler:(id)a4 resultsHandler:(id)a5 error:(id *)a6;
- (BOOL)addRequest:(id)a3 withObserver:(id)a4 error:(id *)a5;
- (NSString)detailedDescription;
- (_SNAudioStreamAnalyzer)initWithFormat:(id)a3 error:(id *)a4;
- (void)analyzeAudioBuffer:(id)a3 atAudioFramePosition:(int64_t)a4;
- (void)completeAnalysis;
- (void)removeAllRequests;
- (void)removeRequest:(id)a3;
@end

@implementation _SNAudioStreamAnalyzer

- (_SNAudioStreamAnalyzer)initWithFormat:(id)a3 error:(id *)a4
{
  if (a3)
  {
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
    sub_1C97A2D34(&v5, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  return sub_1C97E9C24(v6);
}

- (BOOL)addRequest:(id)a3 withObserver:(id)a4 error:(id *)a5
{
  if (!a3)
  {
    memset(v12, 0, sizeof(v12));
    swift_unknownObjectRetain();
    v8 = self;
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  v7 = self;
  swift_unknownObjectRetain();
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2D34(v11, v12);
  if (!a4)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2D34(&v10, v11);
LABEL_6:
  sub_1C97EB0B8(v12, v11);

  sub_1C97DA1E0(v11, &unk_1EC3C5E60);
  sub_1C97DA1E0(v12, &unk_1EC3C5E60);
  return 1;
}

- (BOOL)addRequest:(id)a3 completionHandler:(id)a4 resultsHandler:(id)a5 error:(id *)a6
{
  v8 = _Block_copy(a4);
  v9 = _Block_copy(a5);
  *(swift_allocObject() + 16) = v8;
  *(swift_allocObject() + 16) = v9;
  swift_unknownObjectRetain();
  v10 = self;
  sub_1C97EB888();

  swift_unknownObjectRelease();
  return 1;
}

- (void)removeRequest:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1C97EC9E0(v6);

  sub_1C97DA1E0(v6, &unk_1EC3C5E60);
}

- (void)removeAllRequests
{
  v2 = self;
  sub_1C97ED174();
}

- (void)analyzeAudioBuffer:(id)a3 atAudioFramePosition:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1C97ED4E0(a3);
}

- (void)completeAnalysis
{
  v2 = self;
  sub_1C97EDB64();
}

- (NSString)detailedDescription
{
  v2 = self;
  sub_1C97EDD94();

  v3 = sub_1C9A92478();

  return v3;
}

@end