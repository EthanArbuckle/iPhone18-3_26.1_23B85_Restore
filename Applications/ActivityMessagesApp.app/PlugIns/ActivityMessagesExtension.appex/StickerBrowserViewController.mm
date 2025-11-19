@interface StickerBrowserViewController
- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)init;
- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithCoder:(id)a3;
- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithStickerSize:(int64_t)a3;
- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4;
- (int64_t)numberOfStickersInStickerBrowserView:(id)a3;
- (void)viewWillAppear:(BOOL)a3;
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

- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithCoder:(id)a3
{
  result = sub_10000FD1C();
  __break(1u);
  return result;
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_10000F148(a3);
}

- (int64_t)numberOfStickersInStickerBrowserView:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_10000F428();

  return v6;
}

- (id)stickerBrowserView:(id)a3 stickerAtIndex:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_10000F5F0(a4);

  return v8;
}

- (_TtC25ActivityMessagesExtension28StickerBrowserViewController)initWithStickerSize:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end