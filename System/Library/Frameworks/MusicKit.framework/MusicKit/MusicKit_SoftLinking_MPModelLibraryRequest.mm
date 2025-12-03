@interface MusicKit_SoftLinking_MPModelLibraryRequest
- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObject:(id)object itemType:(int64_t)type properties:(id)properties relationships:(id)relationships mediaLibrary:(id)library;
- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)type itemKind:(id)kind allowedItemIdentifiers:(id)identifiers allowedItemIdentifierSets:(id)sets itemSortDescriptors:(id)descriptors itemFilterText:(id)text itemPropertyFilters:(id)filters range:(_NSRange)self0 filteringOptions:(id)self1 mediaLibrary:(id)self2;
- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)type sectionLegacyModelObjectType:(int64_t)objectType itemKind:(id)kind sectionKind:(id)sectionKind allowedItemIdentifiers:(id)identifiers allowedSectionIdentifiers:(id)sectionIdentifiers allowedItemIdentifierSets:(id)sets allowedSectionIdentifierSets:(id)self0 scopedContainers:(id)self1 itemSortDescriptors:(id)self2 sectionSortDescriptors:(id)self3 itemFilterText:(id)self4 sectionFilterText:(id)self5 itemPropertyFilters:(id)self6 sectionPropertyFilters:(id)self7 range:(_NSRange)self8 filteringOptions:(id)self9 mediaLibrary:(id)library;
- (_NSRange)range;
- (void)performWithCompletionHandler:(id)handler;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryRequest

- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)type sectionLegacyModelObjectType:(int64_t)objectType itemKind:(id)kind sectionKind:(id)sectionKind allowedItemIdentifiers:(id)identifiers allowedSectionIdentifiers:(id)sectionIdentifiers allowedItemIdentifierSets:(id)sets allowedSectionIdentifierSets:(id)self0 scopedContainers:(id)self1 itemSortDescriptors:(id)self2 sectionSortDescriptors:(id)self3 itemFilterText:(id)self4 sectionFilterText:(id)self5 itemPropertyFilters:(id)self6 sectionPropertyFilters:(id)self7 range:(_NSRange)self8 filteringOptions:(id)self9 mediaLibrary:(id)library
{
  kindCopy = kind;
  sectionKindCopy = sectionKind;
  obj = identifiers;
  identifiersCopy = identifiers;
  sectionIdentifiersCopy = sectionIdentifiers;
  sectionIdentifiersCopy2 = sectionIdentifiers;
  v24 = sectionKindCopy;
  containersCopy = containers;
  descriptorsCopy = descriptors;
  sortDescriptorsCopy = sortDescriptors;
  textCopy = text;
  filterTextCopy = filterText;
  libraryCopy = library;
  propertyFiltersCopy = propertyFilters;
  filtersCopy = filters;
  identifierSetsCopy = identifierSets;
  setsCopy = sets;
  v31 = objc_alloc_init(getMPModelLibraryRequestClass());
  v97 = textCopy;
  if (v24)
  {
    [v24 _underlyingKind];
  }

  else
  {
    [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:objectType];
  }
  v32 = ;
  v33 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:v32];
  [v31 setSectionKind:v33];

  v34 = [objc_opt_class() _supportedPropertiesForModelObjectType:objectType];
  [v31 setSectionProperties:v34];

  [v31 setSectionSortDescriptors:sortDescriptorsCopy];
  [v31 setSectionFilterText:filterTextCopy];
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __402__MusicKit_SoftLinking_MPModelLibraryRequest_initWithLegacyModelObjectType_sectionLegacyModelObjectType_itemKind_sectionKind_allowedItemIdentifiers_allowedSectionIdentifiers_allowedItemIdentifierSets_allowedSectionIdentifierSets_scopedContainers_itemSortDescriptors_sectionSortDescriptors_itemFilterText_sectionFilterText_itemPropertyFilters_sectionPropertyFilters_range_filteringOptions_mediaLibrary___block_invoke;
  v102[3] = &unk_278229968;
  objectTypeCopy = objectType;
  v35 = libraryCopy;
  v103 = v35;
  v36 = [sectionIdentifiersCopy2 msv_map:v102];
  v37 = [v36 mutableCopy];

  [v37 addObjectsFromArray:identifierSetsCopy];
  v84 = v37;
  [v31 setAllowedSectionIdentifiers:v37];
  v87 = v24;
  v85 = sortDescriptorsCopy;
  if (objectType == 21)
  {
    v40 = setsCopy;
    v38 = containersCopy;
    if ([containersCopy count])
    {
      [v31 setSectionKind:0];
    }

    goto LABEL_14;
  }

  v38 = containersCopy;
  if (objectType != 17)
  {
    v40 = setsCopy;
LABEL_14:
    _underlyingKind = [kindCopy _underlyingKind];
    v47 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:_underlyingKind];
    [v31 setItemKind:v47];

    selfCopy3 = self;
    typeCopy3 = type;
    v48 = [objc_opt_class() _supportedPropertiesForModelObjectType:type];
    [v31 setItemProperties:v48];

    v39 = descriptorsCopy;
    goto LABEL_27;
  }

  v39 = descriptorsCopy;
  if (type > 27)
  {
    if (type == 28)
    {
      v49 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKindForSongs];
    }

    else
    {
      if (type != 32)
      {
        goto LABEL_18;
      }

      v49 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKindForTracks];
    }

    v52 = v49;
    v53 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:v49];
    [v31 setItemKind:v53];

