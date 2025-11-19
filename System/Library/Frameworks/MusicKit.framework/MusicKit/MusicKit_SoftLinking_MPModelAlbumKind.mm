@interface MusicKit_SoftLinking_MPModelAlbumKind
- (MusicKit_SoftLinking_MPModelAlbumKind)initWithVariants:(unint64_t)a3 options:(unint64_t)a4;
@end

@implementation MusicKit_SoftLinking_MPModelAlbumKind

- (MusicKit_SoftLinking_MPModelAlbumKind)initWithVariants:(unint64_t)a3 options:(unint64_t)a4
{
  v7 = [(MusicKit_SoftLinking_MPModelAlbumKind *)self _underlyingVariantsFromVariants:?];
  v8 = [(MusicKit_SoftLinking_MPModelAlbumKind *)self _underlyingOptionsFromOptions:a4];
  v9 = objc_opt_class();
  if ((a4 & 2) != 0)
  {
    [v9 _defaultSongKind];
  }

  else
  {
    [v9 _defaultSongKindForAudioOnly];
  }
  v10 = ;
  v11 = [getMPModelAlbumClass() kindWithVariants:v7 songKind:v10 options:v8];
  v15.receiver = self;
  v15.super_class = MusicKit_SoftLinking_MPModelAlbumKind;
  v12 = [(MusicKit_SoftLinking_MPModelKind *)&v15 _initWithUnderlyingKind:v11];
  v13 = v12;
  if (v12)
  {
    v12->_options = a4;
    v12->_variants = a3;
  }

  return v13;
}

@end