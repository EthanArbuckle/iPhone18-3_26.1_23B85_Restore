@interface CRLWPLayout
- (BOOL)isInstructional;
- (BOOL)isOverflowing;
- (BOOL)markedTextContainsPoint:(CGPoint)a3;
- (BOOL)parentAutosizes;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)rectInRootForSelectionPath:(id)a3;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)a3;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)minSize;
- (CRLWrapSegments)interiorWrapSegments;
- (NSArray)dependentLayouts;
- (NSArray)renderingOverrides;
- (NSMutableArray)columns;
- (_TtC8Freeform11CRLWPLayout)initWithInfo:(id)a3;
- (double)viewScaleForZoomingToSelectionPath:(id)a3 targetPointSize:(double)a4;
- (id)closestPositionTo:(CGPoint)a3;
- (id)columnMetricsForCharIndex:(int64_t)a3 outRange:(_NSRange *)a4;
- (id)computeLayoutGeometry;
- (id)selectionRectsFor:(id)a3;
- (id)textWrapper;
- (int64_t)naturalAlignment;
- (void)invalidateSize;
- (void)invalidateTextLayout;
- (void)layoutSearchForSpellingErrorsWithHitBlock:(id)a3 stop:(BOOL *)a4;
- (void)layoutSearchForString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 completionBlock:(id)a6;
- (void)validate;
@end

@implementation CRLWPLayout

- (_TtC8Freeform11CRLWPLayout)initWithInfo:(id)a3
{
  swift_unknownObjectRetain();
  v4 = sub_1007AB2E4(a3);
  swift_unknownObjectRelease();
  return v4;
}

- (BOOL)parentAutosizes
{
  v2 = self;
  v3 = [(CRLCanvasAbstractLayout *)v2 parent];
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (!v5)
  {

LABEL_5:
    v9.receiver = v2;
    v9.super_class = type metadata accessor for CRLWPLayout();
    v7 = [(CRLCanvasLayout *)&v9 parentAutosizes];

    return v7;
  }

  v6 = [v5 autosizeFlagsFor:v2];

  return v6 != 0;
}

- (void)validate
{
  v2 = self;
  CRLWPLayout.validate()();
}

- (void)invalidateTextLayout
{
  v2 = self;
  if ([(CRLWPLayout *)v2 parentAutosizes])
  {
    [(CRLWPLayout *)v2 invalidateSize];
  }

  *(&v2->super.super.super.isa + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
  [(CRLCanvasLayout *)v2 invalidate];
  [(CRLCanvasLayout *)v2 setNeedsDisplay];
}

- (void)invalidateSize
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
  v2.receiver = self;
  v2.super_class = type metadata accessor for CRLWPLayout();
  [(CRLCanvasLayout *)&v2 invalidateSize];
}

- (id)computeLayoutGeometry
{
  v2 = self;
  CRLWPLayout.computeLayoutGeometry()(v3);
  v5 = v4;

  return v5;
}

- (BOOL)markedTextContainsPoint:(CGPoint)a3
{
  v3 = self;
  v4 = sub_1007A1554();

  return v4 & 1;
}

- (id)selectionRectsFor:(id)a3
{
  type metadata accessor for CRLTextRange();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = qword_1019F1570;
  v6 = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v10[3] = sub_1005B981C(&unk_101A001E0);
  v10[0] = v4;

  sub_1007A22B0(v6, v4, &v9);
  sub_100005070(v10);

  type metadata accessor for CRLTextSelectionRect();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)closestPositionTo:(CGPoint)a3
{
  v3 = qword_1019F1570;
  v4 = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_1007A3814(v4, &v7);

  v5 = v7;

  return v5;
}

- (NSArray)dependentLayouts
{
  v2 = self;
  v3 = CRLWPLayout.dependentLayouts.getter();

  if (v3)
  {
    sub_100006370(0, &qword_101A287B0);
    v4.super.isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v4.super.isa = 0;
  }

  return v4.super.isa;
}

- (void)layoutSearchForString:(id)a3 options:(unint64_t)a4 hitBlock:(id)a5 completionBlock:(id)a6
{
  v9 = _Block_copy(a5);
  v10 = _Block_copy(a6);
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  if (v10)
  {
    v15 = swift_allocObject();
    *(v15 + 16) = v10;
    v10 = sub_100685EBC;
  }

  else
  {
    v15 = 0;
  }

  v16 = self;
  CRLWPLayout.layoutSearch(for:options:hit:completionBlock:)(v11, v13, a4, sub_1007AB830, v14, v10, v15);
  sub_1000C1014(v10);
}

