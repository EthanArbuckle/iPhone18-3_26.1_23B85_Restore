@interface MPModelLibraryRequest
- (BOOL)isEqual:(id)a3;
- (MPMediaLibrary)mediaLibrary;
- (MPModelLibraryRequest)initWithCoder:(id)a3;
- (NSString)description;
- (_NSRange)contentRange;
- (id)copyWithZone:(_NSZone *)a3;
- (id)itemTranslationContext;
- (id)newOperationWithResponseHandler:(id)a3;
- (id)personalizationTranslationContext;
- (id)sectionTranslationContext;
- (void)encodeWithCoder:(id)a3;
- (void)performWithResponseHandler:(id)a3;
- (void)setLegacyMediaQuery:(id)a3 forTransport:(BOOL)a4;
@end

@implementation MPModelLibraryRequest

- (MPMediaLibrary)mediaLibrary
{
  mediaLibrary = self->_mediaLibrary;
  if (mediaLibrary)
  {
    v3 = mediaLibrary;
  }

  else
  {
    v4 = [MEMORY[0x1E69E4680] activeAccount];
    v3 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:v4];
  }

  return v3;
}

- (NSString)description
{
  v13.receiver = self;
  v13.super_class = MPModelLibraryRequest;
  v3 = [(MPModelRequest *)&v13 description];
  v4 = [v3 mutableCopy];

  [v4 deleteCharactersInRange:{objc_msgSend(v4, "length") - 1, 1}];
  if (self->_legacyMediaQuery)
  {
    [v4 appendFormat:@" legacyMediaQuery=%@", self->_legacyMediaQuery];
  }

  if ([(NSArray *)self->_allowedItemIdentifiers count])
  {
    v5 = [(NSArray *)self->_allowedItemIdentifiers valueForKeyPath:@"humanDescription"];
    v6 = [v5 componentsJoinedByString:{@", "}];
    [v4 appendFormat:@" allowedItemIdentifiers=[%@]", v6];
  }

  if ([(NSArray *)self->_allowedSectionIdentifiers count])
  {
    v7 = [(NSArray *)self->_allowedSectionIdentifiers valueForKeyPath:@"humanDescription"];
    v8 = [v7 componentsJoinedByString:{@", "}];
    [v4 appendFormat:@" allowedSectionIdentifiers=[%@]", v8];
  }

  if ([(NSArray *)self->_scopedContainers count])
  {
    v9 = [(NSArray *)self->_scopedContainers valueForKeyPath:@"humanDescription"];
    v10 = [v9 componentsJoinedByString:{@", "}];
    [v4 appendFormat:@" scopedContainers=[%@]", v10];
  }

  if (self->_scopedContainersPropertySet)
  {
    [v4 appendFormat:@" scopedContainerPropertySet=%@", self->_scopedContainersPropertySet];
  }

  if ([(NSString *)self->_filterText length])
  {
    [v4 appendFormat:@" filterText=%@", self->_filterText];
  }

  if (self->_sortUsingAllowedItemIdentifiers)
  {
    [v4 appendString:@" sortUsingAllowedItemIdentifiers=YES"];
  }

  if ([(NSArray *)self->_itemPropertyFilters count])
  {
    [v4 appendFormat:@" itemPropertyFilters=%@", self->_itemPropertyFilters];
  }

  if ([(NSArray *)self->_sectionPropertyFilters count])
  {
    [v4 appendFormat:@" sectionPropertyFilters=%@", self->_sectionPropertyFilters];
  }

  [v4 appendString:@">"];
  v11 = [v4 copy];

  return v11;
}

- (id)personalizationTranslationContext
{
  v2 = [(MPModelLibraryRequest *)self itemTranslationContext];
  [v2 setIdentifierSourcePrefix:@"PersonalizedRequest-"];

  return v2;
}

