@interface MPModelLibraryRequest
- (BOOL)isEqual:(id)equal;
- (MPMediaLibrary)mediaLibrary;
- (MPModelLibraryRequest)initWithCoder:(id)coder;
- (NSString)description;
- (_NSRange)contentRange;
- (id)copyWithZone:(_NSZone *)zone;
- (id)itemTranslationContext;
- (id)newOperationWithResponseHandler:(id)handler;
- (id)personalizationTranslationContext;
- (id)sectionTranslationContext;
- (void)encodeWithCoder:(id)coder;
- (void)performWithResponseHandler:(id)handler;
- (void)setLegacyMediaQuery:(id)query forTransport:(BOOL)transport;
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
    activeAccount = [MEMORY[0x1E69E4680] activeAccount];
    v3 = [MPMediaLibrary deviceMediaLibraryWithUserIdentity:activeAccount];
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
  itemTranslationContext = [(MPModelLibraryRequest *)self itemTranslationContext];
  [itemTranslationContext setIdentifierSourcePrefix:@"PersonalizedRequest-"];

  return itemTranslationContext;
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
  allowedSectionIdentifiers = [(MPModelLibraryRequest *)self allowedSectionIdentifiers];
  v5 = allowedSectionIdentifiers;
  v6 = MEMORY[0x1E695E0F0];
  if (allowedSectionIdentifiers)
  {
    v7 = allowedSectionIdentifiers;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [(MPMediaLibraryEntityTranslationContext *)v3 setAllowedEntityIdentifiers:v7];

  sectionFilterText = [(MPModelLibraryRequest *)self sectionFilterText];
  [(MPMediaLibraryEntityTranslationContext *)v3 setFilterText:sectionFilterText];

  [(MPMediaLibraryEntityTranslationContext *)v3 setFilteringOptions:[(MPModelLibraryRequest *)self filteringOptions]];
  mediaLibrary = [(MPModelLibraryRequest *)self mediaLibrary];
  [(MPMediaLibraryEntityTranslationContext *)v3 setMediaLibrary:mediaLibrary];

  sectionKind = [(MPModelRequest *)self sectionKind];
  [(MPMediaLibraryEntityTranslationContext *)v3 setModelKind:sectionKind];

  sectionKind2 = [(MPModelRequest *)self sectionKind];
  -[MPMediaLibraryEntityTranslationContext setMultiQuery:](v3, "setMultiQuery:", [sectionKind2 modelClass] == objc_opt_class());

  if ([MEMORY[0x1E69E4688] canAccessAccountStore])
  {
    mediaLibrary2 = [(MPModelLibraryRequest *)self mediaLibrary];
    userIdentity = [mediaLibrary2 userIdentity];
    accountDSID = [userIdentity accountDSID];
    [(MPMediaLibraryEntityTranslationContext *)v3 setPersonID:accountDSID];
  }

  sectionPropertyFilters = [(MPModelLibraryRequest *)self sectionPropertyFilters];
  [(MPMediaLibraryEntityTranslationContext *)v3 setPropertyFilters:sectionPropertyFilters];

  scopedContainers = [(MPModelLibraryRequest *)self scopedContainers];
  v17 = scopedContainers;
  if (scopedContainers)
  {
    v18 = scopedContainers;
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
  allowedItemIdentifiers = [(MPModelLibraryRequest *)self allowedItemIdentifiers];
  v5 = allowedItemIdentifiers;
  v6 = MEMORY[0x1E695E0F0];
  if (allowedItemIdentifiers)
  {
    v7 = allowedItemIdentifiers;
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  [(MPMediaLibraryEntityTranslationContext *)v3 setAllowedEntityIdentifiers:v7];

  filterText = [(MPModelLibraryRequest *)self filterText];
  [(MPMediaLibraryEntityTranslationContext *)v3 setFilterText:filterText];

  [(MPMediaLibraryEntityTranslationContext *)v3 setFilteringOptions:[(MPModelLibraryRequest *)self filteringOptions]];
  mediaLibrary = [(MPModelLibraryRequest *)self mediaLibrary];
  [(MPMediaLibraryEntityTranslationContext *)v3 setMediaLibrary:mediaLibrary];

  itemKind = [(MPModelRequest *)self itemKind];
  [(MPMediaLibraryEntityTranslationContext *)v3 setModelKind:itemKind];

  itemKind2 = [(MPModelRequest *)self itemKind];
  -[MPMediaLibraryEntityTranslationContext setMultiQuery:](v3, "setMultiQuery:", [itemKind2 modelClass] == objc_opt_class());

  if ([MEMORY[0x1E69E4688] canAccessAccountStore])
  {
    mediaLibrary2 = [(MPModelLibraryRequest *)self mediaLibrary];
    userIdentity = [mediaLibrary2 userIdentity];
    accountDSID = [userIdentity accountDSID];
    [(MPMediaLibraryEntityTranslationContext *)v3 setPersonID:accountDSID];
  }

  itemPropertyFilters = [(MPModelLibraryRequest *)self itemPropertyFilters];
  [(MPMediaLibraryEntityTranslationContext *)v3 setPropertyFilters:itemPropertyFilters];

  scopedContainers = [(MPModelLibraryRequest *)self scopedContainers];
  v17 = scopedContainers;
  if (scopedContainers)
  {
    v18 = scopedContainers;
  }

  else
  {
    v18 = v6;
  }

  [(MPMediaLibraryEntityTranslationContext *)v3 setScopedContainers:v18];

  return v3;
}

- (void)performWithResponseHandler:(id)handler
{
  v3.receiver = self;
  v3.super_class = MPModelLibraryRequest;
  [(MPModelRequest *)&v3 performWithResponseHandler:handler];
}

- (void)setLegacyMediaQuery:(id)query forTransport:(BOOL)transport
{
  v33[1] = *MEMORY[0x1E69E9840];
  queryCopy = query;
  v7 = queryCopy;
  if (self->_legacyMediaQuery != queryCopy)
  {
    v8 = [(MPMediaQuery *)queryCopy copy];
    legacyMediaQuery = self->_legacyMediaQuery;
    self->_legacyMediaQuery = v8;

    v10 = self->_legacyMediaQuery;
    if (v10)
    {
      mediaLibrary = [(MPMediaQuery *)v10 mediaLibrary];
      mediaLibrary = self->_mediaLibrary;
      self->_mediaLibrary = mediaLibrary;

      if (!transport)
      {
        _representativeCollection = [(MPMediaQuery *)self->_legacyMediaQuery _representativeCollection];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          if (([_representativeCollection playlistAttributes] & 2) != 0)
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
            selfCopy = self;
            v32 = _representativeCollection;
            v18 = [(MPIdentifierSet *)v16 initWithSource:@"LibraryRequest" modelKind:v17 block:&v27];
            selfCopy = [(MPModelObject *)v15 initWithIdentifiers:v18, v27, v28, v29, v30, selfCopy];
            v33[0] = selfCopy;
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
          v24 = [_representativeCollection groupingType] - 1;
          if (v24 >= 5)
          {
            identityKind = 0;
          }

          else
          {
            identityKind = [(__objc2_class *)*off_1E767C0F0[v24] identityKind];
          }

          [(MPModelRequest *)self setSectionKind:identityKind];
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (([equalCopy isMemberOfClass:objc_opt_class()] & 1) == 0)
  {
    goto LABEL_56;
  }

  itemKind = [(MPModelRequest *)self itemKind];
  itemKind2 = [equalCopy itemKind];
  v7 = itemKind;
  v8 = itemKind2;
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

  sectionKind = [(MPModelRequest *)self sectionKind];
  sectionKind2 = [equalCopy sectionKind];
  v13 = sectionKind;
  v14 = sectionKind2;
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

  itemSortDescriptors = [(MPModelRequest *)self itemSortDescriptors];
  itemSortDescriptors2 = [equalCopy itemSortDescriptors];
  v19 = itemSortDescriptors;
  v20 = itemSortDescriptors2;
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

  sectionSortDescriptors = [(MPModelRequest *)self sectionSortDescriptors];
  sectionSortDescriptors2 = [equalCopy sectionSortDescriptors];
  v25 = sectionSortDescriptors;
  v26 = sectionSortDescriptors2;
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

  allowedItemIdentifiers = [(MPModelLibraryRequest *)self allowedItemIdentifiers];
  allowedItemIdentifiers2 = [equalCopy allowedItemIdentifiers];
  v31 = allowedItemIdentifiers;
  v32 = allowedItemIdentifiers2;
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

  allowedSectionIdentifiers = [(MPModelLibraryRequest *)self allowedSectionIdentifiers];
  allowedSectionIdentifiers2 = [equalCopy allowedSectionIdentifiers];
  v37 = allowedSectionIdentifiers;
  v38 = allowedSectionIdentifiers2;
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

  scopedContainers = [(MPModelLibraryRequest *)self scopedContainers];
  scopedContainers2 = [equalCopy scopedContainers];
  v43 = scopedContainers;
  v44 = scopedContainers2;
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

  contentRange = [(MPModelLibraryRequest *)self contentRange];
  if (contentRange != [equalCopy contentRange])
  {
    goto LABEL_56;
  }

  [(MPModelLibraryRequest *)self contentRange];
  v49 = v48;
  [equalCopy contentRange];
  if (v49 != v50)
  {
    goto LABEL_56;
  }

  filterText = [(MPModelLibraryRequest *)self filterText];
  filterText2 = [equalCopy filterText];
  v53 = filterText;
  v54 = filterText2;
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

  sectionFilterText = [(MPModelLibraryRequest *)self sectionFilterText];
  sectionFilterText2 = [equalCopy sectionFilterText];
  v59 = sectionFilterText;
  v60 = sectionFilterText2;
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

  sortUsingAllowedItemIdentifiers = [(MPModelLibraryRequest *)self sortUsingAllowedItemIdentifiers];
  if (sortUsingAllowedItemIdentifiers != [equalCopy sortUsingAllowedItemIdentifiers])
  {
    goto LABEL_56;
  }

  mediaLibrary = [(MPModelLibraryRequest *)self mediaLibrary];
  mediaLibrary2 = [equalCopy mediaLibrary];
  v66 = mediaLibrary;
  v67 = mediaLibrary2;
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

  filteringOptions = [(MPModelLibraryRequest *)self filteringOptions];
  if (filteringOptions != [equalCopy filteringOptions])
  {
LABEL_56:
    v89 = 0;
    goto LABEL_57;
  }

  itemPropertyFilters = [(MPModelLibraryRequest *)self itemPropertyFilters];
  itemPropertyFilters2 = [equalCopy itemPropertyFilters];
  v73 = itemPropertyFilters;
  v74 = itemPropertyFilters2;
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

  sectionPropertyFilters = [(MPModelLibraryRequest *)self sectionPropertyFilters];
  sectionPropertyFilters2 = [equalCopy sectionPropertyFilters];
  v79 = sectionPropertyFilters;
  v80 = sectionPropertyFilters2;
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

  scopedContainersPropertySet = [(MPModelLibraryRequest *)self scopedContainersPropertySet];
  scopedContainersPropertySet2 = [equalCopy scopedContainersPropertySet];
  v85 = scopedContainersPropertySet;
  v86 = scopedContainersPropertySet2;
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

  legacyMediaQuery = [(MPModelLibraryRequest *)self legacyMediaQuery];
  legacyMediaQuery2 = [equalCopy legacyMediaQuery];
  v93 = legacyMediaQuery;
  v94 = legacyMediaQuery2;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v9.receiver = self;
  v9.super_class = MPModelLibraryRequest;
  v4 = [(MPModelRequest *)&v9 copyWithZone:zone];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5.receiver = self;
  v5.super_class = MPModelLibraryRequest;
  [(MPModelRequest *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_wantsDetailedKeepLocalRequestableResponse forKey:@"MPModelLibraryRequestWantsDetailedKeepLocalRequestableResponse"];
  [coderCopy encodeBool:self->_sortUsingAllowedItemIdentifiers forKey:@"_MPModelLibraryRequestCodingKeySortUsingAllowedItemIdentifiers"];
  [coderCopy encodeBool:self->_disableImplicitSectioning forKey:@"MPModelLibraryRequestDisableImplicitSectioning"];
  [coderCopy encodeObject:self->_allowedItemIdentifiers forKey:@"MPModelLibraryRequestAllowedItemIdentifiers"];
  [coderCopy encodeObject:self->_allowedSectionIdentifiers forKey:@"MPModelLibraryRequestAllowedSectionIdentifiers"];
  [coderCopy encodeObject:self->_scopedContainers forKey:&stru_1F149ECA8];
  [coderCopy encodeInteger:self->_contentRange.location forKey:@"MPModelLibraryRequestContentRangeLocation"];
  [coderCopy encodeInteger:self->_contentRange.length forKey:@"MPModelLibraryRequestContentRangeLength"];
  [coderCopy encodeInt64:self->_filteringOptions forKey:@"MPModelLibraryRequestFilteringOptions"];
  [coderCopy encodeObject:self->_filterText forKey:@"MPModelLibraryRequestFilterText"];
  [coderCopy encodeObject:self->_sectionFilterText forKey:@"MPModelLibraryRequestSectionFilterText"];
  [coderCopy encodeObject:self->_mediaLibrary forKey:@"MPModelLibraryRequestMediaLibrary"];
  [coderCopy encodeObject:self->_legacyMediaQuery forKey:@"MPModelLibraryRequestLegacyMediaQuery"];
  [coderCopy encodeBool:self->_isUpgradedSmartPlaylistLegacyMediaQuery forKey:@"MPModelLibraryRequestCodingKeyIsUpgradedSmartPlaylistLegacyMediaQuery"];
  [coderCopy encodeObject:self->_itemPropertyFilters forKey:@"_MPModelLibraryRequestPropertyFilter"];
  [coderCopy encodeObject:self->_sectionPropertyFilters forKey:@"MPModelLibraryRequestSectionPropertyFilters"];
}

- (MPModelLibraryRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v41.receiver = self;
  v41.super_class = MPModelLibraryRequest;
  v5 = [(MPModelRequest *)&v41 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_wantsDetailedKeepLocalRequestableResponse = [coderCopy decodeBoolForKey:@"MPModelLibraryRequestWantsDetailedKeepLocalRequestableResponse"];
    v5->_sortUsingAllowedItemIdentifiers = [coderCopy decodeBoolForKey:@"_MPModelLibraryRequestCodingKeySortUsingAllowedItemIdentifiers"];
    v5->_disableImplicitSectioning = [coderCopy decodeBoolForKey:@"MPModelLibraryRequestDisableImplicitSectioning"];
    v6 = MEMORY[0x1E695DFD8];
    v7 = objc_opt_class();
    v8 = [v6 setWithObjects:{v7, objc_opt_class(), 0}];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:&stru_1F149ECA8];
    scopedContainers = v5->_scopedContainers;
    v5->_scopedContainers = v9;

    v11 = [coderCopy decodeIntegerForKey:@"MPModelLibraryRequestContentRangeLocation"];
    v12 = [coderCopy decodeIntegerForKey:@"MPModelLibraryRequestContentRangeLength"];
    v5->_contentRange.location = v11;
    v5->_contentRange.length = v12;
    v13 = MEMORY[0x1E695DFD8];
    v14 = objc_opt_class();
    v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"MPModelLibraryRequestAllowedItemIdentifiers"];
    allowedItemIdentifiers = v5->_allowedItemIdentifiers;
    v5->_allowedItemIdentifiers = v16;

    v18 = MEMORY[0x1E695DFD8];
    v19 = objc_opt_class();
    v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
    v21 = [coderCopy decodeObjectOfClasses:v20 forKey:@"MPModelLibraryRequestAllowedSectionIdentifiers"];
    allowedSectionIdentifiers = v5->_allowedSectionIdentifiers;
    v5->_allowedSectionIdentifiers = v21;

    v5->_filteringOptions = [coderCopy decodeIntegerForKey:@"MPModelLibraryRequestFilteringOptions"];
    v23 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestFilterText"];
    filterText = v5->_filterText;
    v5->_filterText = v23;

    v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestSectionFilterText"];
    sectionFilterText = v5->_sectionFilterText;
    v5->_sectionFilterText = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestMediaLibrary"];
    mediaLibrary = v5->_mediaLibrary;
    v5->_mediaLibrary = v27;

    v5->_isUpgradedSmartPlaylistLegacyMediaQuery = [coderCopy decodeBoolForKey:@"MPModelLibraryRequestCodingKeyIsUpgradedSmartPlaylistLegacyMediaQuery"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"MPModelLibraryRequestLegacyMediaQuery"];
    if (v29)
    {
      [(MPModelLibraryRequest *)v5 setLegacyMediaQuery:v29];
    }

    v30 = MEMORY[0x1E695DFD8];
    v31 = objc_opt_class();
    v32 = [v30 setWithObjects:{v31, objc_opt_class(), 0}];
    v33 = [coderCopy decodeObjectOfClasses:v32 forKey:@"_MPModelLibraryRequestPropertyFilter"];
    itemPropertyFilters = v5->_itemPropertyFilters;
    v5->_itemPropertyFilters = v33;

    v35 = MEMORY[0x1E695DFD8];
    v36 = objc_opt_class();
    v37 = [v35 setWithObjects:{v36, objc_opt_class(), 0}];
    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:@"MPModelLibraryRequestSectionPropertyFilters"];
    sectionPropertyFilters = v5->_sectionPropertyFilters;
    v5->_sectionPropertyFilters = v38;
  }

  return v5;
}

- (id)newOperationWithResponseHandler:(id)handler
{
  handlerCopy = handler;
  v5 = objc_alloc_init(MPModelLibraryRequestOperation);
  [(MPModelLibraryRequestOperation *)v5 setResponseHandler:handlerCopy];
  [(MPModelLibraryRequestOperation *)v5 setRequest:self];

  return v5;
}

@end