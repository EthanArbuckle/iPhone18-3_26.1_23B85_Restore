@interface MusicKit_SoftLinking_MPModelPlaylistKind
- (MusicKit_SoftLinking_MPModelPlaylistKind)initWithVariants:(unint64_t)variants options:(unint64_t)options;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylistKind

- (MusicKit_SoftLinking_MPModelPlaylistKind)initWithVariants:(unint64_t)variants options:(unint64_t)options
{
  v7 = [(MusicKit_SoftLinking_MPModelPlaylistKind *)self _underlyingVariantsFromVariants:?];
  v8 = [(MusicKit_SoftLinking_MPModelPlaylistKind *)self _underlyingOptionsFromOptions:options];
  MPModelPlaylistClass = getMPModelPlaylistClass();
  v10 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKindForTracks];
  v11 = [MPModelPlaylistClass kindWithVariants:v7 playlistEntryKind:v10 options:v8];

  v15.receiver = self;
  v15.super_class = MusicKit_SoftLinking_MPModelPlaylistKind;
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