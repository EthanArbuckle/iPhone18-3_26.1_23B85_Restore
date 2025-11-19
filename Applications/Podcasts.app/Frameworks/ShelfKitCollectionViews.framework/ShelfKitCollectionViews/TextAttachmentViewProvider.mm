@interface TextAttachmentViewProvider
- (_TtC23ShelfKitCollectionViews26TextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
- (void)loadView;
@end

@implementation TextAttachmentViewProvider

- (void)loadView
{
  v2 = self;
  sub_1B2F14();
}

- (_TtC23ShelfKitCollectionViews26TextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  v11.receiver = self;
  v11.super_class = swift_getObjectType();
  return [(TextAttachmentViewProvider *)&v11 initWithTextAttachment:a3 parentView:a4 textLayoutManager:a5 location:a6];
}

@end