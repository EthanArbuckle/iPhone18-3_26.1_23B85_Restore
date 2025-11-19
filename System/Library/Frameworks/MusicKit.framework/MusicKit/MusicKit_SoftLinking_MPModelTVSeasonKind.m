@interface MusicKit_SoftLinking_MPModelTVSeasonKind
- (MusicKit_SoftLinking_MPModelTVSeasonKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelTVSeasonKind

- (MusicKit_SoftLinking_MPModelTVSeasonKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultTVSeasonKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelTVSeasonKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end