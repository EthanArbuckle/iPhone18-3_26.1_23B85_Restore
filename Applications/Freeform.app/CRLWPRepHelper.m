@interface CRLWPRepHelper
+ (id)forCurrentPlatform:(id)a3;
- (CGPoint)anchorPointForCaretLayer:(BOOL)a3 rotated:(BOOL)a4;
- (CGPoint)positionForCaretLayer:(CGRect)a3;
- (CGRect)boundsForCaretLayer:(CGRect)result;
- (_TtC8Freeform14CRLWPRepHelper)init;
- (id)colorForGhostCaret;
- (void)addLiftAnimationToFloatingCursor:(id)a3 floatingCaretLayer:(id)a4;
@end

@implementation CRLWPRepHelper

+ (id)forCurrentPlatform:(id)a3
{
  v3 = type metadata accessor for CRLWPRepHelper();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR____TtC8Freeform14CRLWPRepHelper_floatingCaretLineSnapAmount] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform14CRLWPRepHelper_floatingCaretHeightMult] = 0x3FF8000000000000;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7.receiver = v4;
  v7.super_class = v3;
  v5 = objc_msgSendSuper2(&v7, "init");

  return v5;
}

- (id)colorForGhostCaret
{
  v2 = [objc_allocWithZone(CRLColor) initWithRed:0.67 green:0.67 blue:0.67 alpha:1.0];

  return v2;
}

- (CGPoint)anchorPointForCaretLayer:(BOOL)a3 rotated:(BOOL)a4
{
  v4 = 0.5;
  v5 = 1.0;
  if (!a3)
  {
    v5 = 0.5;
  }

  if (!a4)
  {
    v5 = 0.0;
  }

  if (!a4 || !a3)
  {
    v4 = 0.0;
  }

  result.y = v4;
  result.x = v5;
  return result;
}

- (CGRect)boundsForCaretLayer:(CGRect)result
{
  v3 = 0.0;
  v4 = 0.0;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

- (CGPoint)positionForCaretLayer:(CGRect)a3
{
  v3 = floor(a3.origin.x + a3.size.width * -0.5);
  v4 = floor(a3.origin.y);
  result.y = v4;
  result.x = v3;
  return result;
}

- (void)addLiftAnimationToFloatingCursor:(id)a3 floatingCaretLayer:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_1007F7320(v7);
}

- (_TtC8Freeform14CRLWPRepHelper)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end