LABEL_24:
    v40 = setsCopy;

    typeCopy3 = type;
    goto LABEL_25;
  }

  if (type == 14)
  {
    v52 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKindForMusicVideos];
    [v31 setItemKind:v52];
    goto LABEL_24;
  }

  if (type != 21)
  {
LABEL_18:
    v40 = setsCopy;
    _underlyingKind2 = [kindCopy _underlyingKind];
    v51 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:_underlyingKind2];
    [v31 setItemKind:v51];

    typeCopy3 = type;
    if (type > 0x25 || ((1 << type) & 0x3200002000) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    selfCopy3 = self;
    v44 = objc_opt_class();
    v45 = 19;
    goto LABEL_26;
  }

  v40 = setsCopy;
  [v31 setSectionKind:0];
  _underlyingKind3 = [kindCopy _underlyingKind];
  [v31 setItemKind:_underlyingKind3];

  typeCopy3 = 21;
LABEL_10:
  selfCopy3 = self;
  v44 = objc_opt_class();
  v45 = typeCopy3;
LABEL_26:
  _underlyingKind = [v44 _supportedPropertiesForModelObjectType:v45];
  [v31 setItemProperties:_underlyingKind];
LABEL_27:
  v91 = v38;

  v54 = [v38 msv_map:&__block_literal_global_1];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __402__MusicKit_SoftLinking_MPModelLibraryRequest_initWithLegacyModelObjectType_sectionLegacyModelObjectType_itemKind_sectionKind_allowedItemIdentifiers_allowedSectionIdentifiers_allowedItemIdentifierSets_allowedSectionIdentifierSets_scopedContainers_itemSortDescriptors_sectionSortDescriptors_itemFilterText_sectionFilterText_itemPropertyFilters_sectionPropertyFilters_range_filteringOptions_mediaLibrary___block_invoke_3;
  v99[3] = &unk_278229968;
  v101 = typeCopy3;
  v55 = v35;
  v100 = v55;
  v56 = [identifiersCopy msv_map:v99];
  v57 = [v56 mutableCopy];

  [v57 addObjectsFromArray:v40];
  [v31 setItemSortDescriptors:v39];
  [v31 setFilterText:v97];
  [v31 setAllowedItemIdentifiers:v57];
  [v31 setScopedContainers:v54];
  [v31 setContentRange:{range.location, range.length}];
  [v31 setWantsDetailedKeepLocalRequestableResponse:(*&options.var0 >> 8) & 1];
  v90 = v55;
  _underlyingMediaLibrary = [v55 _underlyingMediaLibrary];
  [v31 setMediaLibrary:_underlyingMediaLibrary];

  v59 = [filtersCopy msv_map:&__block_literal_global_5];

  v60 = [propertyFiltersCopy msv_map:&__block_literal_global_7];

  [v31 setItemPropertyFilters:v59];
  [v31 setSectionPropertyFilters:v60];
  v61 = 2;
  if (!options.var0)
  {
    v61 = 0;
  }

  v62 = vdupq_n_s64(*&options.var0);
  v63 = vorrq_s8(vandq_s8(vshlq_u64(v62, xmmword_217756520), xmmword_217756550), vandq_s8(vshlq_u64(v62, xmmword_217756530), xmmword_217756540));
  v64 = *&vorr_s8(*v63.i8, *&vextq_s8(v63, v63, 8uLL)) | (*&options.var0 >> 9) & 0x800000 | (*&options.var0 >> 16) & 0x1000000 | v61;
  if (options.var8)
  {
    v65 = v64 | 0x400000;
  }

  else
  {
    v65 = v64;
  }

  [v31 setFilteringOptions:v65];
  v98.receiver = selfCopy3;
  v98.super_class = MusicKit_SoftLinking_MPModelLibraryRequest;
  v66 = [(MusicKit_SoftLinking_MPModelRequest *)&v98 _initWithUnderlyingRequest:v31];
  v67 = v39;
  v68 = v66;
  if (v66)
  {
    objc_storeStrong(v66 + 3, obj);
    objc_storeStrong(&v68->_allowedSectionIdentifiers, sectionIdentifiersCopy);
    v69 = [v91 copy];
    scopedContainers = v68->_scopedContainers;
    v68->_scopedContainers = v69;

    v71 = [v67 copy];
    itemSortDescriptors = v68->_itemSortDescriptors;
    v68->_itemSortDescriptors = v71;

    v73 = [v85 copy];
    sectionSortDescriptors = v68->_sectionSortDescriptors;
    v68->_sectionSortDescriptors = v73;

    v75 = [v97 copy];
    itemFilterText = v68->_itemFilterText;
    v68->_itemFilterText = v75;

    v77 = [filterTextCopy copy];
    sectionFilterText = v68->_sectionFilterText;
    v68->_sectionFilterText = v77;

    v68->_range = range;
    v68->_wantsDetailedKeepLocalRequestableResponse = (*&options.var0 & 0x100) >> 8;
  }

  return v68;
}

- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)type itemKind:(id)kind allowedItemIdentifiers:(id)identifiers allowedItemIdentifierSets:(id)sets itemSortDescriptors:(id)descriptors itemFilterText:(id)text itemPropertyFilters:(id)filters range:(_NSRange)self0 filteringOptions:(id)self1 mediaLibrary:(id)self2
{
  identifiersCopy = identifiers;
  textCopy = text;
  descriptorsCopy = descriptors;
  textCopy2 = text;
  libraryCopy = library;
  filtersCopy = filters;
  setsCopy = sets;
  kindCopy = kind;
  v21 = objc_alloc_init(getMPModelLibraryRequestClass());
  [v21 setSectionKind:0];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __225__MusicKit_SoftLinking_MPModelLibraryRequest_initWithLegacyModelObjectType_itemKind_allowedItemIdentifiers_allowedItemIdentifierSets_itemSortDescriptors_itemFilterText_itemPropertyFilters_range_filteringOptions_mediaLibrary___block_invoke;
  v47[3] = &unk_278229968;
  typeCopy = type;
  v22 = libraryCopy;
  v48 = v22;
  v23 = [identifiersCopy msv_map:v47];
  v24 = [v23 mutableCopy];

  [v24 addObjectsFromArray:setsCopy];
  _underlyingKind = [kindCopy _underlyingKind];

  v26 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:_underlyingKind];
  [v21 setItemKind:v26];

  v27 = [objc_opt_class() _supportedPropertiesForModelObjectType:type];
  [v21 setItemProperties:v27];

  [v21 setItemSortDescriptors:descriptorsCopy];
  [v21 setFilterText:textCopy2];
  [v21 setAllowedItemIdentifiers:v24];
  [v21 setContentRange:{range.location, range.length}];
  [v21 setWantsDetailedKeepLocalRequestableResponse:(*&options.var0 >> 8) & 1];
  _underlyingMediaLibrary = [v22 _underlyingMediaLibrary];
  [v21 setMediaLibrary:_underlyingMediaLibrary];

  v29 = [filtersCopy msv_map:&__block_literal_global_9];

  [v21 setItemPropertyFilters:v29];
  v30 = 2;
  if (!options.var0)
  {
    v30 = 0;
  }

  v31 = vdupq_n_s64(*&options.var0);
  v32 = vorrq_s8(vandq_s8(vshlq_u64(v31, xmmword_217756520), xmmword_217756550), vandq_s8(vshlq_u64(v31, xmmword_217756530), xmmword_217756540));
  v33 = *&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | (*&options.var0 >> 9) & 0x800000 | (*&options.var0 >> 16) & 0x1000000 | v30;
  if (options.var8)
  {
    v34 = v33 | 0x400000;
  }

  else
  {
    v34 = v33;
  }

  [v21 setFilteringOptions:v34];
  v46.receiver = self;
  v46.super_class = MusicKit_SoftLinking_MPModelLibraryRequest;
  v35 = [(MusicKit_SoftLinking_MPModelRequest *)&v46 _initWithUnderlyingRequest:v21];
  v36 = v35;
  if (v35)
  {
    objc_storeStrong(v35 + 3, identifiers);
    v37 = [descriptorsCopy copy];
    itemSortDescriptors = v36->_itemSortDescriptors;
    v36->_itemSortDescriptors = v37;

    objc_storeStrong(&v36->_itemFilterText, textCopy);
    v36->_range = range;
    v36->_wantsDetailedKeepLocalRequestableResponse = (*&options.var0 & 0x100) >> 8;
  }

  return v36;
}

- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObject:(id)object itemType:(int64_t)type properties:(id)properties relationships:(id)relationships mediaLibrary:(id)library
{
  v37[1] = *MEMORY[0x277D85DE8];
  objectCopy = object;
  propertiesCopy = properties;
  relationshipsCopy = relationships;
  libraryCopy = library;
  v16 = objc_alloc_init(getMPModelLibraryRequestClass());
  [v16 setSectionKind:0];
  v17 = [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:type];
  [v16 setItemKind:v17];

  _underlyingModelObject = [objectCopy _underlyingModelObject];
  identifiers = [_underlyingModelObject identifiers];
  v37[0] = identifiers;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];

  [v16 setAllowedItemIdentifiers:v20];
  v21 = [MusicKit_SoftLinking_MPModelRequest _propertySetForRawProperties:propertiesCopy relationships:relationshipsCopy];
  [v16 setItemProperties:v21];

  _underlyingMediaLibrary = [libraryCopy _underlyingMediaLibrary];
  v23 = _underlyingMediaLibrary;
  if (_underlyingMediaLibrary)
  {
    deviceMediaLibrary = _underlyingMediaLibrary;
  }

  else
  {
    v33 = 0;
    v34 = &v33;
    v35 = 0x2050000000;
    v25 = getMPMediaLibraryClass_softClass;
    v36 = getMPMediaLibraryClass_softClass;
    if (!getMPMediaLibraryClass_softClass)
    {
      v32[0] = MEMORY[0x277D85DD0];
      v32[1] = 3221225472;
      v32[2] = __getMPMediaLibraryClass_block_invoke;
      v32[3] = &unk_278229610;
      v32[4] = &v33;
      __getMPMediaLibraryClass_block_invoke(v32);
      v25 = v34[3];
    }

    v26 = v25;
    _Block_object_dispose(&v33, 8);
    deviceMediaLibrary = [v25 deviceMediaLibrary];
  }

  v27 = deviceMediaLibrary;

  [v16 setMediaLibrary:v27];
  v31.receiver = self;
  v31.super_class = MusicKit_SoftLinking_MPModelLibraryRequest;
  v28 = [(MusicKit_SoftLinking_MPModelRequest *)&v31 _initWithUnderlyingRequest:v16];

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)performWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (MRMediaRemoteIsMusicAppInstalled())
  {
    _underlyingRequest = [(MusicKit_SoftLinking_MPModelRequest *)self _underlyingRequest];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__MusicKit_SoftLinking_MPModelLibraryRequest_performWithCompletionHandler___block_invoke;
    v7[3] = &unk_2782299D0;
    v8 = handlerCopy;
    [_underlyingRequest performWithResponseHandler:v7];
  }

  else
  {
    v6 = MusicKit_Logging_Library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MusicKit_SoftLinking_MPModelLibraryRequest performWithCompletionHandler:v6];
    }

    _underlyingRequest = [MEMORY[0x277CCA9B8] musicKit_defaultLibraryError];
    (*(handlerCopy + 2))(handlerCopy, 0, _underlyingRequest);
  }
}

- (_NSRange)range
{
  p_range = &self->_range;
  location = self->_range.location;
  length = p_range->length;
  result.length = length;
  result.location = location;
  return result;
}

@end