@interface NSManagedObjectContext
- (BOOL)deleteAllUPPMetadata;
- (id)uppMetadataForMetadataIdentifier:(id)identifier;
- (id)uppMetadataForMetadataIdentifiers:(id)identifiers;
@end

@implementation NSManagedObjectContext

- (id)uppMetadataForMetadataIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    v5 = [[NSFetchRequest alloc] initWithEntityName:@"MTUPPMetadata"];
    identifierCopy = [NSPredicate predicateWithFormat:@"%K = %@", @"metadataIdentifier", identifierCopy];

    [v5 setPredicate:identifierCopy];
    [v5 setReturnsObjectsAsFaults:0];
    [v5 setFetchLimit:1];
    v7 = [(NSManagedObjectContext *)self executeFetchRequest:v5];
    firstObject = [v7 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)uppMetadataForMetadataIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  if ([identifiersCopy count])
  {
    identifiersCopy = [NSPredicate predicateWithFormat:@"%K IN %@", @"metadataIdentifier", identifiersCopy];
    v6 = [(NSManagedObjectContext *)self objectsInEntity:@"MTUPPMetadata" predicate:identifiersCopy sortDescriptors:0];
  }

  else
  {
    v6 = &__NSArray0__struct;
  }

  return v6;
}

- (BOOL)deleteAllUPPMetadata
{
  v6 = 0;
  v2 = [MTUPPMetadata deleteAllContentInCtx:self error:&v6];
  v3 = v6;
  if (v3)
  {
    v4 = +[IMLogger sharedLogger];
    [v4 logFile:"/Library/Caches/com.apple.xbs/Sources/Marmoset/Source/Library/Models/Misc/MTUPPMetadata+Library.m" lineNumber:102 format:{@"Error deleting UPPMetadata: %@", v3}];
  }

  return v3 == 0;
}

@end