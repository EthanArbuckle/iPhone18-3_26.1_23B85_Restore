@interface HKDatabaseAccessibilityAssertionStoreKeeper
- (HKDatabaseAccessibilityAssertionStoreKeeper)init;
- (void)connectionConfigured;
- (void)dealloc;
- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 isRecovery:(BOOL)a5 timeout:(double)a6 completion:(id)a7;
- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 isRecovery:(BOOL)a4 timeout:(double)a5 completion:(id)a6;
- (void)invalidateAllDatabaseAccessibilityAssertions;
- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)a3;
@end

@implementation HKDatabaseAccessibilityAssertionStoreKeeper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken;
  swift_beginAccess();
  LODWORD(v4) = *(&self->super.isa + v4);
  v5 = self;
  notify_cancel(v4);
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(HKDatabaseAccessibilityAssertionStoreKeeper *)&v6 dealloc];
}

- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 isRecovery:(BOOL)a5 timeout:(double)a6 completion:(id)a7
{
  v8 = a5;
  v11 = _Block_copy(a7);
  v12 = sub_191CC67B8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = self;
  DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:contextType:isRecovery:timeout:completion:)(v12, v14, a4, v8, sub_191C910B4, v15, a6);
}

- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 isRecovery:(BOOL)a4 timeout:(double)a5 completion:(id)a6
{
  v7 = a4;
  v9 = _Block_copy(a6);
  v10 = sub_191CC67B8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = self;
  DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:isRecovery:timeout:completion:)(v10, v12, v7, sub_191C71C5C, v13, a5);
}

- (void)connectionConfigured
{
  v2 = self;
  DatabaseAccessibilityAssertionStoreKeeper.connectionConfigured()();
}

- (void)invalidateAllDatabaseAccessibilityAssertions
{
  v2 = self;
  DatabaseAccessibilityAssertionStoreKeeper.invalidateAllDatabaseAccessibilityAssertions()();
}

- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)a3
{
  v4 = a3;
  v5 = self;
  DatabaseAccessibilityAssertionStoreKeeper.invalidateDatabaseAccessibilityAssertion(assertion:)(v4);
}

- (HKDatabaseAccessibilityAssertionStoreKeeper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end