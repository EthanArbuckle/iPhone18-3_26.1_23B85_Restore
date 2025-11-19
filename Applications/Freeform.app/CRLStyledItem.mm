@interface CRLStyledItem
- (CRLStroke)stroke;
- (void)_clearStrokeCache;
- (void)setStroke:(id)a3;
@end

@implementation CRLStyledItem

- (CRLStroke)stroke
{
  v2 = self;
  v3 = sub_100D652D4();

  return v3;
}

- (void)setStroke:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_100D654FC(a3);
}

- (void)_clearStrokeCache
{
  v2 = *&self->super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke];
  *&self->super._TtC8Freeform12CRLBoardItem_opaque[OBJC_IVAR____TtC8Freeform13CRLStyledItem__stroke] = 0;
}

@end