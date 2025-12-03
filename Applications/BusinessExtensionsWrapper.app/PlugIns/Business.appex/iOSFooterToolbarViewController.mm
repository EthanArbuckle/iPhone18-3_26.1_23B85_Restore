@interface iOSFooterToolbarViewController
- (_TtC8Business30iOSFooterToolbarViewController)initWithCoder:(id)coder;
- (_TtC8Business30iOSFooterToolbarViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)leftButtonTapped;
- (void)rightButtonTapped;
@end

@implementation iOSFooterToolbarViewController

- (_TtC8Business30iOSFooterToolbarViewController)initWithCoder:(id)coder
{
  *&self->footerToolbarModel[OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_delegate] = 0;
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___leftButtonItem) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___rightButtonItem) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController____lazy_storage___buttonItems) = 0;
  result = sub_1000AC63C();
  __break(1u);
  return result;
}

- (void)leftButtonTapped
{
  v3 = self + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 8);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (void)rightButtonTapped
{
  v3 = self + OBJC_IVAR____TtC8Business30iOSFooterToolbarViewController_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v4 = *(v3 + 1);
    swift_getObjectType();
    v5 = *(v4 + 16);
    selfCopy = self;
    v5();
    swift_unknownObjectRelease();
  }
}

- (_TtC8Business30iOSFooterToolbarViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end