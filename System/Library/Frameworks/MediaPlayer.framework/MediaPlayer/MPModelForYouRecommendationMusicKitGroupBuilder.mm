@interface MPModelForYouRecommendationMusicKitGroupBuilder
+ (id)allSupportedGroupProperties;
- (MPModelForYouRecommendationMusicKitGroupBuilder)initWithRequestedGroupPropertySet:(id)set requestedItemPropertySet:(id)propertySet storeItemMetadataResults:(id)results flatSectionedItems:(id)items storeURLBag:(id)bag isListenNow:(BOOL)now;
- (id)modelObjectForItemsArray:(id)array userIdentity:(id)identity;
- (id)modelObjectForRecentlyPlayedArray:(id)array userIdentity:(id)identity;
- (id)modelObjectForRecommendationDictionary:(id)dictionary userIdentity:(id)identity;
- (void)initializeRequestedGroupProperties;
@end

@implementation MPModelForYouRecommendationMusicKitGroupBuilder

- (id)modelObjectForRecommendationDictionary:(id)dictionary userIdentity:(id)identity
{
  v29 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  identityCopy = identity;
  if ((*&self->_requestedGroupProperties & 1) == 0)
  {
    [(MPModelForYouRecommendationMusicKitGroupBuilder *)self initializeRequestedGroupProperties];
  }

  v8 = [dictionaryCopy objectForKey:@"id"];
  if (_NSIsNSString())
  {
    v9 = v8;
    if ([v9 length])
    {
      v10 = [MPIdentifierSet alloc];
      v11 = +[MPModelForYouRecommendationGroupKind identityKind];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __103__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke;
      v24[3] = &unk_1E767EE00;
      v12 = identityCopy;
      v25 = v12;
      v26 = v9;
      v13 = [(MPIdentifierSet *)v10 initWithSource:@"ForYou" modelKind:v11 block:v24];

      v14 = [MPModelForYouRecommendationGroup alloc];
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 3221225472;
      v21[2] = __103__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke_3;
      v21[3] = &unk_1E767CFD8;
      v21[4] = self;
      v22 = dictionaryCopy;
      v23 = v12;
      v15 = [(MPModelObject *)v14 initWithIdentifiers:v13 block:v21];
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  title = [(MPModelForYouRecommendationGroup *)v15 title];

  if (title)
  {
    if ([(MPModelForYouRecommendationGroup *)v15 groupType]== 4 || [(MPModelForYouRecommendationGroup *)v15 numberOfItems])
    {
      v17 = v15;
      goto LABEL_19;
    }

    v18 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = dictionaryCopy;
      v19 = "Dropping empty node: %{public}@";
      goto LABEL_17;
    }
  }

  else
  {
    v18 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v28 = dictionaryCopy;
      v19 = "Dropping node without title: %{public}@";
LABEL_17:
      _os_log_impl(&dword_1A238D000, v18, OS_LOG_TYPE_ERROR, v19, buf, 0xCu);
    }
  }

  v17 = 0;
LABEL_19:

  return v17;
}

void __103__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 accountDSID];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __103__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke_2;
  v6[3] = &unk_1E767FA78;
  v7 = *(a1 + 40);
  [v4 setPersonalStoreIdentifiersWithPersonID:v5 block:v6];
}

