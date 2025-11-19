@interface PKDrawingReplayPoint
- ($FF38E1E694A259ECA75E65D4243A6BF6)pkInputPointWithOffset:(SEL)a3;
- (CGPoint)point;
@end

@implementation PKDrawingReplayPoint

- ($FF38E1E694A259ECA75E65D4243A6BF6)pkInputPointWithOffset:(SEL)a3
{
  y = a4.y;
  x = a4.x;
  *&retstr->var14 = 0u;
  *&retstr->var12 = 0u;
  *&retstr->var10 = 0u;
  *&retstr->var8 = 0u;
  *&retstr->var6 = 0u;
  *&retstr->var4 = 0u;
  *&retstr->var2 = 0u;
  retstr->var1 = 0.5;
  result = [(PKDrawingReplayPoint *)self point];
  retstr->var0.var0.x = x + v8;
  retstr->var0.var0.y = y + v9;
  return result;
}

- (CGPoint)point
{
  x = self->_point.x;
  y = self->_point.y;
  result.y = y;
  result.x = x;
  return result;
}

@end