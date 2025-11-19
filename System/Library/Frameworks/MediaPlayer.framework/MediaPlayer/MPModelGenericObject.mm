@interface MPModelGenericObject
+ (id)genericObjectWithModelObject:(id)a3;
+ (id)relationshipKeyForGenericObjectType:(int64_t)a3;
+ (id)requiredStoreLibraryPersonalizationProperties;
+ (void)__MPModelRelationshipGenericAlbum__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericArtist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericComposer__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericCreditsArtist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericCurator__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericGenre__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericGroup__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericMediaClip__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericMovie__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericPlaylistEntry__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericPlaylist__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericPodcastEpisode__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericPodcast__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericRadioStationEvent__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericRadioStation__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericRecordLabel__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericSocialPerson__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericSong__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericTVEpisode__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericTVSeason__MAPPING_MISSING__;
+ (void)__MPModelRelationshipGenericTVShow__MAPPING_MISSING__;
- (MPModelGenericObject)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3;
- (id)anyObject;
- (id)artworkCatalog;
- (id)copyWithIdentifiers:(id)a3 block:(id)a4;
- (id)copyWithIdentifiers:(id)a3 propertySet:(id)a4;
- (id)flattenedGenericObject;
- (id)humanDescription;
- (id)identifiers;
- (id)mediaItemPropertyValues;
- (id)mergeWithObject:(id)a3;
- (id)personalizationScopedPropertiesForProperties:(id)a3;
- (id)relativeModelObjectForStoreLibraryPersonalization;
- (int64_t)type;
@end

@implementation MPModelGenericObject

