@interface CRLWPLayout
- (BOOL)isInstructional;
- (BOOL)isOverflowing;
- (BOOL)markedTextContainsPoint:(CGPoint)point;
- (BOOL)parentAutosizes;
- (CGPoint)anchorPoint;
- (CGPoint)position;
- (CGRect)rectInRootForSelectionPath:(id)path;
- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path;
- (CGSize)currentSize;
- (CGSize)maxSize;
- (CGSize)minSize;
- (CRLWrapSegments)interiorWrapSegments;
- (NSArray)dependentLayouts;
- (NSArray)renderingOverrides;
- (NSMutableArray)columns;
- (_TtC8Freeform11CRLWPLayout)initWithInfo:(id)info;
- (double)viewScaleForZoomingToSelectionPath:(id)path targetPointSize:(double)size;
- (id)closestPositionTo:(CGPoint)to;
- (id)columnMetricsForCharIndex:(int64_t)index outRange:(_NSRange *)range;
- (id)computeLayoutGeometry;
- (id)selectionRectsFor:(id)for;
- (id)textWrapper;
- (int64_t)naturalAlignment;
- (void)invalidateSize;
- (void)invalidateTextLayout;
- (void)layoutSearchForSpellingErrorsWithHitBlock:(id)block stop:(BOOL *)stop;
- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block completionBlock:(id)completionBlock;
- (void)validate;
@end

@implementation CRLWPLayout

- (_TtC8Freeform11CRLWPLayout)initWithInfo:(id)info
{
  swift_unknownObjectRetain();
  v4 = sub_1007AB2E4(info);
  swift_unknownObjectRelease();
  return v4;
}

- (BOOL)parentAutosizes
{
  selfCopy = self;
  parent = [(CRLCanvasAbstractLayout *)selfCopy parent];
  if (!parent)
  {
    goto LABEL_5;
  }

  v4 = parent;
  v5 = swift_dynamicCastObjCProtocolConditional();
  if (!v5)
  {

LABEL_5:
    v9.receiver = selfCopy;
    v9.super_class = type metadata accessor for CRLWPLayout();
    parentAutosizes = [(CRLCanvasLayout *)&v9 parentAutosizes];

    return parentAutosizes;
  }

  v6 = [v5 autosizeFlagsFor:selfCopy];

  return v6 != 0;
}

- (void)validate
{
  selfCopy = self;
  CRLWPLayout.validate()();
}

- (void)invalidateTextLayout
{
  selfCopy = self;
  if ([(CRLWPLayout *)selfCopy parentAutosizes])
  {
    [(CRLWPLayout *)selfCopy invalidateSize];
  }

  *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC8Freeform11CRLWPLayout_textLayoutIsValid) = 0;
  [(CRLCanvasLayout *)selfCopy invalidate];
  [(CRLCanvasLayout *)selfCopy setNeedsDisplay];
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
  selfCopy = self;
  CRLWPLayout.computeLayoutGeometry()(v3);
  v5 = v4;

  return v5;
}

- (BOOL)markedTextContainsPoint:(CGPoint)point
{
  selfCopy = self;
  v4 = sub_1007A1554();

  return v4 & 1;
}

- (id)selectionRectsFor:(id)for
{
  type metadata accessor for CRLTextRange();
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = qword_1019F1570;
  selfCopy = self;
  if (v5 != -1)
  {
    swift_once();
  }

  v10[3] = sub_1005B981C(&unk_101A001E0);
  v10[0] = v4;

  sub_1007A22B0(selfCopy, v4, &v9);
  sub_100005070(v10);

  type metadata accessor for CRLTextSelectionRect();
  v7.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v7.super.isa;
}

- (id)closestPositionTo:(CGPoint)to
{
  v3 = qword_1019F1570;
  selfCopy = self;
  if (v3 != -1)
  {
    swift_once();
  }

  sub_1007A3814(selfCopy, &v7);

  v5 = v7;

  return v5;
}

