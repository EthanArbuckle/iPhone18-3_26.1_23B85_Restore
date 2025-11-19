@interface BKSMousePointerPreferencesObserverInfo
- (BKSMousePointerPreferencesObserver)observer;
@end

@implementation BKSMousePointerPreferencesObserverInfo

- (BKSMousePointerPreferencesObserver)observer
{
  WeakRetained = objc_loadWeakRetained(&self->_observer);

  return WeakRetained;
}

@end