@interface BKLibraryCollectionTitleView
- (BKLibraryCollectionTitleView)initWithCoder:(id)coder;
- (BKLibraryCollectionTitleView)initWithFrame:(CGRect)frame;
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
  selfCopy = self;
  LibraryCollectionTitleView.contentDidChange()();
}

- (BKLibraryCollectionTitleView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(self + OBJC_IVAR___BKLibraryCollectionTitleView_minHeightThatCountsAsVisible) = 0x4034000000000000;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for LibraryCollectionTitleView();
  return [(BKLibraryCollectionTitleView *)&v9 initWithFrame:x, y, width, height];
}

- (BKLibraryCollectionTitleView)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___BKLibraryCollectionTitleView_minHeightThatCountsAsVisible) = 0x4034000000000000;
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for LibraryCollectionTitleView();
  coderCopy = coder;
  v6 = [(BKLibraryCollectionTitleView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end