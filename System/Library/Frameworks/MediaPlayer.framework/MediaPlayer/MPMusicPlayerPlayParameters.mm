@interface MPMusicPlayerPlayParameters
- (BOOL)isEqual:(id)a3;
- (MPMusicPlayerPlayParameters)initWithCoder:(id)a3;
- (MPMusicPlayerPlayParameters)initWithDictionary:(NSDictionary *)dictionary;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MPMusicPlayerPlayParameters

- (void)encodeWithCoder:(id)a3
{
  dictionary = self->_dictionary;
  v5 = a3;
  [v5 encodeObject:dictionary forKey:@"MPMusicPlayerPlayParametersDictionary"];
  [v5 encodeObject:self->_itemID forKey:@"MPMusicPlayerPlayParametersItemID"];
  [v5 encodeObject:self->_identifiers forKey:@"MPMusicPlayerPlayParametersIdentifiers"];
  [v5 encodeObject:self->_itemKind forKey:@"MPMusicPlayerPlayParametersItemKind"];
  [v5 encodeBool:self->_libraryContent forKey:@"MPMusicPlayerPlayParametersIsLibraryContent"];
  [v5 encodeObject:self->_catalogID forKey:@"MPMusicPlayerPlayParametersCatalogID"];
  [v5 encodeObject:self->_libraryID forKey:@"MPMusicPlayerPlayParametersLibraryID"];
  [v5 encodeObject:self->_persistentID forKey:@"MPMusicPlayerPlayParametersMusicKitPersistentID"];
}

- (MPMusicPlayerPlayParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v22.receiver = self;
  v22.super_class = MPMusicPlayerPlayParameters;
  v5 = [(MPMusicPlayerPlayParameters *)&v22 init];
  if (v5)
  {
    v6 = [v4 decodePropertyListForKey:@"MPMusicPlayerPlayParametersDictionary"];
    if (_NSIsNSDictionary())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v5->_dictionary, v8);
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersItemID"];
    itemID = v5->_itemID;
    v5->_itemID = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersIdentifiers"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersItemKind"];
    itemKind = v5->_itemKind;
    v5->_itemKind = v13;

    v5->_libraryContent = [v4 decodeBoolForKey:@"MPMusicPlayerPlayParametersIsLibraryContent"];
    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersCatalogID"];
    catalogID = v5->_catalogID;
    v5->_catalogID = v15;

    v17 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersLibraryID"];
    libraryID = v5->_libraryID;
    v5->_libraryID = v17;

    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPMusicPlayerPlayParametersMusicKitPersistentID"];
    persistentID = v5->_persistentID;
    v5->_persistentID = v19;
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = v5[2];
    v7 = self->_dictionary;
    v8 = v7;
    if (v7 == v6)
    {
      v9 = 1;
    }

    else
    {
      v9 = [(NSDictionary *)v7 isEqual:v6];
    }

    v11 = v5[3];
    v12 = self->_identifiers;
    v13 = v12;
    if (v12 == v11)
    {
      v14 = 1;
    }

    else
    {
      v14 = [(MPIdentifierSet *)v12 isEqual:v11];
    }

    v15 = v5[4];
    v16 = self->_itemKind;
    v17 = v16;
    if (v16 == v15)
    {
      v18 = 1;
    }

    else
    {
      v18 = [(NSString *)v16 isEqual:v15];
    }

    if (self->_libraryContent == *(v5 + 8))
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v10 = v9 & v14 & v19;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = MSVHasherSharedSeed();
  v5 = v4;
  v6 = v3 ^ 0x736F6D6570736575;
  v7 = v4 ^ 0x646F72616E646F6DLL;
  v8 = v3 ^ 0x6C7967656E657261;
  v9 = [(NSDictionary *)self->_dictionary hash];
  v10 = v5 ^ 0x7465646279746573 ^ v9;
  v11 = (v6 + v7) ^ __ROR8__(v7, 51);
  v12 = v8 + v10;
  v13 = (v8 + v10) ^ __ROR8__(v10, 48);
  v14 = v13 + __ROR8__(v6 + v7, 32);
  v66 = __ROR8__(v12 + v11, 32);
  v69 = v14 ^ __ROR8__(v13, 43);
  v15 = v14 ^ v9;
  v63 = (v12 + v11) ^ __ROR8__(v11, 47);
  v16 = self->_identifiers;
  v17 = [(MPIdentifierSet *)v16 hash];
  v18 = (v15 + v63) ^ __ROR8__(v63, 51);
  v19 = v66 + (v69 ^ v17);
  v20 = __ROR8__(v69 ^ v17, 48);
  v21 = (v19 ^ v20) + __ROR8__(v15 + v63, 32);
  v22 = v21 ^ __ROR8__(v19 ^ v20, 43);
  v23 = v19 + v18;
  v67 = __ROR8__(v23, 32);
  v70 = v22;
  v61 = v21 ^ v17;
  v64 = v23 ^ __ROR8__(v18, 47);

  v24 = self->_itemKind;
  data = [(NSString *)v24 hash];
  v25 = (v61 + v64) ^ __ROR8__(v64, 51);
  v26 = v67 + (v70 ^ data);
  v27 = __ROR8__(v70 ^ data, 48);
  v28 = (v26 ^ v27) + __ROR8__(v61 + v64, 32);
  v29 = v28 ^ __ROR8__(v26 ^ v27, 43);
  v30 = v26 + v25;
  v68 = __ROR8__(v30, 32);
  v71 = v29;
  v62 = v28 ^ data;
  v65 = v30 ^ __ROR8__(v25, 47);

  v31 = self->_libraryContent | 0x1C00000000000000;
  v32 = (v62 + v65) ^ __ROR8__(v65, 51);
  v33 = v68 + (v71 ^ v31);
  v34 = __ROR8__(v71 ^ v31, 48);
  v35 = (v33 ^ v34) + __ROR8__(v62 + v65, 32);
  v36 = v35 ^ __ROR8__(v33 ^ v34, 43);
  v37 = v33 + v32;
  v38 = v37 ^ __ROR8__(v32, 47);
  v39 = (v35 ^ v31) + v38;
  v40 = v39 ^ __ROR8__(v38, 51);
  v41 = (__ROR8__(v37, 32) ^ 0xFFLL) + v36;
  v42 = __ROR8__(v36, 48);
  v43 = __ROR8__(v39, 32) + (v41 ^ v42);
  v44 = v43 ^ __ROR8__(v41 ^ v42, 43);
  v45 = v40 + v41;
  v46 = v45 ^ __ROR8__(v40, 47);
  v47 = v46 + v43;
  v48 = v47 ^ __ROR8__(v46, 51);
  v49 = __ROR8__(v45, 32) + v44;
  v50 = __ROR8__(v44, 48);
  v51 = __ROR8__(v47, 32) + (v49 ^ v50);
  v52 = v51 ^ __ROR8__(v49 ^ v50, 43);
  v53 = v48 + v49;
  v54 = v53 ^ __ROR8__(v48, 47);
  v55 = v54 + v51;
  v56 = v55 ^ __ROR8__(v54, 51);
  v57 = __ROR8__(v53, 32) + v52;
  v58 = __ROR8__(v52, 48);
  v59 = __ROR8__(v55, 32) + (v57 ^ v58);
  return (v56 + v57) ^ __ROR8__(v56, 47) ^ v59 ^ __ROR8__(v56 + v57, 32) ^ v59 ^ __ROR8__(v57 ^ v58, 43);
}