void __28__MPModelGenericObject_type__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) song];
  if (v2)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }

  else
  {
    v3 = [*(a1 + 32) album];
    if (v3)
    {
      *(*(*(a1 + 40) + 8) + 24) = 2;
    }

    else
    {
      v4 = [*(a1 + 32) artist];
      if (v4)
      {
        *(*(*(a1 + 40) + 8) + 24) = 3;
      }

      else
      {
        v5 = [*(a1 + 32) playlist];
        if (v5)
        {
          *(*(*(a1 + 40) + 8) + 24) = 4;
        }

        else
        {
          v6 = [*(a1 + 32) playlistEntry];
          if (v6)
          {
            *(*(*(a1 + 40) + 8) + 24) = 5;
          }

          else
          {
            v7 = [*(a1 + 32) tvEpisode];
            if (v7)
            {
              *(*(*(a1 + 40) + 8) + 24) = 6;
            }

            else
            {
              v8 = [*(a1 + 32) season];
              if (v8)
              {
                *(*(*(a1 + 40) + 8) + 24) = 7;
              }

              else
              {
                v9 = [*(a1 + 32) show];
                if (v9)
                {
                  *(*(*(a1 + 40) + 8) + 24) = 8;
                }

                else
                {
                  v10 = [*(a1 + 32) movie];
                  if (v10)
                  {
                    *(*(*(a1 + 40) + 8) + 24) = 9;
                  }

                  else
                  {
                    v11 = [*(a1 + 32) mediaClip];
                    if (v11)
                    {
                      *(*(*(a1 + 40) + 8) + 24) = 10;
                    }

                    else
                    {
                      v12 = [*(a1 + 32) podcast];
                      if (v12)
                      {
                        *(*(*(a1 + 40) + 8) + 24) = 11;
                      }

                      else
                      {
                        v23 = [*(a1 + 32) podcastEpisode];
                        if (v23)
                        {
                          *(*(*(a1 + 40) + 8) + 24) = 12;
                        }

                        else
                        {
                          v22 = [*(a1 + 32) radioStation];
                          if (v22)
                          {
                            *(*(*(a1 + 40) + 8) + 24) = 13;
                          }

                          else
                          {
                            v21 = [*(a1 + 32) radioStationEvent];
                            if (v21)
                            {
                              *(*(*(a1 + 40) + 8) + 24) = 18;
                            }

                            else
                            {
                              v20 = [*(a1 + 32) composer];
                              if (v20)
                              {
                                *(*(*(a1 + 40) + 8) + 24) = 14;
                              }

                              else
                              {
                                v19 = [*(a1 + 32) genre];
                                if (v19)
                                {
                                  *(*(*(a1 + 40) + 8) + 24) = 15;
                                }

                                else
                                {
                                  v18 = [*(a1 + 32) curator];
                                  if (v18)
                                  {
                                    *(*(*(a1 + 40) + 8) + 24) = 16;
                                  }

                                  else
                                  {
                                    v17 = [*(a1 + 32) socialPerson];
                                    if (v17)
                                    {
                                      *(*(*(a1 + 40) + 8) + 24) = 17;
                                    }

                                    else
                                    {
                                      v16 = [*(a1 + 32) recordLabel];
                                      if (v16)
                                      {
                                        *(*(*(a1 + 40) + 8) + 24) = 19;
                                      }

                                      else
                                      {
                                        v15 = [*(a1 + 32) creditsArtist];
                                        if (v15)
                                        {
                                          *(*(*(a1 + 40) + 8) + 24) = 20;
                                        }

                                        else
                                        {
                                          v13 = [*(a1 + 32) group];
                                          v14 = 21;
                                          if (!v13)
                                          {
                                            v14 = 0;
                                          }

                                          *(*(*(a1 + 40) + 8) + 24) = v14;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }

                      v11 = 0;
                    }

                    v10 = 0;
                  }
                }
              }
            }
          }
        }
      }
    }

    v2 = 0;
  }
}

- (int64_t)type
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__MPModelGenericObject_type__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)identifiers
{
  switch([(MPModelGenericObject *)self type])
  {
    case 1:
      v3 = [(MPModelGenericObject *)self song];
      goto LABEL_23;
    case 2:
      v3 = [(MPModelGenericObject *)self album];
      goto LABEL_23;
    case 3:
      v3 = [(MPModelGenericObject *)self artist];
      goto LABEL_23;
    case 4:
      v3 = [(MPModelGenericObject *)self playlist];
      goto LABEL_23;
    case 5:
      v3 = [(MPModelGenericObject *)self playlistEntry];
      goto LABEL_23;
    case 6:
      v3 = [(MPModelGenericObject *)self tvEpisode];
      goto LABEL_23;
    case 7:
      v3 = [(MPModelGenericObject *)self season];
      goto LABEL_23;
    case 8:
      v3 = [(MPModelGenericObject *)self show];
      goto LABEL_23;
    case 9:
      v3 = [(MPModelGenericObject *)self movie];
      goto LABEL_23;
    case 10:
      v3 = [(MPModelGenericObject *)self mediaClip];
      goto LABEL_23;
    case 11:
      v3 = [(MPModelGenericObject *)self podcast];
      goto LABEL_23;
    case 12:
      v3 = [(MPModelGenericObject *)self podcastEpisode];
      goto LABEL_23;
    case 13:
      v3 = [(MPModelGenericObject *)self radioStation];
      goto LABEL_23;
    case 14:
      v3 = [(MPModelGenericObject *)self composer];
      goto LABEL_23;
    case 15:
      v3 = [(MPModelGenericObject *)self genre];
      goto LABEL_23;
    case 16:
      v3 = [(MPModelGenericObject *)self curator];
      goto LABEL_23;
    case 17:
      v3 = [(MPModelGenericObject *)self socialPerson];
      goto LABEL_23;
    case 18:
      v3 = [(MPModelGenericObject *)self radioStationEvent];
      goto LABEL_23;
    case 19:
      v3 = [(MPModelGenericObject *)self recordLabel];
      goto LABEL_23;
    case 20:
      v3 = [(MPModelGenericObject *)self creditsArtist];
      goto LABEL_23;
    case 21:
      v3 = [(MPModelGenericObject *)self group];
LABEL_23:
      v4 = v3;
      v5 = [v3 identifiers];

      if (!v5)
      {
        goto LABEL_24;
      }

      goto LABEL_25;
    default:
LABEL_24:
      v7.receiver = self;
      v7.super_class = MPModelGenericObject;
      v5 = [(MPModelObject *)&v7 identifiers];
LABEL_25:

      return v5;
  }
}

- (id)anyObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__26611;
  v9 = __Block_byref_object_dispose__26612;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__MPModelGenericObject_anyObject__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __46__MPModelGenericObject_flattenedGenericObject__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) playlistEntry];
  v10 = v2;
  if (v2)
  {
    v3 = [v2 anyObject];
    v4 = [MPModelGenericObject genericObjectWithModelObject:v3];
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;
  }

  else
  {
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 40) + 8);
    v9 = v7;
    v3 = *(v8 + 40);
    *(v8 + 40) = v9;
  }
}

- (id)flattenedGenericObject
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__26611;
  v9 = __Block_byref_object_dispose__26612;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__MPModelGenericObject_flattenedGenericObject__block_invoke;
  v4[3] = &unk_1E76819F0;
  v4[4] = self;
  v4[5] = &v5;
  [MPModelObject performWithoutEnforcement:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __33__MPModelGenericObject_anyObject__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) song];
  v36 = v2;
  if (v2)
  {
    v35 = 0uLL;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
LABEL_17:
    v11 = v2;
    goto LABEL_18;
  }

  v2 = [*(a1 + 32) album];
  if (v2)
  {
    v35 = 0uLL;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v24 = v2;
    goto LABEL_17;
  }

  v2 = [*(a1 + 32) artist];
  if (v2)
  {
    v24 = 0;
    *(&v35 + 4) = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    LODWORD(v35) = 0;
    HIDWORD(v35) = 1;
    v31 = v2;
    goto LABEL_17;
  }

  v2 = [*(a1 + 32) playlist];
  if (v2)
  {
    v24 = 0;
    v31 = 0;
    v34 = 0;
    *&v35 = 0;
    v32 = 0;
    v33 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(&v35 + 1) = 0x100000001;
    v30 = v2;
    goto LABEL_17;
  }

  v2 = [*(a1 + 32) playlistEntry];
  if (v2)
  {
    v24 = 0;
    v30 = 0;
    v31 = 0;
    v33 = 0;
    v34 = 0;
    v32 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(&v35 + 1) = 0x100000001;
    *&v35 = 0x100000000;
    v29 = v2;
    goto LABEL_17;
  }

  v2 = [*(a1 + 32) tvEpisode];
  if (v2)
  {
    v24 = 0;
    v30 = 0;
    v31 = 0;
    v29 = 0;
    v32 = 0;
    v33 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(&v35 + 1) = 0x100000001;
    *&v35 = 0x100000000;
    v34 = 0x100000000;
    v28 = v2;
    goto LABEL_17;
  }

  v2 = [*(a1 + 32) season];
  if (v2)
  {
    v24 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v32 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(&v35 + 1) = 0x100000001;
    *&v35 = 0x100000000;
    v34 = 0x100000000;
    v33 = 0x100000000;
    v27 = v2;
    goto LABEL_17;
  }

  v2 = [*(a1 + 32) show];
  if (v2)
  {
    v24 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v3 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    *(&v35 + 1) = 0x100000001;
    *&v35 = 0x100000000;
    v34 = 0x100000000;
    v33 = 0x100000000;
    v32 = 0x100000000;
    v26 = v2;
    goto LABEL_17;
  }

  v13 = [*(a1 + 32) movie];
  if (v13)
  {
    v24 = 0;
    v30 = 0;
    v31 = 0;
    v28 = 0;
    v29 = 0;
    v26 = 0;
    v27 = 0;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = v13;
    *(&v35 + 1) = 0x100000001;
    *&v35 = 0x100000000;
    v34 = 0x100000000;
    v33 = 0x100000000;
    v32 = 0x100000000;
    v3 = 1;
    v23 = v13;
  }

  else
  {
    v2 = [*(a1 + 32) mediaClip];
    if (v2)
    {
      v23 = 0;
      v24 = 0;
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v26 = 0;
      v27 = 0;
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      *(&v35 + 1) = 0x100000001;
      *&v35 = 0x100000000;
      v34 = 0x100000000;
      v33 = 0x100000000;
      v32 = 0x100000000;
      v3 = 1;
      v4 = 1;
      v25 = v2;
      goto LABEL_17;
    }

    v22 = [*(a1 + 32) podcast];
    if (v22)
    {
      v23 = 0;
      v24 = 0;
      v30 = 0;
      v31 = 0;
      v28 = 0;
      v29 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v10 = 0;
      *(&v35 + 1) = 0x100000001;
      *&v35 = 0x100000000;
      v34 = 0x100000000;
      v33 = 0x100000000;
      v32 = 0x100000000;
      v3 = 1;
      v4 = 1;
      v5 = 1;
      v11 = v22;
    }

    else
    {
      v21 = [*(a1 + 32) podcastEpisode];
      if (v21)
      {
        v23 = 0;
        v24 = 0;
        v30 = 0;
        v31 = 0;
        v28 = 0;
        v29 = 0;
        v26 = 0;
        v27 = 0;
        v25 = 0;
        v22 = 0;
        v7 = 0;
        v8 = 0;
        v9 = 0;
        v10 = 0;
        *(&v35 + 1) = 0x100000001;
        *&v35 = 0x100000000;
        v34 = 0x100000000;
        v33 = 0x100000000;
        v32 = 0x100000000;
        v3 = 1;
        v4 = 1;
        v5 = 1;
        v6 = 1;
        v11 = v21;
      }

      else
      {
        v20 = [*(a1 + 32) radioStation];
        if (v20)
        {
          v23 = 0;
          v24 = 0;
          v30 = 0;
          v31 = 0;
          v28 = 0;
          v29 = 0;
          v26 = 0;
          v27 = 0;
          v25 = 0;
          v21 = 0;
          v22 = 0;
          v8 = 0;
          v9 = 0;
          v10 = 0;
          *(&v35 + 1) = 0x100000001;
          *&v35 = 0x100000000;
          v34 = 0x100000000;
          v33 = 0x100000000;
          v32 = 0x100000000;
          v3 = 1;
          v4 = 1;
          v5 = 1;
          v6 = 1;
          v7 = 1;
          v11 = v20;
        }

        else
        {
          v19 = [*(a1 + 32) composer];
          if (v19)
          {
            v23 = 0;
            v24 = 0;
            v30 = 0;
            v31 = 0;
            v28 = 0;
            v29 = 0;
            v26 = 0;
            v27 = 0;
            v25 = 0;
            v21 = 0;
            v22 = 0;
            v20 = 0;
            v9 = 0;
            v10 = 0;
            *(&v35 + 1) = 0x100000001;
            *&v35 = 0x100000000;
            v34 = 0x100000000;
            v33 = 0x100000000;
            v32 = 0x100000000;
            v3 = 1;
            v4 = 1;
            v5 = 1;
            v6 = 1;
            v7 = 1;
            v8 = 1;
            v11 = v19;
          }

          else
          {
            v18 = [*(a1 + 32) genre];
            if (v18)
            {
              v23 = 0;
              v24 = 0;
              v30 = 0;
              v31 = 0;
              v28 = 0;
              v29 = 0;
              v26 = 0;
              v27 = 0;
              v25 = 0;
              v21 = 0;
              v22 = 0;
              v19 = 0;
              v20 = 0;
              v10 = 0;
              *(&v35 + 1) = 0x100000001;
              *&v35 = 0x100000000;
              v34 = 0x100000000;
              v33 = 0x100000000;
              v32 = 0x100000000;
              v3 = 1;
              v4 = 1;
              v5 = 1;
              v6 = 1;
              v7 = 1;
              v8 = 1;
              v9 = 1;
              v11 = v18;
            }

            else
            {
              v17 = [*(a1 + 32) curator];
              if (v17)
              {
                v23 = 0;
                v24 = 0;
                v30 = 0;
                v31 = 0;
                v28 = 0;
                v29 = 0;
                v26 = 0;
                v27 = 0;
                v25 = 0;
                v21 = 0;
                v22 = 0;
                v19 = 0;
                v20 = 0;
                v18 = 0;
                *(&v35 + 1) = 0x100000001;
                *&v35 = 0x100000000;
                v34 = 0x100000000;
                v33 = 0x100000000;
                v32 = 0x100000000;
                v3 = 1;
                v4 = 1;
                v5 = 1;
                v6 = 1;
                v7 = 1;
                v8 = 1;
                v9 = 1;
                v10 = 1;
                v11 = v17;
              }

              else
              {
                v16 = [*(a1 + 32) socialPerson];
                if (v16)
                {
                  v23 = 0;
                  v24 = 0;
                  v30 = 0;
                  v31 = 0;
                  v28 = 0;
                  v29 = 0;
                  v26 = 0;
                  v27 = 0;
                  v25 = 0;
                  v21 = 0;
                  v22 = 0;
                  v19 = 0;
                  v20 = 0;
                  v17 = 0;
                  v18 = 0;
                  *(&v35 + 1) = 0x100000001;
                  *&v35 = 0x100000000;
                  v34 = 0x100000000;
                  v33 = 0x100000000;
                  v32 = 0x100000001;
                  v3 = 1;
                  v4 = 1;
                  v5 = 1;
                  v6 = 1;
                  v7 = 1;
                  v8 = 1;
                  v9 = 1;
                  v10 = 1;
                  v11 = v16;
                }

                else
                {
                  v15 = [*(a1 + 32) recordLabel];
                  if (v15)
                  {
                    v23 = 0;
                    v24 = 0;
                    v30 = 0;
                    v31 = 0;
                    v28 = 0;
                    v29 = 0;
                    v26 = 0;
                    v27 = 0;
                    v25 = 0;
                    v21 = 0;
                    v22 = 0;
                    v19 = 0;
                    v20 = 0;
                    v17 = 0;
                    v18 = 0;
                    v16 = 0;
                    *(&v35 + 1) = 0x100000001;
                    *&v35 = 0x100000000;
                    v34 = 0x100000000;
                    v33 = 0x100000001;
                    v32 = 0x100000001;
                    v3 = 1;
                    v4 = 1;
                    v5 = 1;
                    v6 = 1;
                    v7 = 1;
                    v8 = 1;
                    v9 = 1;
                    v10 = 1;
                    v11 = v15;
                  }

                  else
                  {
                    v14 = [*(a1 + 32) creditsArtist];
                    if (v14)
                    {
                      v23 = 0;
                      v24 = 0;
                      v30 = 0;
                      v31 = 0;
                      v28 = 0;
                      v29 = 0;
                      v26 = 0;
                      v27 = 0;
                      v25 = 0;
                      v21 = 0;
                      v22 = 0;
                      v19 = 0;
                      v20 = 0;
                      v17 = 0;
                      v18 = 0;
                      v15 = 0;
                      v16 = 0;
                      *(&v35 + 1) = 0x100000001;
                      *&v35 = 0x100000000;
                      v34 = 0x100000001;
                      v33 = 0x100000001;
                      v32 = 0x100000001;
                      v3 = 1;
                      v4 = 1;
                      v5 = 1;
                      v6 = 1;
                      v7 = 1;
                      v8 = 1;
                      v9 = 1;
                      v10 = 1;
                      v11 = v14;
                    }

                    else
                    {
                      v11 = [*(a1 + 32) group];
                      v23 = 0;
                      v24 = 0;
                      v30 = 0;
                      v31 = 0;
                      v28 = 0;
                      v29 = 0;
                      v26 = 0;
                      v27 = 0;
                      v25 = 0;
                      v21 = 0;
                      v22 = 0;
                      v19 = 0;
                      v20 = 0;
                      v17 = 0;
                      v18 = 0;
                      v15 = 0;
                      v16 = 0;
                      v14 = 0;
                      *(&v35 + 1) = 0x100000001;
                      *&v35 = 0x100000001;
                      v34 = 0x100000001;
                      v33 = 0x100000001;
                      v32 = 0x100000001;
                      v3 = 1;
                      v4 = 1;
                      v5 = 1;
                      v6 = 1;
                      v7 = 1;
                      v8 = 1;
                      v9 = 1;
                      v10 = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_18:
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v11);
  if (v35)
  {
  }

  if (v34)
  {
  }

  if (v33)
  {
  }

  if (v32)
  {

    if (!v10)
    {
      goto LABEL_26;
    }
  }

  else if (!v10)
  {
LABEL_26:
    if (v9)
    {
      goto LABEL_27;
    }

    goto LABEL_55;
  }

  if (v9)
  {
LABEL_27:

    if (!v8)
    {
      goto LABEL_28;
    }

    goto LABEL_56;
  }

LABEL_55:
  if (!v8)
  {
LABEL_28:
    if (v7)
    {
      goto LABEL_29;
    }

    goto LABEL_57;
  }

LABEL_56:

  if (v7)
  {
LABEL_29:

    if (!v6)
    {
      goto LABEL_30;
    }

    goto LABEL_58;
  }

LABEL_57:
  if (!v6)
  {
LABEL_30:
    if (!v5)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

LABEL_58:

  if (v5)
  {
LABEL_31:
  }

LABEL_32:
  if (v4)
  {
  }

  if (v3)
  {
  }

  if (HIDWORD(v32))
  {
  }

  if (HIDWORD(v33))
  {
  }

  if (HIDWORD(v34))
  {
  }

  if (DWORD1(v35))
  {
  }

  if (DWORD2(v35))
  {
  }

  if (HIDWORD(v35))
  {
  }

  v12 = v36;
  if (!v36)
  {

    v12 = 0;
  }
}

- (id)mediaItemPropertyValues
{
  v3 = [(MPModelGenericObject *)self type];
  v4 = 0;
  if (v3 > 5)
  {
    if (v3 == 6)
    {
      v5 = [(MPModelGenericObject *)self tvEpisode];
    }

    else
    {
      if (v3 != 9)
      {
        goto LABEL_11;
      }

      v5 = [(MPModelGenericObject *)self movie];
    }
  }

  else if (v3 == 1)
  {
    v5 = [(MPModelGenericObject *)self song];
  }

  else
  {
    if (v3 != 5)
    {
      goto LABEL_11;
    }

    v5 = [(MPModelGenericObject *)self playlistEntry];
  }

  v6 = v5;
  v4 = [v5 mediaItemPropertyValues];

LABEL_11:

  return v4;
}

- (id)artworkCatalog
{
  v3 = 0;
  switch([(MPModelGenericObject *)self type])
  {
    case 1:
      v4 = [(MPModelGenericObject *)self song];
      goto LABEL_19;
    case 2:
      v4 = [(MPModelGenericObject *)self album];
      goto LABEL_19;
    case 3:
      v4 = [(MPModelGenericObject *)self artist];
      goto LABEL_19;
    case 4:
      v4 = [(MPModelGenericObject *)self playlist];
      goto LABEL_19;
    case 6:
      v4 = [(MPModelGenericObject *)self tvEpisode];
      goto LABEL_19;
    case 7:
      v4 = [(MPModelGenericObject *)self season];
      goto LABEL_19;
    case 8:
      v4 = [(MPModelGenericObject *)self show];
      goto LABEL_19;
    case 9:
      v4 = [(MPModelGenericObject *)self movie];
      goto LABEL_19;
    case 10:
      v5 = [(MPModelGenericObject *)self mediaClip];
      v6 = [v5 previewArtworkCatalog];
      goto LABEL_20;
    case 11:
      v4 = [(MPModelGenericObject *)self podcast];
      goto LABEL_19;
    case 12:
      v4 = [(MPModelGenericObject *)self podcastEpisode];
      goto LABEL_19;
    case 13:
      v4 = [(MPModelGenericObject *)self radioStation];
      goto LABEL_19;
    case 15:
      v4 = [(MPModelGenericObject *)self genre];
      goto LABEL_19;
    case 16:
      v5 = [(MPModelGenericObject *)self curator];
      v6 = [v5 editorialArtworkCatalog];
      goto LABEL_20;
    case 18:
      v4 = [(MPModelGenericObject *)self radioStationEvent];
      goto LABEL_19;
    case 19:
      v4 = [(MPModelGenericObject *)self recordLabel];
      goto LABEL_19;
    case 20:
      v4 = [(MPModelGenericObject *)self creditsArtist];
LABEL_19:
      v5 = v4;
      v6 = [v4 artworkCatalog];
LABEL_20:
      v3 = v6;

      break;
    default:
      break;
  }

  return v3;
}

- (id)humanDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MPModelGenericObject *)self anyObject];
  v5 = [v4 humanDescription];
  v6 = v5;
  if (v5)
  {
    v7 = [v3 stringWithFormat:@"generic %@", v5];
  }

  else
  {
    v8 = [(MPModelGenericObject *)self identifiers];
    v9 = [v8 humanDescription];
    v7 = [v3 stringWithFormat:@"generic %@", v9];
  }

  return v7;
}

- (id)mergeWithObject:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    v24 = objc_opt_class();
    [v23 handleFailureInMethod:a2 object:self file:@"MPModelGenericObject.m" lineNumber:277 description:{@"MPModelObject mergeWithObject: called with a different object class: %@ %@", v24, objc_opt_class()}];
  }

  v6 = v5;
  v7 = [(MPModelGenericObject *)self anyObject];
  v8 = [v6 anyObject];
  v9 = v8;
  if (!(v7 | v8))
  {
    v10 = [(MPModelGenericObject *)self identifiers];
    v11 = [v6 identifiers];
    v12 = [v10 unionSet:v11];

    v13 = [(MPModelObject *)[MPModelGenericObject alloc] initWithIdentifiers:v12];
LABEL_5:
    v14 = v13;
    goto LABEL_13;
  }

  if (!v7 || v8)
  {
    if (v7 || !v8)
    {
      v22 = [(MPModelGenericObject *)self type];
      if (v22 != [v6 type])
      {
        v25 = [MEMORY[0x1E696AAA8] currentHandler];
        [v25 handleFailureInMethod:a2 object:self file:@"MPModelGenericObject.m" lineNumber:297 description:{@"MPModelObject mergeWithObject: called with a different generic relationship type: %@ %@", self, v6}];
      }

      v12 = [v7 mergeWithObject:v9];
      v13 = [MPModelGenericObject genericObjectWithModelObject:v12];
      goto LABEL_5;
    }

    v18 = [(MPModelGenericObject *)self identifiers];
    v19 = [v6 identifiers];
    v12 = [v18 unionSet:v19];

    v17 = v9;
  }

  else
  {
    v15 = [(MPModelGenericObject *)self identifiers];
    v16 = [v6 identifiers];
    v12 = [v15 unionSet:v16];

    v17 = v7;
  }

  v20 = [v17 copyWithIdentifiers:v12];
  v14 = [MPModelGenericObject genericObjectWithModelObject:v20];

LABEL_13:

  return v14;
}

- (id)copyWithIdentifiers:(id)a3 propertySet:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPModelGenericObject *)self anyObject];
  v9 = [(MPModelGenericObject *)self type];
  v10 = +[MPPropertySet emptyPropertySet];
  if (v9)
  {
    v11 = [v7 relationships];
    v12 = [MPModelGenericObject relationshipKeyForGenericObjectType:[(MPModelGenericObject *)self type]];
    v13 = [v11 objectForKeyedSubscript:v12];

    v10 = v13;
  }

  if (v10)
  {
    v14 = [v8 copyWithIdentifiers:v6 propertySet:v10];
    v15 = [MPModelGenericObject genericObjectWithModelObject:v14];
  }

  else
  {
    v15 = [(MPModelObject *)[MPModelGenericObject alloc] initWithIdentifiers:v6 block:&__block_literal_global_219];
  }

  return v15;
}

- (id)copyWithIdentifiers:(id)a3 block:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MPModelGenericObject *)self anyObject];
  if (v8)
  {
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __50__MPModelGenericObject_copyWithIdentifiers_block___block_invoke_2;
    v19 = &unk_1E767A2D0;
    v9 = &v20;
    v20 = v7;
    v10 = v7;
    v11 = [v8 copyWithIdentifiers:v6 block:&v16];
    v12 = [MPModelGenericObject genericObjectWithModelObject:v11, v16, v17, v18, v19];
  }

  else
  {
    v13 = [MPModelGenericObject alloc];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __50__MPModelGenericObject_copyWithIdentifiers_block___block_invoke;
    v21[3] = &unk_1E767A2D0;
    v9 = &v22;
    v22 = v7;
    v14 = v7;
    v12 = [(MPModelObject *)v13 initWithIdentifiers:v6 block:v21];
  }

  return v12;
}

