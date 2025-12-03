@interface PHQuestionDeleteRequest
- (void)deleteManagedObject:(id)object photoLibrary:(id)library;
@end

@implementation PHQuestionDeleteRequest

- (void)deleteManagedObject:(id)object photoLibrary:(id)library
{
  objectCopy = object;
  managedObjectContext = [library managedObjectContext];
  [managedObjectContext deleteObject:objectCopy];
}

@end