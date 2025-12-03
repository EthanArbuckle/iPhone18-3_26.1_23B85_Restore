@interface MPStoreModelPlaybackPositionBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity;
@end

@implementation MPStoreModelPlaybackPositionBuilder

+ (id)allSupportedProperties
{
  v5[7] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyPlaybackPositionBookmarkTime";
  v5[1] = @"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime";
  v5[2] = @"MPModelPropertyPlaybackPositionHasBeenPlayed";
  v5[3] = @"MPModelPropertyPlaybackPositionStartTime";
  v5[4] = @"MPModelPropertyPlaybackPositionStopTime";
  v5[5] = @"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier";
  v5[6] = @"MPModelPropertyPlaybackPositionUserPlayCount";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:7];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)modelObjectWithStoreItemMetadata:(id)metadata sourceModelObject:(id)object userIdentity:(id)identity
{
  metadataCopy = metadata;
  objectCopy = object;
  identityCopy = identity;
  if ((*&self->_requestedPlaybackPositionProperties & 1) == 0)
  {
    requestedPropertySet = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    properties = [requestedPropertySet properties];
    if ([properties containsObject:@"MPModelPropertyPlaybackPositionBookmarkTime"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedPlaybackPositionProperties = *&self->_requestedPlaybackPositionProperties & 0xFD | v13;
    if ([properties containsObject:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *&self->_requestedPlaybackPositionProperties = *&self->_requestedPlaybackPositionProperties & 0xFB | v14;
    if ([properties containsObject:@"MPModelPropertyPlaybackPositionHasBeenPlayed"])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedPlaybackPositionProperties = *&self->_requestedPlaybackPositionProperties & 0xF7 | v15;
    if ([properties containsObject:@"MPModelPropertyPlaybackPositionStartTime"])
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedPlaybackPositionProperties = *&self->_requestedPlaybackPositionProperties & 0xEF | v16;
    if ([properties containsObject:@"MPModelPropertyPlaybackPositionStopTime"])
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    *&self->_requestedPlaybackPositionProperties = *&self->_requestedPlaybackPositionProperties & 0xDF | v17;
    if ([properties containsObject:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier"])
    {
      v18 = 64;
    }

    else
    {
      v18 = 0;
    }

    *&self->_requestedPlaybackPositionProperties = *&self->_requestedPlaybackPositionProperties & 0xBF | v18;
    if ([properties containsObject:@"MPModelPropertyPlaybackPositionUserPlayCount"])
    {
      v19 = -127;
    }

    else
    {
      v19 = 1;
    }

    *&self->_requestedPlaybackPositionProperties = v19 | *&self->_requestedPlaybackPositionProperties & 0x7E;
  }

  v27 = MEMORY[0x1E69E9820];
  v28 = 3221225472;
  v29 = __103__MPStoreModelPlaybackPositionBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  v30 = &unk_1E767E980;
  v20 = metadataCopy;
  v31 = v20;
  selfCopy = self;
  v21 = _Block_copy(&v27);
  if (objectCopy)
  {
    identifiers = [objectCopy identifiers];
    v23 = [objectCopy copyWithIdentifiers:identifiers block:v21];
  }

  else
  {
    v24 = [MPModelPlaybackPosition alloc];
    identifiers = [MPIdentifierSet emptyIdentifierSet:v27];
    v23 = [(MPModelObject *)v24 initWithIdentifiers:identifiers block:v21];
  }

  v25 = v23;

  return v25;
}

void __103__MPStoreModelPlaybackPositionBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v14 = a2;
  v3 = [*(a1 + 32) itemKind];
  v4 = [v3 isEqualToString:@"tvEpisode"];
  v5 = [MEMORY[0x1E695E000] standardUserDefaults];
  if (([v5 BOOLForKey:@"MusicShouldFakeTVEpisodes"] & 1) == 0)
  {

    if ((v4 & 1) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  v6 = [v3 isEqualToString:@"musicVideo"];

  if ((v6 | v4))
  {
    goto LABEL_5;
  }

LABEL_3:
  v7 = [v3 isEqualToString:@"movie"];
LABEL_6:
  if ((*(*(a1 + 40) + 24) & 2) != 0 && ([v14 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionBookmarkTime"] & 1) == 0)
  {
    [v14 setBookmarkTime:0.0];
  }

  if ((*(*(a1 + 40) + 24) & 4) != 0 && ([v14 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionShouldRememberBookmarkTime"] & 1) == 0)
  {
    v8 = [*(a1 + 32) shouldBookmarkPlayPosition];
    v9 = v8;
    if (v8)
    {
      v7 = [v8 BOOLValue];
    }

    [v14 setShouldRememberBookmarkTime:v7];
  }

  if ((*(*(a1 + 40) + 24) & 8) != 0 && ([v14 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionHasBeenPlayed"] & 1) == 0)
  {
    [v14 setHasBeenPlayed:0];
  }

  if ((*(*(a1 + 40) + 24) & 0x10) != 0 && ([v14 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionStartTime"] & 1) == 0)
  {
    [v14 setStartTime:0.0];
  }

  if ((*(*(a1 + 40) + 24) & 0x20) != 0 && ([v14 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionStopTime"] & 1) == 0)
  {
    [v14 setStopTime:0];
  }

  if ((*(*(a1 + 40) + 24) & 0x40) != 0 && ([v14 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionStoreUbiquitousIdentifier"] & 1) == 0)
  {
    v10 = [*(a1 + 32) storeID];
    v11 = v10;
    if (v10 && (v12 = MPStoreItemMetadataInt64NormalizeStoreIDValue(v10)) != 0)
    {
      v13 = [MPUbiquitousPlaybackPositionEntity ubiquitousIdentifierWithStoreAdamID:v12];
      [v14 setStoreUbiquitousIdentifier:v13];
    }

    else
    {
      [v14 setStoreUbiquitousIdentifier:0];
    }
  }

  if (*(*(a1 + 40) + 24) < 0 && ([v14 hasLoadedValueForKey:@"MPModelPropertyPlaybackPositionUserPlayCount"] & 1) == 0)
  {
    [v14 setUserPlayCount:0];
  }
}

@end