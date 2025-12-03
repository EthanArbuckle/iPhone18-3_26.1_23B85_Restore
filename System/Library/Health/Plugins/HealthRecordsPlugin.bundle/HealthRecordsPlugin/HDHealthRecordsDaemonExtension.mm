@interface HDHealthRecordsDaemonExtension
- (HDHealthRecordsDaemonExtension)init;
- (HDHealthRecordsDaemonExtension)initWithHealthDaemon:(id)daemon;
- (NSArray)ontologyFeatureEvaluators;
@end

@implementation HDHealthRecordsDaemonExtension

- (HDHealthRecordsDaemonExtension)init
{
  v3 = NSStringFromSelector(a2);
  [NSException raise:NSInvalidArgumentException format:@"The -%@ method is not available on %@", v3, objc_opt_class()];

  return 0;
}

- (HDHealthRecordsDaemonExtension)initWithHealthDaemon:(id)daemon
{
  daemonCopy = daemon;
  v9.receiver = self;
  v9.super_class = HDHealthRecordsDaemonExtension;
  v5 = [(HDHealthRecordsDaemonExtension *)&v9 init];
  if (v5)
  {
    v6 = [[HDHealthRecordsPeriodicIngestionManager alloc] initWithHealthDaemon:daemonCopy];
    [(HDHealthRecordsDaemonExtension *)v5 setIngestionActivityManager:v6];

    v7 = objc_alloc_init(HDOntologyUniversalFeatureEvaluator);
    [(HDHealthRecordsDaemonExtension *)v5 setUniversalFeatureEvaluator:v7];
  }

  return v5;
}

- (NSArray)ontologyFeatureEvaluators
{
  universalFeatureEvaluator = [(HDHealthRecordsDaemonExtension *)self universalFeatureEvaluator];
  v5 = universalFeatureEvaluator;
  v3 = [NSArray arrayWithObjects:&v5 count:1];

  return v3;
}

@end