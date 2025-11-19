@interface EscrowMetadataMO
- (EscrowMetadataMO)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4;
@end

@implementation EscrowMetadataMO

- (EscrowMetadataMO)initWithEntity:(id)a3 insertIntoManagedObjectContext:(id)a4
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for EscrowMetadataMO();
  return [(EscrowMetadataMO *)&v7 initWithEntity:a3 insertIntoManagedObjectContext:a4];
}

@end