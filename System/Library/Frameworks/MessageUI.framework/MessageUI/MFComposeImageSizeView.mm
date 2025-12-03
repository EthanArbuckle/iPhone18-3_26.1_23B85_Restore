@interface MFComposeImageSizeView
- (MFComposeImageSizeView)initWithFrame:(CGRect)frame;
- (unint64_t)_insertIndexForScale:(unint64_t)scale;
- (unint64_t)_scaleLabelIndexForScale:(unint64_t)scale;
- (void)layoutSubviews;
- (void)removeSizeDescriptionForScale:(unint64_t)scale;
- (void)segmentedControlChanged;
- (void)setScale:(unint64_t)scale;
- (void)setSizeDescription:(id)description forScale:(unint64_t)scale;
@end

@implementation MFComposeImageSizeView

- (MFComposeImageSizeView)initWithFrame:(CGRect)frame
{
  v23.receiver = self;
  v23.super_class = MFComposeImageSizeView;
  v3 = [(MFComposeImageSizeView *)&v23 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    if (!sScaleLabels)
    {
      v4 = MEMORY[0x1E695DEC8];
      v22 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v21 = [v22 localizedStringForKey:@"SMALL_SIZE_BAR_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v20 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v5 = [v20 localizedStringForKey:@"MEDIUM_SIZE_BAR_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v6 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v7 = v4;
      v8 = [v6 localizedStringForKey:@"LARGE_SIZE_BAR_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v9 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
      v10 = [v9 localizedStringForKey:@"ACTUAL_SIZE_BAR_TITLE" value:&stru_1F3CF3758 table:@"Main"];
      v11 = [v7 arrayWithObjects:{v21, v5, v8, v10, 0}];
      v12 = sScaleLabels;
      sScaleLabels = v11;
    }

    v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
    visibleScales = v3->_visibleScales;
    v3->_visibleScales = v13;

    v15 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
    v16 = [v15 localizedStringForKey:@"IMAGE_RESIZING_BAR_TITLE_EXPANDED" value:&stru_1F3CF3758 table:@"Main"];
    [(MFComposeImageSizeView *)v3 setLabel:v16];

    v17 = objc_alloc_init(MEMORY[0x1E69DCF38]);
    segmentedControl = v3->_segmentedControl;
    v3->_segmentedControl = v17;

    [(UISegmentedControl *)v3->_segmentedControl addTarget:v3 action:sel_segmentedControlChanged forControlEvents:4096];
    [(MFComposeImageSizeView *)v3 addSubview:v3->_segmentedControl];
  }

  return v3;
}

- (void)layoutSubviews
{
  v17.receiver = self;
  v17.super_class = MFComposeImageSizeView;
  [(MFComposeImageSizeView *)&v17 layoutSubviews];
  mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
  userInterfaceLayoutDirection = [mEMORY[0x1E69DC668] userInterfaceLayoutDirection];

  [(MFComposeImageSizeView *)self _contentRect];
  x = v18.origin.x;
  y = v18.origin.y;
  width = v18.size.width;
  height = v18.size.height;
  CGRectGetWidth(v18);
  labelView = [(MFComposeImageSizeView *)self labelView];
  [labelView frame];
  CGRectGetWidth(v19);

  v10 = x;
  v11 = y;
  v12 = width;
  v13 = height;
  if (userInterfaceLayoutDirection == 1)
  {
    MinX = CGRectGetMinX(*&v10);
  }

  else
  {
    MinX = CGRectGetMaxX(*&v10);
  }

  [(MFComposeImageSizeView *)self bounds];
  UIRectCenteredYInRect();
  segmentedControl = self->_segmentedControl;
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  UIRectIntegralWithScale();
  [(UISegmentedControl *)segmentedControl setFrame:?];
}

- (unint64_t)_scaleLabelIndexForScale:(unint64_t)scale
{
  result = 0;
  while (MFImageScalingFlagConstants[result] != scale)
  {
    if (++result == 4)
    {
      return -1;
    }
  }

  return result;
}

- (unint64_t)_insertIndexForScale:(unint64_t)scale
{
  v5 = 0;
  v6 = 0;
  do
  {
    if (MFImageScalingFlagConstants[v5] == scale)
    {
      break;
    }

    visibleScales = self->_visibleScales;
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:?];
    LODWORD(visibleScales) = [(NSMutableArray *)visibleScales containsObject:v8];

    v6 += visibleScales ^ 1;
    ++v5;
  }

  while (v5 != 4);
  return v5 - v6;
}

- (void)setSizeDescription:(id)description forScale:(unint64_t)scale
{
  v40[1] = *MEMORY[0x1E69E9840];
  descriptionCopy = description;
  v35 = [sScaleLabels objectAtIndex:{-[MFComposeImageSizeView _scaleLabelIndexForScale:](self, "_scaleLabelIndexForScale:", scale)}];
  v32 = [MEMORY[0x1E69DB878] boldSystemFontOfSize:13.0];
  v33 = [MEMORY[0x1E69DB878] systemFontOfSize:13.0];
  v39 = *MEMORY[0x1E69DB648];
  v7 = v39;
  v40[0] = v32;
  v36 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:&v39 count:1];
  v37 = v7;
  v38 = v33;
  v34 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
  [v35 sizeWithAttributes:v36];
  v9 = v8;
  if (descriptionCopy)
  {
    [descriptionCopy sizeWithAttributes:v34];
  }

  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen scale];
  v11 = v9 + 5.0;
  UIRectIntegralWithScale();
  v13 = v12;
  v15 = v14;

  v41.width = v13;
  v41.height = v15;
  UIGraphicsBeginImageContextWithOptions(v41, 0, 0.0);
  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  if (v17 <= 1.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = 0.5;
  }

  systemBlueColor = [MEMORY[0x1E69DC888] systemBlueColor];
  [systemBlueColor set];

  [v35 drawAtPoint:v36 withAttributes:{0.0, 0.0}];
  [descriptionCopy drawAtPoint:v34 withAttributes:{round(v11), v18}];
  v20 = UIGraphicsGetImageFromCurrentImageContext();
  UIGraphicsPopContext();
  visibleScales = self->_visibleScales;
  v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scale];
  v23 = [(NSMutableArray *)visibleScales containsObject:v22];

  if (v23)
  {
    segmentedControl = self->_segmentedControl;
    v25 = self->_visibleScales;
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scale];
    [(UISegmentedControl *)segmentedControl setImage:v20 forSegmentAtIndex:[(NSMutableArray *)v25 indexOfObject:v26]];
  }

  else
  {
    v27 = [(MFComposeImageSizeView *)self _insertIndexForScale:scale];
    [(UISegmentedControl *)self->_segmentedControl insertSegmentWithImage:v20 atIndex:v27 animated:0];
    v28 = self->_visibleScales;
    v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scale];
    [(NSMutableArray *)v28 insertObject:v26 atIndex:v27];
  }

  v29 = self->_segmentedControl;
  v30 = self->_visibleScales;
  v31 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scale];
  [(UISegmentedControl *)v29 setEnabled:descriptionCopy != 0 forSegmentAtIndex:[(NSMutableArray *)v30 indexOfObject:v31]];
}