+ (void)__MPModelRelationshipGenericGroup__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:327 description:@"Translator was missing mapping for MPModelRelationshipGenericGroup"];
}

+ (void)__MPModelRelationshipGenericCreditsArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:326 description:@"Translator was missing mapping for MPModelRelationshipGenericCreditsArtist"];
}

+ (void)__MPModelRelationshipGenericRecordLabel__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:325 description:@"Translator was missing mapping for MPModelRelationshipGenericRecordLabel"];
}

+ (void)__MPModelRelationshipGenericSocialPerson__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:324 description:@"Translator was missing mapping for MPModelRelationshipGenericSocialPerson"];
}

+ (void)__MPModelRelationshipGenericCurator__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:323 description:@"Translator was missing mapping for MPModelRelationshipGenericCurator"];
}

+ (void)__MPModelRelationshipGenericGenre__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:322 description:@"Translator was missing mapping for MPModelRelationshipGenericGenre"];
}

+ (void)__MPModelRelationshipGenericComposer__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:321 description:@"Translator was missing mapping for MPModelRelationshipGenericComposer"];
}

+ (void)__MPModelRelationshipGenericRadioStationEvent__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:320 description:@"Translator was missing mapping for MPModelRelationshipGenericRadioStationEvent"];
}

+ (void)__MPModelRelationshipGenericRadioStation__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:319 description:@"Translator was missing mapping for MPModelRelationshipGenericRadioStation"];
}

