@interface MPModelAlbum
+ (id)orphanMusicVideoPropertySet;
+ (id)representativeTitlePropertySet;
- (MPModelSong)orphanMusicVideo;
- (NSString)representativeTitle;
- (NSString)shortDescription;
@end

@implementation MPModelAlbum

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
    v5 = String._bridgeToObjectiveC()();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)representativeTitlePropertySet
{
  sub_10010FC20(&unk_1011AAAB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_100EBDC20;
  *(v2 + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 40) = v3;
  *(v2 + 48) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(v2 + 56) = v4;
  isa = Array._bridgeToObjectiveC()().super.isa;

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
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xEE006D75626C4120;
    v5 = 0x64656C7469746E55;
  }

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  String.append(_:)(v8);

  v9._countAndFlagsBits = 34;
  v9._object = 0xE100000000000000;
  String.append(_:)(v9);

  v10 = String._bridgeToObjectiveC()();

  return v10;
}

@end