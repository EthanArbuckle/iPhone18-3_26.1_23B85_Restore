@interface InlineMenuButtonTextAttachmentViewProvider
- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7;
- (_TtC11MobileNotes42InlineMenuButtonTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6;
- (void)loadView;
@end

@implementation InlineMenuButtonTextAttachmentViewProvider

- (_TtC11MobileNotes42InlineMenuButtonTextAttachmentViewProvider)initWithTextAttachment:(id)a3 parentView:(id)a4 textLayoutManager:(id)a5 location:(id)a6
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v10 = a3;
  v11 = a4;
  v12 = a5;
  swift_unknownObjectRetain();
  v13 = [(InlineMenuButtonTextAttachmentViewProvider *)&v15 initWithTextAttachment:v10 parentView:v11 textLayoutManager:v12 location:a6];
  [(InlineMenuButtonTextAttachmentViewProvider *)v13 setTracksTextAttachmentViewBounds:1, v15.receiver, v15.super_class];

  swift_unknownObjectRelease();
  return v13;
}

- (void)loadView
{
  v2 = self;
  sub_10027C4FC();
}

- (CGRect)attachmentBoundsForAttributes:(id)a3 location:(id)a4 textContainer:(id)a5 proposedLineFragment:(CGRect)a6 position:(CGPoint)a7
{
  y = a7.y;
  x = a7.x;
  height = a6.size.height;
  width = a6.size.width;
  v11 = a6.origin.y;
  v12 = a6.origin.x;
  type metadata accessor for Key(0);
  sub_1001D8FD8();
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  v17 = a5;
  v18 = self;
  v19 = sub_10027C670(v12, v11, width, height, x, y, v16, a4, a5);
  v21 = v20;
  v23 = v22;
  v25 = v24;
  swift_unknownObjectRelease();

  v26 = v19;
  v27 = v21;
  v28 = v23;
  v29 = v25;
  result.size.height = v29;
  result.size.width = v28;
  result.origin.y = v27;
  result.origin.x = v26;
  return result;
}

@end