void __103__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForRecommendationDictionary_userIdentity___block_invoke_3(uint64_t a1, void *a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v94 = a2;
  v3 = *(*(a1 + 32) + 8);
  if ((v3 & 2) == 0)
  {
    if ((v3 & 8) == 0)
    {
      goto LABEL_3;
    }

    goto LABEL_23;
  }

  v4 = [*(a1 + 40) objectForKey:@"attributes"];
  if (!_NSIsNSDictionary())
  {
    v7 = 0;
    goto LABEL_22;
  }

  v5 = [v4 objectForKey:@"display"];
  if (_NSIsNSDictionary())
  {
    v6 = [v5 objectForKey:@"kind"];
    if (_NSIsNSString())
    {
      if ([v6 isEqualToString:@"MusicNotesHeroShelf"])
      {
        v7 = 11;
LABEL_20:

        goto LABEL_21;
      }

      if ([v6 isEqualToString:@"MusicSuperHeroShelf"])
      {
        v7 = 12;
        goto LABEL_20;
      }

      if ([v6 isEqualToString:@"MusicCoverShelf"])
      {
        v8 = [v4 objectForKey:@"kind"];
        if (_NSIsNSString() && ([v8 isEqualToString:@"recently-played"] & 1) != 0)
        {
          v7 = 4;
        }

        else
        {
          v7 = 14;
        }

        goto LABEL_20;
      }
    }

    v7 = 0;
    goto LABEL_20;
  }

  v7 = 0;
LABEL_21:

LABEL_22:
  [v94 setGroupType:v7];

  v3 = *(*(a1 + 32) + 8);
  if ((v3 & 8) == 0)
  {
LABEL_3:
    if ((v3 & 0x20) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_42;
  }

LABEL_23:
  v9 = [*(a1 + 40) objectForKey:@"attributes"];
  v10 = [v9 objectForKey:@"title"];

  if (_NSIsNSDictionary())
  {
    v11 = v10;
    v12 = [v11 objectForKey:@"stringForDisplay"];
    if (_NSIsNSString())
    {
      v13 = v12;

      if (v13)
      {
        goto LABEL_41;
      }
    }

    else
    {
    }
  }

  v14 = [*(a1 + 40) objectForKey:@"name"];
  if (!v14)
  {
    v15 = [*(a1 + 40) objectForKey:@"attributes"];
    v14 = [v15 objectForKey:@"name"];
  }

  if (_NSIsNSString())
  {
    v13 = v14;

    if (v13)
    {
      goto LABEL_41;
    }
  }

  else
  {
  }

  v16 = [*(a1 + 40) objectForKey:@"attributes"];
  v17 = [v16 objectForKey:@"reason"];

  if (_NSIsNSDictionary())
  {
    v18 = v17;
    v19 = [v18 objectForKey:@"stringForDisplay"];
    if (_NSIsNSString())
    {
      v13 = v19;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_41:
  [v94 setTitle:v13];

  v3 = *(*(a1 + 32) + 8);
  if ((v3 & 0x20) == 0)
  {
LABEL_4:
    if ((v3 & 0x40) == 0)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

LABEL_42:
  v20 = [*(a1 + 40) objectForKey:@"relationships"];
  if (_NSIsNSDictionary())
  {
    v21 = [v20 objectForKey:@"contents"];
    if (_NSIsNSDictionary())
    {
      v22 = [v21 objectForKey:@"href"];
      if (_NSIsNSString())
      {
        v23 = MusicURLWithPathUsingURLBag(v22, *(*(a1 + 32) + 32), *(*(a1 + 32) + 40));
LABEL_55:

        goto LABEL_56;
      }

      v26 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v27 = *(a1 + 40);
        *buf = 138543362;
        v116 = v27;
        _os_log_impl(&dword_1A238D000, v26, OS_LOG_TYPE_ERROR, "Property href of contents dictionary not found for recommendation item: %{public}@", buf, 0xCu);
      }
    }

    else
    {
      v22 = os_log_create("com.apple.amp.mediaplayer", "Default");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v25 = *(a1 + 40);
        *buf = 138543362;
        v116 = v25;
        _os_log_impl(&dword_1A238D000, v22, OS_LOG_TYPE_ERROR, "Contents dictionary not found on relationships of recommendation item: %{public}@", buf, 0xCu);
      }
    }

    v23 = 0;
    goto LABEL_55;
  }

  v21 = os_log_create("com.apple.amp.mediaplayer", "Default");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v24 = *(a1 + 40);
    *buf = 138543362;
    v116 = v24;
    _os_log_impl(&dword_1A238D000, v21, OS_LOG_TYPE_ERROR, "Relationships dictionary not found on recommendation item: %{public}@", buf, 0xCu);
  }

  v23 = 0;
LABEL_56:

  [v94 setLoadAdditionalContentURL:v23];
  if ((*(*(a1 + 32) + 8) & 0x40) == 0)
  {
    goto LABEL_63;
  }

LABEL_57:
  v28 = [*(a1 + 40) objectForKey:@"href"];
  if (_NSIsNSString())
  {
    v29 = MusicURLWithPathUsingURLBag(v28, *(*(a1 + 32) + 32), *(*(a1 + 32) + 40));
  }

  else
  {
    v30 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v31 = *(a1 + 40);
      *buf = 138543362;
      v116 = v31;
      _os_log_impl(&dword_1A238D000, v30, OS_LOG_TYPE_ERROR, "Property href not found for recommendation item: %{public}@", buf, 0xCu);
    }

    v29 = 0;
  }

  [v94 setHrefURL:v29];

LABEL_63:
  v32 = [*(a1 + 40) objectForKey:@"attributes"];
  v33 = [v32 objectForKey:@"isGroupRecommendation"];

  if (objc_opt_respondsToSelector())
  {
    [v94 setGroupRecommendation:{objc_msgSend(v33, "BOOLValue")}];
  }

  v34 = *(*(a1 + 32) + 8);
  if ((v34 & 0x100) == 0)
  {
    if ((*(*(a1 + 32) + 8) & 0x800) == 0)
    {
      goto LABEL_67;
    }

    goto LABEL_88;
  }

  v35 = [*(a1 + 40) objectForKey:@"attributes"];
  v36 = [v35 objectForKey:@"traits"];

  if (!_NSIsNSArray())
  {
    v37 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v45 = *(a1 + 40);
      *buf = 138543362;
      v116 = v45;
      _os_log_impl(&dword_1A238D000, v37, OS_LOG_TYPE_ERROR, "No traits array found in attributes of recommendation item: %{public}@", buf, 0xCu);
    }

    goto LABEL_86;
  }

  v109 = 0u;
  v110 = 0u;
  v107 = 0u;
  v108 = 0u;
  v37 = v36;
  v38 = [v37 countByEnumeratingWithState:&v107 objects:v114 count:16];
  if (!v38)
  {
LABEL_86:
    v40 = 0;
    goto LABEL_87;
  }

  v39 = v38;
  v40 = 0;
  v41 = *v108;
  do
  {
    for (i = 0; i != v39; ++i)
    {
      if (*v108 != v41)
      {
        objc_enumerationMutation(v37);
      }

      v43 = *(*(&v107 + 1) + 8 * i);
      if (_NSIsNSString())
      {
        v44 = [&unk_1F150ACD8 objectForKeyedSubscript:v43];
        v40 |= [v44 unsignedIntegerValue];
      }

      else
      {
        v44 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v116 = v37;
          _os_log_impl(&dword_1A238D000, v44, OS_LOG_TYPE_ERROR, "Unexpected trait type %{public}@", buf, 0xCu);
        }
      }
    }

    v39 = [v37 countByEnumeratingWithState:&v107 objects:v114 count:16];
  }

  while (v39);
