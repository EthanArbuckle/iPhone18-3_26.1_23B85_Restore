@interface DiagnosticIntelligence
+ (id)lookForPatternWithReport:(id)a3;
- (_TtC11ReportCrash22DiagnosticIntelligence)init;
@end

@implementation DiagnosticIntelligence

+ (id)lookForPatternWithReport:(id)a3
{
  v3 = a3;
  v4 = sub_10000B338(v3);

  return v4;
}

- (_TtC11ReportCrash22DiagnosticIntelligence)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DiagnosticIntelligence();
  return [(DiagnosticIntelligence *)&v3 init];
}

@end