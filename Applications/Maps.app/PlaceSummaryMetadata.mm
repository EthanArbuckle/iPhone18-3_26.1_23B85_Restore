@interface PlaceSummaryMetadata
- (BOOL)containsPhotoCarouselLine;
- (_TtC4Maps20PlaceSummaryMetadata)init;
@end

@implementation PlaceSummaryMetadata

- (_TtC4Maps20PlaceSummaryMetadata)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (BOOL)containsPhotoCarouselLine
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC4Maps20PlaceSummaryMetadata_templatePairs);
  v3 = *(v2 + 16);
  v4 = self;
  v5 = v4;
  v6 = v2 + 48;
  v7 = -v3;
  v8 = -1;
  while (1)
  {
    v9 = v7 + v8;
    if (v7 + v8 == -1)
    {
LABEL_5:

      LOBYTE(v4) = v9 != -1;
      return v4;
    }

    if (++v8 >= *(v2 + 16))
    {
      break;
    }

    v10 = v6 + 24;
    v11 = *(v6 - 8);

    v12 = v11;
    v13 = sub_1000E1714();

    v6 = v10;
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return v4;
}

@end