LABEL_87:

  [v94 setTraits:v40];
  v34 = *(*(a1 + 32) + 8);
  if ((v34 & 0x800) == 0)
  {
LABEL_67:
    if ((v34 & 0x200) == 0)
    {
      goto LABEL_68;
    }

    goto LABEL_105;
  }

LABEL_88:
  v46 = [*(a1 + 40) objectForKey:@"attributes"];
  v47 = [v46 objectForKey:@"display"];
  v48 = [v47 objectForKey:@"decorations"];

  if (!_NSIsNSArray())
  {
    v49 = os_log_create("com.apple.amp.mediaplayer", "Default");
    if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
    {
      v57 = *(a1 + 40);
      *buf = 138543362;
      v116 = v57;
      _os_log_impl(&dword_1A238D000, v49, OS_LOG_TYPE_ERROR, "No traits array found in attributes of recommendation item: %{public}@", buf, 0xCu);
    }

    goto LABEL_103;
  }

  v105 = 0u;
  v106 = 0u;
  v103 = 0u;
  v104 = 0u;
  v49 = v48;
  v50 = [v49 countByEnumeratingWithState:&v103 objects:v113 count:16];
  if (!v50)
  {
LABEL_103:
    v52 = 0;
    goto LABEL_104;
  }

  v51 = v50;
  v92 = v48;
  v52 = 0;
  v53 = *v104;
  do
  {
    for (j = 0; j != v51; ++j)
    {
      if (*v104 != v53)
      {
        objc_enumerationMutation(v49);
      }

      v55 = *(*(&v103 + 1) + 8 * j);
      if (_NSIsNSString())
      {
        v56 = [&unk_1F150AD00 objectForKeyedSubscript:v55];
        v52 |= [v56 unsignedIntegerValue];
      }

      else
      {
        v56 = os_log_create("com.apple.amp.mediaplayer", "Default");
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v116 = v49;
          _os_log_impl(&dword_1A238D000, v56, OS_LOG_TYPE_ERROR, "Unexpected trait type %{public}@", buf, 0xCu);
        }
      }
    }

    v51 = [v49 countByEnumeratingWithState:&v103 objects:v113 count:16];
  }

  while (v51);
  v48 = v92;
