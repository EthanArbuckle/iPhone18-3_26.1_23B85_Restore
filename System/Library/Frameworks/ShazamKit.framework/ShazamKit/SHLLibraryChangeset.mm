@interface SHLLibraryChangeset
- (NSArray)groupIDsToDelete;
- (NSArray)groupsToAdd;
- (NSArray)groupsToDelete;
- (NSArray)trackIDsToDelete;
- (NSArray)tracksToAdd;
- (NSArray)tracksToDelete;
- (SHLLibraryChangeset)init;
- (id)description;
- (void)addGroups:(id)a3;
- (void)addTracks:(id)a3;
- (void)deleteGroups:(id)a3;
- (void)deleteTracks:(id)a3;
- (void)mergeChangeset:(id)a3;
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
  v2 = [(SHLLibraryChangeset *)self trackSetToAdd];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)tracksToDelete
{
  v2 = [(SHLLibraryChangeset *)self trackSetToDelete];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)groupsToAdd
{
  v2 = [(SHLLibraryChangeset *)self groupSetToAdd];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)groupsToDelete
{
  v2 = [(SHLLibraryChangeset *)self groupSetToDelete];
  v3 = [v2 allObjects];

  return v3;
}

- (NSArray)trackIDsToDelete
{
  v2 = [(SHLLibraryChangeset *)self trackSetToDelete];
  v3 = NSStringFromSelector("identifier");
  v4 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v3];
  v5 = [v2 valueForKeyPath:v4];

  v6 = [v5 allObjects];

  return v6;
}

- (NSArray)groupIDsToDelete
{
  v2 = [(SHLLibraryChangeset *)self groupSetToDelete];
  v3 = NSStringFromSelector("identifier");
  v4 = [NSString stringWithFormat:@"@distinctUnionOfObjects.%@", v3];
  v5 = [v2 valueForKeyPath:v4];

  v6 = [v5 allObjects];

  return v6;
}

- (void)addTracks:(id)a3
{
  v10 = a3;
  v4 = [NSMutableSet setWithArray:?];
  v5 = [(SHLLibraryChangeset *)self trackSetToDelete];
  [v4 intersectSet:v5];

  if ([v4 count])
  {
    v7 = [NSString stringWithFormat:@"Should not try to save and delete tracks at the same time: %@", v4];
    v8 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v7];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v6 = [(SHLLibraryChangeset *)self trackSetToAdd];
  [v6 addObjectsFromArray:v10];
}

- (void)deleteTracks:(id)a3
{
  v10 = a3;
  v4 = [NSMutableSet setWithArray:?];
  v5 = [(SHLLibraryChangeset *)self trackSetToAdd];
  [v4 intersectSet:v5];

  if ([v4 count])
  {
    v7 = [NSString stringWithFormat:@"Should not try to save and delete tracks at the same time: %@", v4];
    v8 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v7];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v6 = [(SHLLibraryChangeset *)self trackSetToDelete];
  [v6 addObjectsFromArray:v10];
}

- (void)addGroups:(id)a3
{
  v4 = a3;
  v5 = [NSMutableSet setWithArray:v4];
  v6 = [(SHLLibraryChangeset *)self groupSetToDelete];
  [v5 intersectSet:v6];

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
  v7 = v4;
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
        v13 = [(SHLLibraryChangeset *)self groupSetToAdd];
        [v13 addObject:v12];

        v14 = [(SHLLibraryChangeset *)self trackSetToAdd];
        v15 = [v12 tracksToSave];
        [v14 addObjectsFromArray:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v9);
  }
}

- (void)deleteGroups:(id)a3
{
  v10 = a3;
  v4 = [NSMutableSet setWithArray:?];
  v5 = [(SHLLibraryChangeset *)self groupSetToAdd];
  [v4 intersectSet:v5];

  if ([v4 count])
  {
    v7 = [NSString stringWithFormat:@"Should not try to save and delete groups at the same time: %@", v4];
    v8 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v7];
    v9 = v8;

    objc_exception_throw(v8);
  }

  v6 = [(SHLLibraryChangeset *)self groupSetToDelete];
  [v6 addObjectsFromArray:v10];
}

- (void)mergeChangeset:(id)a3
{
  if (self != a3)
  {
    v5 = a3;
    v6 = [v5 tracksToAdd];
    [(SHLLibraryChangeset *)self addTracks:v6];

    v7 = [v5 tracksToDelete];
    [(SHLLibraryChangeset *)self deleteTracks:v7];

    v8 = [v5 groupsToAdd];
    [(SHLLibraryChangeset *)self addGroups:v8];

    v9 = [v5 groupsToDelete];

    [(SHLLibraryChangeset *)self deleteGroups:v9];
  }
}

- (id)description
{
  v3 = [(SHLLibraryChangeset *)self trackSetToAdd];
  v4 = [v3 count];
  v5 = [(SHLLibraryChangeset *)self tracksToDelete];
  v6 = [v5 count];
  v7 = [(SHLLibraryChangeset *)self groupsToAdd];
  v8 = [v7 count];
  v9 = [(SHLLibraryChangeset *)self groupsToDelete];
  v10 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"T: +%lu -%lu G: +%lu -%lu", v4, v6, v8, [v9 count]);

  return v10;
}

@end