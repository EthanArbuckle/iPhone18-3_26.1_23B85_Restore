@interface MPModelAlbum
+ (id)orphanMusicVideoPropertySet;
+ (id)representativeTitlePropertySet;
+ (id)requiredLibraryNavigationHandlerProperties;
- (MPModelSong)orphanMusicVideo;
- (NSString)representativeTitle;
- (NSString)shortDescription;
@end

@implementation MPModelAlbum

+ (id)requiredLibraryNavigationHandlerProperties
{
  v2 = sub_159278();

  return v2;
}

- (MPModelSong)orphanMusicVideo
{
  v2 = self;
  v3 = MPModelAlbum.orphanMusicVideo.getter();

  return v3;
}

- (NSString)representativeTitle
{
  v2 = self;
  MPModelAlbum.representativeTitle.getter();
  v4 = v3;

  if (v4)
  {
    v5 = sub_AB9260();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)representativeTitlePropertySet
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_E10EF0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_AF85F0;
  *(v2 + 32) = sub_AB92A0();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_AB92A0();
  *(v2 + 56) = v4;
  isa = sub_AB9740().super.isa;

  v6 = [objc_opt_self() propertySetWithProperties:isa];

  return v6;
}

+ (id)orphanMusicVideoPropertySet
{
  v2 = _sSo12MPModelAlbumC9MusicCoreE06orphanC16VideoPropertySetSo010MPPropertyH0CvgZ_0();

  return v2;
}

- (NSString)shortDescription
{
  v2 = self;
  v3 = [(MPModelAlbum *)v2 title:0x22203A656C746954];
  if (v3)
  {
    v4 = v3;
    v5 = sub_AB92A0();
    v7 = v6;
  }

  else
  {
    v7 = 0xEE006D75626C4120;
    v5 = 0x64656C7469746E55;
  }

  v11._countAndFlagsBits = v5;
  v11._object = v7;
  sub_AB94A0(v11);

  v12._countAndFlagsBits = 34;
  v12._object = 0xE100000000000000;
  sub_AB94A0(v12);

  v8 = sub_AB9260();

  return v8;
}

@end