@interface MusicKit_SoftLinking_MPModelArtistKind
- (MusicKit_SoftLinking_MPModelArtistKind)init;
- (MusicKit_SoftLinking_MPModelArtistKind)initWithAlbumKind:(id)kind;
@end

@implementation MusicKit_SoftLinking_MPModelArtistKind

- (MusicKit_SoftLinking_MPModelArtistKind)init
{
  v3 = +[MusicKit_SoftLinking_MPModelKind _defaultArtistKind];
  v6.receiver = self;
  v6.super_class = MusicKit_SoftLinking_MPModelArtistKind;
  v4 = [(MusicKit_SoftLinking_MPModelKind *)&v6 _initWithUnderlyingKind:v3];

  return v4;
}

- (MusicKit_SoftLinking_MPModelArtistKind)initWithAlbumKind:(id)kind
{
  kindCopy = kind;
  MPModelArtistClass = getMPModelArtistClass();
  _underlyingKind = [kindCopy _underlyingKind];

  v7 = [MPModelArtistClass kindWithAlbumKind:_underlyingKind];

  v10.receiver = self;
  v10.super_class = MusicKit_SoftLinking_MPModelArtistKind;
  v8 = [(MusicKit_SoftLinking_MPModelKind *)&v10 _initWithUnderlyingKind:v7];

  return v8;
}

@end