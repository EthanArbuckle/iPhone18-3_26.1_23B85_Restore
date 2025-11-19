@interface AttachmentsAccessoryView
- (CGSize)systemLayoutSizeFittingSize:(CGSize)result;
- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithCoder:(id)a3;
- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
@end

@implementation AttachmentsAccessoryView

- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = (self + OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_inset);
  *v8 = xmmword_1001D91A0;
  v8[1] = xmmword_1001D91B0;
  v9 = OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView;
  *(&self->super.super.super.isa + v9) = [objc_allocWithZone(type metadata accessor for AttachmentCollectionView()) init];
  v12.receiver = self;
  v12.super_class = type metadata accessor for AttachmentsAccessoryView();
  v10 = [(AttachmentsAccessoryView *)&v12 initWithFrame:x, y, width, height];
  [(AttachmentsAccessoryView *)v10 addSubview:*(&v10->super.super.super.isa + OBJC_IVAR____TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView_collectionView)];
  return v10;
}

- (_TtC21WritingToolsUIServiceP33_C936B4EAF778CD52602455D3431E6E0E24AttachmentsAccessoryView)initWithCoder:(id)a3
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