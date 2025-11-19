@interface ReportingOperations
+ (void)postReportOperations:(id)a3 wasSaved:(BOOL)a4;
- (_TtC11ReportCrash19ReportingOperations)init;
@end

@implementation ReportingOperations

+ (void)postReportOperations:(id)a3 wasSaved:(BOOL)a4
{
  v5 = a3;
  sub_10000D1D4(v5, a4);
}

- (_TtC11ReportCrash19ReportingOperations)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReportingOperations();
  return [(ReportingOperations *)&v3 init];
}

@end