@interface ProgressBarControl
- (BOOL)isSelected;
- (CGSize)sizeThatFits:(CGSize)result;
- (_TtC23ShelfKitCollectionViews18ProgressBarControl)initWithFrame:(CGRect)frame;
- (void)didMoveToSuperview;
- (void)layoutSubviews;
- (void)setSelected:(BOOL)selected;
- (void)updateProgressWithDisplayLink:(id)link;
@end

@implementation ProgressBarControl

- (BOOL)isSelected
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ProgressBarControl();
  return [(ProgressBarControl *)&v3 isSelected];
}

- (void)setSelected:(BOOL)selected
{
  selectedCopy = selected;
  v7.receiver = self;
  v7.super_class = type metadata accessor for ProgressBarControl();
  v4 = v7.receiver;
  [(ProgressBarControl *)&v7 setSelected:selectedCopy];
  v5 = *&v4[OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_videoControlButton];
  if (v5)
  {
    v6 = v5;
    [v6 setSelected:{objc_msgSend(v4, "isSelected", v7.receiver, v7.super_class)}];
  }
}

- (void)didMoveToSuperview
{
  selfCopy = self;
  superview = [(ProgressBarControl *)selfCopy superview];
  if (!superview)
  {
    v3 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC23ShelfKitCollectionViews18ProgressBarControl_displayLink);
    [v3 invalidate];
    superview = v3;
  }
}

- (void)layoutSubviews
{
  selfCopy = self;
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

- (void)updateProgressWithDisplayLink:(id)link
{
  linkCopy = link;
  selfCopy = self;
  sub_2B7824(linkCopy);
}

- (_TtC23ShelfKitCollectionViews18ProgressBarControl)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end