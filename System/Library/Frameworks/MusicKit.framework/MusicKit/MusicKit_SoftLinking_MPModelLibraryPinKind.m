@interface MusicKit_SoftLinking_MPModelLibraryPinKind
- (MusicKit_SoftLinking_MPModelLibraryPinKind)init;
@end

@implementation MusicKit_SoftLinking_MPModelLibraryPinKind

- (MusicKit_SoftLinking_MPModelLibraryPinKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultPinKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelLibraryPinKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

@end