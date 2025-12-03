@interface ReflowTextView
- (CGRect)frame;
- (_TtC8PaperKit14ReflowTextView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setFrame:(CGRect)frame;
@end

@implementation ReflowTextView

- (void)layoutSubviews
{
  v8.receiver = self;
  v8.super_class = type metadata accessor for ReflowTextView();
  v2 = v8.receiver;
  [(ReflowTextView *)&v8 layoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager];
  [v2 frame];
  v3[2] = v4;
  v3[3] = v5;
  v3[4] = v6;
  v3[5] = v7;
  ReflowLayoutManager.scaleTextToFit()();
  if (one-time initialization token for showDebugUI != -1)
  {
    swift_once();
  }

  if (static ReflowTextView.showDebugUI == 1)
  {
    ReflowTextView.lineDebug()();
  }
}

- (CGRect)frame
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ReflowTextView();
  [(ReflowTextView *)&v6 frame];
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

- (void)setFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  *(*(&self->super.super.super.isa + OBJC_IVAR____TtC8PaperKit14ReflowTextView_layoutManager) + 16) = frame;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ReflowTextView();
  [(ReflowTextView *)&v7 setFrame:x, y, width, height];
}

- (_TtC8PaperKit14ReflowTextView)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end