@interface BKLibraryCollectionTitleView
- (BKLibraryCollectionTitleView)initWithCoder:(id)a3;
- (BKLibraryCollectionTitleView)initWithFrame:(CGRect)a3;
- (BKLibraryCollectionTitleViewDelegate)delegate;
- (void)contentDidChange;
@end

@implementation BKLibraryCollectionTitleView

- (BKLibraryCollectionTitleViewDelegate)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)contentDidChange
{
  v2 = self;
  LibraryCollectionTitleView.contentDidChange()();
}

- (BKLibraryCollectionTitleView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  *(self + OBJC_IVAR___BKLibraryCollectionTitleView_minHeightThatCountsAsVisible) = 0x4034000000000000;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LibraryCollectionTitleView();
  return [(BKLibraryCollectionTitleView *)&v9 initWithFrame:x, y, width, height];
}

- (BKLibraryCollectionTitleView)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR___BKLibraryCollectionTitleView_minHeightThatCountsAsVisible) = 0x4034000000000000;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for LibraryCollectionTitleView();
  v5 = a3;
  v6 = [(BKLibraryCollectionTitleView *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end