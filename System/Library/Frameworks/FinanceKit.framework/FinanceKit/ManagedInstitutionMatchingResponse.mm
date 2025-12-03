@interface ManagedInstitutionMatchingResponse
- (NSString)description;
- (_TtC10FinanceKit34ManagedInstitutionMatchingResponse)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation ManagedInstitutionMatchingResponse

- (_TtC10FinanceKit34ManagedInstitutionMatchingResponse)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  return [(ManagedInstitutionMatchingResponse *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

- (NSString)description
{
  selfCopy = self;
  ManagedInstitutionMatchingResponse.description.getter();

  v3 = sub_1B7800838();

  return v3;
}

@end