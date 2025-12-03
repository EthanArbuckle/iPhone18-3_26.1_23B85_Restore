@interface MusicKit_SoftLinking_MPModelAlbumKind
- (MusicKit_SoftLinking_MPModelAlbumKind)initWithVariants:(unint64_t)variants options:(unint64_t)options;
@end

@implementation MusicKit_SoftLinking_MPModelAlbumKind

- (MusicKit_SoftLinking_MPModelAlbumKind)initWithVariants:(unint64_t)variants options:(unint64_t)options
{
  v7 = [(MusicKit_SoftLinking_MPModelAlbumKind *)self _underlyingVariantsFromVariants:?];
  v8 = [(MusicKit_SoftLinking_MPModelAlbumKind *)self _underlyingOptionsFromOptions:options];
  v9 = objc_opt_class();
  if ((options & 2) != 0)
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
    v12->_options = options;
    v12->_variants = variants;
  }

  return v13;
}

@end