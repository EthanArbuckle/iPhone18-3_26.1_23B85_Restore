@interface MusicKit_SoftLinking_MPModelLibraryRequest
- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObject:(id)a3 itemType:(int64_t)a4 properties:(id)a5 relationships:(id)a6 mediaLibrary:(id)a7;
- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)a3 itemKind:(id)a4 allowedItemIdentifiers:(id)a5 allowedItemIdentifierSets:(id)a6 itemSortDescriptors:(id)a7 itemFilterText:(id)a8 itemPropertyFilters:(id)a9 range:(_NSRange)a10 filteringOptions:(id)a11 mediaLibrary:(id)a12;
- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)a3 sectionLegacyModelObjectType:(int64_t)a4 itemKind:(id)a5 sectionKind:(id)a6 allowedItemIdentifiers:(id)a7 allowedSectionIdentifiers:(id)a8 allowedItemIdentifierSets:(id)a9 allowedSectionIdentifierSets:(id)a10 scopedContainers:(id)a11 itemSortDescriptors:(id)a12 sectionSortDescriptors:(id)a13 itemFilterText:(id)a14 sectionFilterText:(id)a15 itemPropertyFilters:(id)a16 sectionPropertyFilters:(id)a17 range:(_NSRange)a18 filteringOptions:(id)a19 mediaLibrary:(id)a20;
- (_NSRange)range;
- (void)performWithCompletionHandler:(id)a3;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryRequest

- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)a3 sectionLegacyModelObjectType:(int64_t)a4 itemKind:(id)a5 sectionKind:(id)a6 allowedItemIdentifiers:(id)a7 allowedSectionIdentifiers:(id)a8 allowedItemIdentifierSets:(id)a9 allowedSectionIdentifierSets:(id)a10 scopedContainers:(id)a11 itemSortDescriptors:(id)a12 sectionSortDescriptors:(id)a13 itemFilterText:(id)a14 sectionFilterText:(id)a15 itemPropertyFilters:(id)a16 sectionPropertyFilters:(id)a17 range:(_NSRange)a18 filteringOptions:(id)a19 mediaLibrary:(id)a20
{
  v96 = a5;
  v23 = a6;
  obj = a7;
  v95 = a7;
  v81 = a8;
  v94 = a8;
  v24 = v23;
  v25 = a11;
  v86 = a12;
  v26 = a13;
  v27 = a14;
  v93 = a15;
  v28 = a20;
  v83 = a17;
  v82 = a16;
  v29 = a10;
  v30 = a9;
  v31 = objc_alloc_init(getMPModelLibraryRequestClass());
  v97 = v27;
  if (v24)
  {
    [v24 _underlyingKind];
  }

  else
  {
    [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:a4];
  }
  v32 = ;
  v33 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:v32];
  [v31 setSectionKind:v33];

  v34 = [objc_opt_class() _supportedPropertiesForModelObjectType:a4];
  [v31 setSectionProperties:v34];

  [v31 setSectionSortDescriptors:v26];
  [v31 setSectionFilterText:v93];
  v102[0] = MEMORY[0x277D85DD0];
  v102[1] = 3221225472;
  v102[2] = __402__MusicKit_SoftLinking_MPModelLibraryRequest_initWithLegacyModelObjectType_sectionLegacyModelObjectType_itemKind_sectionKind_allowedItemIdentifiers_allowedSectionIdentifiers_allowedItemIdentifierSets_allowedSectionIdentifierSets_scopedContainers_itemSortDescriptors_sectionSortDescriptors_itemFilterText_sectionFilterText_itemPropertyFilters_sectionPropertyFilters_range_filteringOptions_mediaLibrary___block_invoke;
  v102[3] = &unk_278229968;
  v104 = a4;
  v35 = v28;
  v103 = v35;
  v36 = [v94 msv_map:v102];
  v37 = [v36 mutableCopy];

  [v37 addObjectsFromArray:v29];
  v84 = v37;
  [v31 setAllowedSectionIdentifiers:v37];
  v87 = v24;
  v85 = v26;
  if (a4 == 21)
  {
    v40 = v30;
    v38 = v25;
    if ([v25 count])
    {
      [v31 setSectionKind:0];
    }

    goto LABEL_14;
  }

  v38 = v25;
  if (a4 != 17)
  {
    v40 = v30;
LABEL_14:
    v46 = [v96 _underlyingKind];
    v47 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:v46];
    [v31 setItemKind:v47];

    v43 = self;
    v42 = a3;
    v48 = [objc_opt_class() _supportedPropertiesForModelObjectType:a3];
    [v31 setItemProperties:v48];

    v39 = v86;
    goto LABEL_27;
  }

  v39 = v86;
  if (a3 > 27)
  {
    if (a3 == 28)
    {
      v49 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKindForSongs];
    }

    else
    {
      if (a3 != 32)
      {
        goto LABEL_18;
      }

      v49 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKindForTracks];
    }

    v52 = v49;
    v53 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:v49];
    [v31 setItemKind:v53];

