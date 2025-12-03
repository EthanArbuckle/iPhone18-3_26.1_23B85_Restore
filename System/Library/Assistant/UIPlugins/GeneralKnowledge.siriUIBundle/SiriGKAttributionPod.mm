@interface SiriGKAttributionPod
- (SiriGKAttributionPod)initWithPunchOut:(id)out usingPersistentStore:(id)store;
@end

@implementation SiriGKAttributionPod

- (SiriGKAttributionPod)initWithPunchOut:(id)out usingPersistentStore:(id)store
{
  outCopy = out;
  storeCopy = store;
  v12.receiver = self;
  v12.super_class = SiriGKAttributionPod;
  v8 = [(SiriGKAttributionPod *)&v12 init];
  if (v8)
  {
    v9 = [[SiriGKAttributionView alloc] initWithAppPunchOut:outCopy usingPersistentStore:storeCopy];
    attributionView = v8->_attributionView;
    v8->_attributionView = v9;
  }

  return v8;
}

@end