- (_NSRange)contentRange
{
  p_contentRange = &self->_contentRange;
  location = self->_contentRange.location;
  length = p_contentRange->length;
  result.length = length;
  result.location = location;
  return result;
}

- (id)sectionTranslationContext
{
  v3 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
  v4 = [(MPModelLibraryRequest *)self allowedSectionIdentifiers];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [(MPMediaLibraryEntityTranslationContext *)v3 setAllowedEntityIdentifiers:v7];

  v8 = [(MPModelLibraryRequest *)self sectionFilterText];
  [(MPMediaLibraryEntityTranslationContext *)v3 setFilterText:v8];

  [(MPMediaLibraryEntityTranslationContext *)v3 setFilteringOptions:[(MPModelLibraryRequest *)self filteringOptions]];
  v9 = [(MPModelLibraryRequest *)self mediaLibrary];
  [(MPMediaLibraryEntityTranslationContext *)v3 setMediaLibrary:v9];

  v10 = [(MPModelRequest *)self sectionKind];
  [(MPMediaLibraryEntityTranslationContext *)v3 setModelKind:v10];

  v11 = [(MPModelRequest *)self sectionKind];
  -[MPMediaLibraryEntityTranslationContext setMultiQuery:](v3, "setMultiQuery:", [v11 modelClass] == objc_opt_class());

  if ([MEMORY[0x1E69E4688] canAccessAccountStore])
  {
    v12 = [(MPModelLibraryRequest *)self mediaLibrary];
    v13 = [v12 userIdentity];
    v14 = [v13 accountDSID];
    [(MPMediaLibraryEntityTranslationContext *)v3 setPersonID:v14];
  }

  v15 = [(MPModelLibraryRequest *)self sectionPropertyFilters];
  [(MPMediaLibraryEntityTranslationContext *)v3 setPropertyFilters:v15];

  v16 = [(MPModelLibraryRequest *)self scopedContainers];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v6;
  }

  [(MPMediaLibraryEntityTranslationContext *)v3 setScopedContainers:v18];

  return v3;
}

- (id)itemTranslationContext
{
  v3 = objc_alloc_init(MPMediaLibraryEntityTranslationContext);
  v4 = [(MPModelLibraryRequest *)self allowedItemIdentifiers];
  v5 = v4;
  v6 = MEMORY[0x1E695E0F0];
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [(MPMediaLibraryEntityTranslationContext *)v3 setAllowedEntityIdentifiers:v7];

  v8 = [(MPModelLibraryRequest *)self filterText];
  [(MPMediaLibraryEntityTranslationContext *)v3 setFilterText:v8];

  [(MPMediaLibraryEntityTranslationContext *)v3 setFilteringOptions:[(MPModelLibraryRequest *)self filteringOptions]];
  v9 = [(MPModelLibraryRequest *)self mediaLibrary];
  [(MPMediaLibraryEntityTranslationContext *)v3 setMediaLibrary:v9];

  v10 = [(MPModelRequest *)self itemKind];
  [(MPMediaLibraryEntityTranslationContext *)v3 setModelKind:v10];

  v11 = [(MPModelRequest *)self itemKind];
  -[MPMediaLibraryEntityTranslationContext setMultiQuery:](v3, "setMultiQuery:", [v11 modelClass] == objc_opt_class());

  if ([MEMORY[0x1E69E4688] canAccessAccountStore])
  {
    v12 = [(MPModelLibraryRequest *)self mediaLibrary];
    v13 = [v12 userIdentity];
    v14 = [v13 accountDSID];
    [(MPMediaLibraryEntityTranslationContext *)v3 setPersonID:v14];
  }

  v15 = [(MPModelLibraryRequest *)self itemPropertyFilters];
  [(MPMediaLibraryEntityTranslationContext *)v3 setPropertyFilters:v15];

  v16 = [(MPModelLibraryRequest *)self scopedContainers];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v6;
  }

  [(MPMediaLibraryEntityTranslationContext *)v3 setScopedContainers:v18];

  return v3;
}

