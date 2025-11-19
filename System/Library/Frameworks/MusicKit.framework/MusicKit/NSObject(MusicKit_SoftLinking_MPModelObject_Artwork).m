@interface NSObject(MusicKit_SoftLinking_MPModelObject_Artwork)
- (id)musicKit_artworkCatalogForProperty:()MusicKit_SoftLinking_MPModelObject_Artwork;
@end

@implementation NSObject(MusicKit_SoftLinking_MPModelObject_Artwork)

- (id)musicKit_artworkCatalogForProperty:()MusicKit_SoftLinking_MPModelObject_Artwork
{
  v4 = a3;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v5 = getMPModelObjectClass_softClass_2;
  v28 = getMPModelObjectClass_softClass_2;
  if (!getMPModelObjectClass_softClass_2)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getMPModelObjectClass_block_invoke_2;
    v23 = &unk_278229610;
    v24 = &v25;
    __getMPModelObjectClass_block_invoke_2(&v20);
    v5 = v26[3];
  }

  v6 = v5;
  _Block_object_dispose(&v25, 8);
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v7 = a1;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2050000000;
  v8 = getMPModelStoreBrowseContentItemClass_softClass_1;
  v28 = getMPModelStoreBrowseContentItemClass_softClass_1;
  if (!getMPModelStoreBrowseContentItemClass_softClass_1)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getMPModelStoreBrowseContentItemClass_block_invoke_1;
    v23 = &unk_278229610;
    v24 = &v25;
    __getMPModelStoreBrowseContentItemClass_block_invoke_1(&v20);
    v8 = v26[3];
  }

  v9 = v8;
  _Block_object_dispose(&v25, 8);
  if (objc_opt_isKindOfClass())
  {
    v10 = [v7 innerObject];

    v7 = v10;
  }

  if (![v7 hasLoadedValueForKey:v4])
  {
    goto LABEL_20;
  }

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v11 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr_0;
  v28 = getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr_0;
  if (!getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr_0)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_block_invoke_0;
    v23 = &unk_278229610;
    v24 = &v25;
    v12 = MediaPlayerLibrary_11();
    v13 = dlsym(v12, "MPModelPropertyPlaylistTracksTiledArtwork");
    *(v24[1] + 24) = v13;
    getMPModelPropertyPlaylistTracksTiledArtworkSymbolLoc_ptr_0 = *(v24[1] + 24);
    v11 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v11)
  {
    v19 = +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    _Block_object_dispose(&v25, 8);
    _Unwind_Resume(v19);
  }

  v14 = *v11;
  if (![v4 isEqualToString:v14])
  {

LABEL_17:
    if (objc_opt_respondsToSelector())
    {
      v16 = [v7 artworkCatalog];
      goto LABEL_19;
    }

LABEL_20:
    v17 = 0;
    goto LABEL_21;
  }

  v15 = objc_opt_respondsToSelector();

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = [v7 tracksTiledArtworkCatalogWithRows:2 columns:2];
LABEL_19:
  v17 = v16;
LABEL_21:

LABEL_22:

  return v17;
}

@end