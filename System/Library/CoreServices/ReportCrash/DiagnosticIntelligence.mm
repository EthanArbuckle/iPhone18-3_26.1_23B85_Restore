@interface DiagnosticIntelligence
+ (id)lookForPatternWithReport:(id)report;
- (_TtC11ReportCrash22DiagnosticIntelligence)init;
@end

@implementation DiagnosticIntelligence

+ (id)lookForPatternWithReport:(id)report
{
  reportCopy = report;
  v4 = sub_10000B338(reportCopy);

  return v4;
}

- (_TtC11ReportCrash22DiagnosticIntelligence)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiagnosticIntelligence();
  return [(DiagnosticIntelligence *)&v3 init];
}

@end