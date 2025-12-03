@interface DOCSBFolderCollectionViewLayout
- (_TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout)init;
- (_TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout)initWithCoder:(id)coder;
@end

@implementation DOCSBFolderCollectionViewLayout

- (_TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout)init
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply) = 0;
  v4.receiver = self;
  v4.super_class = type metadata accessor for DOCSBFolderCollectionViewLayout();
  return [(DOCSBFolderCollectionViewLayout *)&v4 init];
}

- (_TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC21DockFolderViewService31DOCSBFolderCollectionViewLayout_contentOffsetToApply) = 0;
  v8.receiver = self;
  v8.super_class = type metadata accessor for DOCSBFolderCollectionViewLayout();
  coderCopy = coder;
  v6 = [(DOCSBFolderCollectionViewLayout *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end