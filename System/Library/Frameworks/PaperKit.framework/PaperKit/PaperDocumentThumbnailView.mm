@interface PaperDocumentThumbnailView
- (_TtC8PaperKit26PaperDocumentThumbnailView)initWithCoder:(id)a3;
- (void)layoutSubviews;
@end

@implementation PaperDocumentThumbnailView

- (_TtC8PaperKit26PaperDocumentThumbnailView)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit26PaperDocumentThumbnailView_thumbnailLayout) = 1;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for PaperDocumentThumbnailView();
  v2 = v3.receiver;
  [(PaperDocumentThumbnailView *)&v3 layoutSubviews];
  PaperDocumentThumbnailView.updateThumbnailSize()();
}

@end