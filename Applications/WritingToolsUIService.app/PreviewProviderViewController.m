@interface PreviewProviderViewController
- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithCoder:(id)a3;
- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithPreviewItems:(id)a3;
- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4;
@end

@implementation PreviewProviderViewController

- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithCoder:(id)a3
{
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (id)previewController:(id)a3 previewItemAtIndex:(int64_t)a4
{
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, self + OBJC_IVAR____TtC21WritingToolsUIService29PreviewProviderViewController_url, v5);
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  (*(v6 + 8))(v9, v5);

  return v12;
}

- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21WritingToolsUIService29PreviewProviderViewController)initWithPreviewItems:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end