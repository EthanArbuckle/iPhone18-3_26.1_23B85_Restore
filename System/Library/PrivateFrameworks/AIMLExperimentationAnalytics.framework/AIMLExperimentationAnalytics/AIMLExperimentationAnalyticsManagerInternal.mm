@interface AIMLExperimentationAnalyticsManagerInternal
- (void)cacheTrialExperimentIdentifiersFor:(NSUUID *)a3 namespaces:(NSArray *)a4 completionHandler:(id)a5;
- (void)cacheTrialExperimentsFor:(NSUUID *)a3 completionHandler:(id)a4;
- (void)emitTriggerFor:(NSUUID *)a3 namespace:(NSString *)a4 requestID:(NSUUID *)a5 completionHandler:(id)a6;
@end

@implementation AIMLExperimentationAnalyticsManagerInternal

- (void)cacheTrialExperimentsFor:(NSUUID *)a3 completionHandler:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;
  v8 = a3;
  v9 = self;

  sub_23C560060(&unk_23C568E90, v7);
}

- (void)cacheTrialExperimentIdentifiersFor:(NSUUID *)a3 namespaces:(NSArray *)a4 completionHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = v8;
  v9[5] = self;
  v10 = a3;
  v11 = a4;
  v12 = self;

  sub_23C560060(&unk_23C568E80, v9);
}

- (void)emitTriggerFor:(NSUUID *)a3 namespace:(NSString *)a4 requestID:(NSUUID *)a5 completionHandler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = v10;
  v11[6] = self;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;

  sub_23C560060(&unk_23C568E10, v11);
}

@end