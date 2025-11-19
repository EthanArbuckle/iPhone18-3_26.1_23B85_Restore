@interface JSVersionProvider
- (_TtC17AdPlatformsCommon17JSVersionProvider)init;
- (_TtC17AdPlatformsCommon17JSVersionProvider)initWithDirectoryURL:(id)a3;
- (id)getJetPackVersion;
@end

@implementation JSVersionProvider

- (_TtC17AdPlatformsCommon17JSVersionProvider)init
{
  v3 = sub_1BB0142E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0145D8();
  (*(v4 + 32))(self + OBJC_IVAR____TtC17AdPlatformsCommon17JSVersionProvider_directoryURL, v8, v3);
  v9 = type metadata accessor for JSVersionProvider();
  v11.receiver = self;
  v11.super_class = v9;
  return [(JSVersionProvider *)&v11 init];
}

- (_TtC17AdPlatformsCommon17JSVersionProvider)initWithDirectoryURL:(id)a3
{
  v4 = sub_1BB0142E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BB0142C8();
  (*(v5 + 16))(self + OBJC_IVAR____TtC17AdPlatformsCommon17JSVersionProvider_directoryURL, v9, v4);
  v10 = type metadata accessor for JSVersionProvider();
  v13.receiver = self;
  v13.super_class = v10;
  v11 = [(JSVersionProvider *)&v13 init];
  (*(v5 + 8))(v9, v4);
  return v11;
}

- (id)getJetPackVersion
{
  v2 = self;
  sub_1BAFEB0DC();

  v3 = sub_1BB014B38();

  return v3;
}

@end