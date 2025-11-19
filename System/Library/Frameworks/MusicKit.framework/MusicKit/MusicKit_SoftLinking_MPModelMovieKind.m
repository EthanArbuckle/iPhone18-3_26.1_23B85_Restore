@interface MusicKit_SoftLinking_MPModelMovieKind
- (MusicKit_SoftLinking_MPModelMovieKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelMovieKind

- (MusicKit_SoftLinking_MPModelMovieKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultMovieKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelMovieKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end