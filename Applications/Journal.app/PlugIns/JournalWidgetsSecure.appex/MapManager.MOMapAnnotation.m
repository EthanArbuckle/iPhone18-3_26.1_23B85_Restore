@interface MapManager.MOMapAnnotation
- (CLLocationCoordinate2D)coordinate;
- (NSString)title;
- (_TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation)init;
- (void)setTitle:(id)a3;
@end

@implementation MapManager.MOMapAnnotation

- (CLLocationCoordinate2D)coordinate
{
  v2 = *(self + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation_coordinate);
  v3 = *(self + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation_coordinate + 8);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

- (NSString)title
{
  if (*(self + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation_title + 8))
  {

    v2 = sub_1000DBF04();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (void)setTitle:(id)a3
{
  if (a3)
  {
    v4 = sub_1000DBF44();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR____TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation_title);
  *v6 = v4;
  v6[1] = v5;
}

- (_TtCC20JournalWidgetsSecure10MapManager15MOMapAnnotation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end