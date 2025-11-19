@interface PKDrawingAdjustmentKnob
+ (double)leftMargin;
- (PKDrawingAdjustmentKnob)init;
- (void)layoutSubviews;
@end

@implementation PKDrawingAdjustmentKnob

- (PKDrawingAdjustmentKnob)init
{
  v13.receiver = self;
  v13.super_class = PKDrawingAdjustmentKnob;
  v2 = [(PKDrawingAdjustmentKnob *)&v13 init];
  if (v2)
  {
    v3 = MEMORY[0x1E69DCAB8];
    v4 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v5 = [v3 imageNamed:@"PKDrawingAdjustmentKnob" inBundle:v4 compatibleWithTraitCollection:0];

    v6 = [v5 imageWithRenderingMode:2];
    knobImage = v2->_knobImage;
    v2->_knobImage = v6;

    v8 = [(UIImage *)v2->_knobImage imageFlippedForRightToLeftLayoutDirection];
    knobImageFlipped = v2->_knobImageFlipped;
    v2->_knobImageFlipped = v8;

    v10 = [objc_alloc(MEMORY[0x1E69DCAE0]) initWithImage:v5];
    knobView = v2->_knobView;
    v2->_knobView = v10;

    [(PKDrawingAdjustmentKnob *)v2 addSubview:v2->_knobView];
  }

  return v2;
}

- (void)layoutSubviews
{
  v3 = [(PKDrawingAdjustmentKnob *)self tintColor];
  [(UIImageView *)self->_knobView setTintColor:v3];

  [(PKDrawingAdjustmentKnob *)self bounds];
  v5 = v4;
  [(PKDrawingAdjustmentKnob *)self bounds];
  [(UIImageView *)self->_knobView setFrame:0.0, 0.0, v5];
  v6 = [(PKDrawingAdjustmentKnob *)self effectiveUserInterfaceLayoutDirection]== 1;
  knobView = self->_knobView;
  v8 = *(&self->super.super.super.isa + OBJC_IVAR___PKDrawingAdjustmentKnob__knobImage[v6]);

  [(UIImageView *)knobView setImage:v8];
}

+ (double)leftMargin
{
  v2 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v2 userInterfaceIdiom] == 1)
  {
    v3 = 10.0;
  }

  else
  {
    v3 = 6.0;
  }

  return v3;
}

@end