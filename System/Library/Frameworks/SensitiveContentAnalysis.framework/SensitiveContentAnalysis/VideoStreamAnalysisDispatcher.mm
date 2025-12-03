@interface VideoStreamAnalysisDispatcher
- (_TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher)init;
- (void)childFrameDetailsChangedWithAnalyzerUUID:(id)d newFrameSize:(id)size newRegionOfInterest:(id)interest newOrientation:(unsigned int)orientation;
- (void)continueStreamWithAnalyzerUUID:(id)d;
- (void)establishConnectionWithReply:(id)reply;
- (void)fetchAggregateStatsForCallWithReply:(id)reply;
- (void)updateBaseSamplingIntervalWithAnalyzerUUID:(id)d to:(id)to;
@end

@implementation VideoStreamAnalysisDispatcher

- (_TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)establishConnectionWithReply:(id)reply
{
  v3 = _Block_copy(reply);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)childFrameDetailsChangedWithAnalyzerUUID:(id)d newFrameSize:(id)size newRegionOfInterest:(id)interest newOrientation:(unsigned int)orientation
{
  v10 = sub_1AEAF95BC();
  v12 = v11;
  sizeCopy = size;
  interestCopy = interest;
  selfCopy = self;
  sub_1AEA6B594(v10, v12, sizeCopy, interest, orientation);
}

- (void)fetchAggregateStatsForCallWithReply:(id)reply
{
  v4 = _Block_copy(reply);
  _Block_copy(v4);
  selfCopy = self;
  sub_1AEA6FE68(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)continueStreamWithAnalyzerUUID:(id)d
{
  sub_1AEAF95BC();
  selfCopy = self;
  sub_1AEA6B7EC();
}

- (void)updateBaseSamplingIntervalWithAnalyzerUUID:(id)d to:(id)to
{
  v6 = sub_1AEAF95BC();
  v8 = v7;
  toCopy = to;
  selfCopy = self;
  sub_1AEA6BCF4(v6, v8, to);
}

@end