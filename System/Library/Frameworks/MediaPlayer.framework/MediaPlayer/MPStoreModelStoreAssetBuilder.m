@interface MPStoreModelStoreAssetBuilder
+ (id)allSupportedProperties;
- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5;
@end

@implementation MPStoreModelStoreAssetBuilder

+ (id)allSupportedProperties
{
  v5[6] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelPropertyStoreAssetEndpointType";
  v5[1] = @"MPModelPropertyStoreAssetRedownloadParameters";
  v5[2] = @"MPModelPropertyStoreAssetRedownloadable";
  v5[3] = @"MPModelPropertyStoreAssetAccountIdentifier";
  v5[4] = @"MPModelPropertyStoreAssetShouldReportPlayEvents";
  v5[5] = @"MPModelPropertyStoreAssetSubscriptionRequired";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:6];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

- (id)modelObjectWithStoreItemMetadata:(id)a3 sourceModelObject:(id)a4 userIdentity:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ((*&self->_requestedStoreAssetProperties & 1) == 0)
  {
    v11 = [(MPStoreModelObjectBuilder *)self requestedPropertySet];
    v12 = [v11 properties];
    if ([v12 containsObject:@"MPModelPropertyStoreAssetEndpointType"])
    {
      v13 = 2;
    }

    else
    {
      v13 = 0;
    }

    *&self->_requestedStoreAssetProperties = *&self->_requestedStoreAssetProperties & 0xFD | v13;
    if ([v12 containsObject:@"MPModelPropertyStoreAssetRedownloadParameters"])
    {
      v14 = 4;
    }

    else
    {
      v14 = 0;
    }

    *&self->_requestedStoreAssetProperties = *&self->_requestedStoreAssetProperties & 0xFB | v14;
    if ([v12 containsObject:@"MPModelPropertyStoreAssetRedownloadable"])
    {
      v15 = 8;
    }

    else
    {
      v15 = 0;
    }

    *&self->_requestedStoreAssetProperties = *&self->_requestedStoreAssetProperties & 0xF7 | v15;
    if ([v12 containsObject:@"MPModelPropertyStoreAssetAccountIdentifier"])
    {
      v16 = 16;
    }

    else
    {
      v16 = 0;
    }

    *&self->_requestedStoreAssetProperties = *&self->_requestedStoreAssetProperties & 0xEF | v16;
    if ([v12 containsObject:@"MPModelPropertyStoreAssetShouldReportPlayEvents"])
    {
      v17 = 32;
    }

    else
    {
      v17 = 0;
    }

    *&self->_requestedStoreAssetProperties = *&self->_requestedStoreAssetProperties & 0xDF | v17;
    if ([v12 containsObject:@"MPModelPropertyStoreAssetSubscriptionRequired"])
    {
      v18 = 65;
    }

    else
    {
      v18 = 1;
    }

    *&self->_requestedStoreAssetProperties = v18 | *&self->_requestedStoreAssetProperties & 0xBE;
  }

  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = __97__MPStoreModelStoreAssetBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke;
  v29 = &unk_1E767EF68;
  v19 = v8;
  v30 = v19;
  v31 = self;
  v20 = _Block_copy(&v26);
  if (v9)
  {
    v21 = [v9 identifiers];
    v22 = [v9 copyWithIdentifiers:v21 block:v20];
  }

  else
  {
    v23 = [MPModelStoreAsset alloc];
    v21 = [MPIdentifierSet emptyIdentifierSet:v26];
    v22 = [(MPModelObject *)v23 initWithIdentifiers:v21 block:v20];
  }

  v24 = v22;

  return v24;
}

void __97__MPStoreModelStoreAssetBuilder_modelObjectWithStoreItemMetadata_sourceModelObject_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  v3 = [*(a1 + 32) hasSubscriptionOffer];
  v4 = [*(a1 + 32) isStoreRedownloadable];
  if ((*(*(a1 + 40) + 24) & 8) != 0 && ([v9 hasLoadedValueForKey:@"MPModelPropertyStoreAssetRedownloadable"] & 1) == 0)
  {
    [v9 setRedownloadable:v4];
  }

  if ((*(*(a1 + 40) + 24) & 2) != 0 && ([v9 hasLoadedValueForKey:@"MPModelPropertyStoreAssetEndpointType"] & 1) == 0)
  {
    if (v4)
    {
      v5 = 3;
    }

    else
    {
      v5 = 0;
    }

    [v9 setEndpointType:v5];
  }

  if ((*(*(a1 + 40) + 24) & 4) != 0 && ([v9 hasLoadedValueForKey:@"MPModelPropertyStoreAssetRedownloadParameters"] & 1) == 0)
  {
    [v9 setRedownloadParameters:0];
  }

  if ((*(*(a1 + 40) + 24) & 0x10) != 0 && ([v9 hasLoadedValueForKey:@"MPModelPropertyStoreAssetAccountIdentifier"] & 1) == 0)
  {
    [v9 setAccountIdentifier:0];
  }

  if ((*(*(a1 + 40) + 24) & 0x20) != 0 && ([v9 hasLoadedValueForKey:@"MPModelPropertyStoreAssetShouldReportPlayEvents"] & 1) == 0)
  {
    [v9 setShouldReportPlayEvents:{objc_msgSend(*(a1 + 32), "shouldReportPlayEvents")}];
  }

  if ((*(*(a1 + 40) + 24) & 0x40) != 0 && ([v9 hasLoadedValueForKey:@"MPModelPropertyStoreAssetSubscriptionRequired"] & 1) == 0)
  {
    v6 = [*(a1 + 32) videoSubtype];
    v7 = [*(a1 + 32) itemKind];
    if ([v7 isEqualToString:@"tvEpisode"])
    {
      v8 = [v6 isEqualToString:@"tvtrailer"] ^ 1;
    }

    else
    {
      v8 = 1;
    }

    [v9 setSubscriptionRequired:v3 & v8];
  }
}

@end