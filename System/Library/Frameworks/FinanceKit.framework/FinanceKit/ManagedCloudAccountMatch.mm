@interface ManagedCloudAccountMatch
- (_TtC10FinanceKit24ManagedCloudAccountMatch)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
- (void).cxx_construct;
@end

@implementation ManagedCloudAccountMatch

- (_TtC10FinanceKit24ManagedCloudAccountMatch)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedCloudAccountMatch *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (void).cxx_construct
{
  v2 = self + OBJC_IVAR____TtC10FinanceKit24ManagedCloudAccountMatch_matchingTypeKey;
  strcpy(self + OBJC_IVAR____TtC10FinanceKit24ManagedCloudAccountMatch_matchingTypeKey, "matchingType");
  v2[13] = 0;
  *(v2 + 7) = -5120;
  v3 = self + OBJC_IVAR____TtC10FinanceKit24ManagedCloudAccountMatch_isMismatchedKey;
  strcpy(self + OBJC_IVAR____TtC10FinanceKit24ManagedCloudAccountMatch_isMismatchedKey, "isMismatched");
  v3[13] = 0;
  *(v3 + 7) = -5120;
  v4 = (&self->super.super.isa + OBJC_IVAR____TtC10FinanceKit24ManagedCloudAccountMatch_ckSchemaVersionKey);
  *v4 = 0xD000000000000012;
  v4[1] = 0x80000001B788E890;
}

@end