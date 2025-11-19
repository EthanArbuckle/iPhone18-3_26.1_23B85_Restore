@interface MusicKit_SoftLinking_MPModelGenreKind
- (MusicKit_SoftLinking_MPModelGenreKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelGenreKind

- (MusicKit_SoftLinking_MPModelGenreKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultGenreKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelGenreKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end