- (MPMusicPlayerPlayParameters)initWithDictionary:(NSDictionary *)dictionary
{
  v4 = dictionary;
  v62.receiver = self;
  v62.super_class = MPMusicPlayerPlayParameters;
  v5 = [(MPMusicPlayerPlayParameters *)&v62 init];
  if (v5)
  {
    v53 = [(NSDictionary *)v4 objectForKey:@"id"];
    if (_NSIsNSString())
    {
      v6 = v53;
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        v7 = 0;
LABEL_8:
        if (![v7 length])
        {

          v7 = 0;
        }

        v8 = [v7 copy];
        itemID = v5->_itemID;
        v5->_itemID = v8;

        v51 = [(NSDictionary *)v4 objectForKey:@"kind"];
        if (_NSIsNSString())
        {
          obj = v51;
        }

        else
        {
          obj = 0;
        }

        v52 = [(NSDictionary *)v4 objectForKey:@"isLibrary"];
        if (objc_opt_respondsToSelector())
        {
          LODWORD(v10) = [v52 BOOLValue];
        }

        else
        {
          LODWORD(v10) = 0;
        }

        v11 = [(NSDictionary *)v4 objectForKey:@"catalogId"];
        if (_NSIsNSString())
        {
          v12 = v11;
        }

        else
        {
          if ((objc_opt_respondsToSelector() & 1) == 0)
          {
            v13 = 0;
LABEL_22:
            if (![v13 length])
            {

              v13 = 0;
            }

            v14 = [(NSDictionary *)v4 objectForKey:@"musicKit_libraryID"];
            if (_NSIsNSString())
            {
              v15 = v14;
            }

            else
            {
              if ((objc_opt_respondsToSelector() & 1) == 0)
              {
                v16 = 0;
LABEL_30:
                if (![v16 length])
                {

                  v16 = 0;
                }

                v17 = [(NSDictionary *)v4 objectForKey:@"musicKit_persistentID"];
                v49 = v17;
                if (_NSIsNSString())
                {
                  v18 = v17;
                }

                else
                {
                  v18 = 0;
                }

                if (![v18 length])
                {

                  v18 = 0;
                }

                v48 = v14;
                if (!v7 || !obj)
                {
                  v19 = v16;
                  v20 = v13;
                  v21 = os_log_create("com.apple.amp.mediaplayer", "SDKPlayback");
                  v50 = v21;
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_DEFAULT, "[MPMusicPlayerPlayParameters initWithDictionary:] id or kind missing from playParams dictionary. Returning nil.", buf, 2u);
                  }

                  v22 = v5;
                  v5 = 0;
                  goto LABEL_59;
                }

                if ([v7 isEqual:v18])
                {
                  v50 = 0;
                }

                else
                {
                  if (v10)
                  {
                    v23 = v7;
                  }

                  else
                  {
                    v23 = v16;
                  }

                  v50 = v23;
                }

                v46 = v11;
                v47 = v13;
                v45 = v16;
                if (([obj isEqualToString:@"song"] & 1) != 0 || (objc_msgSend(obj, "isEqualToString:", @"musicVideo") & 1) != 0 || (objc_msgSend(obj, "isEqualToString:", @"uploadedAudio") & 1) != 0 || objc_msgSend(obj, "isEqualToString:", @"uploadedVideo"))
                {
                  v24 = MPModelSongKind;
                }

                else if ([obj isEqualToString:@"tvEpisode"])
                {
                  v24 = MPModelTVEpisodeKind;
                }

                else if ([obj isEqualToString:@"movie"])
                {
                  v24 = MPModelMovieKind;
                }

                else if ([obj isEqualToString:@"album"])
                {
                  v24 = MPModelAlbumKind;
                }

                else
                {
                  if ([obj isEqualToString:@"playlist"])
                  {
                    v44 = +[MPModelPlaylistKind identityKind];
                    v26 = v13;
                    v22 = v44;
                    v29 = 0;
                    v28 = 0;
                    if (!v10)
                    {
                      v26 = v7;
                    }

                    v27 = v26;
                    goto LABEL_56;
                  }

                  if (![obj isEqualToString:@"_playlistEntry"])
                  {
                    if (![obj isEqualToString:@"radioStation"])
                    {
                      v28 = 0;
                      v27 = 0;
                      v29 = 0;
                      v22 = 0;
LABEL_58:
                      objc_storeStrong(&v5->_itemKind, obj);
                      v5->_libraryContent = v10;
                      v19 = v45;
                      v35 = [v45 copy];
                      libraryID = v5->_libraryID;
                      v5->_libraryID = v35;

                      v20 = v47;
                      v37 = [v47 copy];
                      catalogID = v5->_catalogID;
                      v5->_catalogID = v37;

                      v39 = [v18 copy];
                      persistentID = v5->_persistentID;
                      v5->_persistentID = v39;

                      v41 = [(NSDictionary *)v4 copy];
                      v42 = v5->_dictionary;
                      v5->_dictionary = v41;

                      v11 = v46;
LABEL_59:

                      goto LABEL_60;
                    }

                    v22 = +[MPModelRadioStationKind identityKind];
                    v29 = 0;
                    v27 = 0;
                    v26 = v47;
                    if (!v10)
                    {
                      v26 = v7;
                    }

                    v28 = v26;
LABEL_56:
                    v30 = v26;
                    if (v22)
                    {
                      v31 = v10;
                      v10 = [MPIdentifierSet alloc];
                      v56[0] = MEMORY[0x1E69E9820];
                      v56[1] = 3221225472;
                      v56[2] = __50__MPMusicPlayerPlayParameters_initWithDictionary___block_invoke;
                      v56[3] = &unk_1E7680C28;
                      v29 = v29;
                      v57 = v29;
                      v27 = v27;
                      v58 = v27;
                      v59 = v50;
                      v60 = v18;
                      v28 = v28;
                      v61 = v28;
                      v32 = v10;
                      LOBYTE(v10) = v31;
                      v33 = [(MPIdentifierSet *)v32 initWithSource:@"MusicPlayerPlayParams" modelKind:v22 block:v56];
                      identifiers = v5->_identifiers;
                      v5->_identifiers = v33;
                    }

                    goto LABEL_58;
                  }

                  v24 = MPModelPlaylistEntryKind;
                }

                v25 = [(__objc2_class *)v24 identityKind];
                v26 = v13;
                v22 = v25;
                v27 = 0;
                v28 = 0;
                if (!v10)
                {
                  v26 = v7;
                }

                v29 = v26;
                goto LABEL_56;
              }

              v15 = [v14 stringValue];
            }

            v16 = v15;
            goto LABEL_30;
          }

          v12 = [v11 stringValue];
        }

        v13 = v12;
        goto LABEL_22;
      }

      v6 = [v53 stringValue];
    }

    v7 = v6;
    goto LABEL_8;
  }