LABEL_24:
    v40 = v30;

    v42 = a3;
    goto LABEL_25;
  }

  if (a3 == 14)
  {
    v52 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKindForMusicVideos];
    [v31 setItemKind:v52];
    goto LABEL_24;
  }

  if (a3 != 21)
  {
LABEL_18:
    v40 = v30;
    v50 = [v96 _underlyingKind];
    v51 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:v50];
    [v31 setItemKind:v51];

    v42 = a3;
    if (a3 > 0x25 || ((1 << a3) & 0x3200002000) == 0)
    {
      goto LABEL_10;
    }

LABEL_25:
    v43 = self;
    v44 = objc_opt_class();
    v45 = 19;
    goto LABEL_26;
  }

  v40 = v30;
  [v31 setSectionKind:0];
  v41 = [v96 _underlyingKind];
  [v31 setItemKind:v41];

  v42 = 21;
LABEL_10:
  v43 = self;
  v44 = objc_opt_class();
  v45 = v42;
LABEL_26:
  v46 = [v44 _supportedPropertiesForModelObjectType:v45];
  [v31 setItemProperties:v46];
LABEL_27:
  v91 = v38;

  v54 = [v38 msv_map:&__block_literal_global_1];
  v99[0] = MEMORY[0x277D85DD0];
  v99[1] = 3221225472;
  v99[2] = __402__MusicKit_SoftLinking_MPModelLibraryRequest_initWithLegacyModelObjectType_sectionLegacyModelObjectType_itemKind_sectionKind_allowedItemIdentifiers_allowedSectionIdentifiers_allowedItemIdentifierSets_allowedSectionIdentifierSets_scopedContainers_itemSortDescriptors_sectionSortDescriptors_itemFilterText_sectionFilterText_itemPropertyFilters_sectionPropertyFilters_range_filteringOptions_mediaLibrary___block_invoke_3;
  v99[3] = &unk_278229968;
  v101 = v42;
  v55 = v35;
  v100 = v55;
  v56 = [v95 msv_map:v99];
  v57 = [v56 mutableCopy];

  [v57 addObjectsFromArray:v40];
  [v31 setItemSortDescriptors:v39];
  [v31 setFilterText:v97];
  [v31 setAllowedItemIdentifiers:v57];
  [v31 setScopedContainers:v54];
  [v31 setContentRange:{a18.location, a18.length}];
  [v31 setWantsDetailedKeepLocalRequestableResponse:(*&a19.var0 >> 8) & 1];
  v90 = v55;
  v58 = [v55 _underlyingMediaLibrary];
  [v31 setMediaLibrary:v58];

  v59 = [v82 msv_map:&__block_literal_global_5];

  v60 = [v83 msv_map:&__block_literal_global_7];

  [v31 setItemPropertyFilters:v59];
  [v31 setSectionPropertyFilters:v60];
  v61 = 2;
  if (!a19.var0)
  {
    v61 = 0;
  }

  v62 = vdupq_n_s64(*&a19.var0);
  v63 = vorrq_s8(vandq_s8(vshlq_u64(v62, xmmword_217756520), xmmword_217756550), vandq_s8(vshlq_u64(v62, xmmword_217756530), xmmword_217756540));
  v64 = *&vorr_s8(*v63.i8, *&vextq_s8(v63, v63, 8uLL)) | (*&a19.var0 >> 9) & 0x800000 | (*&a19.var0 >> 16) & 0x1000000 | v61;
  if (a19.var8)
  {
    v65 = v64 | 0x400000;
  }

  else
  {
    v65 = v64;
  }

  [v31 setFilteringOptions:v65];
  v98.receiver = v43;
  v98.super_class = MusicKit_SoftLinking_MPModelLibraryRequest;
  v66 = [(MusicKit_SoftLinking_MPModelRequest *)&v98 _initWithUnderlyingRequest:v31];
  v67 = v39;
  v68 = v66;
  if (v66)
  {
    objc_storeStrong(v66 + 3, obj);
    objc_storeStrong(&v68->_allowedSectionIdentifiers, v81);
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

    v77 = [v93 copy];
    sectionFilterText = v68->_sectionFilterText;
    v68->_sectionFilterText = v77;

    v68->_range = a18;
    v68->_wantsDetailedKeepLocalRequestableResponse = (*&a19.var0 & 0x100) >> 8;
  }

  return v68;
}

- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObjectType:(int64_t)a3 itemKind:(id)a4 allowedItemIdentifiers:(id)a5 allowedItemIdentifierSets:(id)a6 itemSortDescriptors:(id)a7 itemFilterText:(id)a8 itemPropertyFilters:(id)a9 range:(_NSRange)a10 filteringOptions:(id)a11 mediaLibrary:(id)a12
{
  v17 = a5;
  v41 = a8;
  v42 = a7;
  v43 = a8;
  v18 = a12;
  v45 = a9;
  v19 = a6;
  v20 = a4;
  v21 = objc_alloc_init(getMPModelLibraryRequestClass());
  [v21 setSectionKind:0];
  v47[0] = MEMORY[0x277D85DD0];
  v47[1] = 3221225472;
  v47[2] = __225__MusicKit_SoftLinking_MPModelLibraryRequest_initWithLegacyModelObjectType_itemKind_allowedItemIdentifiers_allowedItemIdentifierSets_itemSortDescriptors_itemFilterText_itemPropertyFilters_range_filteringOptions_mediaLibrary___block_invoke;
  v47[3] = &unk_278229968;
  v49 = a3;
  v22 = v18;
  v48 = v22;
  v23 = [v17 msv_map:v47];
  v24 = [v23 mutableCopy];

  [v24 addObjectsFromArray:v19];
  v25 = [v20 _underlyingKind];

  v26 = [MusicKit_SoftLinking_MPModelKind _sanitizeKind:v25];
  [v21 setItemKind:v26];

  v27 = [objc_opt_class() _supportedPropertiesForModelObjectType:a3];
  [v21 setItemProperties:v27];

  [v21 setItemSortDescriptors:v42];
  [v21 setFilterText:v43];
  [v21 setAllowedItemIdentifiers:v24];
  [v21 setContentRange:{a10.location, a10.length}];
  [v21 setWantsDetailedKeepLocalRequestableResponse:(*&a11.var0 >> 8) & 1];
  v28 = [v22 _underlyingMediaLibrary];
  [v21 setMediaLibrary:v28];

  v29 = [v45 msv_map:&__block_literal_global_9];

  [v21 setItemPropertyFilters:v29];
  v30 = 2;
  if (!a11.var0)
  {
    v30 = 0;
  }

  v31 = vdupq_n_s64(*&a11.var0);
  v32 = vorrq_s8(vandq_s8(vshlq_u64(v31, xmmword_217756520), xmmword_217756550), vandq_s8(vshlq_u64(v31, xmmword_217756530), xmmword_217756540));
  v33 = *&vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL)) | (*&a11.var0 >> 9) & 0x800000 | (*&a11.var0 >> 16) & 0x1000000 | v30;
  if (a11.var8)
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
    objc_storeStrong(v35 + 3, a5);
    v37 = [v42 copy];
    itemSortDescriptors = v36->_itemSortDescriptors;
    v36->_itemSortDescriptors = v37;

    objc_storeStrong(&v36->_itemFilterText, v41);
    v36->_range = a10;
    v36->_wantsDetailedKeepLocalRequestableResponse = (*&a11.var0 & 0x100) >> 8;
  }

  return v36;
}

- (MusicKit_SoftLinking_MPModelLibraryRequest)initWithLegacyModelObject:(id)a3 itemType:(int64_t)a4 properties:(id)a5 relationships:(id)a6 mediaLibrary:(id)a7
{
  v37[1] = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  v16 = objc_alloc_init(getMPModelLibraryRequestClass());
  [v16 setSectionKind:0];
  v17 = [MusicKit_SoftLinking_MPModelKind _modelKindForModelObjectType:a4];
  [v16 setItemKind:v17];

  v18 = [v12 _underlyingModelObject];
  v19 = [v18 identifiers];
  v37[0] = v19;
  v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:1];

  [v16 setAllowedItemIdentifiers:v20];
  v21 = [MusicKit_SoftLinking_MPModelRequest _propertySetForRawProperties:v13 relationships:v14];
  [v16 setItemProperties:v21];

  v22 = [v15 _underlyingMediaLibrary];
  v23 = v22;
  if (v22)
  {
    v24 = v22;
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
    v24 = [v25 deviceMediaLibrary];
  }

  v27 = v24;

  [v16 setMediaLibrary:v27];
  v31.receiver = self;
  v31.super_class = MusicKit_SoftLinking_MPModelLibraryRequest;
  v28 = [(MusicKit_SoftLinking_MPModelRequest *)&v31 _initWithUnderlyingRequest:v16];

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (void)performWithCompletionHandler:(id)a3
{
  v4 = a3;
  if (MRMediaRemoteIsMusicAppInstalled())
  {
    v5 = [(MusicKit_SoftLinking_MPModelRequest *)self _underlyingRequest];
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __75__MusicKit_SoftLinking_MPModelLibraryRequest_performWithCompletionHandler___block_invoke;
    v7[3] = &unk_2782299D0;
    v8 = v4;
    [v5 performWithResponseHandler:v7];
  }

  else
  {
    v6 = MusicKit_Logging_Library();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [MusicKit_SoftLinking_MPModelLibraryRequest performWithCompletionHandler:v6];
    }

    v5 = [MEMORY[0x277CCA9B8] musicKit_defaultLibraryError];
    (*(v4 + 2))(v4, 0, v5);
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