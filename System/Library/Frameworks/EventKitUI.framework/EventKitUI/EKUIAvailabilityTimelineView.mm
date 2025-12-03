@interface EKUIAvailabilityTimelineView
- (EKUIAvailabilityTimelineView)init;
- (void)setContentOffset:(CGPoint)offset;
- (void)setContentWidth:(double)width;
- (void)setLabels;
@end

@implementation EKUIAvailabilityTimelineView

- (EKUIAvailabilityTimelineView)init
{
  v17.receiver = self;
  v17.super_class = EKUIAvailabilityTimelineView;
  v2 = [(EKUIAvailabilityTimelineView *)&v17 init];
  if (v2)
  {
    v3 = 23;
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:23];
    labels = v2->_labels;
    v2->_labels = v4;

    v6 = *MEMORY[0x1E695F058];
    v7 = *(MEMORY[0x1E695F058] + 8);
    v8 = *(MEMORY[0x1E695F058] + 16);
    v9 = *(MEMORY[0x1E695F058] + 24);
    do
    {
      v10 = [objc_alloc(MEMORY[0x1E69DCC10]) initWithFrame:{v6, v7, v8, v9}];
      if (CalInterfaceIsLeftToRight())
      {
        v11 = 2;
      }

      else
      {
        v11 = 0;
      }

      [v10 setTextAlignment:v11];
      [(EKUIAvailabilityTimelineView *)v2 addSubview:v10];
      [(NSMutableArray *)v2->_labels addObject:v10];

      --v3;
    }

    while (v3);
    [(EKUIAvailabilityTimelineView *)v2 setLabels];
    v12 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{v6, v7, v8, v9}];
    bottomPixelBorder = v2->_bottomPixelBorder;
    v2->_bottomPixelBorder = v12;

    v14 = v2->_bottomPixelBorder;
    separatorColor = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v14 setBackgroundColor:separatorColor];

    [(EKUIAvailabilityTimelineView *)v2 addSubview:v2->_bottomPixelBorder];
  }

  return v2;
}

- (void)setLabels
{
  traitCollection = [(EKUIAvailabilityTimelineView *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];
  v5 = UIContentSizeCategoryCompareToCategory(preferredContentSizeCategory, *MEMORY[0x1E69DDC40]) != NSOrderedAscending;

  labels = self->_labels;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __41__EKUIAvailabilityTimelineView_setLabels__block_invoke;
  v7[3] = &__block_descriptor_33_e24_v32__0__UILabel_8Q16_B24l;
  v8 = v5;
  [(NSMutableArray *)labels enumerateObjectsUsingBlock:v7];
}

void __41__EKUIAvailabilityTimelineView_setLabels__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v18[2] = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3 + 1;
  v7 = objc_alloc(MEMORY[0x1E696AD40]);
  v8 = CUIKStringForHourWithoutDesignator();
  v17[0] = *MEMORY[0x1E69DB650];
  v9 = [MEMORY[0x1E69DC888] labelColor];
  v18[0] = v9;
  v17[1] = *MEMORY[0x1E69DB648];
  v10 = [MEMORY[0x1E69DB878] preferredFontForTextStyle:*MEMORY[0x1E69DDCF8]];
  v18[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [v7 initWithString:v8 attributes:v11];

  if (*(a1 + 32))
  {
    [v5 setAttributedText:v12];
  }

  else
  {
    v13 = objc_opt_new();
    [v13 setHour:v6];
    v14 = [MEMORY[0x1E695DEE8] CalGregorianGMTCalendar];
    v15 = [v14 dateFromComponents:v13];

    [EKUILargeTextUtilities contentSizeCategoryScaledValueForDefaultValue:1 shouldScaleForSmallerSizes:12.0];
    v16 = [MEMORY[0x1E69933D8] stylizedTimelineHourStringForHourDate:v15 baseFontSize:?];
    [v5 setAttributedText:v16];

    [v5 setLineBreakMode:2];
  }
}

- (void)setContentWidth:(double)width
{
  [(EKUIAvailabilityTimelineView *)self frame];
  v6 = v5;
  [(EKUIAvailabilityTimelineView *)self setContentSize:width, v5];
  self->_largestLabelWidth = 0.0;
  labels = self->_labels;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__EKUIAvailabilityTimelineView_setContentWidth___block_invoke;
  v8[3] = &unk_1E8440160;
  *&v8[5] = width;
  *&v8[6] = v6;
  v8[4] = self;
  [(NSMutableArray *)labels enumerateObjectsUsingBlock:v8];
  [(UIView *)self->_bottomPixelBorder setFrame:0.0, v6 + -1.0, width, 0.5];
  [(EKUIAvailabilityTimelineView *)self setNeedsLayout];
}

void __48__EKUIAvailabilityTimelineView_setContentWidth___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = (a3 + 1) / 24.0 * *(a1 + 40);
  v5 = a2;
  if ((CalTimeDirectionIsLeftToRight() & 1) == 0)
  {
    v4 = *(a1 + 40) - v4;
  }

  v6 = [v5 attributedText];
  [v6 size];
  v8 = v7;
  v10 = v9;

  [v5 setFrame:{v4 + v8 * -0.5, *(a1 + 48) - v10 + -11.0, v8, v10}];
  v11 = *(a1 + 32);
  if (v8 > *(v11 + 2176))
  {
    *(v11 + 2176) = v8;
  }
}

- (void)setContentOffset:(CGPoint)offset
{
  v3.receiver = self;
  v3.super_class = EKUIAvailabilityTimelineView;
  [(EKUIAvailabilityTimelineView *)&v3 setContentOffset:offset.x, offset.y];
}

@end