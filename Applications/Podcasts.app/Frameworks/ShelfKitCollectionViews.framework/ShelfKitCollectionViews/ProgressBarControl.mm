@interface ProgressBarControl
- (BOOL)isSelected;
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC23ShelfKitCollectionViews18ProgressBarControl)initWithFrame:(CGRect)a3;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)a3;
- (void)updateProgressWithDisplayLink:(id)a3;
@end

@implementation ProgressBarControl

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProgressBarControl();
  return [(ProgressBarControl *)&v3 isSelected];
}

- (void)setSelected:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ProgressBarControl();
  v4 = v7.receiver;
  [(ProgressBarControl *)&v7 setSelected:v3];
  v5 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_videoControlButton];
  if (v5)
  {
    v6 = v5;
    [v6 setSelected:{objc_msgSend(v4, "isSelected", v7.receiver, v7.super_class)}];
  }
}

- (void)didMoveToSuperview
{
  v4 = self;
  v2 = [(ProgressBarControl *)v4 superview];
  if (!v2)
  {
    v3 = *(&v4->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_displayLink);
    [v3 invalidate];
    v2 = v3;
  }
}

- (void)layoutSubviews
{
  v2 = self;
  sub_2B75E4();
}

- (CGSize)sizeThatFits:(CGSize)result
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_videoControlButton);
  if (v3)
  {
    width = result.width;
    [v3 sizeThatFits:{result.width, result.height}];
    result.width = width;
  }

  else
  {
    v5 = 0.0;
  }

  v6 = fmax(v5, 8.0);
  result.height = v6;
  return result;
}

- (void)updateProgressWithDisplayLink:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_2B7824(v4);
}

- (_TtC23ShelfKitCollectionViews18ProgressBarControl)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end