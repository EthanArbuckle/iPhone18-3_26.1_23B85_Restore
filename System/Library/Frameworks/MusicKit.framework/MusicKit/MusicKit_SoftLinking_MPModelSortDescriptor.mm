@interface MusicKit_SoftLinking_MPModelSortDescriptor
+ (NSSortDescriptor)recentlyAddedModelObjectSortDescriptor;
+ (NSSortDescriptor)recentlyDownloadedModelObjectSortDescriptor;
@end

@implementation MusicKit_SoftLinking_MPModelSortDescriptor

+ (NSSortDescriptor)recentlyAddedModelObjectSortDescriptor
{
  v31 = *MEMORY[0x277D85DE8];
  MPMultiSortDescriptorClass = getMPMultiSortDescriptorClass();
  v3 = getMPModelRelationshipGenericAlbum_1();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v4 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0;
  v28[0] = v3;
  if (!getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0)
  {
    v5 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v5, "MPModelPropertyAlbumLibraryAddedDate");
    getMPModelPropertyAlbumLibraryAddedDateSymbolLoc_ptr_0 = v25[3];
    v4 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *v4;
  v29[0] = v6;
  v7 = getMPModelRelationshipGenericMovie_1();
  v28[1] = v7;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v8 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0)
  {
    v9 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v9, "MPModelPropertyMovieLibraryAddedDate");
    getMPModelPropertyMovieLibraryAddedDateSymbolLoc_ptr_0 = v25[3];
    v8 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = *v8;
  v29[1] = v10;
  v11 = getMPModelRelationshipGenericPlaylist_2();
  v28[2] = v11;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v12 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0)
  {
    v13 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v13, "MPModelPropertyPlaylistLibraryAddedDate");
    getMPModelPropertyPlaylistLibraryAddedDateSymbolLoc_ptr_0 = v25[3];
    v12 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = *v12;
  v29[2] = v14;
  v15 = getMPModelRelationshipGenericTVSeason_1();
  v28[3] = v15;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v16 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0)
  {
    v17 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v17, "MPModelPropertyTVSeasonLibraryAddedDate");
    getMPModelPropertyTVSeasonLibraryAddedDateSymbolLoc_ptr_0 = v25[3];
    v16 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v16)
  {
LABEL_16:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v30 = *v16;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v30;
  v20 = [v18 dictionaryWithObjects:v29 forKeys:v28 count:4];

  v21 = [MPMultiSortDescriptorClass sortDescriptorWithRelatedProperties:v20 ascending:0];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

+ (NSSortDescriptor)recentlyDownloadedModelObjectSortDescriptor
{
  v31 = *MEMORY[0x277D85DE8];
  MPMultiSortDescriptorClass = getMPMultiSortDescriptorClass();
  v3 = getMPModelRelationshipGenericAlbum_1();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v4 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0;
  v28[0] = v3;
  if (!getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0)
  {
    v5 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v5, "MPModelPropertyAlbumDownloadedDate");
    getMPModelPropertyAlbumDownloadedDateSymbolLoc_ptr_0 = v25[3];
    v4 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v4)
  {
    goto LABEL_16;
  }

  v6 = *v4;
  v29[0] = v6;
  v7 = getMPModelRelationshipGenericMovie_1();
  v28[1] = v7;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v8 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0)
  {
    v9 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v9, "MPModelPropertyMovieDownloadedDate");
    getMPModelPropertyMovieDownloadedDateSymbolLoc_ptr_0 = v25[3];
    v8 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v8)
  {
    goto LABEL_16;
  }

  v10 = *v8;
  v29[1] = v10;
  v11 = getMPModelRelationshipGenericPlaylist_2();
  v28[2] = v11;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v12 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0)
  {
    v13 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v13, "MPModelPropertyPlaylistDownloadedDate");
    getMPModelPropertyPlaylistDownloadedDateSymbolLoc_ptr_0 = v25[3];
    v12 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v12)
  {
    goto LABEL_16;
  }

  v14 = *v12;
  v29[2] = v14;
  v15 = getMPModelRelationshipGenericTVSeason_1();
  v28[3] = v15;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v16 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0;
  v27 = getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0;
  if (!getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0)
  {
    v17 = MediaPlayerLibrary_13();
    v25[3] = dlsym(v17, "MPModelPropertyTVSeasonDownloadedDate");
    getMPModelPropertyTVSeasonDownloadedDateSymbolLoc_ptr_0 = v25[3];
    v16 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
  if (!v16)
  {
LABEL_16:
    +[MusicKit_SoftLinking_MPModelLibrarySearchScope _topResultsRelationshipKeyForSpecificModelObjectType:];
    __break(1u);
  }

  v30 = *v16;
  v18 = MEMORY[0x277CBEAC0];
  v19 = v30;
  v20 = [v18 dictionaryWithObjects:v29 forKeys:v28 count:4];

  v21 = [MPMultiSortDescriptorClass sortDescriptorWithRelatedProperties:v20 ascending:0];

  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

@end