- (NSArray)dependentLayouts
{
  selfCopy = self;
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

- (void)layoutSearchForString:(id)string options:(unint64_t)options hitBlock:(id)block completionBlock:(id)completionBlock
{
  v9 = _Block_copy(block);
  v10 = _Block_copy(completionBlock);
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

  selfCopy = self;
  CRLWPLayout.layoutSearch(for:options:hit:completionBlock:)(v11, v13, options, sub_1007AB830, v14, v10, v15);
  sub_1000C1014(v10);
}

- (void)layoutSearchForSpellingErrorsWithHitBlock:(id)block stop:(BOOL *)stop
{
  v6 = _Block_copy(block);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  selfCopy = self;
  CRLWPLayout.layoutSearchForSpellingErrors(hit:stop:)(sub_1007127A4, v7, stop);
}

- (CGRect)rectInRootForSelectionPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  CRLWPLayout.rectInRoot(for:)(pathCopy);
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

- (CGRect)rectInRootOfAutoZoomContextOfSelectionPath:(id)path
{
  pathCopy = path;
  selfCopy = self;
  parent = [(CRLCanvasAbstractLayout *)selfCopy parent];
  if (!parent)
  {
    goto LABEL_5;
  }

  v7 = parent;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_5:
    v25.receiver = selfCopy;
    v25.super_class = type metadata accessor for CRLWPLayout();
    [(CRLCanvasLayout *)&v25 rectInRootOfAutoZoomContextOfSelectionPath:pathCopy];
    v10 = v17;
    v12 = v18;
    v14 = v19;
    v16 = v20;
    goto LABEL_6;
  }

  [v8 rectInRootOfAutoZoomContextOfSelectionPath:pathCopy];
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

- (double)viewScaleForZoomingToSelectionPath:(id)path targetPointSize:(double)size
{
  pathCopy = path;
  selfCopy = self;
  parent = [(CRLCanvasAbstractLayout *)selfCopy parent];
  if (!parent)
  {
    goto LABEL_5;
  }

  v9 = parent;
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {

LABEL_5:
    v15.receiver = selfCopy;
    v15.super_class = type metadata accessor for CRLWPLayout();
    [(CRLCanvasLayout *)&v15 viewScaleForZoomingToSelectionPath:pathCopy targetPointSize:size];
    v12 = v13;
    goto LABEL_6;
  }

  [v10 viewScaleForZoomingToSelectionPath:pathCopy targetPointSize:size];
  v12 = v11;

LABEL_6:
  return v12;
}

- (BOOL)isOverflowing
{
  selfCopy = self;
  v3 = CRLWPLayout.isOverflowing()();

  return v3;
}

- (id)textWrapper
{
  selfCopy = self;
  parent = [(CRLCanvasAbstractLayout *)selfCopy parent];
  if (parent)
  {
    objc_opt_self();
    v4 = swift_dynamicCastObjCClass();
    if (!v4)
    {
    }

    parent = [v4 textWrapper];
  }

  return parent;
}

- (id)columnMetricsForCharIndex:(int64_t)index outRange:(_NSRange *)range
{
  v4 = [(CRLCanvasAbstractLayout *)self parent:index];
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
  selfCopy = self;
  v3 = CRLWPLayout.isInstructional.getter();

  return v3 & 1;
}

- (CGSize)minSize
{
  selfCopy = self;
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
  selfCopy = self;
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
  selfCopy = self;
  geometry = [(CRLCanvasAbstractLayout *)selfCopy geometry];
  [(CRLCanvasLayoutGeometry *)geometry size];
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
  selfCopy = self;
  geometry = [(CRLCanvasAbstractLayout *)selfCopy geometry];
  [(CRLCanvasLayoutGeometry *)geometry frame];
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
  selfCopy = self;
  parent = [(CRLCanvasAbstractLayout *)selfCopy parent];
  if (parent)
  {
    v4 = parent;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [v5 naturalAlignmentFor:selfCopy];

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
  selfCopy = self;
  parent = [(CRLCanvasAbstractLayout *)selfCopy parent];
  if (parent)
  {
    v4 = parent;
    v5 = swift_dynamicCastObjCProtocolConditional();
    if (v5)
    {
      v6 = [v5 interiorWrapSegmentsFor:selfCopy];

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
  selfCopy = self;
  CRLWPLayout.renderingOverrides.getter();

  sub_100006370(0, &qword_1019FFE60);
  v3.super.isa = Array._bridgeToObjectiveC()().super.isa;

  return v3.super.isa;
}

@end