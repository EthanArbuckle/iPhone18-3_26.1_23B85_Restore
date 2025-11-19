@interface ResizableTextAttachmentViewProvider
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (_TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
- (void)loadView;
@end

@implementation ResizableTextAttachmentViewProvider

- (_TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  swift_unknownObjectRetain();
  return sub_1007C9B5C(v9, a4, a5, a6);
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  v7 = *(&self->super.super.isa + OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_bounds);
  v8 = *&self->resizeDelegate[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_bounds];
  v9 = *&self->resizeDelegate[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_bounds + 8];
  v10 = *&self->resizableAttachmentView[OBJC_IVAR____TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider_bounds];
  result.size.height = v10;
  result.size.width = v9;
  result.origin.y = v8;
  result.origin.x = v7;
  return result;
}

- (void)loadView
{
  v2 = self;
  sub_1007C9CD4();
}

@end