LABEL_104:

  [v94 setDecorations:v52];
  v34 = *(*(a1 + 32) + 8);
  if ((v34 & 0x200) == 0)
  {
LABEL_68:
    if ((v34 & 0x400) == 0)
    {
      goto LABEL_69;
    }

    goto LABEL_108;
  }

LABEL_105:
  [v94 setDisplaysAsGridCellInCarPlay:0];
  v58 = [*(a1 + 40) objectForKey:@"attributes"];
  v59 = [v58 objectForKey:@"emphasize"];

  if (objc_opt_respondsToSelector())
  {
    [v94 setDisplaysAsGridCellInCarPlay:{objc_msgSend(v59, "BOOLValue")}];
  }

  v34 = *(*(a1 + 32) + 8);
  if ((v34 & 0x400) == 0)
  {
LABEL_69:
    if ((v34 & 4) == 0)
    {
      goto LABEL_115;
    }

    goto LABEL_111;
  }

LABEL_108:
  [v94 setDisplaysAsTitledSectionWithRowsInCarPlay:0];
  v60 = [*(a1 + 40) objectForKey:@"attributes"];
  v61 = [v60 objectForKey:@"expand"];

  if (objc_opt_respondsToSelector())
  {
    [v94 setDisplaysAsTitledSectionWithRowsInCarPlay:{objc_msgSend(v61, "BOOLValue")}];
  }

  if ((*(*(a1 + 32) + 8) & 4) != 0)
  {
LABEL_111:
    v62 = [*(a1 + 40) objectForKey:@"attributes"];
    v63 = [v62 objectForKey:@"lastModifiedDate"];

    if (_NSIsNSString())
    {
      v64 = v63;
      v65 = [*(*(a1 + 32) + 24) dateFromString:v64];
    }

    else
    {
      v65 = 0;
    }

    [v94 setLastUpdatedDate:v65];
  }

LABEL_115:
  v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if ((*(*(a1 + 32) + 8) & 0x10) != 0)
  {
    v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
  }

  else
  {
    v67 = 0;
  }

  v68 = [*(a1 + 40) objectForKey:@"relationships"];
  v69 = [v68 objectForKey:@"contents"];
  v70 = [v69 objectForKey:@"data"];

  if (!v70)
  {
    v71 = [*(a1 + 40) objectForKey:@"relationships"];
    v72 = [v71 objectForKey:@"recommendations"];
    v70 = [v72 objectForKey:@"data"];
  }

  if (_NSIsNSArray())
  {
    v93 = v33;
    v99 = 0u;
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v73 = v70;
    v74 = [v73 countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v74)
    {
      v75 = v74;
      v76 = *v100;
      do
      {
        for (k = 0; k != v75; ++k)
        {
          if (*v100 != v76)
          {
            objc_enumerationMutation(v73);
          }

          v78 = *(*(&v99 + 1) + 8 * k);
          if (_NSIsNSDictionary())
          {
            v79 = v78;
            v80 = *(a1 + 32);
            if ((*(v80 + 8) & 0x10) != 0)
            {
              v81 = v94;
            }

            else
            {
              v81 = 0;
            }

            if ((*(v80 + 8) & 0x10) != 0)
            {
              v82 = v67;
            }

            else
            {
              v82 = 0;
            }

            v83 = [*(v80 + 16) modelObjectForRecommendationChildDictionary:v79 parentGroup:v81 subgroupsAccumulator:v82 userIdentity:*(a1 + 48)];
            if (v83)
            {
              [v66 addObject:v83];
            }
          }
        }

        v75 = [v73 countByEnumeratingWithState:&v99 objects:v112 count:16];
      }

      while (v75);
    }

    v33 = v93;
  }

  v84 = *(a1 + 32);
  if ((*(v84 + 8) & 0x10) != 0)
  {
    [v94 setSubgroups:v67];
    v84 = *(a1 + 32);
  }

  [v94 setSectionIndex:{objc_msgSend(*(v84 + 72), "numberOfSections")}];
  [v94 setSectionedItems:*(*(a1 + 32) + 72)];
  v85 = *(*(a1 + 32) + 72);
  v86 = [MEMORY[0x1E695DFB0] null];
  [v85 appendSection:v86];

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  v87 = v66;
  v88 = [v87 countByEnumeratingWithState:&v95 objects:v111 count:16];
  if (v88)
  {
    v89 = v88;
    v90 = *v96;
    do
    {
      for (m = 0; m != v89; ++m)
      {
        if (*v96 != v90)
        {
          objc_enumerationMutation(v87);
        }

        [*(*(a1 + 32) + 72) appendItem:*(*(&v95 + 1) + 8 * m)];
      }

      v89 = [v87 countByEnumeratingWithState:&v95 objects:v111 count:16];
    }

    while (v89);
  }
}

