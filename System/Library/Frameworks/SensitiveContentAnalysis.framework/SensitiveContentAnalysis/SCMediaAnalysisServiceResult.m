@interface SCMediaAnalysisServiceResult
- (_TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult)init;
- (_TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult)initWithIsNudity:(BOOL)a3 isGoreAndViolence:(BOOL)a4;
@end

@implementation SCMediaAnalysisServiceResult

- (_TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult)initWithIsNudity:(BOOL)a3 isGoreAndViolence:(BOOL)a4
{
  *(&self->super.isa + OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isNudity) = a3;
  *(&self->super.isa + OBJC_IVAR____TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult_isGoreAndViolence) = a4;
  v5.receiver = self;
  v5.super_class = type metadata accessor for SCMediaAnalysisServiceResult();
  return [(SCMediaAnalysisServiceResult *)&v5 init];
}

- (_TtC24SensitiveContentAnalysis28SCMediaAnalysisServiceResult)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end