- (void)performWithResponseHandler:(id)a3
{
  v3.receiver = self;
  v3.super_class = MPModelLibraryRequest;
  [(MPModelRequest *)&v3 performWithResponseHandler:a3];
}

- (void)setLegacyMediaQuery:(id)a3 forTransport:(BOOL)a4
{
  v33[1] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (self->_legacyMediaQuery != v6)
  {
    v8 = [(MPMediaQuery *)v6 copy];
    legacyMediaQuery = self->_legacyMediaQuery;
    self->_legacyMediaQuery = v8;

    v10 = self->_legacyMediaQuery;
    if (v10)
    {
      v11 = [(MPMediaQuery *)v10 mediaLibrary];
      mediaLibrary = self->_mediaLibrary;
      self->_mediaLibrary = v11;

      if (!a4)
      {
        v13 = [(MPMediaQuery *)self->_legacyMediaQuery _representativeCollection];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([v13 playlistAttributes] & 2) != 0)
          {
            self->_isUpgradedSmartPlaylistLegacyMediaQuery = 1;
            v14 = self->_legacyMediaQuery;
            self->_legacyMediaQuery = 0;

            v15 = [MPModelPlaylist alloc];
            v16 = [MPIdentifierSet alloc];
            v17 = +[MPModelPlaylistKind identityKind];
            v27 = MEMORY[0x1E69E9820];
            v28 = 3221225472;
            v29 = __58__MPModelLibraryRequest_setLegacyMediaQuery_forTransport___block_invoke;
            v30 = &unk_1E767EE00;
            v31 = self;
            v32 = v13;
            v18 = [(MPIdentifierSet *)v16 initWithSource:@"LibraryRequest" modelKind:v17 block:&v27];
            v19 = [(MPModelObject *)v15 initWithIdentifiers:v18, v27, v28, v29, v30, v31];
            v33[0] = v19;
            v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v33 count:1];
            scopedContainers = self->_scopedContainers;
            self->_scopedContainers = v20;
          }

          v22 = +[MPModelPlaylistKind identityKind];
          [(MPModelRequest *)self setSectionKind:v22];

          v23 = +[MPModelPlaylistEntryKind identityKind];
          [(MPModelRequest *)self setItemKind:v23];
        }

        else
        {
          v24 = [v13 groupingType] - 1;
          if (v24 >= 5)
          {
            v25 = 0;
          }

          else
          {
            v25 = [(__objc2_class *)*off_1E767C0F0[v24] identityKind];
          }

          [(MPModelRequest *)self setSectionKind:v25];
          v26 = +[MPModelSongKind identityKind];
          [(MPModelRequest *)self setItemKind:v26];
        }
      }
    }
  }
}

void __58__MPModelLibraryRequest_setLegacyMediaQuery_forTransport___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(*(a1 + 32) + 72) uniqueIdentifier];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __58__MPModelLibraryRequest_setLegacyMediaQuery_forTransport___block_invoke_2;
  v5[3] = &unk_1E7680B00;
  v6 = *(a1 + 40);
  [v3 setLibraryIdentifiersWithDatabaseID:v4 block:v5];
}

