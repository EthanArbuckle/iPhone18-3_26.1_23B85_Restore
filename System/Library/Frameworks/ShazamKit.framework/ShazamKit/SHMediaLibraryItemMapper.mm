@interface SHMediaLibraryItemMapper
+ (id)libraryGroupFromShazamLibraryGroup:(id)group;
+ (id)libraryTrackFromShazamLibraryTrack:(id)track;
+ (id)shazamLibraryGroupFromLibraryGroup:(id)group;
+ (id)shazamLibraryTrackFromLibraryTrack:(id)track;
@end

@implementation SHMediaLibraryItemMapper

+ (id)shazamLibraryTrackFromLibraryTrack:(id)track
{
  trackCopy = track;
  metadata = [trackCopy metadata];

  if (metadata)
  {
    v5 = [SHLLibraryItemMetadata alloc];
    metadata2 = [trackCopy metadata];
    encodedSystemData = [metadata2 encodedSystemData];
    identifier2 = [(SHLLibraryItemMetadata *)v5 initWithEncodedSystemData:encodedSystemData];

    v9 = [SHLMutableLibraryTrack alloc];
    identifier = [trackCopy identifier];
    v11 = [(SHLLibraryTrack *)v9 initWithIdentifier:identifier metadata:identifier2];
  }

  else
  {
    v12 = [SHLMutableLibraryTrack alloc];
    identifier2 = [trackCopy identifier];
    v11 = [(SHLLibraryTrack *)v12 initWithIdentifier:identifier2];
  }

  shazamKey = [trackCopy shazamKey];

  if (!shazamKey)
  {
    identifier3 = [trackCopy identifier];
    v37 = [NSString stringWithFormat:@"A valid Shazam track requires a ShazamID. Library item (%@) is missing a ShazamID.", identifier3];
    v38 = [NSException exceptionWithName:NSInvalidArgumentException reason:v37 userInfo:0];
    v39 = v38;

    objc_exception_throw(v38);
  }

  shazamKey2 = [trackCopy shazamKey];
  validatedKey = [shazamKey2 validatedKey];
  v16 = [SHLShazamKey keyWithValue:validatedKey];
  [(SHLLibraryTrack *)v11 setShazamKey:v16];

  recognitionIdentifier = [trackCopy recognitionIdentifier];
  [(SHLLibraryTrack *)v11 setRecognitionIdentifier:recognitionIdentifier];

  creationDate = [trackCopy creationDate];
  [(SHLLibraryTrack *)v11 setDate:creationDate];

  title = [trackCopy title];
  [(SHLLibraryTrack *)v11 setTitle:title];

  subtitle = [trackCopy subtitle];
  [(SHLLibraryTrack *)v11 setSubtitle:subtitle];

  providerIdentifier = [trackCopy providerIdentifier];
  [(SHLLibraryTrack *)v11 setProviderIdentifier:providerIdentifier];

  providerName = [trackCopy providerName];
  [(SHLLibraryTrack *)v11 setProviderName:providerName];

  associatedGroupIdentifier = [trackCopy associatedGroupIdentifier];
  [(SHLLibraryTrack *)v11 setAssociatedGroupIdentifier:associatedGroupIdentifier];

  [trackCopy locationCoordinate];
  [(SHLLibraryTrack *)v11 setLocationCoordinate:?];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  labels = [trackCopy labels];
  v25 = [labels countByEnumeratingWithState:&v40 objects:v44 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v41;
    do
    {
      for (i = 0; i != v26; i = i + 1)
      {
        if (*v41 != v27)
        {
          objc_enumerationMutation(labels);
        }

        v29 = *(*(&v40 + 1) + 8 * i);
        v30 = [SHLLibraryLabel alloc];
        name = [v29 name];
        v32 = [(SHLLibraryLabel *)v30 initWithName:name];

        labels2 = [(SHLLibraryTrack *)v11 labels];
        LOBYTE(name) = [labels2 containsObject:v32];

        if ((name & 1) == 0)
        {
          [(SHLLibraryTrack *)v11 addLabel:v32];
        }
      }

      v26 = [labels countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v26);
  }

  v34 = [(SHLMutableLibraryTrack *)v11 copy];

  return v34;
}

+ (id)libraryTrackFromShazamLibraryTrack:(id)track
{
  trackCopy = track;
  metadata = [trackCopy metadata];

  if (metadata)
  {
    v5 = [SHMediaLibraryItemMetadata alloc];
    metadata2 = [trackCopy metadata];
    encodedSystemData = [metadata2 encodedSystemData];
    metadata = [v5 initWithEncodedSystemData:encodedSystemData];
  }

  labels = [trackCopy labels];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [labels count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  labels2 = [trackCopy labels];
  v11 = [labels2 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v37;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v37 != v13)
        {
          objc_enumerationMutation(labels2);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [SHMediaLibraryLabel alloc];
        name = [v15 name];
        v18 = [v16 initWithName:name];

        [v9 addObject:v18];
      }

      v12 = [labels2 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  v19 = [SHMediaLibraryTrack alloc];
  identifier = [trackCopy identifier];
  v21 = [v9 copy];
  v22 = [v19 _initWithIdentifier:identifier metadata:metadata labels:v21];

  shazamKey = [trackCopy shazamKey];

  if (shazamKey)
  {
    v24 = [SHShazamKey alloc];
    shazamKey2 = [trackCopy shazamKey];
    validatedKey = [shazamKey2 validatedKey];
    v27 = [v24 initWithKey:validatedKey];
    [v22 setShazamKey:v27];
  }

  providerIdentifier = [trackCopy providerIdentifier];
  [v22 setProviderIdentifier:providerIdentifier];

  providerName = [trackCopy providerName];
  [v22 setProviderName:providerName];

  date = [trackCopy date];
  [v22 setCreationDate:date];

  recognitionIdentifier = [trackCopy recognitionIdentifier];
  [v22 setRecognitionIdentifier:recognitionIdentifier];

  title = [trackCopy title];
  [v22 setTitle:title];

  subtitle = [trackCopy subtitle];
  [v22 setSubtitle:subtitle];

  associatedGroupIdentifier = [trackCopy associatedGroupIdentifier];
  [v22 setAssociatedGroupIdentifier:associatedGroupIdentifier];

  [trackCopy locationCoordinate];
  [v22 setLocationCoordinate:?];

  return v22;
}

+ (id)shazamLibraryGroupFromLibraryGroup:(id)group
{
  groupCopy = group;
  metadata = [groupCopy metadata];

  if (metadata)
  {
    v6 = [SHLLibraryItemMetadata alloc];
    metadata2 = [groupCopy metadata];
    encodedSystemData = [metadata2 encodedSystemData];
    metadata = [(SHLLibraryItemMetadata *)v6 initWithEncodedSystemData:encodedSystemData];
  }

  tracksToSave = [groupCopy tracksToSave];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [tracksToSave count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  tracksToSave2 = [groupCopy tracksToSave];
  v12 = [tracksToSave2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(tracksToSave2);
        }

        v16 = [self shazamLibraryTrackFromLibraryTrack:*(*(&v22 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [tracksToSave2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [SHLLibraryGroup alloc];
  identifier = [groupCopy identifier];
  v19 = [v10 copy];
  v20 = [(SHLLibraryGroup *)v17 _initWithIdentifier:identifier metadata:metadata tracksToSave:v19];

  return v20;
}

+ (id)libraryGroupFromShazamLibraryGroup:(id)group
{
  groupCopy = group;
  metadata = [groupCopy metadata];

  if (metadata)
  {
    v6 = [SHMediaLibraryItemMetadata alloc];
    metadata2 = [groupCopy metadata];
    encodedSystemData = [metadata2 encodedSystemData];
    metadata = [v6 initWithEncodedSystemData:encodedSystemData];
  }

  tracksToSave = [groupCopy tracksToSave];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [tracksToSave count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  tracksToSave2 = [groupCopy tracksToSave];
  v12 = [tracksToSave2 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(tracksToSave2);
        }

        v16 = [self libraryTrackFromShazamLibraryTrack:*(*(&v22 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [tracksToSave2 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [SHMediaLibraryGroup alloc];
  identifier = [groupCopy identifier];
  v19 = [v10 copy];
  v20 = [v17 _initWithIdentifier:identifier metadata:metadata tracksToSave:v19];

  return v20;
}

@end