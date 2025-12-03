@interface GroupSessionPreviewSourceView
- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithCoder:(id)coder;
- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithFrame:(CGRect)frame;
@end

@implementation GroupSessionPreviewSourceView

- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  return [(GroupSessionPreviewSourceView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  coderCopy = coder;
  v5 = [(GroupSessionPreviewSourceView *)&v7 initWithCoder:coderCopy];

  if (v5)
  {
  }

  return v5;
}

@end