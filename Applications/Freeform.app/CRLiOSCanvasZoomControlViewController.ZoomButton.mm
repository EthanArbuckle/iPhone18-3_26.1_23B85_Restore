@interface CRLiOSCanvasZoomControlViewController.ZoomButton
- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithCoder:(id)coder;
- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithFrame:(CGRect)frame;
- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier;
@end

@implementation CRLiOSCanvasZoomControlViewController.ZoomButton

- (id)contextMenuInteraction:(id)interaction configuration:(id)configuration highlightPreviewForItemWithIdentifier:(id)identifier
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = [objc_allocWithZone(UITargetedPreview) initWithView:Strong];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController.ZoomButton();
  return [(CRLiOSCanvasZoomControlViewController.ZoomButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithCoder:(id)coder
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController.ZoomButton();
  coderCopy = coder;
  v6 = [(CRLiOSCanvasZoomControlViewController.ZoomButton *)&v8 initWithCoder:coderCopy];

  if (v6)
  {
  }

  return v6;
}

@end