@interface GroupSessionPreviewSourceView
- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithCoder:(id)a3;
- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithFrame:(CGRect)a3;
@end

@implementation GroupSessionPreviewSourceView

- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8.receiver = self;
  v8.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  return [(GroupSessionPreviewSourceView *)&v8 initWithFrame:x, y, width, height];
}

- (_TtC22_GroupActivities_UIKit29GroupSessionPreviewSourceView)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = type metadata accessor for GroupSessionPreviewSourceView();
  v4 = a3;
  v5 = [(GroupSessionPreviewSourceView *)&v7 initWithCoder:v4];

  if (v5)
  {
  }

  return v5;
}

@end