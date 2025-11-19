@interface MusicKit_SoftLinking_MPModelPlaylistEntryReactionKind
- (MusicKit_SoftLinking_MPModelPlaylistEntryReactionKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelPlaylistEntryReactionKind

- (MusicKit_SoftLinking_MPModelPlaylistEntryReactionKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultPlaylistEntryReactionKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelPlaylistEntryReactionKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end