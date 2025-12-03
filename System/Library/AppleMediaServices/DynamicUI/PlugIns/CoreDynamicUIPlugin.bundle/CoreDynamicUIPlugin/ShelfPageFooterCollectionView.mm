@interface ShelfPageFooterCollectionView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (void)setContentSize:(CGSize)size;
@end

@implementation ShelfPageFooterCollectionView

- (CGSize)contentSize
{
  selfCopy = self;
  sub_73C90();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  selfCopy = self;
  sub_73D24(width, height);
}

- (CGSize)intrinsicContentSize
{
  selfCopy = self;
  v3 = sub_73DC4();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end