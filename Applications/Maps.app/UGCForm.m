@interface UGCForm
- (UGCForm)init;
@end

@implementation UGCForm

- (UGCForm)init
{
  v6.receiver = self;
  v6.super_class = UGCForm;
  v2 = [(UGCForm *)&v6 init];
  if (v2)
  {
    v3 = [[GEOObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___UGCFormObserver queue:0];
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

@end