@interface MusicKit_SoftLinking_MPModelPlaylistEntryKind
- (MusicKit_SoftLinking_MPModelPlaylistEntryKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylistEntryKind

- (MusicKit_SoftLinking_MPModelPlaylistEntryKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelPlaylistEntryKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end