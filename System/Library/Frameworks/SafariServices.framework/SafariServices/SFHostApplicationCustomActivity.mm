@interface SFHostApplicationCustomActivity
- (SFHostApplicationCustomActivity)initWithActivityProxy:(id)proxy;
@end

@implementation SFHostApplicationCustomActivity

- (SFHostApplicationCustomActivity)initWithActivityProxy:(id)proxy
{
  proxyCopy = proxy;
  v10.receiver = self;
  v10.super_class = SFHostApplicationCustomActivity;
  v6 = [(UIActivity *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_activityProxy, proxy);
    v8 = v7;
  }

  return v7;
}

@end