- (void)removeSizeDescriptionForScale:(unint64_t)scale
{
  visibleScales = self->_visibleScales;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scale];
  v6 = [(NSMutableArray *)visibleScales indexOfObject:v5];

  if (v6 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [(UISegmentedControl *)self->_segmentedControl removeSegmentAtIndex:v6 animated:0];
    v7 = self->_visibleScales;

    [(NSMutableArray *)v7 removeObjectAtIndex:v6];
  }
}

- (void)setScale:(unint64_t)scale
{
  segmentedControl = self->_segmentedControl;
  visibleScales = self->_visibleScales;
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:scale];
  [(UISegmentedControl *)segmentedControl setSelectedSegmentIndex:[(NSMutableArray *)visibleScales indexOfObject:?]];
}

- (void)segmentedControlChanged
{
  v3 = [(NSMutableArray *)self->_visibleScales objectAtIndexedSubscript:[(UISegmentedControl *)self->_segmentedControl selectedSegmentIndex]];
  intValue = [v3 intValue];

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __49__MFComposeImageSizeView_segmentedControlChanged__block_invoke;
  v5[3] = &unk_1E806C660;
  v5[4] = self;
  v5[5] = intValue;
  dispatch_async(MEMORY[0x1E69E96A0], v5);
}

void __49__MFComposeImageSizeView_segmentedControlChanged__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 imageSizeView:*(a1 + 32) changedSelectedScaleTo:*(a1 + 40)];
}

@end