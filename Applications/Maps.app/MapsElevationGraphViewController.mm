@interface MapsElevationGraphViewController
+ (id)makeHostingControllerFor:(id)for width:(double)width isMetric:(BOOL)metric traitCollection:(id)collection shouldHighlight:(BOOL)highlight chartStyle:(id)style currentPosition:(id)position;
- (_TtC4Maps32MapsElevationGraphViewController)initWithCoder:(id)coder;
- (_TtC4Maps32MapsElevationGraphViewController)initWithNibName:(id)name bundle:(id)bundle;
@end

@implementation MapsElevationGraphViewController

+ (id)makeHostingControllerFor:(id)for width:(double)width isMetric:(BOOL)metric traitCollection:(id)collection shouldHighlight:(BOOL)highlight chartStyle:(id)style currentPosition:(id)position
{
  v15 = sub_1000CE6B8(&qword_10191B3A0);
  v16 = *(v15 - 8);
  __chkstk_darwin(v15);
  v18 = &v24 - v17;
  sub_100014C84(0, &qword_10191B3B0);
  static Measurement._unconditionallyBridgeFromObjectiveC(_:)();
  swift_getObjCClassMetadata();
  forCopy = for;
  collectionCopy = collection;
  styleCopy = style;
  v22 = sub_1004F76EC(for, metric, collectionCopy, highlight, styleCopy, v18, width);

  (*(v16 + 8))(v18, v15);

  return v22;
}

- (_TtC4Maps32MapsElevationGraphViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    bundleCopy = bundle;
    v7 = String._bridgeToObjectiveC()();
  }

  else
  {
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = type metadata accessor for MapsElevationGraphViewController();
  v9 = [(MapsElevationGraphViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (_TtC4Maps32MapsElevationGraphViewController)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for MapsElevationGraphViewController();
  coderCopy = coder;
  v5 = [(MapsElevationGraphViewController *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end