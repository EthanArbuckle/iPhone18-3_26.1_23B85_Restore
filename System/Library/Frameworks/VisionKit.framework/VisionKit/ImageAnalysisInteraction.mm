@interface ImageAnalysisInteraction
- (UIView)view;
- (void)didMoveToView:(id)view;
- (void)willMoveToView:(id)view;
@end

@implementation ImageAnalysisInteraction

- (UIView)view
{
  view = [*(&self->super.isa + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return view;
}

- (void)willMoveToView:(id)view
{
  if (!view)
  {
    v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
    v5 = *(&self->super.isa + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    selfCopy = self;
    view = [v5 view];
    if (view)
    {
      v8 = view;
      [view removeInteraction_];
    }
  }
}

- (void)didMoveToView:(id)view
{
  if (view)
  {
    v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
    v5 = *(&self->super.isa + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    selfCopy = self;
    viewCopy = view;
    [viewCopy addInteraction_];
    v8 = *(&self->super.isa + v4);
    sub_23B2D2208(0, &qword_27E12E1F0, 0x277D755E8);
    [v8 setWantsAutomaticContentsRectCalculation_];
  }
}

@end