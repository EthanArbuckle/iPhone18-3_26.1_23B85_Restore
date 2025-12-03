@interface SHLMutableLibraryGroup
- (id)copyWithZone:(_NSZone *)zone;
- (void)addTracks:(id)tracks;
- (void)removeTracks:(id)tracks;
@end

@implementation SHLMutableLibraryGroup

- (void)addTracks:(id)tracks
{
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  tracksCopy = tracks;
  v5 = [tracksCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(tracksCopy);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        associatedGroupIdentifier = [v9 associatedGroupIdentifier];

        if (associatedGroupIdentifier)
        {
          identifier = [v9 identifier];
          associatedGroupIdentifier2 = [v9 associatedGroupIdentifier];
          v16 = [NSString stringWithFormat:@"Track with identifier %@ is already associated to a group (%@), try removing it before.", identifier, associatedGroupIdentifier2, v19];
          v17 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v16];
          v18 = v17;

          objc_exception_throw(v17);
        }

        identifier2 = [(SHLLibraryGroup *)self identifier];
        [v9 setAssociatedGroupIdentifier:identifier2];

        tracksToSave = [(SHLLibraryGroup *)self tracksToSave];
        v13 = [v9 copy];
        [tracksToSave addObject:v13];
      }

      v6 = [tracksCopy countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)removeTracks:(id)tracks
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  tracksCopy = tracks;
  v5 = [tracksCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(tracksCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        associatedGroupIdentifier = [v9 associatedGroupIdentifier];

        if (!associatedGroupIdentifier)
        {
          identifier = [v9 identifier];
          v14 = [NSString stringWithFormat:@"Track with identifier %@ cannot be removed, try adding it before.", identifier];
          v15 = [NSException shl_exceptionWithName:NSInvalidArgumentException reason:v14];
          v16 = v15;

          objc_exception_throw(v15);
        }

        [v9 setAssociatedGroupIdentifier:0];
        tracksToSave = [(SHLLibraryGroup *)self tracksToSave];
        v12 = [v9 copy];
        [tracksToSave addObject:v12];
      }

      v6 = [tracksCopy countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [SHLLibraryGroup allocWithZone:zone];

  return [(SHLLibraryGroup *)v4 initWithLibraryGroup:self];
}

@end