- (id)modelObjectForItemsArray:(id)array userIdentity:(id)identity
{
  arrayCopy = array;
  identityCopy = identity;
  if ((*&self->_requestedGroupProperties & 1) == 0)
  {
    [(MPModelForYouRecommendationMusicKitGroupBuilder *)self initializeRequestedGroupProperties];
  }

  v8 = [MPModelForYouRecommendationGroup alloc];
  v9 = +[MPIdentifierSet emptyIdentifierSet];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __89__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForItemsArray_userIdentity___block_invoke;
  v14[3] = &unk_1E767CFD8;
  v14[4] = self;
  v15 = arrayCopy;
  v16 = identityCopy;
  v10 = identityCopy;
  v11 = arrayCopy;
  v12 = [(MPModelObject *)v8 initWithIdentifiers:v9 block:v14];

  return v12;
}

void __89__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForItemsArray_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v24 = objc_opt_new();
  if ((*(*(a1 + 32) + 8) & 0x10) != 0)
  {
    v4 = objc_opt_new();
  }

  else
  {
    v4 = 0;
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = *(a1 + 40);
  v6 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v26;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v26 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v25 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v11 = v10;
          v12 = *(a1 + 32);
          v13 = *(v12 + 16);
          v14 = *(v12 + 8);
          if ((v14 & 0x10) != 0)
          {
            v15 = v3;
          }

          else
          {
            v15 = 0;
          }

          if ((v14 & 0x10) != 0)
          {
            v16 = v4;
          }

          else
          {
            v16 = 0;
          }

          v17 = [v13 modelObjectForRecommendationChildDictionary:v11 parentGroup:v15 subgroupsAccumulator:v16 userIdentity:*(a1 + 48)];
          if (v17)
          {
            [v24 addObject:v17];
          }

          else
          {
            v18 = v3;
            v19 = os_log_create("com.apple.amp.mediaplayer", "Default");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v30 = v11;
              _os_log_impl(&dword_1A238D000, v19, OS_LOG_TYPE_ERROR, "Recommendation item modeling failure: %{public}@", buf, 0xCu);
            }

            v3 = v18;
          }
        }

        else
        {
          v11 = os_log_create("com.apple.amp.mediaplayer", "Default");
          if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v30 = v10;
            _os_log_impl(&dword_1A238D000, v11, OS_LOG_TYPE_ERROR, "Recommendation item should be a dictionary: %{public}@", buf, 0xCu);
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v25 objects:v31 count:16];
    }

    while (v7);
  }

  v20 = *(a1 + 32);
  if ((*(v20 + 8) & 0x10) != 0)
  {
    [v3 setSubgroups:v4];
    v20 = *(a1 + 32);
  }

  [v3 setSectionIndex:{objc_msgSend(*(v20 + 72), "numberOfSections")}];
  [v3 setSectionedItems:*(*(a1 + 32) + 72)];
  v21 = v3;
  v22 = *(*(a1 + 32) + 72);
  v23 = [MEMORY[0x1E695DFB0] null];
  [v22 appendSection:v23];

  [*(*(a1 + 32) + 72) appendItems:v24];
}

