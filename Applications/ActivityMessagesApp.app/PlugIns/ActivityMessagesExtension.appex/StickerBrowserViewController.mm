@interface StickerBrowserViewController
- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)init;
- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithCoder:(id)coder;
- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithStickerSize:(int64_t)size;
- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index;
- (int64_t)numberOfStickersInStickerBrowserView:(id)view;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation StickerBrowserViewController

- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)init
{
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension28StickerBrowserViewController_dataSource) = [objc_allocWithZone(type metadata accessor for StickerDataSource()) init];
  v5.receiver = self;
  v5.super_class = type metadata accessor for StickerBrowserViewController();
  v3 = [(StickerBrowserViewController *)&v5 initWithStickerSize:0];
  *(*(&v3->super.super.super.super.isa + OBJC_IVAR____TtC25ActivityMessagesExtension28StickerBrowserViewController_dataSource) + OBJC_IVAR____TtC25ActivityMessagesExtension17StickerDataSource_delegate + 8) = &off_100014B88;
  swift_unknownObjectWeakAssign();
  return v3;
}

- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithCoder:(id)coder
{
  result = sub_10000FD1C();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_10000F148(appear);
}

- (int64_t)numberOfStickersInStickerBrowserView:(id)view
{
  viewCopy = view;
  selfCopy = self;
  v6 = sub_10000F428();

  return v6;
}

- (id)stickerBrowserView:(id)view stickerAtIndex:(int64_t)index
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_10000F5F0(index);

  return v8;
}

- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithStickerSize:(int64_t)size
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end