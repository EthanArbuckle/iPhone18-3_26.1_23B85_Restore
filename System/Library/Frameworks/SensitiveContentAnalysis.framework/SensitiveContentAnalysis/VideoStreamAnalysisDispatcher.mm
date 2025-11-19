@interface VideoStreamAnalysisDispatcher
- (_TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher)init;
- (void)childFrameDetailsChangedWithAnalyzerUUID:(id)a3 newFrameSize:(id)a4 newRegionOfInterest:(id)a5 newOrientation:(unsigned int)a6;
- (void)continueStreamWithAnalyzerUUID:(id)a3;
- (void)establishConnectionWithReply:(id)a3;
- (void)fetchAggregateStatsForCallWithReply:(id)a3;
- (void)updateBaseSamplingIntervalWithAnalyzerUUID:(id)a3 to:(id)a4;
@end

@implementation VideoStreamAnalysisDispatcher

- (_TtC24SensitiveContentAnalysis29VideoStreamAnalysisDispatcher)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)establishConnectionWithReply:(id)a3
{
  v3 = _Block_copy(a3);
  v3[2](v3, 0);

  _Block_release(v3);
}

- (void)childFrameDetailsChangedWithAnalyzerUUID:(id)a3 newFrameSize:(id)a4 newRegionOfInterest:(id)a5 newOrientation:(unsigned int)a6
{
  v10 = sub_1AEAF95BC();
  v12 = v11;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_1AEA6B594(v10, v12, v13, a5, a6);
}

- (void)fetchAggregateStatsForCallWithReply:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_1AEA6FE68(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

- (void)continueStreamWithAnalyzerUUID:(id)a3
{
  sub_1AEAF95BC();
  v4 = self;
  sub_1AEA6B7EC();
}

- (void)updateBaseSamplingIntervalWithAnalyzerUUID:(id)a3 to:(id)a4
{
  v6 = sub_1AEAF95BC();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_1AEA6BCF4(v6, v8, a4);
}

@end