+ (void)__MPModelRelationshipGenericPodcastEpisode__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:318 description:@"Translator was missing mapping for MPModelRelationshipGenericPodcastEpisode"];
}

+ (void)__MPModelRelationshipGenericPodcast__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:317 description:@"Translator was missing mapping for MPModelRelationshipGenericPodcast"];
}

+ (void)__MPModelRelationshipGenericMediaClip__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:316 description:@"Translator was missing mapping for MPModelRelationshipGenericMediaClip"];
}

+ (void)__MPModelRelationshipGenericMovie__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:315 description:@"Translator was missing mapping for MPModelRelationshipGenericMovie"];
}

+ (void)__MPModelRelationshipGenericTVShow__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:314 description:@"Translator was missing mapping for MPModelRelationshipGenericTVShow"];
}

+ (void)__MPModelRelationshipGenericTVSeason__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:313 description:@"Translator was missing mapping for MPModelRelationshipGenericTVSeason"];
}

+ (void)__MPModelRelationshipGenericTVEpisode__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:312 description:@"Translator was missing mapping for MPModelRelationshipGenericTVEpisode"];
}

+ (void)__MPModelRelationshipGenericPlaylistEntry__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:311 description:@"Translator was missing mapping for MPModelRelationshipGenericPlaylistEntry"];
}

