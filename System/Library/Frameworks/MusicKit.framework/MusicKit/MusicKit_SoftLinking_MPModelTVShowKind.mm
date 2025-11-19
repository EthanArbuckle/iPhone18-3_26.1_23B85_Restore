@interface MusicKit_SoftLinking_MPModelTVShowKind
- (MusicKit_SoftLinking_MPModelTVShowKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelTVShowKind

- (MusicKit_SoftLinking_MPModelTVShowKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultTVShowKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelTVShowKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end