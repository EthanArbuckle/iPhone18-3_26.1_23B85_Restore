@interface NSManagedObjectContext
- (BOOL)deleteAllUPPMetadata;
- (id)uppMetadataForMetadataIdentifier:(id)a3;
- (id)uppMetadataForMetadataIdentifiers:(id)a3;
@end

@implementation NSManagedObjectContext

- (id)uppMetadataForMetadataIdentifier:(id)a3
{
  if (a3)
  {
    v4 = a3;
    v5 = [[NSFetchRequest alloc] initWithEntityName:@"MTUPPMetadata"];
    v6 = [NSPredicate predicateWithFormat:@"%K = %@", @"metadataIdentifier", v4];

    [v5 setPredicate:v6];
    [v5 setReturnsObjectsAsFaults:0];
    [v5 setFetchLimit:1];
    v7 = [(NSManagedObjectContext *)self executeFetchRequest:v5];
    v8 = [v7 firstObject];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)uppMetadataForMetadataIdentifiers:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [NSPredicate predicateWithFormat:@"%K IN %@", @"metadataIdentifier", v4];
    v6 = [(NSManagedObjectContext *)self objectsInEntity:@"MTUPPMetadata" predicate:v5 sortDescriptors:0];
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