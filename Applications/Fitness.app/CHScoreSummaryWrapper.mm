@interface CHScoreSummaryWrapper
- (CHScoreSummaryWrapper)init;
- (CHScoreSummaryWrapper)initWithElapsedSeconds:(int64_t)a3 personalScore:(float)a4 communityLowerScore:(float)a5 communityLowerMiddleScore:(float)a6 communityUpperMiddleScore:(float)a7 communityUpperScore:(float)a8;
- (NSString)description;
@end

@implementation CHScoreSummaryWrapper

- (CHScoreSummaryWrapper)initWithElapsedSeconds:(int64_t)a3 personalScore:(float)a4 communityLowerScore:(float)a5 communityLowerMiddleScore:(float)a6 communityUpperMiddleScore:(float)a7 communityUpperScore:(float)a8
{
  v9 = type metadata accessor for ScoreSummary();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  ScoreSummary.init(elapsedSeconds:personalScore:communityLowerScore:communityLowerMiddleScore:communityUpperMiddleScore:communityUpperScore:)();
  (*(v10 + 32))(self + OBJC_IVAR___CHScoreSummaryWrapper_scoreSummary, v12, v9);
  v13 = type metadata accessor for ScoreSummaryWrapper();
  v15.receiver = self;
  v15.super_class = v13;
  return [(CHScoreSummaryWrapper *)&v15 init];
}

- (NSString)description
{
  v2 = self;
  ScoreSummary.description.getter();

  v3 = String._bridgeToObjectiveC()();

  return v3;
}

- (CHScoreSummaryWrapper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end