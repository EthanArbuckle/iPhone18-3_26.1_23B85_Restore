@interface HKDatabaseAccessibilityAssertionStore
- (HKDatabaseAccessibilityAssertionStore)init;
- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 isRecovery:(BOOL)a5 completion:(id)a6;
- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)a3;
@end

@implementation HKDatabaseAccessibilityAssertionStore

- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)a3 contextType:(int64_t)a4 isRecovery:(BOOL)a5 completion:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_191CC67B8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  v14 = self;
  DatabaseAccessibilityAssertionStore.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:contextType:isRecovery:completion:)(v10, v12, a4, a5, sub_191C71C5C, v13);
}

- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)a3
{
  v4 = a3;
  v5 = self;
  DatabaseAccessibilityAssertionStore.invalidateDatabaseAccessibilityAssertion(assertion:)(v4);
}

- (HKDatabaseAccessibilityAssertionStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end