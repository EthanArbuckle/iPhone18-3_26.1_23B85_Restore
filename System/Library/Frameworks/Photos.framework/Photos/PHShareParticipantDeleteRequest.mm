@interface PHShareParticipantDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4;
- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4;
@end

@implementation PHShareParticipantDeleteRequest

- (void)deleteManagedObject:(id)a3 photoLibrary:(id)a4
{
  v5 = a3;
  v6 = [a4 managedObjectContext];
  [v6 deleteObject:v5];
}

- (BOOL)validateForDeleteManagedObject:(id)a3 error:(id *)a4
{
  v8.receiver = self;
  v8.super_class = PHShareParticipantDeleteRequest;
  v9 = 0;
  v5 = [(PHObjectDeleteRequest *)&v8 validateForDeleteManagedObject:a3 error:&v9];
  v6 = v9;
  if (a4 && !v5)
  {
    v6 = v6;
    *a4 = v6;
  }

  return v5;
}

@end