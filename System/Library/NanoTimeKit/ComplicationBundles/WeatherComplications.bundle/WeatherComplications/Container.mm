@interface Container
+ (NSArray)complicationBundleDataSources;
- (_TtC20WeatherComplications9Container)init;
@end

@implementation Container

+ (NSArray)complicationBundleDataSources
{
  sub_23BDC57BC();
  sub_23BD9628C(&qword_27E1C5E98, &qword_23BDC9D20);
  v2 = sub_23BDC6770();

  return v2;
}

- (_TtC20WeatherComplications9Container)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for Container();
  return [(Container *)&v3 init];
}

@end