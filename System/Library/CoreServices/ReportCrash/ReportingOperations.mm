@interface ReportingOperations
+ (void)postReportOperations:(id)operations wasSaved:(BOOL)saved;
- (_TtC11ReportCrash19ReportingOperations)init;
@end

@implementation ReportingOperations

+ (void)postReportOperations:(id)operations wasSaved:(BOOL)saved
{
  operationsCopy = operations;
  sub_10000D1D4(operationsCopy, saved);
}

- (_TtC11ReportCrash19ReportingOperations)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ReportingOperations();
  return [(ReportingOperations *)&v3 init];
}

@end