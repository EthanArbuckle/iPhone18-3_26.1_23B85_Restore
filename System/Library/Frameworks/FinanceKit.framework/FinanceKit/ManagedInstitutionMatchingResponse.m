@interface ManagedInstitutionMatchingResponse
- (NSString)description;
- (_TtC10FinanceKit34ManagedInstitutionMatchingResponse)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation ManagedInstitutionMatchingResponse

- (_TtC10FinanceKit34ManagedInstitutionMatchingResponse)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedInstitutionMatchingResponse *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

- (NSString)description
{
  v2 = self;
  ManagedInstitutionMatchingResponse.description.getter();

  v3 = sub_1B7800838();

  return v3;
}

@end