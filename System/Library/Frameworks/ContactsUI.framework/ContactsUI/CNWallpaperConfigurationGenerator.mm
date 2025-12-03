@interface CNWallpaperConfigurationGenerator
+ (_TtC10ContactsUI33CNWallpaperConfigurationGenerator)shared;
- (BOOL)isCleanStatePosterData:(id)data contact:(id)contact;
- (_TtC10ContactsUI33CNWallpaperConfigurationGenerator)init;
- (id)cleanStatePosterArchiveDataFor:(id)for;
@end

@implementation CNWallpaperConfigurationGenerator

+ (_TtC10ContactsUI33CNWallpaperConfigurationGenerator)shared
{
  if (qword_1EAF718E0 != -1)
  {
    swift_once();
  }

  v3 = qword_1EAF718E8;

  return v3;
}

- (id)cleanStatePosterArchiveDataFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_199B73ABC(forCopy);
  sub_199A7A02C(0, &unk_1EAF75580);
  v7 = sub_199B2B2CC(v6);
  v9 = v8;

  v10 = sub_199DF71DC();
  sub_199A9EF34(v7, v9);

  return v10;
}

- (BOOL)isCleanStatePosterData:(id)data contact:(id)contact
{
  dataCopy = data;
  contactCopy = contact;
  selfCopy = self;
  v9 = sub_199DF71FC();
  v11 = v10;

  v12 = sub_199B73B70(v9, v11, contactCopy);
  sub_199A9EF34(v9, v11);

  return v12 & 1;
}

- (_TtC10ContactsUI33CNWallpaperConfigurationGenerator)init
{
  v3 = OBJC_IVAR____TtC10ContactsUI33CNWallpaperConfigurationGenerator_cleanStatePosterBackgroundColor;
  *(&self->super.isa + v3) = [objc_opt_self() systemDarkGrayColor];
  v5.receiver = self;
  v5.super_class = type metadata accessor for CNWallpaperConfigurationGenerator();
  return [(CNWallpaperConfigurationGenerator *)&v5 init];
}

@end