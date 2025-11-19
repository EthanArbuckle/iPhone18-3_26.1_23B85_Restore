@interface HDHealthRecordsDaemonExtension
- (HDHealthRecordsDaemonExtension)init;
- (HDHealthRecordsDaemonExtension)initWithHealthDaemon:(id)a3;
- (NSArray)ontologyFeatureEvaluators;
@end

@implementation HDHealthRecordsDaemonExtension

- (HDHealthRecordsDaemonExtension)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDHealthRecordsDaemonExtension)initWithHealthDaemon:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HDHealthRecordsDaemonExtension;
  v5 = [(HDHealthRecordsDaemonExtension *)&v9 init];
  if (v5)
  {
    v6 = [[HDHealthRecordsPeriodicIngestionManager alloc] initWithHealthDaemon:v4];
    [(HDHealthRecordsDaemonExtension *)v5 setIngestionActivityManager:v6];

    v7 = objc_alloc_init(HDOntologyUniversalFeatureEvaluator);
    [(HDHealthRecordsDaemonExtension *)v5 setUniversalFeatureEvaluator:v7];
  }

  return v5;
}

- (NSArray)ontologyFeatureEvaluators
{
  v2 = [(HDHealthRecordsDaemonExtension *)self universalFeatureEvaluator];
  v5 = v2;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end