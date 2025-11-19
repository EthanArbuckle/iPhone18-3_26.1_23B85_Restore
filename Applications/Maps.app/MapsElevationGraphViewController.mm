@interface MapsElevationGraphViewController
+ (id)makeHostingControllerFor:(id)a3 width:(double)a4 isMetric:(BOOL)a5 traitCollection:(id)a6 shouldHighlight:(BOOL)a7 chartStyle:(id)a8 currentPosition:(id)a9;
- (_TtC4Maps32MapsElevationGraphViewController)initWithCoder:(id)a3;
- (_TtC4Maps32MapsElevationGraphViewController)initWithNibName:(id)a3 bundle:(id)a4;
@end

@implementation MapsElevationGraphViewController

+ (id)makeHostingControllerFor:(id)a3 width:(double)a4 isMetric:(BOOL)a5 traitCollection:(id)a6 shouldHighlight:(BOOL)a7 chartStyle:(id)a8 currentPosition:(id)a9
{
  v15 = sub_1000CE6B8(&qword_10191B3A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_100014C84(0, &qword_10191B3B0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  v19 = a3;
  v20 = a6;
  v21 = a8;
  v22 = sub_1004F76EC(a3, a5, v20, a7, v21, v18, a4);

  (*(v16 + 8))(v18, v15);

  return v22;
}

- (_TtC4Maps32MapsElevationGraphViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = a4;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MapsElevationGraphViewController();
  v9 = [(MapsElevationGraphViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (_TtC4Maps32MapsElevationGraphViewController)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsElevationGraphViewController();
  v4 = a3;
  v5 = [(MapsElevationGraphViewController *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end