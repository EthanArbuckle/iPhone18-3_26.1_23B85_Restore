@interface LocalLSDatabaseObserver
- (void)observerDidObserveDatabaseChange:(id)a3;
@end

@implementation LocalLSDatabaseObserver

- (void)observerDidObserveDatabaseChange:(id)a3
{
  v4 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observersLock;
  v5 = *(&self->super.isa + OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observersLock);
  v6 = self;
  os_unfair_lock_lock(v5 + 4);
  v7 = OBJC_IVAR____TtC19ExtensionFoundation23LocalLSDatabaseObserver_observers;
  swift_beginAccess();
  v8 = *(&v6->super.isa + v7);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufC19ExtensionFoundation23LocalLSDatabaseObserverC0F0V_ShyAHGTt0g5(v9);
  os_unfair_lock_unlock(*(&self->super.isa + v4) + 4);
  specialized LocalLSDatabaseObserver.update(observers:)();
}

@end