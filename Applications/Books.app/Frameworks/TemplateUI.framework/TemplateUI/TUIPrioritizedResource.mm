@interface TUIPrioritizedResource
- (TUIPrioritizedResource)initWithResource:(id)resource priority:(float)priority;
@end

@implementation TUIPrioritizedResource

- (TUIPrioritizedResource)initWithResource:(id)resource priority:(float)priority
{
  resourceCopy = resource;
  v11.receiver = self;
  v11.super_class = TUIPrioritizedResource;
  v8 = [(TUIPrioritizedResource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_resource, resource);
    v9->_priority = priority;
  }

  return v9;
}

@end