@interface SHLLibraryChangeset
- (NSArray)groupIDsToDelete;
- (NSArray)groupsToAdd;
- (NSArray)groupsToDelete;
- (NSArray)trackIDsToDelete;
- (NSArray)tracksToAdd;
- (NSArray)tracksToDelete;
- (SHLLibraryChangeset)init;
- (id)description;
- (void)addGroups:(id)groups;
- (void)addTracks:(id)tracks;
- (void)deleteGroups:(id)groups;
- (void)deleteTracks:(id)tracks;
- (void)mergeChangeset:(id)changeset;
@end

@implementation SHLLibraryChangeset

- (SHLLibraryChangeset)init
{
  v12.receiver = self;
  v12.super_class = SHLLibraryChangeset;
  v2 = [(SHLLibraryChangeset *)&v12 init];
  if (v2)
  {
    v3 = +[NSMutableSet set];
    trackSetToAdd = v2->_trackSetToAdd;
    v2->_trackSetToAdd = v3;

    v5 = +[NSMutableSet set];
    trackSetToDelete = v2->_trackSetToDelete;
    v2->_trackSetToDelete = v5;

    v7 = +[NSMutableSet set];
    groupSetToAdd = v2->_groupSetToAdd;
    v2->_groupSetToAdd = v7;

    v9 = +[NSMutableSet set];
    groupSetToDelete = v2->_groupSetToDelete;
    v2->_groupSetToDelete = v9;
  }

  return v2;
}

- (NSArray)tracksToAdd
{
  trackSetToAdd = [(SHLLibraryChangeset *)self trackSetToAdd];
  allObjects = [trackSetToAdd allObjects];

  return allObjects;
}

- (NSArray)tracksToDelete
{
  trackSetToDelete = [(SHLLibraryChangeset *)self trackSetToDelete];
  allObjects = [trackSetToDelete allObjects];

  return allObjects;
}

- (NSArray)groupsToAdd
{
  groupSetToAdd = [(SHLLibraryChangeset *)self groupSetToAdd];
  allObjects = [groupSetToAdd allObjects];

  return allObjects;
}

- (NSArray)groupsToDelete
{
  groupSetToDelete = [(SHLLibraryChangeset *)self groupSetToDelete];
  allObjects = [groupSetToDelete allObjects];

  return allObjects;
}

- (NSArray)trackIDsToDelete
{
  trackSetToDelete = [(SHLLibraryChangeset *)self trackSetToDelete];
  v3 = NSStringFromSelector("identifier");
  v4 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v3];
  v5 = [trackSetToDelete valueForKeyPath:v4];

  allObjects = [v5 allObjects];

  return allObjects;
}

- (NSArray)groupIDsToDelete
{
  groupSetToDelete = [(SHLLibraryChangeset *)self groupSetToDelete];
  v3 = NSStringFromSelector("identifier");
  v4 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v3];
  v5 = [groupSetToDelete valueForKeyPath:v4];

  allObjects = [v5 allObjects];

  return allObjects;
}

- (void)addTracks:(id)tracks
{
  tracksCopy = tracks;
  v4 = [NSMutableSet setWithArray:?];
  trackSetToDelete = [(SHLLibraryChangeset *)self trackSetToDelete];
  [v4 intersectSet:trackSetToDelete];

  if ([v4 count])
  {
    v7 = [NSString stringWithFormat:@"Should not try to save and delete tracks at the same time: %@", v4];
    v8 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v7];
    v9 = v8;

    objc_exception_throw(v8);
  }

  trackSetToAdd = [(SHLLibraryChangeset *)self trackSetToAdd];
  [trackSetToAdd addObjectsFromArray:tracksCopy];
}

- (void)deleteTracks:(id)tracks
{
  tracksCopy = tracks;
  v4 = [NSMutableSet setWithArray:?];
  trackSetToAdd = [(SHLLibraryChangeset *)self trackSetToAdd];
  [v4 intersectSet:trackSetToAdd];

  if ([v4 count])
  {
    v7 = [NSString stringWithFormat:@"Should not try to save and delete tracks at the same time: %@", v4];
    v8 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v7];
    v9 = v8;

    objc_exception_throw(v8);
  }

  trackSetToDelete = [(SHLLibraryChangeset *)self trackSetToDelete];
  [trackSetToDelete addObjectsFromArray:tracksCopy];
}

- (void)addGroups:(id)groups
{
  groupsCopy = groups;
  v5 = [NSMutableSet setWithArray:groupsCopy];
  groupSetToDelete = [(SHLLibraryChangeset *)self groupSetToDelete];
  [v5 intersectSet:groupSetToDelete];

  if ([v5 count])
  {
    v16 = [NSString stringWithFormat:@"Should not try to save and delete groups at the same time: %@", v5];
    v17 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v16];
    v18 = v17;

    objc_exception_throw(v17);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = groupsCopy;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        groupSetToAdd = [(SHLLibraryChangeset *)self groupSetToAdd];
        [groupSetToAdd addObject:v12];

        trackSetToAdd = [(SHLLibraryChangeset *)self trackSetToAdd];
        tracksToSave = [v12 tracksToSave];
        [trackSetToAdd addObjectsFromArray:tracksToSave];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)deleteGroups:(id)groups
{
  groupsCopy = groups;
  v4 = [NSMutableSet setWithArray:?];
  groupSetToAdd = [(SHLLibraryChangeset *)self groupSetToAdd];
  [v4 intersectSet:groupSetToAdd];

  if ([v4 count])
  {
    v7 = [NSString stringWithFormat:@"Should not try to save and delete groups at the same time: %@", v4];
    v8 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v7];
    v9 = v8;

    objc_exception_throw(v8);
  }

  groupSetToDelete = [(SHLLibraryChangeset *)self groupSetToDelete];
  [groupSetToDelete addObjectsFromArray:groupsCopy];
}

- (void)mergeChangeset:(id)changeset
{
  if (self != changeset)
  {
    changesetCopy = changeset;
    tracksToAdd = [changesetCopy tracksToAdd];
    [(SHLLibraryChangeset *)self addTracks:tracksToAdd];

    tracksToDelete = [changesetCopy tracksToDelete];
    [(SHLLibraryChangeset *)self deleteTracks:tracksToDelete];

    groupsToAdd = [changesetCopy groupsToAdd];
    [(SHLLibraryChangeset *)self addGroups:groupsToAdd];

    groupsToDelete = [changesetCopy groupsToDelete];

    [(SHLLibraryChangeset *)self deleteGroups:groupsToDelete];
  }
}

- (id)description
{
  trackSetToAdd = [(SHLLibraryChangeset *)self trackSetToAdd];
  v4 = [trackSetToAdd count];
  tracksToDelete = [(SHLLibraryChangeset *)self tracksToDelete];
  v6 = [tracksToDelete count];
  groupsToAdd = [(SHLLibraryChangeset *)self groupsToAdd];
  v8 = [groupsToAdd count];
  groupsToDelete = [(SHLLibraryChangeset *)self groupsToDelete];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"T: +%lu -%lu G: +%lu -%lu", v4, v6, v8, [groupsToDelete count]);

  return v10;
}

@end