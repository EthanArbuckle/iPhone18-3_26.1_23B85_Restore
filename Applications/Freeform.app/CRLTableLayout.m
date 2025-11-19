@interface CRLTableLayout
- (CGPoint)offsetToApplyWhenComputingLayoutGeometryOfChild:(id)a3;
- (CGRect)boundsForCollaboratorHUDForSelectionPath:(id)a3;
- (CGRect)frameForMiniFormatterPositioning;
- (CGSize)minimumSizeForResizingKnob:(id)a3;
- (CRLCanvasInfoGeometry)finalInfoGeometryForResize;
- (NSSet)reliedOnLayouts;
- (_TtC8Freeform14CRLTableLayout)initWithInfo:(id)a3;
- (id)additionalDependenciesForChildLayout:(id)a3;
- (id)childInfosForChildLayouts;
- (id)computeLayoutGeometry;
- (void)beginResize;
- (void)endResize;
- (void)processChangedProperty:(unint64_t)a3;
- (void)processChanges:(id)a3;
- (void)takeSizeFromTracker:(id)a3;
- (void)validate;
@end

@implementation CRLTableLayout

- (NSSet)reliedOnLayouts
{
  v10.receiver = self;
  v10.super_class = type metadata accessor for CRLTableLayout();
  v2 = v10.receiver;
  v3 = [(CRLCanvasLayout *)&v10 reliedOnLayouts];
  if (v3)
  {
    v4 = v3;
    sub_100006370(0, &qword_101A287B0);
    sub_10000FDE0(&qword_101A13610, &qword_101A287B0);
    v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = _swiftEmptySetSingleton;
  }

  v11 = v5;
  v6 = [v2 children];
  sub_100006370(0, &qword_101A287B0);
  v7 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10063FC24(v7);

  sub_10000FDE0(&qword_101A13610, &qword_101A287B0);
  v8.super.isa = Set._bridgeToObjectiveC()().super.isa;

  return v8.super.isa;
}

- (id)additionalDependenciesForChildLayout:(id)a3
{
  sub_1005B981C(&unk_1019F4D60);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_101465920;
  *(v4 + 32) = self;
  sub_100006370(0, &qword_101A287B0);
  v5 = self;
  v6.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v6.super.isa;
}

- (void)validate
{
  v2 = self;
  sub_1012064F8();
}

- (_TtC8Freeform14CRLTableLayout)initWithInfo:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_1012105B8(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (CGSize)minimumSizeForResizingKnob:(id)a3
{
  v3 = self;
  sub_101210784(v6);

  v4 = v7;
  v5 = v8;
  result.height = v5;
  result.width = v4;
  return result;
}

- (void)processChanges:(id)a3
{
  if (a3)
  {
    type metadata accessor for CRLChangeRecord();
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  v5 = self;
  sub_101206730(v4);
}

- (void)processChangedProperty:(unint64_t)a3
{
  v4 = self;
  sub_101206940(a3);
}

- (id)computeLayoutGeometry
{
  v2 = self;
  sub_101206A94();
  v7 = [objc_allocWithZone(CRLCanvasLayoutGeometry) initWithFrame:{v3, v4, v5, v6}];

  return v7;
}

- (void)takeSizeFromTracker:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_101206E5C(a3);
}

- (void)beginResize
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CRLTableLayout();
  v2 = v3.receiver;
  [(CRLCanvasLayout *)&v3 beginResize];
  sub_101207574();
}

- (void)endResize
{
  v2 = self;
  sub_101209640();
}

- (CRLCanvasInfoGeometry)finalInfoGeometryForResize
{
  v2 = self;
  sub_101206A94();
  v7 = [objc_allocWithZone(CRLCanvasInfoGeometry) initWithPosition:v3 size:{v4, v5, v6}];

  return v7;
}

- (id)childInfosForChildLayouts
{
  v2 = self;
  sub_10120B634();

  sub_1005B981C(&qword_1019F5720);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

- (CGRect)boundsForCollaboratorHUDForSelectionPath:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_10120BD94(a3);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v15 = v8;
  v16 = v10;
  v17 = v12;
  v18 = v14;
  result.size.height = v18;
  result.size.width = v17;
  result.origin.y = v16;
  result.origin.x = v15;
  return result;
}

- (CGPoint)offsetToApplyWhenComputingLayoutGeometryOfChild:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10120CFA4(v4);
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.y = v11;
  result.x = v10;
  return result;
}

- (CGRect)frameForMiniFormatterPositioning
{
  v2 = self;
  sub_10120F71C();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v11 = v4;
  v12 = v6;
  v13 = v8;
  v14 = v10;
  result.size.height = v14;
  result.size.width = v13;
  result.origin.y = v12;
  result.origin.x = v11;
  return result;
}

@end