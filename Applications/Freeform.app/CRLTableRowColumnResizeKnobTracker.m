@interface CRLTableRowColumnResizeKnobTracker
- (_TtC8Freeform34CRLTableRowColumnResizeKnobTracker)init;
- (id)currentGeometryForLayout:(id)a3;
@end

@implementation CRLTableRowColumnResizeKnobTracker

- (id)currentGeometryForLayout:(id)a3
{
  v4 = a3;
  v5 = self;
  result = [v4 info];
  if (result)
  {
    v7 = [result geometry];
    swift_unknownObjectRelease();
    [v7 position];
    v9 = v8;
    v11 = v10;

    [(CRLResizeKnobTracker *)v5 currentResizedBounds];
    v14 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v9 size:{v11, v12, v13}];

    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

- (_TtC8Freeform34CRLTableRowColumnResizeKnobTracker)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end