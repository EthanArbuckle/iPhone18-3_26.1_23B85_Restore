@interface MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind
- (MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind)init;
- (MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind)initWithVariants:(unint64_t)a3;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind

- (MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistAuthorKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

- (MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind)initWithVariants:(unint64_t)a3
{
  v5 = [(MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind *)self _underlyingVariantsFromVariants:?];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2050000000;
  v6 = getMPModelPlaylistAuthorClass_softClass_0;
  v17 = getMPModelPlaylistAuthorClass_softClass_0;
  if (!getMPModelPlaylistAuthorClass_softClass_0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __getMPModelPlaylistAuthorClass_block_invoke_0;
    v13[3] = &unk_278229610;
    v13[4] = &v14;
    __getMPModelPlaylistAuthorClass_block_invoke_0(v13);
    v6 = v15[3];
  }

  v7 = v6;
  _Block_object_dispose(&v14, 8);
  v8 = [v6 kindWithVariants:v5];
  v12.receiver = self;
  v12.super_class = MusicKit_SoftLinking_MPModelPlaylistCollaboratorKind;
  v9 = [(MusicKit_SoftLinking_MPModelKind *)&v12 _initWithUnderlyingKind:v8];
  v10 = v9;
  if (v9)
  {
    v9->_variants = a3;
  }

  return v10;
}

@end