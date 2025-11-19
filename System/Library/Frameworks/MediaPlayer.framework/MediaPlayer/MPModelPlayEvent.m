@interface MPModelPlayEvent
+ (id)playEventWithModelObject:(id)a3 nestedPlayEvent:(id)a4 featureName:(id)a5;
+ (void)__MPModelPropertyPlayEventDatePlayed__MAPPING_MISSING__;
+ (void)__MPModelPropertyPlayEventFeatureName__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlayEventAlbum__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlayEventArtist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlayEventGroup__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlayEventNestedPlayEvent__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlayEventPlaylist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipPlayEventRadioStation__MAPPING_MISSING__;
- (NSString)title;
- (id)contentItemCollectionInfo;
- (id)genericObjectRepresentation;
- (int64_t)itemType;
@end

@implementation MPModelPlayEvent

void __28__MPModelPlayEvent_itemType__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) album];

  if (v2)
  {
    v3 = 1;
  }

  else
  {
    v4 = [*(a1 + 32) artist];

    if (v4)
    {
      v3 = 2;
    }

    else
    {
      v5 = [*(a1 + 32) playlist];

      if (v5)
      {
        v3 = 3;
      }

      else
      {
        v6 = [*(a1 + 32) radioStation];

        if (v6)
        {
          v3 = 4;
        }

        else
        {
          v7 = [*(a1 + 32) group];

          if (!v7)
          {
            return;
          }

          v3 = 5;
        }
      }
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
}

- (int64_t)itemType
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__MPModelPlayEvent_itemType__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)genericObjectRepresentation
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__22396;
  v9 = __Block_byref_object_dispose__22397;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47__MPModelPlayEvent_genericObjectRepresentation__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __47__MPModelPlayEvent_genericObjectRepresentation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) album];
  v18 = v2;
  if (v2)
  {
    v3 = [MPModelGenericObject genericObjectWithModelObject:v2];
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;
  }

  else
  {
    v5 = [*(a1 + 32) artist];
    if (v5)
    {
      v6 = [MPModelGenericObject genericObjectWithModelObject:v5];
      v7 = *(*(a1 + 40) + 8);
      v8 = *(v7 + 40);
      *(v7 + 40) = v6;
    }

    else
    {
      v8 = [*(a1 + 32) playlist];
      if (v8)
      {
        v9 = [MPModelGenericObject genericObjectWithModelObject:v8];
        v10 = *(*(a1 + 40) + 8);
        v11 = *(v10 + 40);
        *(v10 + 40) = v9;
      }

      else
      {
        v11 = [*(a1 + 32) radioStation];
        if (v11)
        {
          v12 = [MPModelGenericObject genericObjectWithModelObject:v11];
          v13 = *(*(a1 + 40) + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
        }

        else
        {
          v14 = [*(a1 + 32) group];
          if (v14)
          {
            v15 = [MPModelGenericObject genericObjectWithModelObject:v14];
            v16 = *(*(a1 + 40) + 8);
            v17 = *(v16 + 40);
            *(v16 + 40) = v15;
          }
        }
      }
    }
  }
}

+ (id)playEventWithModelObject:(id)a3 nestedPlayEvent:(id)a4 featureName:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if (v7 | v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v7 identifiers];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __73__MPModelPlayEvent_playEventWithModelObject_nestedPlayEvent_featureName___block_invoke;
      v21[3] = &unk_1E767A000;
      v12 = &v22;
      v22 = v9;
      v10 = [v7 copyWithIdentifiers:v11 block:v21];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v7 flattenedGenericObject];
        v14 = [v13 anyObject];

        v7 = v14;
      }

      v15 = [MPModelPlayEvent alloc];
      v11 = +[MPIdentifierSet emptyIdentifierSet];
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __73__MPModelPlayEvent_playEventWithModelObject_nestedPlayEvent_featureName___block_invoke_2;
      v17[3] = &unk_1E767A028;
      v12 = &v18;
      v18 = v7;
      v19 = v8;
      v20 = v9;
      v7 = v7;
      v10 = [(MPModelObject *)v15 initWithIdentifiers:v11 block:v17];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void __73__MPModelPlayEvent_playEventWithModelObject_nestedPlayEvent_featureName___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [v3 setRadioStation:a1[4]];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v3 setAlbum:a1[4]];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v3 setPlaylist:a1[4]];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v3 setArtist:a1[4]];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v3 setGroup:a1[4]];
          }
        }
      }
    }
  }

  [v3 setNestedPlayEvent:a1[5]];
  [v3 setFeatureName:a1[6]];
}

