@interface DataSourceContainer
+ (NSArray)complicationBundleDataSources;
- (_TtC32DepthComplicationBundleCompanion19DataSourceContainer)init;
@end

@implementation DataSourceContainer

+ (NSArray)complicationBundleDataSources
{
  sub_3828(&qword_48AD8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_36D00;
  *(v2 + 32) = type metadata accessor for DepthDataSource();
  *(v2 + 40) = type metadata accessor for TemperatureDataSource();
  sub_3828(&qword_48AE0);
  v3.super.isa = sub_35458().super.isa;

  return v3.super.isa;
}

- (_TtC32DepthComplicationBundleCompanion19DataSourceContainer)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for DataSourceContainer();
  return [(DataSourceContainer *)&v3 init];
}

@end