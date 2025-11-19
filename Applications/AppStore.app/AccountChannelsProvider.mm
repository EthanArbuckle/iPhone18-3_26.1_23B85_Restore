@interface AccountChannelsProvider
- (void)notifyObserver;
@end

@implementation AccountChannelsProvider

- (void)notifyObserver
{
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();

    dispatch thunk of AccountChannelsProviderUpdateObserver.accountChannelsDidUpdate()();
    swift_unknownObjectRelease();
  }
}

@end