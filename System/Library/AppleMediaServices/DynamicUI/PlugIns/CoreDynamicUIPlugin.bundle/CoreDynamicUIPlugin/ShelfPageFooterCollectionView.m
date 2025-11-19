@interface ShelfPageFooterCollectionView
- (CGSize)contentSize;
- (CGSize)intrinsicContentSize;
- (void)setContentSize:(CGSize)a3;
@end

@implementation ShelfPageFooterCollectionView

- (CGSize)contentSize
{
  v2 = self;
  sub_73C90();
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)setContentSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = self;
  sub_73D24(width, height);
}

- (CGSize)intrinsicContentSize
{
  v2 = self;
  v3 = sub_73DC4();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

@end