- (id)modelObjectForRecentlyPlayedArray:(id)array userIdentity:(id)identity
{
  arrayCopy = array;
  identityCopy = identity;
  if ((*&self->_requestedGroupProperties & 1) == 0)
  {
    [(MPModelForYouRecommendationMusicKitGroupBuilder *)self initializeRequestedGroupProperties];
  }

  v8 = [MPModelForYouRecommendationGroup alloc];
  v9 = +[MPIdentifierSet emptyIdentifierSet];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __98__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForRecentlyPlayedArray_userIdentity___block_invoke;
  v14[3] = &unk_1E767CFD8;
  v14[4] = self;
  v15 = arrayCopy;
  v16 = identityCopy;
  v10 = identityCopy;
  v11 = arrayCopy;
  v12 = [(MPModelObject *)v8 initWithIdentifiers:v9 block:v14];

  return v12;
}

void __98__MPModelForYouRecommendationMusicKitGroupBuilder_modelObjectForRecentlyPlayedArray_userIdentity___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if ((*(*(a1 + 32) + 8) & 2) != 0)
  {
    [v3 setGroupType:4];
  }

  [v4 setTitle:@"RECENTLY_PLAYED_VIEW_TITLE"];
  v5 = MusicURLWithPathUsingURLBag(@"/v1/me/recent/played", *(*(a1 + 32) + 32), *(*(a1 + 32) + 40));
  [v4 setLoadAdditionalContentURL:v5];

  v6 = objc_opt_new();
  if ((*(*(a1 + 32) + 8) & 0x10) != 0)
  {
    v7 = objc_opt_new();
  }

  else
  {
    v7 = 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = *(a1 + 40);
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v24 + 1) + 8 * i);
        if (_NSIsNSDictionary())
        {
          v14 = *(a1 + 32);
          v15 = *(v14 + 16);
          v16 = *(v14 + 8);
          if ((v16 & 0x10) != 0)
          {
            v17 = v4;
          }

          else
          {
            v17 = 0;
          }

          if ((v16 & 0x10) != 0)
          {
            v18 = v7;
          }

          else
          {
            v18 = 0;
          }

          v19 = [v15 modelObjectForRecommendationChildDictionary:v13 parentGroup:v17 subgroupsAccumulator:v18 userIdentity:{*(a1 + 48), v24}];
          if (v19)
          {
            [v6 addObject:v19];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  v20 = *(a1 + 32);
  v21 = *(v20 + 8);
  if ((v21 & 0x10) != 0)
  {
    [v4 setSubgroups:v7];
    v20 = *(a1 + 32);
    v21 = *(v20 + 8);
  }

  if ((v21 & 0x200) != 0)
  {
    [v4 setDisplaysAsGridCellInCarPlay:1];
    v20 = *(a1 + 32);
  }

  [v4 setSectionIndex:{objc_msgSend(*(v20 + 72), "numberOfSections", v24)}];
  [v4 setSectionedItems:*(*(a1 + 32) + 72)];
  v22 = *(*(a1 + 32) + 72);
  v23 = [MEMORY[0x1E695DFB0] null];
  [v22 appendSection:v23];

  [*(*(a1 + 32) + 72) appendItems:v6];
}

- (void)initializeRequestedGroupProperties
{
  properties = [(MPPropertySet *)self->_requestedGroupPropertySet properties];
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyGroupType"])
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFFFD | v3;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyLastUpdatedDate"])
  {
    v4 = 4;
  }

  else
  {
    v4 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFFFB | v4;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyTitle"])
  {
    v5 = 8;
  }

  else
  {
    v5 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFFF7 | v5;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL"])
  {
    v6 = 32;
  }

  else
  {
    v6 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFFDF | v6;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyHrefURL"])
  {
    v7 = 64;
  }

  else
  {
    v7 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFFBF | v7;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyRefreshURL"])
  {
    v8 = 128;
  }

  else
  {
    v8 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFF7F | v8;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyTraits"])
  {
    v9 = 256;
  }

  else
  {
    v9 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFEFF | v9;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyDisplaysAsGridCellInCarPlay"])
  {
    v10 = 512;
  }

  else
  {
    v10 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFDFF | v10;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyDisplaysAsTitledSectionWithRowsInCarPlay"])
  {
    v11 = 1024;
  }

  else
  {
    v11 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFBFF | v11;
  if ([properties containsObject:@"MPModelForYouRecommendationGroupPropertyDecorations"])
  {
    v12 = 2048;
  }

  else
  {
    v12 = 0;
  }

  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xF7FF | v12;
  relationships = [(MPPropertySet *)self->_requestedItemPropertySet relationships];
  v14 = [relationships objectForKey:@"MPModelForYouRecommendationItemRelationshipSubgroup"];
  *&self->_requestedGroupProperties = *&self->_requestedGroupProperties & 0xFFEF | (16 * (v14 != 0));

  v15 = [[MPModelForYouRecommendationMusicKitItemBuilder alloc] initWithRequestedPropertySet:self->_requestedItemPropertySet storeItemMetadataResults:self->_storeItemMetadataResults flatSectionedItems:self->_flatSectionedItems storeURLBag:self->_storeURLBag isListenNow:self->_isListenNow];
  itemBuilder = self->_itemBuilder;
  self->_itemBuilder = v15;

  requestedGroupProperties = self->_requestedGroupProperties;
  if ((requestedGroupProperties & 4) != 0)
  {
    v18 = objc_opt_new();
    lastUpdatedDateFormatter = self->_lastUpdatedDateFormatter;
    self->_lastUpdatedDateFormatter = v18;

    v20 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
    [(NSDateFormatter *)self->_lastUpdatedDateFormatter setLocale:v20];

    v21 = [MEMORY[0x1E695DFE8] timeZoneForSecondsFromGMT:0];
    [(NSDateFormatter *)self->_lastUpdatedDateFormatter setTimeZone:v21];

    [(NSDateFormatter *)self->_lastUpdatedDateFormatter setDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'"];
    [(NSDateFormatter *)self->_lastUpdatedDateFormatter setLenient:1];
    requestedGroupProperties = self->_requestedGroupProperties;
  }

  *&self->_requestedGroupProperties = requestedGroupProperties | 1;
}

- (MPModelForYouRecommendationMusicKitGroupBuilder)initWithRequestedGroupPropertySet:(id)set requestedItemPropertySet:(id)propertySet storeItemMetadataResults:(id)results flatSectionedItems:(id)items storeURLBag:(id)bag isListenNow:(BOOL)now
{
  setCopy = set;
  propertySetCopy = propertySet;
  resultsCopy = results;
  itemsCopy = items;
  bagCopy = bag;
  v27.receiver = self;
  v27.super_class = MPModelForYouRecommendationMusicKitGroupBuilder;
  v19 = [(MPModelForYouRecommendationMusicKitGroupBuilder *)&v27 init];
  if (v19)
  {
    v20 = [setCopy copy];
    requestedGroupPropertySet = v19->_requestedGroupPropertySet;
    v19->_requestedGroupPropertySet = v20;

    v22 = [propertySetCopy copy];
    requestedItemPropertySet = v19->_requestedItemPropertySet;
    v19->_requestedItemPropertySet = v22;

    v24 = [resultsCopy copy];
    storeItemMetadataResults = v19->_storeItemMetadataResults;
    v19->_storeItemMetadataResults = v24;

    objc_storeStrong(&v19->_flatSectionedItems, items);
    objc_storeStrong(&v19->_storeURLBag, bag);
    v19->_isListenNow = now;
  }

  return v19;
}

+ (id)allSupportedGroupProperties
{
  v5[10] = *MEMORY[0x1E69E9840];
  v5[0] = @"MPModelForYouRecommendationGroupPropertyGroupType";
  v5[1] = @"MPModelForYouRecommendationGroupPropertyLastUpdatedDate";
  v5[2] = @"MPModelForYouRecommendationGroupPropertyTitle";
  v5[3] = @"MPModelForYouRecommendationGroupPropertyLoadAdditionalContentURL";
  v5[4] = @"MPModelForYouRecommendationGroupPropertyHrefURL";
  v5[5] = @"MPModelForYouRecommendationGroupPropertyRefreshURL";
  v5[6] = @"MPModelForYouRecommendationGroupPropertyTraits";
  v5[7] = @"MPModelForYouRecommendationGroupPropertyDisplaysAsGridCellInCarPlay";
  v5[8] = @"MPModelForYouRecommendationGroupPropertyDisplaysAsTitledSectionWithRowsInCarPlay";
  v5[9] = @"MPModelForYouRecommendationGroupPropertyDecorations";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v5 count:10];
  v3 = [MPPropertySet propertySetWithProperties:v2];

  return v3;
}

@end