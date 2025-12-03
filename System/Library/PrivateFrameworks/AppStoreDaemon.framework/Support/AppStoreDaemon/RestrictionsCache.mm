@interface RestrictionsCache
+ (_TtC9appstored17RestrictionsCache)shared;
- (BOOL)isDiagnosticsSubmissionAllowed;
- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation RestrictionsCache

+ (_TtC9appstored17RestrictionsCache)shared
{
  if (qword_10059B490 != -1)
  {
    swift_once();
  }

  v3 = qword_1005AB0A0;

  return v3;
}

- (BOOL)isDiagnosticsSubmissionAllowed
{
  v2 = (self + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues);
  selfCopy = self;
  os_unfair_lock_lock(v2);
  os_unfair_lock_opaque_low = LOBYTE(v2[2]._os_unfair_lock_opaque);
  if (os_unfair_lock_opaque_low == 2)
  {
    objc_opt_self();
    LOBYTE(os_unfair_lock_opaque_low) = sub_10030B548();
    LOBYTE(v2[2]._os_unfair_lock_opaque) = os_unfair_lock_opaque_low;
  }

  os_unfair_lock_unlock(v2);

  return os_unfair_lock_opaque_low & 1;
}

- (void)profileConnectionDidReceiveEffectiveSettingsChangedNotification:(id)notification userInfo:(id)info
{
  v4 = (self + OBJC_IVAR____TtC9appstored17RestrictionsCache_lockedCachedValues);
  selfCopy = self;
  os_unfair_lock_lock(v4);
  LOBYTE(v4[2]._os_unfair_lock_opaque) = 2;
  *&v4[4]._os_unfair_lock_opaque = 0;
  LOBYTE(v4[6]._os_unfair_lock_opaque) = 1;
  os_unfair_lock_unlock(v4);
}

@end