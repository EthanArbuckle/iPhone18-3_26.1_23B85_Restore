@interface MusicKit_SoftLinking_MPModelComposerKind
- (MusicKit_SoftLinking_MPModelComposerKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelComposerKind

- (MusicKit_SoftLinking_MPModelComposerKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultComposerKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelComposerKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end