@interface CRLiOSCanvasZoomControlViewController.ZoomButton
- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithCoder:(id)a3;
- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithFrame:(CGRect)a3;
- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5;
@end

@implementation CRLiOSCanvasZoomControlViewController.ZoomButton

- (id)contextMenuInteraction:(id)a3 configuration:(id)a4 highlightPreviewForItemWithIdentifier:(id)a5
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

- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  swift_unknownObjectWeakInit();
  v9.receiver = self;
  v9.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController.ZoomButton();
  return [(CRLiOSCanvasZoomControlViewController.ZoomButton *)&v9 initWithFrame:x, y, width, height];
}

- (_TtCC8Freeform37CRLiOSCanvasZoomControlViewController10ZoomButton)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v8.receiver = self;
  v8.super_class = type metadata accessor for CRLiOSCanvasZoomControlViewController.ZoomButton();
  v5 = a3;
  v6 = [(CRLiOSCanvasZoomControlViewController.ZoomButton *)&v8 initWithCoder:v5];

  if (v6)
  {
  }

  return v6;
}

@end