+ (void)__MPModelRelationshipPlayEventNestedPlayEvent__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:27 description:@"Translator was missing mapping for MPModelRelationshipPlayEventNestedPlayEvent"];
}

+ (void)__MPModelRelationshipPlayEventGroup__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:26 description:@"Translator was missing mapping for MPModelRelationshipPlayEventGroup"];
}

+ (void)__MPModelRelationshipPlayEventRadioStation__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:25 description:@"Translator was missing mapping for MPModelRelationshipPlayEventRadioStation"];
}

+ (void)__MPModelRelationshipPlayEventPlaylist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:24 description:@"Translator was missing mapping for MPModelRelationshipPlayEventPlaylist"];
}

+ (void)__MPModelRelationshipPlayEventArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:23 description:@"Translator was missing mapping for MPModelRelationshipPlayEventArtist"];
}

+ (void)__MPModelRelationshipPlayEventAlbum__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:22 description:@"Translator was missing mapping for MPModelRelationshipPlayEventAlbum"];
}

+ (void)__MPModelPropertyPlayEventFeatureName__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:21 description:@"Translator was missing mapping for MPModelPropertyPlayEventFeatureName"];
}

+ (void)__MPModelPropertyPlayEventDatePlayed__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelPlayEvent.m" lineNumber:20 description:@"Translator was missing mapping for MPModelPropertyPlayEventDatePlayed"];
}

- (NSString)title
{
  v3 = [(MPModelPlayEvent *)self itemType];
  v4 = 0;
  if (v3 <= 2)
  {
    if (v3 == 1)
    {
      v5 = [(MPModelPlayEvent *)self album];
LABEL_13:
      v7 = v5;
      v8 = [v5 title];
      goto LABEL_14;
    }

    if (v3 != 2)
    {
      goto LABEL_15;
    }

    v6 = [(MPModelPlayEvent *)self artist];
  }

  else
  {
    switch(v3)
    {
      case 3:
        v6 = [(MPModelPlayEvent *)self playlist];
        break;
      case 4:
        v6 = [(MPModelPlayEvent *)self radioStation];
        break;
      case 5:
        v5 = [(MPModelPlayEvent *)self group];
        goto LABEL_13;
      default:
        goto LABEL_15;
    }
  }

  v7 = v6;
  v8 = [v6 name];
LABEL_14:
  v4 = v8;

LABEL_15:

  return v4;
}

- (id)contentItemCollectionInfo
{
  v3 = [(MPModelPlayEvent *)self itemType];
  v4 = 0;
  if (v3 > 2)
  {
    if (v3 == 4)
    {
      v5 = [(MPModelPlayEvent *)self radioStation];
    }

    else
    {
      if (v3 != 3)
      {
        goto LABEL_11;
      }

      v5 = [(MPModelPlayEvent *)self playlist];
    }
  }

  else if (v3 == 1)
  {
    v5 = [(MPModelPlayEvent *)self album];
  }

  else
  {
    if (v3 != 2)
    {
      goto LABEL_11;
    }

    v5 = [(MPModelPlayEvent *)self artist];
  }

  v6 = v5;
  v4 = [v5 contentItemCollectionInfo];

LABEL_11:

  return v4;
}

@end