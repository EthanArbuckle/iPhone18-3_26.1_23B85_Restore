@interface HKDatabaseAccessibilityAssertionStore
- (HKDatabaseAccessibilityAssertionStore)init;
- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type isRecovery:(BOOL)recovery completion:(id)completion;
- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)assertion;
@end

@implementation HKDatabaseAccessibilityAssertionStore

- (void)fetchDatabaseAccessibilityAssertionForOwnerIdentifier:(id)identifier contextType:(int64_t)type isRecovery:(BOOL)recovery completion:(id)completion
{
  v9 = _Block_copy(completion);
  v10 = sub_191CC67B8();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v9;
  selfCopy = self;
  DatabaseAccessibilityAssertionStore.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:contextType:isRecovery:completion:)(v10, v12, type, recovery, sub_191C71C5C, v13);
}

- (void)invalidateDatabaseAccessibilityAssertionWithAssertion:(id)assertion
{
  assertionCopy = assertion;
  selfCopy = self;
  DatabaseAccessibilityAssertionStore.invalidateDatabaseAccessibilityAssertion(assertion:)(assertionCopy);
}

- (HKDatabaseAccessibilityAssertionStore)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end