void __58__MPModelLibraryRequest_setLegacyMediaQuery_forTransport___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPersistentID:{objc_msgSend(*(a1 + 32), "persistentID")}];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (([v4 isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    goto LABEL_56;
  }

  v5 = [(MPModelRequest *)self itemKind];
  v6 = [v4 itemKind];
  v7 = v5;
  v8 = v6;
  v9 = v8;
  if (v7 == v8)
  {
  }

  else
  {
    v10 = [v7 isEqual:v8];

    if ((v10 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v11 = [(MPModelRequest *)self sectionKind];
  v12 = [v4 sectionKind];
  v13 = v11;
  v14 = v12;
  v15 = v14;
  if (v13 == v14)
  {
  }

  else
  {
    v16 = [v13 isEqual:v14];

    if ((v16 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v17 = [(MPModelRequest *)self itemSortDescriptors];
  v18 = [v4 itemSortDescriptors];
  v19 = v17;
  v20 = v18;
  v21 = v20;
  if (v19 == v20)
  {
  }

  else
  {
    v22 = [v19 isEqual:v20];

    if ((v22 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v23 = [(MPModelRequest *)self sectionSortDescriptors];
  v24 = [v4 sectionSortDescriptors];
  v25 = v23;
  v26 = v24;
  v27 = v26;
  if (v25 == v26)
  {
  }

  else
  {
    v28 = [v25 isEqual:v26];

    if ((v28 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v29 = [(MPModelLibraryRequest *)self allowedItemIdentifiers];
  v30 = [v4 allowedItemIdentifiers];
  v31 = v29;
  v32 = v30;
  v33 = v32;
  if (v31 == v32)
  {
  }

  else
  {
    v34 = [v31 isEqual:v32];

    if ((v34 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v35 = [(MPModelLibraryRequest *)self allowedSectionIdentifiers];
  v36 = [v4 allowedSectionIdentifiers];
  v37 = v35;
  v38 = v36;
  v39 = v38;
  if (v37 == v38)
  {
  }

  else
  {
    v40 = [v37 isEqual:v38];

    if ((v40 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v41 = [(MPModelLibraryRequest *)self scopedContainers];
  v42 = [v4 scopedContainers];
  v43 = v41;
  v44 = v42;
  v45 = v44;
  if (v43 == v44)
  {
  }

  else
  {
    v46 = [v43 isEqual:v44];

    if ((v46 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v47 = [(MPModelLibraryRequest *)self contentRange];
  if (v47 != [v4 contentRange])
  {
    goto LABEL_56;
  }

  [(MPModelLibraryRequest *)self contentRange];
  v49 = v48;
  [v4 contentRange];
  if (v49 != v50)
  {
    goto LABEL_56;
  }

  v51 = [(MPModelLibraryRequest *)self filterText];
  v52 = [v4 filterText];
  v53 = v51;
  v54 = v52;
  v55 = v54;
  if (v53 == v54)
  {
  }

  else
  {
    v56 = [v53 isEqual:v54];

    if ((v56 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v57 = [(MPModelLibraryRequest *)self sectionFilterText];
  v58 = [v4 sectionFilterText];
  v59 = v57;
  v60 = v58;
  v61 = v60;
  if (v59 == v60)
  {
  }

  else
  {
    v62 = [v59 isEqual:v60];

    if ((v62 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v63 = [(MPModelLibraryRequest *)self sortUsingAllowedItemIdentifiers];
  if (v63 != [v4 sortUsingAllowedItemIdentifiers])
  {
    goto LABEL_56;
  }

  v64 = [(MPModelLibraryRequest *)self mediaLibrary];
  v65 = [v4 mediaLibrary];
  v66 = v64;
  v67 = v65;
  v68 = v67;
  if (v66 == v67)
  {
  }

  else
  {
    v69 = [v66 isEqual:v67];

    if ((v69 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v70 = [(MPModelLibraryRequest *)self filteringOptions];
  if (v70 != [v4 filteringOptions])
  {
LABEL_56:
    v89 = 0;
    goto LABEL_57;
  }

  v71 = [(MPModelLibraryRequest *)self itemPropertyFilters];
  v72 = [v4 itemPropertyFilters];
  v73 = v71;
  v74 = v72;
  v75 = v74;
  if (v73 == v74)
  {
  }

  else
  {
    v76 = [v73 isEqual:v74];

    if ((v76 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v77 = [(MPModelLibraryRequest *)self sectionPropertyFilters];
  v78 = [v4 sectionPropertyFilters];
  v79 = v77;
  v80 = v78;
  v81 = v80;
  if (v79 == v80)
  {
  }

  else
  {
    v82 = [v79 isEqual:v80];

    if ((v82 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v83 = [(MPModelLibraryRequest *)self scopedContainersPropertySet];
  v84 = [v4 scopedContainersPropertySet];
  v85 = v83;
  v86 = v84;
  v87 = v86;
  if (v85 == v86)
  {
  }

  else
  {
    v88 = [v85 isEqual:v86];

    if ((v88 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v91 = [(MPModelLibraryRequest *)self legacyMediaQuery];
  v92 = [v4 legacyMediaQuery];
  v93 = v91;
  v94 = v92;
  if (v93 == v94)
  {
    v89 = 1;
  }

  else
  {
    v89 = [v93 isEqual:v94];
  }

LABEL_57:
  return v89;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v9.receiver = self;
  v9.super_class = MPModelLibraryRequest;
  v4 = [(MPModelRequest *)&v9 copyWithZone:a3];
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(v4 + 10, self->_allowedItemIdentifiers);
    objc_storeStrong(v5 + 11, self->_allowedSectionIdentifiers);
    objc_storeStrong(v5 + 12, self->_scopedContainers);
    *(v5 + 10) = self->_contentRange;
    v5[13] = self->_filteringOptions;
    objc_storeStrong(v5 + 14, self->_filterText);
    objc_storeStrong(v5 + 15, self->_sectionFilterText);
    *(v5 + 64) = self->_wantsDetailedKeepLocalRequestableResponse;
    *(v5 + 65) = self->_sortUsingAllowedItemIdentifiers;
    *(v5 + 67) = self->_disableImplicitSectioning;
    objc_storeStrong(v5 + 9, self->_mediaLibrary);
    v6 = [(MPMediaQuery *)self->_legacyMediaQuery copy];
    v7 = v5[18];
    v5[18] = v6;

    objc_storeStrong(v5 + 16, self->_itemPropertyFilters);
    objc_storeStrong(v5 + 17, self->_sectionPropertyFilters);
    *(v5 + 66) = self->_isUpgradedSmartPlaylistLegacyMediaQuery;
    objc_storeStrong(v5 + 19, self->_scopedContainersPropertySet);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5.receiver = self;
  v5.super_class = MPModelLibraryRequest;
  [(MPModelRequest *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_wantsDetailedKeepLocalRequestableResponse forKey:@"MPModelLibraryRequestWantsDetailedKeepLocalRequestableResponse"];
  [v4 encodeBool:self->_sortUsingAllowedItemIdentifiers forKey:@"_MPModelLibraryRequestCodingKeySortUsingAllowedItemIdentifiers"];
  [v4 encodeBool:self->_disableImplicitSectioning forKey:@"MPModelLibraryRequestDisableImplicitSectioning"];
  [v4 encodeObject:self->_allowedItemIdentifiers forKey:@"MPModelLibraryRequestAllowedItemIdentifiers"];
  [v4 encodeObject:self->_allowedSectionIdentifiers forKey:@"MPModelLibraryRequestAllowedSectionIdentifiers"];
  [v4 encodeObject:self->_scopedContainers forKey:&stru_1F149ECA8];
  [v4 encodeInteger:self->_contentRange.location forKey:@"MPModelLibraryRequestContentRangeLocation"];
  [v4 encodeInteger:self->_contentRange.length forKey:@"MPModelLibraryRequestContentRangeLength"];
  [v4 encodeInt64:self->_filteringOptions forKey:@"MPModelLibraryRequestFilteringOptions"];
  [v4 encodeObject:self->_filterText forKey:@"MPModelLibraryRequestFilterText"];
  [v4 encodeObject:self->_sectionFilterText forKey:@"MPModelLibraryRequestSectionFilterText"];
  [v4 encodeObject:self->_mediaLibrary forKey:@"MPModelLibraryRequestMediaLibrary"];
  [v4 encodeObject:self->_legacyMediaQuery forKey:@"MPModelLibraryRequestLegacyMediaQuery"];
  [v4 encodeBool:self->_isUpgradedSmartPlaylistLegacyMediaQuery forKey:@"MPModelLibraryRequestCodingKeyIsUpgradedSmartPlaylistLegacyMediaQuery"];
  [v4 encodeObject:self->_itemPropertyFilters forKey:@"_MPModelLibraryRequestPropertyFilter"];
  [v4 encodeObject:self->_sectionPropertyFilters forKey:@"MPModelLibraryRequestSectionPropertyFilters"];
}

- (MPModelLibraryRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v41.receiver = self;
  v41.super_class = MPModelLibraryRequest;
  v5 = [(MPModelRequest *)&v41 initWithCoder:v4];
  if (v5)
  {
    v5->_wantsDetailedKeepLocalRequestableResponse = [v4 decodeBoolForKey:@"MPModelLibraryRequestWantsDetailedKeepLocalRequestableResponse"];
    v5->_sortUsingAllowedItemIdentifiers = [v4 decodeBoolForKey:@"_MPModelLibraryRequestCodingKeySortUsingAllowedItemIdentifiers"];
    v5->_disableImplicitSectioning = [v4 decodeBoolForKey:@"MPModelLibraryRequestDisableImplicitSectioning"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [v4 decodeObjectOfClasses:v8 forKey:&stru_1F149ECA8];
    scopedContainers = v5->_scopedContainers;
    v5->_scopedContainers = v9;

    v11 = [v4 decodeIntegerForKey:@"MPModelLibraryRequestContentRangeLocation"];
    v12 = [v4 decodeIntegerForKey:@"MPModelLibraryRequestContentRangeLength"];
    v5->_contentRange.location = v11;
    v5->_contentRange.length = v12;
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"MPModelLibraryRequestAllowedItemIdentifiers"];
    allowedItemIdentifiers = v5->_allowedItemIdentifiers;
    v5->_allowedItemIdentifiers = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [v4 decodeObjectOfClasses:v20 forKey:@"MPModelLibraryRequestAllowedSectionIdentifiers"];
    allowedSectionIdentifiers = v5->_allowedSectionIdentifiers;
    v5->_allowedSectionIdentifiers = v21;

    v5->_filteringOptions = [v4 decodeIntegerForKey:@"MPModelLibraryRequestFilteringOptions"];
    v23 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestFilterText"];
    filterText = v5->_filterText;
    v5->_filterText = v23;

    v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestSectionFilterText"];
    sectionFilterText = v5->_sectionFilterText;
    v5->_sectionFilterText = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestMediaLibrary"];
    mediaLibrary = v5->_mediaLibrary;
    v5->_mediaLibrary = v27;

    v5->_isUpgradedSmartPlaylistLegacyMediaQuery = [v4 decodeBoolForKey:@"MPModelLibraryRequestCodingKeyIsUpgradedSmartPlaylistLegacyMediaQuery"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestLegacyMediaQuery"];
    if (v29)
    {
      [(MPModelLibraryRequest *)v5 setLegacyMediaQuery:v29];
    }

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [v4 decodeObjectOfClasses:v32 forKey:@"_MPModelLibraryRequestPropertyFilter"];
    itemPropertyFilters = v5->_itemPropertyFilters;
    v5->_itemPropertyFilters = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [v4 decodeObjectOfClasses:v37 forKey:@"MPModelLibraryRequestSectionPropertyFilters"];
    sectionPropertyFilters = v5->_sectionPropertyFilters;
    v5->_sectionPropertyFilters = v38;
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MPModelLibraryRequestOperation);
  [(MPModelLibraryRequestOperation *)v5 setResponseHandler:v4];
  [(MPModelLibraryRequestOperation *)v5 setRequest:self];

  return v5;
}

@end