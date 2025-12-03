@interface TVAppExtensionDocumentViewController
- (_TtC14TVAppExtension36TVAppExtensionDocumentViewController)initWithCoder:(id)coder;
- (_TtC14TVAppExtension36TVAppExtensionDocumentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewWillLayoutSubviews;
@end

@implementation TVAppExtensionDocumentViewController

- (_TtC14TVAppExtension36TVAppExtensionDocumentViewController)initWithCoder:(id)coder
{
  v4 = (&self->super.super.super.isa + OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_lookupRequest);
  *v4 = 0;
  v4[1] = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_tvExtensionControllerTask) = 0;
  v5 = OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_url;
  v6 = sub_100008EC0();
  (*(*(v6 - 8) + 56))(self + v5, 1, 1, v6);
  *(&self->super.super.super.isa + OBJC_IVAR____TtC14TVAppExtension36TVAppExtensionDocumentViewController_child) = 0;
  result = sub_100009310();
  __break(1u);
  return result;
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_100004170();
}

- (_TtC14TVAppExtension36TVAppExtensionDocumentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end