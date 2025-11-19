@interface BRCSubscriber
- (id)object;
@end

@implementation BRCSubscriber

- (id)object
{
  WeakRetained = objc_loadWeakRetained(&self->_object);

  return WeakRetained;
}

@end