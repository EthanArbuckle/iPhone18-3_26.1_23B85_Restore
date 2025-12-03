@interface NTKAlbumID
- (NSString)description;
- (_TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID)init;
- (_TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID)initWithAlbum:(id)album uuidString:(id)string;
@end

@implementation NTKAlbumID

- (_TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID)initWithAlbum:(id)album uuidString:(id)string
{
  v5 = sub_23BFFA300();
  v7 = v6;
  v8 = sub_23BFFA300();
  v9 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID_album);
  *v9 = v5;
  v9[1] = v7;
  v10 = (self + OBJC_IVAR____TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID_uuidString);
  *v10 = v8;
  v10[1] = v11;
  v13.receiver = self;
  v13.super_class = type metadata accessor for NTKAlbumID();
  return [(NTKAlbumID *)&v13 init];
}

- (NSString)description
{
  selfCopy = self;
  sub_23BFF36D4();

  v3 = sub_23BFFA2C0();

  return v3;
}

- (_TtC30NTKParmesanFaceBundleCompanion10NTKAlbumID)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end