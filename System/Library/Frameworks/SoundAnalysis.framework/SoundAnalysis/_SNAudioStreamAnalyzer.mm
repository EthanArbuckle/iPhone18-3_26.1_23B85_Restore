@interface _SNAudioStreamAnalyzer
- (BOOL)addRequest:(id)request completionHandler:(id)handler resultsHandler:(id)resultsHandler error:(id *)error;
- (BOOL)addRequest:(id)request withObserver:(id)observer error:(id *)error;
- (NSString)detailedDescription;
- (_SNAudioStreamAnalyzer)initWithFormat:(id)format error:(id *)error;
- (void)analyzeAudioBuffer:(id)buffer atAudioFramePosition:(int64_t)position;
- (void)completeAnalysis;
- (void)removeAllRequests;
- (void)removeRequest:(id)request;
@end

@implementation _SNAudioStreamAnalyzer

- (_SNAudioStreamAnalyzer)initWithFormat:(id)format error:(id *)error
{
  if (format)
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

- (BOOL)addRequest:(id)request withObserver:(id)observer error:(id *)error
{
  if (!request)
  {
    memset(v12, 0, sizeof(v12));
    swift_unknownObjectRetain();
    selfCopy = self;
    if (observer)
    {
      goto LABEL_3;
    }

LABEL_5:
    memset(v11, 0, sizeof(v11));
    goto LABEL_6;
  }

  swift_unknownObjectRetain();
  selfCopy2 = self;
  swift_unknownObjectRetain();
  sub_1C9A93318();
  swift_unknownObjectRelease();
  sub_1C97A2D34(v11, v12);
  if (!observer)
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

- (BOOL)addRequest:(id)request completionHandler:(id)handler resultsHandler:(id)resultsHandler error:(id *)error
{
  v8 = _Block_copy(handler);
  v9 = _Block_copy(resultsHandler);
  *(swift_allocObject() + 16) = v8;
  *(swift_allocObject() + 16) = v9;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1C97EB888();

  swift_unknownObjectRelease();
  return 1;
}

- (void)removeRequest:(id)request
{
  if (request)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1C9A93318();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1C97EC9E0(v6);

  sub_1C97DA1E0(v6, &unk_1EC3C5E60);
}

- (void)removeAllRequests
{
  selfCopy = self;
  sub_1C97ED174();
}

- (void)analyzeAudioBuffer:(id)buffer atAudioFramePosition:(int64_t)position
{
  bufferCopy = buffer;
  selfCopy = self;
  sub_1C97ED4E0(buffer);
}

- (void)completeAnalysis
{
  selfCopy = self;
  sub_1C97EDB64();
}

- (NSString)detailedDescription
{
  selfCopy = self;
  sub_1C97EDD94();

  v3 = sub_1C9A92478();

  return v3;
}

@end