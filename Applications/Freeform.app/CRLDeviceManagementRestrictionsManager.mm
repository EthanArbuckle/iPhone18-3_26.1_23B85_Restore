@interface CRLDeviceManagementRestrictionsManager
- (BOOL)isDefinitionLookupAllowed;
- (BOOL)isKeyboardMathSolvingAllowed;
- (BOOL)isMathPaperSolvingAllowed;
- (_TtC8Freeform38CRLDeviceManagementRestrictionsManager)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4;
- (void)registerObserver;
- (void)setIsDefinitionLookupAllowed:(BOOL)a3;
- (void)setIsKeyboardMathSolvingAllowed:(BOOL)a3;
- (void)setIsMathPaperSolvingAllowed:(BOOL)a3;
@end

@implementation CRLDeviceManagementRestrictionsManager

- (BOOL)isMathPaperSolvingAllowed
{
  v3 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsMathPaperSolvingAllowed:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isKeyboardMathSolvingAllowed
{
  v3 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsKeyboardMathSolvingAllowed:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (BOOL)isDefinitionLookupAllowed
{
  v3 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  return *(&self->super.isa + v3);
}

- (void)setIsDefinitionLookupAllowed:(BOOL)a3
{
  v5 = OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed;
  swift_beginAccess();
  *(&self->super.isa + v5) = a3;
}

- (void)dealloc
{
  v2 = self;
  v3 = sub_100CCFC68();
  if (v3)
  {
    v4 = v3;
    [v3 unregisterObserver:v2];
  }

  v5.receiver = v2;
  v5.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  [(CRLDeviceManagementRestrictionsManager *)&v5 dealloc];
}

- (void)registerObserver
{
  v2 = self;
  CRLDeviceManagementRestrictionsManager.registerObserver()();
}

- (_TtC8Freeform38CRLDeviceManagementRestrictionsManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isMathPaperSolvingAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isKeyboardMathSolvingAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager_isDefinitionLookupAllowed) = 1;
  *(&self->super.isa + OBJC_IVAR____TtC8Freeform38CRLDeviceManagementRestrictionsManager____lazy_storage___connection) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLDeviceManagementRestrictionsManager();
  return [(CRLDeviceManagementRestrictionsManager *)&v3 init];
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)a3 userInfo:(id)a4
{
  if (a4)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a3;
  v7 = self;
  _s8Freeform38CRLDeviceManagementRestrictionsManagerC63profileConnectionDidReceiveEffectiveSettingsChangedNotification_8userInfoySo09MCProfileG0CSg_SDys11AnyHashableVypGSgtF_0(a3);
}

@end