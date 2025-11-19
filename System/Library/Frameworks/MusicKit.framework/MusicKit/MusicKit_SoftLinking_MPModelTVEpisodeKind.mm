@interface MusicKit_SoftLinking_MPModelTVEpisodeKind
- (MusicKit_SoftLinking_MPModelTVEpisodeKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelTVEpisodeKind

- (MusicKit_SoftLinking_MPModelTVEpisodeKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultTVEpisodeKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelTVEpisodeKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end