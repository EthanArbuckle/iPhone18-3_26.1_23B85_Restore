@interface SHLMutableLibraryGroup
- (id)copyWithZone:(_NSZone *)a3;
- (void)addTracks:(id)a3;
- (void)removeTracks:(id)a3;
@end

@implementation SHLMutableLibraryGroup

- (void)addTracks:(id)a3
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        v10 = [v9 associatedGroupIdentifier];

        if (v10)
        {
          v14 = [v9 identifier];
          v15 = [v9 associatedGroupIdentifier];
          v16 = [NSString stringWithFormat:@"Track with identifier %@ is already associated to a group (%@), try removing it before.", v14, v15, v19];
          v17 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v16];
          v18 = v17;

          objc_exception_throw(v17);
        }

        v11 = [(SHLLibraryGroup *)self identifier];
        [v9 setAssociatedGroupIdentifier:v11];

        v12 = [(SHLLibraryGroup *)self tracksToSave];
        v13 = [v9 copy];
        [v12 addObject:v13];
      }

      v6 = [v4 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)removeTracks:(id)a3
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = a3;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 associatedGroupIdentifier];

        if (!v10)
        {
          v13 = [v9 identifier];
          v14 = [NSString stringWithFormat:@"Track with identifier %@ cannot be removed, try adding it before.", v13];
          v15 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v14];
          v16 = v15;

          objc_exception_throw(v15);
        }

        [v9 setAssociatedGroupIdentifier:0];
        v11 = [(SHLLibraryGroup *)self tracksToSave];
        v12 = [v9 copy];
        [v11 addObject:v12];
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [SHLLibraryGroup allocWithZone:a3];

  return [(SHLLibraryGroup *)v4 initWithLibraryGroup:self];
}

@end