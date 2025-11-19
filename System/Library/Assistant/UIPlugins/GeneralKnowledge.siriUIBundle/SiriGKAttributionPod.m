@interface SiriGKAttributionPod
- (SiriGKAttributionPod)initWithPunchOut:(id)a3 usingPersistentStore:(id)a4;
@end

@implementation SiriGKAttributionPod

- (SiriGKAttributionPod)initWithPunchOut:(id)a3 usingPersistentStore:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = SiriGKAttributionPod;
  v8 = [(SiriGKAttributionPod *)&v12 init];
  if (v8)
  {
    v9 = [[SiriGKAttributionView alloc] initWithAppPunchOut:v6 usingPersistentStore:v7];
    attributionView = v8->_attributionView;
    v8->_attributionView = v9;
  }

  return v8;
}

@end