LABEL_60:

  return v5;
}

void __50__MPMusicPlayerPlayParameters_initWithDictionary___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  if (v4 || *(a1 + 40) || *(a1 + 48))
  {
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __50__MPMusicPlayerPlayParameters_initWithDictionary___block_invoke_2;
    v12[3] = &unk_1E7680BD8;
    v13 = v4;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    [v3 setUniversalStoreIdentifiersWithBlock:v12];
  }

  if (*(a1 + 56))
  {
    v5 = +[MPMediaLibrary deviceMediaLibrary];
    v6 = [v5 uniqueIdentifier];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __50__MPMusicPlayerPlayParameters_initWithDictionary___block_invoke_3;
    v10[3] = &unk_1E7680B00;
    v11 = *(a1 + 56);
    [v3 setLibraryIdentifiersWithDatabaseID:v6 block:v10];
  }

  v7 = *(a1 + 64);
  if (v7)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __50__MPMusicPlayerPlayParameters_initWithDictionary___block_invoke_4;
    v8[3] = &unk_1E7680C00;
    v9 = v7;
    [v3 setRadioIdentifiersWithBlock:v8];
  }
}

void __50__MPMusicPlayerPlayParameters_initWithDictionary___block_invoke_2(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[4];
  v6 = v3;
  if (v4)
  {
    [v3 setSubscriptionAdamID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v4)];
  }

  if (a1[5])
  {
    [v6 setGlobalPlaylistID:?];
  }

  v5 = v6;
  if (a1[6])
  {
    [v6 setUniversalCloudLibraryID:?];
    v5 = v6;
  }
}

void __50__MPMusicPlayerPlayParameters_initWithDictionary___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 setPersistentID:MPStoreItemMetadataInt64NormalizeStoreIDValue(v2)];
}

@end