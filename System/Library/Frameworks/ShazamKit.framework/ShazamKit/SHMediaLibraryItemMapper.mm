@interface SHMediaLibraryItemMapper
+ (id)libraryGroupFromShazamLibraryGroup:(id)a3;
+ (id)libraryTrackFromShazamLibraryTrack:(id)a3;
+ (id)shazamLibraryGroupFromLibraryGroup:(id)a3;
+ (id)shazamLibraryTrackFromLibraryTrack:(id)a3;
@end

@implementation SHMediaLibraryItemMapper

+ (id)shazamLibraryTrackFromLibraryTrack:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];

  if (v4)
  {
    v5 = [SHLLibraryItemMetadata alloc];
    v6 = [v3 metadata];
    v7 = [v6 encodedSystemData];
    v8 = [(SHLLibraryItemMetadata *)v5 initWithEncodedSystemData:v7];

    v9 = [SHLMutableLibraryTrack alloc];
    v10 = [v3 identifier];
    v11 = [(SHLLibraryTrack *)v9 initWithIdentifier:v10 metadata:v8];
  }

  else
  {
    v12 = [SHLMutableLibraryTrack alloc];
    v8 = [v3 identifier];
    v11 = [(SHLLibraryTrack *)v12 initWithIdentifier:v8];
  }

  v13 = [v3 shazamKey];

  if (!v13)
  {
    v36 = [v3 identifier];
    v37 = [NSString stringWithFormat:@"A valid Shazam track requires a ShazamID. Library item (%@) is missing a ShazamID.", v36];
    v38 = [NSException exceptionWithName:NSInvalidArgumentException reason:v37 userInfo:0];
    v39 = v38;

    objc_exception_throw(v38);
  }

  v14 = [v3 shazamKey];
  v15 = [v14 validatedKey];
  v16 = [SHLShazamKey keyWithValue:v15];
  [(SHLLibraryTrack *)v11 setShazamKey:v16];

  v17 = [v3 recognitionIdentifier];
  [(SHLLibraryTrack *)v11 setRecognitionIdentifier:v17];

  v18 = [v3 creationDate];
  [(SHLLibraryTrack *)v11 setDate:v18];

  v19 = [v3 title];
  [(SHLLibraryTrack *)v11 setTitle:v19];

  v20 = [v3 subtitle];
  [(SHLLibraryTrack *)v11 setSubtitle:v20];

  v21 = [v3 providerIdentifier];
  [(SHLLibraryTrack *)v11 setProviderIdentifier:v21];

  v22 = [v3 providerName];
  [(SHLLibraryTrack *)v11 setProviderName:v22];

  v23 = [v3 associatedGroupIdentifier];
  [(SHLLibraryTrack *)v11 setAssociatedGroupIdentifier:v23];

  [v3 locationCoordinate];
  [(SHLLibraryTrack *)v11 setLocationCoordinate:?];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v24 = [v3 labels];
  v25 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
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
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v40 + 1) + 8 * i);
        v30 = [SHLLibraryLabel alloc];
        v31 = [v29 name];
        v32 = [(SHLLibraryLabel *)v30 initWithName:v31];

        v33 = [(SHLLibraryTrack *)v11 labels];
        LOBYTE(v31) = [v33 containsObject:v32];

        if ((v31 & 1) == 0)
        {
          [(SHLLibraryTrack *)v11 addLabel:v32];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v40 objects:v44 count:16];
    }

    while (v26);
  }

  v34 = [(SHLMutableLibraryTrack *)v11 copy];

  return v34;
}

+ (id)libraryTrackFromShazamLibraryTrack:(id)a3
{
  v3 = a3;
  v4 = [v3 metadata];

  if (v4)
  {
    v5 = [SHMediaLibraryItemMetadata alloc];
    v6 = [v3 metadata];
    v7 = [v6 encodedSystemData];
    v4 = [v5 initWithEncodedSystemData:v7];
  }

  v8 = [v3 labels];
  v9 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v8 count]);

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v10 = [v3 labels];
  v11 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
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
          objc_enumerationMutation(v10);
        }

        v15 = *(*(&v36 + 1) + 8 * i);
        v16 = [SHMediaLibraryLabel alloc];
        v17 = [v15 name];
        v18 = [v16 initWithName:v17];

        [v9 addObject:v18];
      }

      v12 = [v10 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v12);
  }

  v19 = [SHMediaLibraryTrack alloc];
  v20 = [v3 identifier];
  v21 = [v9 copy];
  v22 = [v19 _initWithIdentifier:v20 metadata:v4 labels:v21];

  v23 = [v3 shazamKey];

  if (v23)
  {
    v24 = [SHShazamKey alloc];
    v25 = [v3 shazamKey];
    v26 = [v25 validatedKey];
    v27 = [v24 initWithKey:v26];
    [v22 setShazamKey:v27];
  }

  v28 = [v3 providerIdentifier];
  [v22 setProviderIdentifier:v28];

  v29 = [v3 providerName];
  [v22 setProviderName:v29];

  v30 = [v3 date];
  [v22 setCreationDate:v30];

  v31 = [v3 recognitionIdentifier];
  [v22 setRecognitionIdentifier:v31];

  v32 = [v3 title];
  [v22 setTitle:v32];

  v33 = [v3 subtitle];
  [v22 setSubtitle:v33];

  v34 = [v3 associatedGroupIdentifier];
  [v22 setAssociatedGroupIdentifier:v34];

  [v3 locationCoordinate];
  [v22 setLocationCoordinate:?];

  return v22;
}

+ (id)shazamLibraryGroupFromLibraryGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];

  if (v5)
  {
    v6 = [SHLLibraryItemMetadata alloc];
    v7 = [v4 metadata];
    v8 = [v7 encodedSystemData];
    v5 = [(SHLLibraryItemMetadata *)v6 initWithEncodedSystemData:v8];
  }

  v9 = [v4 tracksToSave];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v4 tracksToSave];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [a1 shazamLibraryTrackFromLibraryTrack:*(*(&v22 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [SHLLibraryGroup alloc];
  v18 = [v4 identifier];
  v19 = [v10 copy];
  v20 = [(SHLLibraryGroup *)v17 _initWithIdentifier:v18 metadata:v5 tracksToSave:v19];

  return v20;
}

+ (id)libraryGroupFromShazamLibraryGroup:(id)a3
{
  v4 = a3;
  v5 = [v4 metadata];

  if (v5)
  {
    v6 = [SHMediaLibraryItemMetadata alloc];
    v7 = [v4 metadata];
    v8 = [v7 encodedSystemData];
    v5 = [v6 initWithEncodedSystemData:v8];
  }

  v9 = [v4 tracksToSave];
  v10 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v9 count]);

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [v4 tracksToSave];
  v12 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
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
          objc_enumerationMutation(v11);
        }

        v16 = [a1 libraryTrackFromShazamLibraryTrack:*(*(&v22 + 1) + 8 * i)];
        [v10 addObject:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v13);
  }

  v17 = [SHMediaLibraryGroup alloc];
  v18 = [v4 identifier];
  v19 = [v10 copy];
  v20 = [v17 _initWithIdentifier:v18 metadata:v5 tracksToSave:v19];

  return v20;
}

@end