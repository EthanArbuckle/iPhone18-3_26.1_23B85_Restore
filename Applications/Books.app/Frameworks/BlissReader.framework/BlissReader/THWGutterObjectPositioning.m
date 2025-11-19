@interface THWGutterObjectPositioning
- (CGSize)offset;
- (void)setOffset:(CGSize)a3;
@end

@implementation THWGutterObjectPositioning

- (CGSize)offset
{
  width = self->mOffset.width;
  height = self->mOffset.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setOffset:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  [(THWGutterObjectPositioning *)self willModify];
  self->mOffset.width = width;
  self->mOffset.height = height;
}

@end