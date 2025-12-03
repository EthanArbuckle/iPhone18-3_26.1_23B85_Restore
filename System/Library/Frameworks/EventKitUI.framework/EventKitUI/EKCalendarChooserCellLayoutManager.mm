@interface EKCalendarChooserCellLayoutManager
+ (id)sharedLayoutManagerForStyle:(int64_t)style;
- (BOOL)rect:(CGRect)rect trailsOtherRect:(CGRect)otherRect byDistance:(double *)distance;
- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width;
- (EKCalendarChooserCellLayoutManager)initWithCellStyle:(int64_t)style;
- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing;
@end

@implementation EKCalendarChooserCellLayoutManager

+ (id)sharedLayoutManagerForStyle:(int64_t)style
{
  v5 = sharedLayoutManagerForStyle__sLayoutManagers;
  if (!sharedLayoutManagerForStyle__sLayoutManagers)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v7 = sharedLayoutManagerForStyle__sLayoutManagers;
    sharedLayoutManagerForStyle__sLayoutManagers = dictionary;

    v5 = sharedLayoutManagerForStyle__sLayoutManagers;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:style];
  v9 = [v5 objectForKey:v8];

  if (!v9)
  {
    v9 = [[self alloc] initWithCellStyle:style];
    v10 = sharedLayoutManagerForStyle__sLayoutManagers;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:style];
    [v10 setObject:v9 forKey:v11];
  }

  return v9;
}

- (EKCalendarChooserCellLayoutManager)initWithCellStyle:(int64_t)style
{
  v8.receiver = self;
  v8.super_class = EKCalendarChooserCellLayoutManager;
  v4 = [(EKCalendarChooserCellLayoutManager *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DD030] layoutManagerForTableViewCellStyle:style];
    realLayoutManager = v4->_realLayoutManager;
    v4->_realLayoutManager = v5;
  }

  return v4;
}

- (CGRect)textRectForCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  cellCopy = cell;
  [self->_realLayoutManager textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([cellCopy showCheckmarksOnLeft] & 1) != 0 || objc_msgSend(cellCopy, "showsColorDot")))
  {
    [cellCopy textLeadingIndent];
    v18 = v17;
    if (CalInterfaceIsLeftToRight())
    {
      v14 = v14 - (v18 - v10);
      v10 = v18;
    }

    else
    {
      contentView = [cellCopy contentView];
      [contentView bounds];
      MaxX = CGRectGetMaxX(v27);
      v28.origin.x = v10;
      v28.origin.y = v12;
      v28.size.width = v14;
      v28.size.height = v16;
      v21 = MaxX - CGRectGetMaxX(v28);

      v14 = v14 - (v18 - v21);
      contentView2 = [cellCopy contentView];
      [contentView2 bounds];
      v10 = CGRectGetMaxX(v29) - v14 - v18;
    }
  }

  v23 = v10;
  v24 = v12;
  v25 = v14;
  v26 = v16;
  result.size.height = v26;
  result.size.width = v25;
  result.origin.y = v24;
  result.origin.x = v23;
  return result;
}

- (void)getTextLabelRect:(CGRect *)rect detailTextLabelRect:(CGRect *)labelRect forCell:(id)cell rowWidth:(double)width forSizing:(BOOL)sizing
{
  sizingCopy = sizing;
  cellCopy = cell;
  [self->_realLayoutManager getTextLabelRect:rect detailTextLabelRect:labelRect forCell:cellCopy rowWidth:sizingCopy forSizing:width];
  [(EKCalendarChooserCellLayoutManager *)self textRectForCell:cellCopy rowWidth:sizingCopy forSizing:width];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v22 = IsLeftToRight;
  if (rect)
  {
    y = rect->origin.y;
    height = rect->size.height;
    if (IsLeftToRight)
    {
      v36.origin.x = rect->origin.x;
      v36.origin.y = rect->origin.y;
      v36.size.width = v18;
      v36.size.height = rect->size.height;
      v37 = CGRectOffset(v36, v14 - rect->origin.x, 0.0);
      x = v37.origin.x;
      y = v37.origin.y;
      height = v37.size.height;
    }

    else
    {
      [cellCopy textLeadingIndent];
      v27 = v26;
      contentView = [cellCopy contentView];
      [contentView bounds];
      x = v29 - v18 - v27;

      v37.size.width = v18;
    }

    rect->origin.x = x;
    rect->origin.y = y;
    rect->size.width = v37.size.width;
    rect->size.height = height;
  }

  if (labelRect)
  {
    v30 = labelRect->origin.x;
    v31 = labelRect->origin.y;
    width = labelRect->size.width;
    v33 = labelRect->size.height;
    v35 = 0.0;
    if ([(EKCalendarChooserCellLayoutManager *)self rect:&v35 trailsOtherRect:v14 byDistance:v16, v18, v20, v30, v31, width, v33])
    {
      v34 = v35;
      if ((v22 & 1) == 0)
      {
        v34 = -v35;
        v35 = -v35;
      }

      v38.origin.x = v30;
      v38.origin.y = v31;
      v38.size.width = width;
      v38.size.height = v33;
      *labelRect = CGRectOffset(v38, v34, 0.0);
    }
  }
}

- (BOOL)rect:(CGRect)rect trailsOtherRect:(CGRect)otherRect byDistance:(double *)distance
{
  height = otherRect.size.height;
  width = otherRect.size.width;
  y = otherRect.origin.y;
  x = otherRect.origin.x;
  v10 = rect.size.height;
  v11 = rect.size.width;
  v12 = rect.origin.y;
  v13 = rect.origin.x;
  if (CalInterfaceIsLeftToRight())
  {
    v14 = v13 - x;
  }

  else
  {
    v17.origin.x = x;
    v17.origin.y = y;
    v17.size.width = width;
    v17.size.height = height;
    MaxX = CGRectGetMaxX(v17);
    v18.origin.x = v13;
    v18.origin.y = v12;
    v18.size.width = v11;
    v18.size.height = v10;
    v14 = MaxX - CGRectGetMaxX(v18);
  }

  *distance = v14;
  return v14 > 0.0;
}

- (CGSize)intrinsicContentSizeForCell:(id)cell rowWidth:(double)width
{
  [self->_realLayoutManager intrinsicContentSizeForCell:cell rowWidth:width];
  result.height = v5;
  result.width = v4;
  return result;
}

@end