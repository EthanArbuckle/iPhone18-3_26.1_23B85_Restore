@interface InlineMenuButtonTextAttachmentViewProvider
- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position;
- (_TtC11MobileNotes42InlineMenuButtonTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location;
- (void)loadView;
@end

@implementation InlineMenuButtonTextAttachmentViewProvider

- (_TtC11MobileNotes42InlineMenuButtonTextAttachmentViewProvider)initWithTextAttachment:(id)attachment parentView:(id)view textLayoutManager:(id)manager location:(id)location
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  attachmentCopy = attachment;
  viewCopy = view;
  managerCopy = manager;
  swift_unknownObjectRetain();
  v13 = [(InlineMenuButtonTextAttachmentViewProvider *)&v15 initWithTextAttachment:attachmentCopy parentView:viewCopy textLayoutManager:managerCopy location:location];
  [(InlineMenuButtonTextAttachmentViewProvider *)v13 setTracksTextAttachmentViewBounds:1, v15.receiver, v15.super_class];

  swift_unknownObjectRelease();
  return v13;
}

- (void)loadView
{
  selfCopy = self;
  sub_10027C4FC();
}

- (CGRect)attachmentBoundsForAttributes:(id)attributes location:(id)location textContainer:(id)container proposedLineFragment:(CGRect)fragment position:(CGPoint)position
{
  y = position.y;
  x = position.x;
  height = fragment.size.height;
  width = fragment.size.width;
  v11 = fragment.origin.y;
  v12 = fragment.origin.x;
  type metadata accessor for Key(0);
  sub_1001D8FD8();
  v16 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  swift_unknownObjectRetain();
  containerCopy = container;
  selfCopy = self;
  v19 = sub_10027C670(v12, v11, width, height, x, y, v16, location, container);
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