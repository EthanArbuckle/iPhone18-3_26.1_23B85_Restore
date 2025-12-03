@interface AIMLExperimentationAnalyticsManagerInternal
- (void)cacheTrialExperimentIdentifiersFor:(NSUUID *)for namespaces:(NSArray *)namespaces completionHandler:(id)handler;
- (void)cacheTrialExperimentsFor:(NSUUID *)for completionHandler:(id)handler;
- (void)emitTriggerFor:(NSUUID *)for namespace:(NSString *)namespace requestID:(NSUUID *)d completionHandler:(id)handler;
@end

@implementation AIMLExperimentationAnalyticsManagerInternal

- (void)cacheTrialExperimentsFor:(NSUUID *)for completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  v7 = swift_allocObject();
  v7[2] = for;
  v7[3] = v6;
  v7[4] = self;
  forCopy = for;
  selfCopy = self;

  sub_23C560060(&unk_23C568E90, v7);
}

- (void)cacheTrialExperimentIdentifiersFor:(NSUUID *)for namespaces:(NSArray *)namespaces completionHandler:(id)handler
{
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  v9[2] = for;
  v9[3] = namespaces;
  v9[4] = v8;
  v9[5] = self;
  forCopy = for;
  namespacesCopy = namespaces;
  selfCopy = self;

  sub_23C560060(&unk_23C568E80, v9);
}

- (void)emitTriggerFor:(NSUUID *)for namespace:(NSString *)namespace requestID:(NSUUID *)d completionHandler:(id)handler
{
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = namespace;
  v11[4] = d;
  v11[5] = v10;
  v11[6] = self;
  forCopy = for;
  namespaceCopy = namespace;
  dCopy = d;
  selfCopy = self;

  sub_23C560060(&unk_23C568E10, v11);
}

@end