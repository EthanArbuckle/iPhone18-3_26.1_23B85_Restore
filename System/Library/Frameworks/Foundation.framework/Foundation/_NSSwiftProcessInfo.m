@interface _NSSwiftProcessInfo
+ (NSProcessInfo)processInfo;
+ (void)cancelPowerStateNotifyNotification;
+ (void)cancelThermalStateNotifyNotification;
+ (void)updatePowerState:(unint64_t)a3;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)macCatalystVersion;
- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersion;
- (BOOL)isLowPowerModeEnabled;
- (NSArray)arguments;
- (NSDictionary)environment;
- (NSString)globallyUniqueString;
- (NSString)hostName;
- (NSString)operatingSystemVersionString;
- (NSString)processName;
- (double)systemUptime;
- (id)beginActivityWithOptions:(unint64_t)a3 reason:(id)a4;
- (id)beginActivityWithOptions:(unint64_t)a3 reason:(id)a4 expirationHandler:(id)a5;
- (int64_t)thermalState;
- (void)_reactivateActivity:(id)a3;
- (void)_setShouldRelaunchDueToAutomaticTerminationStateChangedHandler:(id)a3;
- (void)endActivity:(id)a3;
- (void)performActivityWithOptions:(unint64_t)a3 reason:(id)a4 block:(id)a5;
- (void)performExpiringActivityWithReason:(id)a3 usingBlock:(id)a4;
- (void)setProcessName:(id)a3;
@end

@implementation _NSSwiftProcessInfo

+ (NSProcessInfo)processInfo
{
  if (one-time initialization token for _shared != -1)
  {
    swift_once();
  }

  v3 = static _NSSwiftProcessInfo._shared;

  return v3;
}

- (id)beginActivityWithOptions:(unint64_t)a3 reason:(id)a4
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v5 = [objc_allocWithZone(_NSActivityAssertion) init];
  v6 = String._bridgeToObjectiveCImpl()();

  v7 = [v5 _initWithActivityOptions_reason_expirationHandler_];
  swift_unknownObjectRelease();

  return v7;
}

- (NSArray)arguments
{
  v2 = (*(&self->super.super.isa + OBJC_IVAR____NSSwiftProcessInfo__processInfo))[2];
  v3 = self;
  os_unfair_lock_lock(v2 + 10);
  closure #1 in _ProcessInfo.arguments.getter(&v2[4], &v6);
  os_unfair_lock_unlock(v2 + 10);

  v4 = _ContiguousArrayBuffer._asCocoaArray()();

  return v4;
}

- (NSString)processName
{
  v2 = (*(&self->super.super.isa + OBJC_IVAR____NSSwiftProcessInfo__processInfo))[2];
  v3 = self;
  os_unfair_lock_lock((v2 + 40));
  closure #1 in _ProcessInfo.processName.getter((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 40));

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

- (NSDictionary)environment
{
  specialized _ProcessInfo.environment.getter();
  v2 = _NativeDictionary.bridged()();

  return v2;
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)operatingSystemVersion
{
  result = specialized _NSSwiftProcessInfo.operatingSystemVersion.getter();
  retstr->var0 = result;
  retstr->var1 = v5;
  retstr->var2 = v6;
  return result;
}

- (BOOL)isLowPowerModeEnabled
{
  swift_getObjectType();
  v3 = one-time initialization token for _globalState;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  v5 = static _NSSwiftProcessInfo._globalState;
  os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
  closure #1 in _NSSwiftProcessInfo.isLowPowerModeEnabled.getter(&v5[4], &v8);
  os_unfair_lock_unlock(v5 + 11);
  v6 = v8;

  return v6;
}

+ (void)updatePowerState:(unint64_t)a3
{
  if (one-time initialization token for _globalState != -1)
  {
    swift_once();
  }

  v4 = static _NSSwiftProcessInfo._globalState;
  os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
  *(v4 + 33) = a3 != 0;

  os_unfair_lock_unlock((v4 + 44));
}

+ (void)cancelPowerStateNotifyNotification
{
  if (one-time initialization token for _globalState != -1)
  {
    swift_once();
  }

  v2 = static _NSSwiftProcessInfo._globalState;
  os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
  if ((*(v2 + 40) & 1) == 0)
  {
    notify_cancel(*(v2 + 36));
    *(v2 + 36) = 0;
    *(v2 + 40) = 1;
  }

  os_unfair_lock_unlock((v2 + 44));
}

- (void)endActivity:(id)a3
{
  if (a3)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {

      [v3 _endFromDealloc_];
    }
  }
}

- (double)systemUptime
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  mach_timebase_info(v5);
  LODWORD(v2) = v5[0].denom;
  LODWORD(v3) = v5[0].numer;
  return 1.0 / (1000000000.0 / v3 * v2) * mach_absolute_time();
}

- (void)_reactivateActivity:(id)a3
{
  if (a3)
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {

      [v3 _reactivate];
    }
  }
}

