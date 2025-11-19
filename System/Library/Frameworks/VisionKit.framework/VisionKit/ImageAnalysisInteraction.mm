@interface ImageAnalysisInteraction
- (UIView)view;
- (void)didMoveToView:(id)a3;
- (void)willMoveToView:(id)a3;
@end

@implementation ImageAnalysisInteraction

- (UIView)view
{
  v2 = [*(&self->super.isa + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction) view];

  return v2;
}

- (void)willMoveToView:(id)a3
{
  if (!a3)
  {
    v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
    v5 = *(&self->super.isa + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v9 = self;
    v7 = [v5 view];
    if (v7)
    {
      v8 = v7;
      [v7 removeInteraction_];
    }
  }
}

- (void)didMoveToView:(id)a3
{
  if (a3)
  {
    v4 = OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction;
    v5 = *(&self->super.isa + OBJC_IVAR____TtC9VisionKit24ImageAnalysisInteraction_interaction);
    v9 = self;
    v7 = a3;
    [v7 addInteraction_];
    v8 = *(&self->super.isa + v4);
    sub_23B2D2208(0, &qword_27E12E1F0, 0x277D755E8);
    [v8 setWantsAutomaticContentsRectCalculation_];
  }
}

@end