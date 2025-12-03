@interface HKDatabaseAccessibilityAssertionStoreKeeper
- (HKDatabaseAccessibilityAssertionStoreKeeper)init;
- (void)connectionConfigured;
- (void)dealloc;
- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type isRecovery:(BOOL)recovery timeout:(double)timeout completion:(id)completion;
- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier isRecovery:(BOOL)recovery timeout:(double)timeout completion:(id)completion;
- (void)invalidateAllDatabaseAccessibilityAssertions;
- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)assertion;
@end

@implementation HKDatabaseAccessibilityAssertionStoreKeeper

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken;
  swift_beginAccess();
  LODWORD(v4) = *(&self->super.isa + v4);
  selfCopy = self;
  notify_cancel(v4);
  v6.receiver = selfCopy;
  v6.super_class = ObjectType;
  [(HKDatabaseAccessibilityAssertionStoreKeeper *)&v6 dealloc];
}

- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type isRecovery:(BOOL)recovery timeout:(double)timeout completion:(id)completion
{
  recoveryCopy = recovery;
  v11 = _Block_copy(completion);
  v12 = sub_191CC67B8();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  selfCopy = self;
  DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:contextType:isRecovery:timeout:completion:)(v12, v14, type, recoveryCopy, sub_191C910B4, v15, timeout);
}

- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier isRecovery:(BOOL)recovery timeout:(double)timeout completion:(id)completion
{
  recoveryCopy = recovery;
  v9 = _Block_copy(completion);
  v10 = sub_191CC67B8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  selfCopy = self;
  DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:isRecovery:timeout:completion:)(v10, v12, recoveryCopy, sub_191C71C5C, v13, timeout);
}

- (void)connectionConfigured
{
  selfCopy = self;
  DatabaseAccessibilityAssertionStoreKeeper.connectionConfigured()();
}

- (void)invalidateAllDatabaseAccessibilityAssertions
{
  selfCopy = self;
  DatabaseAccessibilityAssertionStoreKeeper.invalidateAllDatabaseAccessibilityAssertions()();
}

- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  DatabaseAccessibilityAssertionStoreKeeper.invalidateDatabaseAccessibilityAssertion(assertion:)(assertionCopy);
}

- (HKDatabaseAccessibilityAssertionStoreKeeper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end