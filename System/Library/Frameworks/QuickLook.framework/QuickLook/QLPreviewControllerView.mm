@interface QLPreviewControllerView
- (_TtC9QuickLook23QLPreviewControllerView)initWithCoder:(id)coder;
- (_TtC9QuickLook23QLPreviewControllerView)initWithFrame:(CGRect)frame;
- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector;
@end

@implementation QLPreviewControllerView

- (_TtC9QuickLook23QLPreviewControllerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for QLPreviewControllerView();
  return [(QLPreviewControllerView *)&v9 initWithFrame:x, y, width, height];
}

- (_TtC9QuickLook23QLPreviewControllerView)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for QLPreviewControllerView();
  coderCopy = coder;
  v6 = [(QLPreviewControllerView *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

- (void)_intelligenceCollectContentIn:(CGRect)in collector:(id)collector
{
  height = in.size.height;
  width = in.size.width;
  y = in.origin.y;
  x = in.origin.x;
  collectorCopy = collector;
  selfCopy = self;
  sub_23A7C9828(collectorCopy, x, y, width, height);
}

@end