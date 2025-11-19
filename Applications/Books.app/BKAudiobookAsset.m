@interface BKAudiobookAsset
- (BKAudiobookAsset)init;
- (id)assetType;
- (id)url;
@end

@implementation BKAudiobookAsset

- (id)assetType
{
  v2 = sub_1007A2214();

  return v2;
}

- (id)url
{
  v3 = sub_1007969B4();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___BKAudiobookAsset_audiobookURL, v3);
  sub_100796944(v7);
  v9 = v8;
  (*(v4 + 8))(v6, v3);

  return v9;
}

- (BKAudiobookAsset)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end