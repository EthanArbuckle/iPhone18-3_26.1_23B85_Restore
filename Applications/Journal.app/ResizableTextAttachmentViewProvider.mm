@interface ResizableTextAttachmentViewProvider
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (_TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (void)loadView;
@end

@implementation ResizableTextAttachmentViewProvider

- (_TtC7JournalP33_1C06B2E6919F8D96964EAFC32087680D35ResizableTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  attachmentCopy = attachment;
  viewCopy = view;
  managerCopy = manager;
  swift_unknownObjectRetain();
  return sub_1007C9B5C(attachmentCopy, view, manager, location);
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
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
  selfCopy = self;
  sub_1007C9CD4();
}

@end