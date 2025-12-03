@interface PFMirroredRelationship
+ (BOOL)isValidMirroredRelationshipRecord:(id)record values:(id)values;
+ (PFMirroredManyToManyRelationship)mirroredRelationshipWithDeletedRecordType:(uint64_t)type recordID:(uint64_t)d andManagedObjectModel:;
+ (PFMirroredManyToManyRelationshipV2)mirroredRelationshipWithManyToManyRecord:(uint64_t)record values:(uint64_t)values andManagedObjectModel:;
+ (PFMirroredOneToManyRelationship)mirroredRelationshipWithManagedObject:(uint64_t)object withRecordID:(uint64_t)d relatedToObjectWithRecordID:(uint64_t)iD byRelationship:;
- (BOOL)updateRelationshipValueUsingImportContext:(id)context andManagedObjectContext:(id)objectContext error:(id *)error;
@end

@implementation PFMirroredRelationship

+ (PFMirroredOneToManyRelationship)mirroredRelationshipWithManagedObject:(uint64_t)object withRecordID:(uint64_t)d relatedToObjectWithRecordID:(uint64_t)iD byRelationship:
{
  objc_opt_self();
  v9 = [[PFMirroredOneToManyRelationship alloc] initWithManagedObject:a2 withRecordName:object relatedToRecordWithRecordName:d byRelationship:iD];

  return v9;
}

+ (PFMirroredManyToManyRelationshipV2)mirroredRelationshipWithManyToManyRecord:(uint64_t)record values:(uint64_t)values andManagedObjectModel:
{
  objc_opt_self();
  if ([objc_msgSend(a2 "recordType")])
  {
    v7 = -[PFMirroredManyToManyRelationship initWithRecordID:recordType:managedObjectModel:andType:]([PFMirroredManyToManyRelationship alloc], "initWithRecordID:recordType:managedObjectModel:andType:", [a2 recordID], objc_msgSend(a2, "recordType"), values, 0);
  }

  else
  {
    v7 = [[PFMirroredManyToManyRelationshipV2 alloc] initWithRecord:a2 andValues:record withManagedObjectModel:values andType:0];
  }

  return v7;
}

+ (PFMirroredManyToManyRelationship)mirroredRelationshipWithDeletedRecordType:(uint64_t)type recordID:(uint64_t)d andManagedObjectModel:
{
  objc_opt_self();
  v7 = [[PFMirroredManyToManyRelationship alloc] initWithRecordID:type recordType:a2 managedObjectModel:d andType:1];

  return v7;
}

- (BOOL)updateRelationshipValueUsingImportContext:(id)context andManagedObjectContext:(id)objectContext error:(id *)error
{
  objc_opt_class();
  NSRequestConcreteImplementation();
  return 0;
}

+ (BOOL)isValidMirroredRelationshipRecord:(id)record values:(id)values
{
  v6 = [objc_msgSend(record "recordType")];
  v7 = off_1E6EC0C10;
  if (!v6)
  {
    v7 = off_1E6EC0C18;
  }

  v8 = *v7;

  return [(__objc2_class *)v8 _isValidMirroredRelationshipRecord:record values:values];
}

@end