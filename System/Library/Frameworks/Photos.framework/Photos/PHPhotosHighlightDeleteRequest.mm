@interface PHPhotosHighlightDeleteRequest
- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error;
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
@end

@implementation PHPhotosHighlightDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  objectCopy = object;
  managedObjectContext = [library managedObjectContext];
  [managedObjectContext deleteObject:objectCopy];
}

- (BOOL)validateForDeleteManagedObject:(id)object error:(id *)error
{
  v8.receiver = self;
  v8.super_class = PHPhotosHighlightDeleteRequest;
  v9 = 0;
  v5 = [(PHObjectDeleteRequest *)&v8 validateForDeleteManagedObject:object error:&v9];
  v6 = v9;
  if (error && !v5)
  {
    v6 = v6;
    *error = v6;
  }

  return v5;
}

@end