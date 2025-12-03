@interface EscrowRecordMO
- (EscrowRecordMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context;
@end

@implementation EscrowRecordMO

- (EscrowRecordMO)initWithEntity:(id)entity insertIntoManagedObjectContext:(id)context
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EscrowRecordMO();
  return [(EscrowRecordMO *)&v7 initWithEntity:entity insertIntoManagedObjectContext:context];
}

@end