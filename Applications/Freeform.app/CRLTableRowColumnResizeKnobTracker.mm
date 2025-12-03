@interface CRLTableRowColumnResizeKnobTracker
- (_TtC8Freeform34CRLTableRowColumnResizeKnobTracker)init;
- (id)currentGeometryForLayout:(id)layout;
@end

@implementation CRLTableRowColumnResizeKnobTracker

- (id)currentGeometryForLayout:(id)layout
{
  layoutCopy = layout;
  selfCopy = self;
  result = [layoutCopy info];
  if (result)
  {
    geometry = [result geometry];
    swift_unknownObjectRelease();
    [geometry position];
    v9 = v8;
    v11 = v10;

    [(CRLResizeKnobTracker *)selfCopy currentResizedBounds];
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