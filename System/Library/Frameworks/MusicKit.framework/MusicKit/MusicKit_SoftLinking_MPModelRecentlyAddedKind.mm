@interface MusicKit_SoftLinking_MPModelRecentlyAddedKind
- (MusicKit_SoftLinking_MPModelRecentlyAddedKind)initWithIncludeOnlyDownloadedContent:(BOOL)a3;
@end

@implementation MusicKit_SoftLinking_MPModelRecentlyAddedKind

- (MusicKit_SoftLinking_MPModelRecentlyAddedKind)initWithIncludeOnlyDownloadedContent:(BOOL)a3
{
  v22[4] = *MEMORY[0x277D85DE8];
  MPModelGenericObjectClass_1 = getMPModelGenericObjectClass_1();
  v4 = getMPModelRelationshipGenericAlbum_0();
  v21[0] = v4;
  v5 = +[MusicKit_SoftLinking_MPModelKind _defaultAlbumKind];
  v22[0] = v5;
  v6 = getMPModelRelationshipGenericMovie_0();
  v21[1] = v6;
  v7 = +[MusicKit_SoftLinking_MPModelKind _defaultMovieKind];
  v22[1] = v7;
  v8 = getMPModelRelationshipGenericPlaylist_1();
  v21[2] = v8;
  v9 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistKindExcludingEmpty];
  v22[2] = v9;
  v10 = getMPModelRelationshipGenericTVSeason_0();
  v21[3] = v10;
  v11 = +[MusicKit_SoftLinking_MPModelKind _defaultTVSeasonKind];
  v22[3] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:4];
  v13 = [MPModelGenericObjectClass_1 kindWithRelationshipKinds:v12];

  v20.receiver = self;
  v20.super_class = MusicKit_SoftLinking_MPModelRecentlyAddedKind;
  v14 = [(MusicKit_SoftLinking_MPModelKind *)&v20 _initWithUnderlyingKind:v13];
  v15 = v14;
  if (v14)
  {
    v14->_includeOnlyDownloadedContent = a3;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

@end