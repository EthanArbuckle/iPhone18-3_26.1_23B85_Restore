@interface CRLStyledItem
- (CRLStroke)stroke;
- (void)_clearStrokeCache;
- (void)setStroke:(id)stroke;
@end

@implementation CRLStyledItem

- (CRLStroke)stroke
{
  selfCopy = self;
  v3 = sub_100D652D4();

  return v3;
}

- (void)setStroke:(id)stroke
{
  strokeCopy = stroke;
  selfCopy = self;
  sub_100D654FC(stroke);
}

- (void)_clearStrokeCache
{
  v2 = *&self->super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke];
  *&self->super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
}

@end