+ (void)__MPModelRelationshipGenericPlaylist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:310 description:@"Translator was missing mapping for MPModelRelationshipGenericPlaylist"];
}

+ (void)__MPModelRelationshipGenericArtist__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:309 description:@"Translator was missing mapping for MPModelRelationshipGenericArtist"];
}

+ (void)__MPModelRelationshipGenericAlbum__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:308 description:@"Translator was missing mapping for MPModelRelationshipGenericAlbum"];
}

+ (void)__MPModelRelationshipGenericSong__MAPPING_MISSING__
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:307 description:@"Translator was missing mapping for MPModelRelationshipGenericSong"];
}

+ (id)genericObjectWithModelObject:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || (v5 = [MPModelGenericObject alloc], [v3 identifiers], v6 = objc_claimAutoreleasedReturnValue(), v84[0] = MEMORY[0x1E69E9820], v84[1] = 3221225472, v84[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke, v84[3] = &unk_1E767E6E0, v85 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v5, "initWithIdentifiers:block:", v6, v84), v6, v85, !v4))
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || (v7 = [MPModelGenericObject alloc], [v3 identifiers], v8 = objc_claimAutoreleasedReturnValue(), v82[0] = MEMORY[0x1E69E9820], v82[1] = 3221225472, v82[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_2, v82[3] = &unk_1E767E6E0, v83 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v7, "initWithIdentifiers:block:", v8, v82), v8, v83, !v4))
      {
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0 || (v9 = [MPModelGenericObject alloc], [v3 identifiers], v10 = objc_claimAutoreleasedReturnValue(), v80[0] = MEMORY[0x1E69E9820], v80[1] = 3221225472, v80[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_3, v80[3] = &unk_1E767E6E0, v81 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v9, "initWithIdentifiers:block:", v10, v80), v10, v81, !v4))
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || (v11 = [MPModelGenericObject alloc], [v3 identifiers], v12 = objc_claimAutoreleasedReturnValue(), v78[0] = MEMORY[0x1E69E9820], v78[1] = 3221225472, v78[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_4, v78[3] = &unk_1E767E6E0, v79 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v11, "initWithIdentifiers:block:", v12, v78), v12, v79, !v4))
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0 || (v13 = [MPModelGenericObject alloc], [v3 identifiers], v14 = objc_claimAutoreleasedReturnValue(), v76[0] = MEMORY[0x1E69E9820], v76[1] = 3221225472, v76[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_5, v76[3] = &unk_1E767E6E0, v77 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v13, "initWithIdentifiers:block:", v14, v76), v14, v77, !v4))
            {
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0 || (v15 = [MPModelGenericObject alloc], [v3 identifiers], v16 = objc_claimAutoreleasedReturnValue(), v74[0] = MEMORY[0x1E69E9820], v74[1] = 3221225472, v74[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_6, v74[3] = &unk_1E767E6E0, v75 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v15, "initWithIdentifiers:block:", v16, v74), v16, v75, !v4))
              {
                objc_opt_class();
                if ((objc_opt_isKindOfClass() & 1) == 0 || (v17 = [MPModelGenericObject alloc], [v3 identifiers], v18 = objc_claimAutoreleasedReturnValue(), v72[0] = MEMORY[0x1E69E9820], v72[1] = 3221225472, v72[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_7, v72[3] = &unk_1E767E6E0, v73 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v17, "initWithIdentifiers:block:", v18, v72), v18, v73, !v4))
                {
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) == 0 || (v19 = [MPModelGenericObject alloc], [v3 identifiers], v20 = objc_claimAutoreleasedReturnValue(), v70[0] = MEMORY[0x1E69E9820], v70[1] = 3221225472, v70[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_8, v70[3] = &unk_1E767E6E0, v71 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v19, "initWithIdentifiers:block:", v20, v70), v20, v71, !v4))
                  {
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) == 0 || (v21 = [MPModelGenericObject alloc], [v3 identifiers], v22 = objc_claimAutoreleasedReturnValue(), v68[0] = MEMORY[0x1E69E9820], v68[1] = 3221225472, v68[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_9, v68[3] = &unk_1E767E6E0, v69 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v21, "initWithIdentifiers:block:", v22, v68), v22, v69, !v4))
                    {
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) == 0 || (v23 = [MPModelGenericObject alloc], [v3 identifiers], v24 = objc_claimAutoreleasedReturnValue(), v66[0] = MEMORY[0x1E69E9820], v66[1] = 3221225472, v66[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_10, v66[3] = &unk_1E767E6E0, v67 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v23, "initWithIdentifiers:block:", v24, v66), v24, v67, !v4))
                      {
                        objc_opt_class();
                        if ((objc_opt_isKindOfClass() & 1) == 0 || (v25 = [MPModelGenericObject alloc], [v3 identifiers], v26 = objc_claimAutoreleasedReturnValue(), v64[0] = MEMORY[0x1E69E9820], v64[1] = 3221225472, v64[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_11, v64[3] = &unk_1E767E6E0, v65 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v25, "initWithIdentifiers:block:", v26, v64), v26, v65, !v4))
                        {
                          objc_opt_class();
                          if ((objc_opt_isKindOfClass() & 1) == 0 || (v27 = [MPModelGenericObject alloc], [v3 identifiers], v28 = objc_claimAutoreleasedReturnValue(), v62[0] = MEMORY[0x1E69E9820], v62[1] = 3221225472, v62[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_12, v62[3] = &unk_1E767E6E0, v63 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v27, "initWithIdentifiers:block:", v28, v62), v28, v63, !v4))
                          {
                            objc_opt_class();
                            if ((objc_opt_isKindOfClass() & 1) == 0 || (v29 = [MPModelGenericObject alloc], [v3 identifiers], v30 = objc_claimAutoreleasedReturnValue(), v60[0] = MEMORY[0x1E69E9820], v60[1] = 3221225472, v60[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_13, v60[3] = &unk_1E767E6E0, v61 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v29, "initWithIdentifiers:block:", v30, v60), v30, v61, !v4))
                            {
                              objc_opt_class();
                              if ((objc_opt_isKindOfClass() & 1) == 0 || (v31 = [MPModelGenericObject alloc], [v3 identifiers], v32 = objc_claimAutoreleasedReturnValue(), v58[0] = MEMORY[0x1E69E9820], v58[1] = 3221225472, v58[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_14, v58[3] = &unk_1E767E6E0, v59 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v31, "initWithIdentifiers:block:", v32, v58), v32, v59, !v4))
                              {
                                objc_opt_class();
                                if ((objc_opt_isKindOfClass() & 1) == 0 || (v33 = [MPModelGenericObject alloc], [v3 identifiers], v34 = objc_claimAutoreleasedReturnValue(), v56[0] = MEMORY[0x1E69E9820], v56[1] = 3221225472, v56[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_15, v56[3] = &unk_1E767E6E0, v57 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v33, "initWithIdentifiers:block:", v34, v56), v34, v57, !v4))
                                {
                                  objc_opt_class();
                                  if ((objc_opt_isKindOfClass() & 1) == 0 || (v35 = [MPModelGenericObject alloc], [v3 identifiers], v36 = objc_claimAutoreleasedReturnValue(), v54[0] = MEMORY[0x1E69E9820], v54[1] = 3221225472, v54[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_16, v54[3] = &unk_1E767E6E0, v55 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v35, "initWithIdentifiers:block:", v36, v54), v36, v55, !v4))
                                  {
                                    objc_opt_class();
                                    if ((objc_opt_isKindOfClass() & 1) == 0 || (v37 = [MPModelGenericObject alloc], [v3 identifiers], v38 = objc_claimAutoreleasedReturnValue(), v52[0] = MEMORY[0x1E69E9820], v52[1] = 3221225472, v52[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_17, v52[3] = &unk_1E767E6E0, v53 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v37, "initWithIdentifiers:block:", v38, v52), v38, v53, !v4))
                                    {
                                      objc_opt_class();
                                      if ((objc_opt_isKindOfClass() & 1) == 0 || (v39 = [MPModelGenericObject alloc], [v3 identifiers], v40 = objc_claimAutoreleasedReturnValue(), v50[0] = MEMORY[0x1E69E9820], v50[1] = 3221225472, v50[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_18, v50[3] = &unk_1E767E6E0, v51 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v39, "initWithIdentifiers:block:", v40, v50), v40, v51, !v4))
                                      {
                                        objc_opt_class();
                                        if ((objc_opt_isKindOfClass() & 1) == 0 || (v41 = [MPModelGenericObject alloc], [v3 identifiers], v42 = objc_claimAutoreleasedReturnValue(), v48[0] = MEMORY[0x1E69E9820], v48[1] = 3221225472, v48[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_19, v48[3] = &unk_1E767E6E0, v49 = v3, v4 = -[MPModelObject initWithIdentifiers:block:](v41, "initWithIdentifiers:block:", v42, v48), v42, v49, !v4))
                                        {
                                          objc_opt_class();
                                          if (objc_opt_isKindOfClass())
                                          {
                                            v43 = [MPModelGenericObject alloc];
                                            v44 = [v3 identifiers];
                                            v46[0] = MEMORY[0x1E69E9820];
                                            v46[1] = 3221225472;
                                            v46[2] = __53__MPModelGenericObject_genericObjectWithModelObject___block_invoke_20;
                                            v46[3] = &unk_1E767E6E0;
                                            v47 = v3;
                                            v4 = [(MPModelObject *)v43 initWithIdentifiers:v44 block:v46];
                                          }

                                          else
                                          {
                                            v4 = 0;
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v4;
}

+ (id)relationshipKeyForGenericObjectType:(int64_t)a3
{
  result = @"MPModelRelationshipGenericAlbum";
  switch(a3)
  {
    case 0:
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      [v7 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:185 description:@"Cannot provide relationship key for unknown generic object type."];

      goto LABEL_3;
    case 1:
      result = @"MPModelRelationshipGenericSong";
      break;
    case 2:
      return result;
    case 3:
      result = @"MPModelRelationshipGenericArtist";
      break;
    case 4:
      result = @"MPModelRelationshipGenericPlaylist";
      break;
    case 5:
      result = @"MPModelRelationshipGenericPlaylistEntry";
      break;
    case 6:
      result = @"MPModelRelationshipGenericTVEpisode";
      break;
    case 7:
      result = @"MPModelRelationshipGenericTVSeason";
      break;
    case 8:
      result = @"MPModelRelationshipGenericTVShow";
      break;
    case 9:
      result = @"MPModelRelationshipGenericMovie";
      break;
    case 10:
      result = @"MPModelRelationshipGenericMediaClip";
      break;
    case 11:
      result = @"MPModelRelationshipGenericPodcast";
      break;
    case 12:
      result = @"MPModelRelationshipGenericPodcastEpisode";
      break;
    case 13:
      result = @"MPModelRelationshipGenericRadioStation";
      break;
    case 14:
      result = @"MPModelRelationshipGenericComposer";
      break;
    case 15:
      result = @"MPModelRelationshipGenericGenre";
      break;
    case 16:
      result = @"MPModelRelationshipGenericCurator";
      break;
    case 17:
      result = @"MPModelRelationshipGenericSocialPerson";
      break;
    case 18:
      result = @"MPModelRelationshipGenericRadioStationEvent";
      break;
    case 19:
      result = @"MPModelRelationshipGenericRecordLabel";
      break;
    case 20:
      result = @"MPModelRelationshipGenericCreditsArtist";
      break;
    case 21:
      result = @"MPModelRelationshipGenericGroup";
      break;
    default:
LABEL_3:
      v8 = [MEMORY[0x1E696AAA8] currentHandler];
      [v8 handleFailureInMethod:a2 object:a1 file:@"MPModelGenericObject.m" lineNumber:187 description:{@"Unsupported generic object type: %ld", a3}];

      result = 0;
      break;
  }

  return result;
}

- (MPModelGenericObject)objectWithStoreLibraryPersonalizationRelativeModelObject:(id)a3
{
  v4 = a3;
  v5 = [(MPModelGenericObject *)self anyObject];
  v6 = [v5 objectWithStoreLibraryPersonalizationRelativeModelObject:v4];
  v7 = [MPModelGenericObject genericObjectWithModelObject:v6];

  return v7;
}

- (id)relativeModelObjectForStoreLibraryPersonalization
{
  v3 = [(MPModelGenericObject *)self type];
  v4 = 0;
  if (v3 <= 4)
  {
    if (v3 <= 2)
    {
      if (v3 == 1)
      {
        v5 = [(MPModelGenericObject *)self song];
        v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];
      }

      else
      {
        if (v3 != 2)
        {
          goto LABEL_20;
        }

        v5 = [(MPModelGenericObject *)self album];
        v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];
      }

      goto LABEL_19;
    }

    if (v3 == 3)
    {
      [(MPModelGenericObject *)self artist];
    }

    else
    {
      [(MPModelGenericObject *)self playlist];
    }

    goto LABEL_9;
  }

  if (v3 <= 6)
  {
    if (v3 == 5)
    {
      [(MPModelGenericObject *)self playlistEntry];
    }

    else
    {
      [(MPModelGenericObject *)self tvEpisode];
    }

    v5 = LABEL_9:;
    v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];
    goto LABEL_19;
  }

  if (v3 == 7)
  {
    v5 = [(MPModelGenericObject *)self season];
    v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];
  }

  else
  {
    if (v3 != 9)
    {
      goto LABEL_20;
    }

    v5 = [(MPModelGenericObject *)self movie];
    v6 = [v5 relativeModelObjectForStoreLibraryPersonalization];
  }

LABEL_19:
  v4 = v6;

LABEL_20:

  return v4;
}

- (id)personalizationScopedPropertiesForProperties:(id)a3
{
  v4 = [a3 relationships];
  v5 = [(MPModelGenericObject *)self type];
  if (v5 > 4)
  {
    if (v5 > 6)
    {
      if (v5 == 7)
      {
        v6 = [(MPModelGenericObject *)self season];
        v7 = [v4 objectForKey:@"MPModelRelationshipGenericTVSeason"];
        v8 = v7;
        if (!v7)
        {
          v8 = +[MPPropertySet emptyPropertySet];
        }
      }

      else
      {
        if (v5 != 9)
        {
          goto LABEL_36;
        }

        v6 = [(MPModelGenericObject *)self movie];
        v7 = [v4 objectForKey:@"MPModelRelationshipGenericMovie"];
        v8 = v7;
        if (!v7)
        {
          v8 = +[MPPropertySet emptyPropertySet];
        }
      }
    }

    else if (v5 == 5)
    {
      v6 = [(MPModelGenericObject *)self playlistEntry];
      v7 = [v4 objectForKey:@"MPModelRelationshipGenericPlaylistEntry"];
      v8 = v7;
      if (!v7)
      {
        v8 = +[MPPropertySet emptyPropertySet];
      }
    }

    else
    {
      v6 = [(MPModelGenericObject *)self tvEpisode];
      v7 = [v4 objectForKey:@"MPModelRelationshipGenericTVEpisode"];
      v8 = v7;
      if (!v7)
      {
        v8 = +[MPPropertySet emptyPropertySet];
      }
    }
  }

  else if (v5 > 2)
  {
    if (v5 == 3)
    {
      v6 = [(MPModelGenericObject *)self artist];
      v7 = [v4 objectForKey:@"MPModelRelationshipGenericArtist"];
      v8 = v7;
      if (!v7)
      {
        v8 = +[MPPropertySet emptyPropertySet];
      }
    }

    else
    {
      v6 = [(MPModelGenericObject *)self playlist];
      v7 = [v4 objectForKey:@"MPModelRelationshipGenericPlaylist"];
      v8 = v7;
      if (!v7)
      {
        v8 = +[MPPropertySet emptyPropertySet];
      }
    }
  }

  else
  {
    if (v5 != 1)
    {
      if (v5 == 2)
      {
        v6 = [(MPModelGenericObject *)self album];
        v7 = [v4 objectForKey:@"MPModelRelationshipGenericAlbum"];
        v8 = v7;
        if (!v7)
        {
          v8 = +[MPPropertySet emptyPropertySet];
        }

        goto LABEL_33;
      }

LABEL_36:
      v9 = +[MPPropertySet emptyPropertySet];
      goto LABEL_37;
    }

    v6 = [(MPModelGenericObject *)self song];
    v7 = [v4 objectForKey:@"MPModelRelationshipGenericSong"];
    v8 = v7;
    if (!v7)
    {
      v8 = +[MPPropertySet emptyPropertySet];
    }
  }

LABEL_33:
  v9 = [v6 personalizationScopedPropertiesForProperties:v8];
  if (!v7)
  {

    v7 = 0;
  }

  if (!v9)
  {
    goto LABEL_36;
  }

LABEL_37:

  return v9;
}

+ (id)requiredStoreLibraryPersonalizationProperties
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v3 = +[MPPropertySet emptyPropertySet];
  v4 = +[MPModelAlbum requiredStoreLibraryPersonalizationProperties];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = v3;
  }

  v7 = v6;

  [v2 setObject:v7 forKey:@"MPModelRelationshipGenericAlbum"];
  v8 = +[MPModelArtist requiredStoreLibraryPersonalizationProperties];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v3;
  }

  v11 = v10;

  [v2 setObject:v11 forKey:@"MPModelRelationshipGenericArtist"];
  v12 = +[MPModelMovie requiredStoreLibraryPersonalizationProperties];
  v13 = v12;
  if (v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v3;
  }

  v15 = v14;

  [v2 setObject:v15 forKey:@"MPModelRelationshipGenericMovie"];
  v16 = +[MPModelPlaylistEntry requiredStoreLibraryPersonalizationProperties];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v3;
  }

  v19 = v18;

  [v2 setObject:v19 forKey:@"MPModelRelationshipGenericPlaylistEntry"];
  v20 = +[MPModelSong requiredStoreLibraryPersonalizationProperties];
  v21 = v20;
  if (v20)
  {
    v22 = v20;
  }

  else
  {
    v22 = v3;
  }

  v23 = v22;

  [v2 setObject:v23 forKey:@"MPModelRelationshipGenericSong"];
  v24 = +[MPModelTVEpisode requiredStoreLibraryPersonalizationProperties];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = v3;
  }

  v27 = v26;

  [v2 setObject:v27 forKey:@"MPModelRelationshipGenericTVEpisode"];
  v28 = +[MPModelTVSeason requiredStoreLibraryPersonalizationProperties];
  v29 = v28;
  if (v28)
  {
    v30 = v28;
  }

  else
  {
    v30 = v3;
  }

  v31 = v30;

  [v2 setObject:v31 forKey:@"MPModelRelationshipGenericTVSeason"];
  v32 = [MPPropertySet alloc];
  v33 = [(MPPropertySet *)v32 initWithProperties:MEMORY[0x1E695E0F0] relationships:v2];

  return v33;
}

@end