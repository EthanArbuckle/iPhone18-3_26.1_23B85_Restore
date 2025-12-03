@interface CRLDeviceManagementRestrictionsManager
- (BOOL)isDefinitionLookupAllowed;
- (BOOL)isKeyboardMathSolvingAllowed;
- (BOOL)isMathPaperSolvingAllowed;
- (_TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
- (void)registerObserver;
- (void)setIsDefinitionLookupAllowed:(BOOL)allowed;
- (void)setIsKeyboardMathSolvingAllowed:(BOOL)allowed;
- (void)setIsMathPaperSolvingAllowed:(BOOL)allowed;
@end

@implementation CRLDeviceManagementRestrictionsManager

- (BOOL)isMathPaperSolvingAllowed
{
  v3 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsMathPaperSolvingAllowed:(BOOL)allowed
{
  v5 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = allowed;
}

- (BOOL)isKeyboardMathSolvingAllowed
{
  v3 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyboardMathSolvingAllowed:(BOOL)allowed
{
  v5 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = allowed;
}

- (BOOL)isDefinitionLookupAllowed
{
  v3 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsDefinitionLookupAllowed:(BOOL)allowed
{
  v5 = OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = allowed;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = CRLDeviceManagementRestrictionsManager.connection.getter();
  if (v3)
  {
    v4 = v3;
    [v3 unregisterObserver:selfCopy];
  }

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  [(CRLDeviceManagementRestrictionsManager *)&v5 dealloc];
}

- (void)registerObserver
{
  selfCopy = self;
  CRLDeviceManagementRestrictionsManager.registerObserver()();
}

- (_TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC22FreeformDataclassOwner38CRLDeviceManagementRestrictionsManager____lazy_storage___connection) = (&dword_0 + 1);
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return [(CRLDeviceManagementRestrictionsManager *)&v3 init];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  if (info)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  notificationCopy = notification;
  selfCopy = self;
  specialized CRLDeviceManagementRestrictionsManager.profileConnectionDidReceiveEffectiveSettingsChangedNotification(_:userInfo:)(notification);
}

@end