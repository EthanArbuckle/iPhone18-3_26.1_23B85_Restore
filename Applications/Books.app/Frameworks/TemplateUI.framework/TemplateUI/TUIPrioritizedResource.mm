@interface TUIPrioritizedResource
- (TUIPrioritizedResource)initWithResource:(id)a3 priority:(float)a4;
@end

@implementation TUIPrioritizedResource

- (TUIPrioritizedResource)initWithResource:(id)a3 priority:(float)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = TUIPrioritizedResource;
  v8 = [(TUIPrioritizedResource *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_resource, a3);
    v9->_priority = a4;
  }

  return v9;
}

@end