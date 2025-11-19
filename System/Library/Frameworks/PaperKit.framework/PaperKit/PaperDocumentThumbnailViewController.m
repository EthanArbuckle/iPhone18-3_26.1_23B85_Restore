@interface PaperDocumentThumbnailViewController
- (_TtC8PaperKit36PaperDocumentThumbnailViewController)init;
- (_TtC8PaperKit36PaperDocumentThumbnailViewController)initWithCoder:(id)a3;
- (_TtC8PaperKit36PaperDocumentThumbnailViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)loadView;
@end

@implementation PaperDocumentThumbnailViewController

- (_TtC8PaperKit36PaperDocumentThumbnailViewController)init
{
  v3 = OBJC_IVAR____TtC8PaperKit36PaperDocumentThumbnailViewController_paperDocumentThumbnailView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView()) initWithFrame_];
  v5.receiver = self;
  v5.super_class = type metadata accessor for PaperDocumentThumbnailViewController();
  return [(PaperDocumentThumbnailViewController *)&v5 initWithNibName:0 bundle:0];
}

- (_TtC8PaperKit36PaperDocumentThumbnailViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8PaperKit36PaperDocumentThumbnailViewController_paperDocumentThumbnailView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(type metadata accessor for PaperDocumentThumbnailView()) initWithFrame_];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  PaperDocumentThumbnailViewController.loadView()();
}

- (_TtC8PaperKit36PaperDocumentThumbnailViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end