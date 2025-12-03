@interface AttachmentsAccessoryView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)result;
- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithCoder:(id)coder;
- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation AttachmentsAccessoryView

- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8 = (self + OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_inset);
  *v8 = xmmword_1001D91A0;
  v8[1] = xmmword_1001D91B0;
  v9 = OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(type metadata accessor for AttachmentCollectionView()) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for AttachmentsAccessoryView();
  height = [(AttachmentsAccessoryView *)&v12 initWithFrame:x, y, width, height];
  [(AttachmentsAccessoryView *)height addSubview:*(&height->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView)];
  return height;
}

- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithCoder:(id)coder
{
  v3 = (self + OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_inset);
  *v3 = xmmword_1001D91A0;
  v3[1] = xmmword_1001D91B0;
  v4 = OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(type metadata accessor for AttachmentCollectionView()) init];
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)systemLayoutSizeFittingSize:(CGSize)result
{
  v3 = 110.0;
  result.height = v3;
  return result;
}

- (void)layoutSubviews
{
  v4.receiver = self;
  v4.super_class = type metadata accessor for AttachmentsAccessoryView();
  v2 = v4.receiver;
  [(AttachmentsAccessoryView *)&v4 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView];
  [v2 bounds];
  CGRectGetWidth(v5);
  [v2 bounds];
  CGRectGetHeight(v6);
  [v3 setFrame:sub_1001210A4(0.0)];
}

@end