- (void)layoutSearchForSpellingErrorsWithHitBlock:(id)a3 stop:(BOOL *)a4
{
  v6 = _Block_copy(a3);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = self;
  CRLWPLayout.layoutSearchForSpellingErrors(hit:stop:)(sub_1007127A4, v7, a4);
}

- (CGRect)rectInRootForSelectionPath:(id)a3
{
  v4 = a3;
  v5 = self;
  CRLWPLayout.rectInRoot(for:)(v4);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;

  v14 = v7;
  v15 = v9;
  v16 = v11;
  v17 = v13;
  result.size.height = v17;
  result.size.width = v16;
  result.origin.y = v15;
  result.origin.x = v14;
  return result;
}

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = [(CRLCanvasAbstractLayout *)v5 parent];
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_5:
    v25.receiver = v5;
    v25.super_class = type metadata accessor for CRLWPLayout();
    [(CRLCanvasLayout *)&v25 rectInRootOfAutoZoomContextOfSelectionPath:v4];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
    goto LABEL_6;
  }

  [v8 rectInRootOfAutoZoomContextOfSelectionPath:v4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

LABEL_6:
  v21 = v10;
  v22 = v12;
  v23 = v14;
  v24 = v16;
  result.size.height = v24;
  result.size.width = v23;
  result.origin.y = v22;
  result.origin.x = v21;
  return result;
}

- (double)viewScaleForZoomingToSelectionPath:(id)a3 targetPointSize:(double)a4
{
  v6 = a3;
  v7 = self;
  v8 = [(CRLCanvasAbstractLayout *)v7 parent];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_5:
    v15.receiver = v7;
    v15.super_class = type metadata accessor for CRLWPLayout();
    [(CRLCanvasLayout *)&v15 viewScaleForZoomingToSelectionPath:v6 targetPointSize:a4];
    v12 = v13;
    goto LABEL_6;
  }

  [v10 viewScaleForZoomingToSelectionPath:v6 targetPointSize:a4];
  v12 = v11;

LABEL_6:
  return v12;
}

- (BOOL)isOverflowing
{
  v2 = self;
  v3 = CRLWPLayout.isOverflowing()();

  return v3;
}

- (id)textWrapper
{
  v2 = self;
  v3 = [(CRLCanvasAbstractLayout *)v2 parent];
  if (v3)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
    }

    v3 = [v4 textWrapper];
  }

  return v3;
}

- (id)columnMetricsForCharIndex:(int64_t)a3 outRange:(_NSRange *)a4
{
  v4 = [(CRLCanvasAbstractLayout *)self parent:a3];
  if (v4)
  {
    v5 = v4;
    v4 = swift_dynamicCastObjCProtocolConditional();
    if (!v4)
    {

      v4 = 0;
    }
  }

  return v4;
}

- (NSMutableArray)columns
{
  v3 = OBJC_IVAR____TtC8Freeform11CRLWPLayout__columns;
  swift_beginAccess();
  return *(&self->super.super.super.isa + v3);
}

- (BOOL)isInstructional
{
  v2 = self;
  v3 = CRLWPLayout.isInstructional.getter();

  return v3 & 1;
}

- (CGSize)minSize
{
  v2 = self;
  v3 = CRLWPLayout.minSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)maxSize
{
  v2 = self;
  v3 = CRLWPLayout.maxSize.getter();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (CGSize)currentSize
{
  v2 = self;
  v3 = [(CRLCanvasAbstractLayout *)v2 geometry];
  [(CRLCanvasLayoutGeometry *)v3 size];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (CGPoint)position
{
  v2 = self;
  v3 = [(CRLCanvasAbstractLayout *)v2 geometry];
  [(CRLCanvasLayoutGeometry *)v3 frame];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (CGPoint)anchorPoint
{
  v2 = 0.0;
  v3 = 0.0;
  result.y = v3;
  result.x = v2;
  return result;
}

- (int64_t)naturalAlignment
{
  v2 = self;
  v3 = [(CRLCanvasAbstractLayout *)v2 parent];
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [v5 naturalAlignmentFor:v2];

      return v6;
    }
  }

  else
  {
  }

  return 4;
}

- (CRLWrapSegments)interiorWrapSegments
{
  v2 = self;
  v3 = [(CRLCanvasAbstractLayout *)v2 parent];
  if (v3)
  {
    v4 = v3;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [v5 interiorWrapSegmentsFor:v2];

      v7 = v6;
      goto LABEL_7;
    }
  }

  else
  {
  }

  v7 = 0;
LABEL_7:

  return v7;
}

- (NSArray)renderingOverrides
{
  v2 = self;
  CRLWPLayout.renderingOverrides.getter();

  sub_100006370(0, &qword_1019FFE60);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end