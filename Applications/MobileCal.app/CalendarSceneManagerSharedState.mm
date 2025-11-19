@interface CalendarSceneManagerSharedState
- (ApplicationLastActiveTimeProvider)applicationLastActiveTimeProvider;
@end

@implementation CalendarSceneManagerSharedState

- (ApplicationLastActiveTimeProvider)applicationLastActiveTimeProvider
{
  WeakRetained = objc_loadWeakRetained(&self->_applicationLastActiveTimeProvider);

  return WeakRetained;
}

@end