- (NSString)operatingSystemVersionString
{
  result = CFCopySystemVersionString();
  if (result)
  {
    v3 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)(result);

    v4 = String._bridgeToObjectiveCImpl()();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (int64_t)thermalState
{
  ObjectType = swift_getObjectType();
  v4 = one-time initialization token for _globalState;
  v5 = self;
  if (v4 != -1)
  {
    swift_once();
  }

  v6 = static _NSSwiftProcessInfo._globalState;
  os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
  closure #1 in _NSSwiftProcessInfo.thermalState.getter(&v6[4], ObjectType, &v9);
  os_unfair_lock_unlock(v6 + 11);
  v7 = v9;

  return v7;
}

+ (void)cancelThermalStateNotifyNotification
{
  if (one-time initialization token for _globalState != -1)
  {
    swift_once();
  }

  v2 = static _NSSwiftProcessInfo._globalState;
  os_unfair_lock_lock((static _NSSwiftProcessInfo._globalState + 44));
  if ((*(v2 + 32) & 1) == 0)
  {
    notify_cancel(*(v2 + 28));
    *(v2 + 28) = 0;
    *(v2 + 32) = 1;
  }

  os_unfair_lock_unlock((v2 + 44));
}

- (NSString)globallyUniqueString
{
  specialized _NSSwiftProcessInfo.globallyUniqueString.getter();
  v2 = String._bridgeToObjectiveCImpl()();

  return v2;
}

- (void)setProcessName:(id)a3
{
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v4 = (*(&self->super.super.isa + OBJC_IVAR____NSSwiftProcessInfo__processInfo))[2];
  v5 = self;
  os_unfair_lock_lock((v4 + 40));
  partial apply for closure #1 in _ProcessInfo.processName.setter((v4 + 16));
  os_unfair_lock_unlock((v4 + 40));
}

- (NSString)hostName
{
  v2 = (*(&self->super.super.isa + OBJC_IVAR____NSSwiftProcessInfo__processInfo))[3];
  v3 = self;
  os_unfair_lock_lock((v2 + 32));
  closure #1 in _ProcessInfo.hostName.getter((v2 + 16), &v6);
  os_unfair_lock_unlock((v2 + 32));

  v4 = String._bridgeToObjectiveCImpl()();

  return v4;
}

- (id)beginActivityWithOptions:(unint64_t)a3 reason:(id)a4 expirationHandler:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
  v11 = v10;
  if (v8)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v8;
    v8 = thunk for @escaping @callee_unowned @convention(block) () -> ()partial apply;
  }

  else
  {
    v12 = 0;
  }

  v13 = self;
  v14 = specialized _NSSwiftProcessInfo.beginActivity(options:reason:expirationHandler:)(a3, v9, v11, v8, v12);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v8);

  return v14;
}

- (void)performActivityWithOptions:(unint64_t)a3 reason:(id)a4 block:(id)a5
{
  v8 = _Block_copy(a5);
  v9 = v8;
  if (a4)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)(a4);
    a4 = v10;
    if (v9)
    {
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      if (a4)
      {
        v12 = v11;
        v13 = String._bridgeToObjectiveCImpl()();
        v14 = objc_opt_self();
        v17[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ();
        v17[5] = v12;
        v17[0] = MEMORY[0x1E69E9820];
        v17[1] = 1107296256;
        v17[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        v17[3] = &block_descriptor_16;
        v15 = _Block_copy(v17);
        v16 = self;
        outlined copy of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ());

        [v14 _performActivityWithOptions_reason_usingBlock_];
        _Block_release(v15);
        swift_unknownObjectRelease();
        outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(partial apply for thunk for @escaping @callee_unowned @convention(block) () -> ());

        return;
      }

      goto LABEL_8;
    }
  }

  else
  {
    if (!v8)
    {
LABEL_8:
      __break(1u);
      goto LABEL_9;
    }

    swift_allocObject();
    __break(1u);
  }

  if (!a4)
  {
    goto LABEL_8;
  }

LABEL_9:
  String._bridgeToObjectiveCImpl()();
  __break(1u);
}

- (void)performExpiringActivityWithReason:(id)a3 usingBlock:(id)a4
{
  v5 = _Block_copy(a4);
  static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = objc_opt_self();
  v8 = String._bridgeToObjectiveCImpl()();

  v10[4] = partial apply for thunk for @escaping @callee_unowned @convention(block) (@unowned ObjCBool) -> ();
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v10[3] = &block_descriptor_13_0;
  v9 = _Block_copy(v10);

  [v7 _performExpiringActivityWithReason_usingBlock_];

  _Block_release(v9);
  swift_unknownObjectRelease();
}

- (void)_setShouldRelaunchDueToAutomaticTerminationStateChangedHandler:(id)a3
{
  v4 = _Block_copy(a3);
  if (v4)
  {
    v5 = v4;
    v4 = swift_allocObject();
    *(v4 + 16) = v5;
    v6 = partial apply for thunk for @escaping @callee_unowned @convention(block) @Sendable () -> ();
  }

  else
  {
    v6 = 0;
  }

  v7 = *(&self->super.super.isa + OBJC_IVAR____NSSwiftProcessInfo__state);
  MEMORY[0x1EEE9AC00](v4);
  v8 = self;
  os_unfair_lock_lock(v7 + 19);
  partial apply for closure #1 in _NSSwiftProcessInfo._setShouldRelaunchDue(toAutomaticTerminationStateChangedHandler:)(&v7[4]);
  os_unfair_lock_unlock(v7 + 19);
  outlined consume of (@escaping @callee_guaranteed (@in_guaranteed URL, @guaranteed Error) -> (@unowned Bool))?(v6);
}

- ($9FE6E10C8CE45DBC9A88DFDEA39A390D)macCatalystVersion
{
  result = specialized _NSSwiftProcessInfo.operatingSystemVersion.getter();
  retstr->var0 = result;
  retstr->var1 = v5;
  retstr->var2 = v6;
  return result;
}

@end