@interface MPApplicationServices
- (MPVoicemailAccountManagerProtocol)accountManager;
- (MPVoicemailBadgeCalculator)badgeCalculator;
- (MPVoicemailManagerProtocol)voicemailManager;
- (TPFavoritesController)favoritesController;
- (id)voicemailController;
@end

@implementation MPApplicationServices

- (TPFavoritesController)favoritesController
{
  v2 = one-time initialization token for queue;
  selfCopy = self;
  v4 = selfCopy;
  if (v2 != -1)
  {
    selfCopy = swift_once();
  }

  __chkstk_darwin(selfCopy);
  type metadata accessor for NSMutableArray(0, &lazy cache variable for type metadata for TPFavoritesController);
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

- (id)voicemailController
{
  v2 = one-time initialization token for queue;
  selfCopy = self;
  v4 = selfCopy;
  if (v2 != -1)
  {
    selfCopy = swift_once();
  }

  __chkstk_darwin(selfCopy);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo21MPVoicemailControllerCMd);
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

- (MPVoicemailAccountManagerProtocol)accountManager
{
  v2 = one-time initialization token for queue;
  selfCopy = self;
  v4 = selfCopy;
  if (v2 != -1)
  {
    selfCopy = swift_once();
  }

  __chkstk_darwin(selfCopy);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone38VVMVoicemailCountSourceVoicemailStatus_AA0F22AccountManagerProtocolAA0f15BadgeCalculatorhI0So8NSObjectCXcMd);
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

- (MPVoicemailManagerProtocol)voicemailManager
{
  v2 = one-time initialization token for queue;
  selfCopy = self;
  v4 = selfCopy;
  if (v2 != -1)
  {
    selfCopy = swift_once();
  }

  __chkstk_darwin(selfCopy);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11MobilePhone16VoicemailManager_So8NSObjectCXcMd);
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

- (MPVoicemailBadgeCalculator)badgeCalculator
{
  v2 = one-time initialization token for queue;
  selfCopy = self;
  v4 = selfCopy;
  if (v2 != -1)
  {
    selfCopy = swift_once();
  }

  __chkstk_darwin(selfCopy);
  type metadata accessor for VoicemailBadgeCalculator();
  OS_dispatch_queue.sync<A>(execute:)();

  return v6;
}

@end