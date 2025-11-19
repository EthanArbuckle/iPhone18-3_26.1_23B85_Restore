@interface EKCalendarChooserCellLayoutManager
+ (id)sharedLayoutManagerForStyle:(int64_t)a3;
- (BOOL)rect:(CGRect)a3 trailsOtherRect:(CGRect)a4 byDistance:(double *)a5;
- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5;
- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4;
- (EKCalendarChooserCellLayoutManager)initWithCellStyle:(int64_t)a3;
- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7;
@end

@implementation EKCalendarChooserCellLayoutManager

+ (id)sharedLayoutManagerForStyle:(int64_t)a3
{
  v5 = sharedLayoutManagerForStyle__sLayoutManagers;
  if (!sharedLayoutManagerForStyle__sLayoutManagers)
  {
    v6 = [MEMORY[0x1E695DF90] dictionary];
    v7 = sharedLayoutManagerForStyle__sLayoutManagers;
    sharedLayoutManagerForStyle__sLayoutManagers = v6;

    v5 = sharedLayoutManagerForStyle__sLayoutManagers;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [v5 objectForKey:v8];

  if (!v9)
  {
    v9 = [[a1 alloc] initWithCellStyle:a3];
    v10 = sharedLayoutManagerForStyle__sLayoutManagers;
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v10 setObject:v9 forKey:v11];
  }

  return v9;
}

- (EKCalendarChooserCellLayoutManager)initWithCellStyle:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = EKCalendarChooserCellLayoutManager;
  v4 = [(EKCalendarChooserCellLayoutManager *)&v8 init];
  if (v4)
  {
    v5 = [MEMORY[0x1E69DD030] layoutManagerForTableViewCellStyle:a3];
    realLayoutManager = v4->_realLayoutManager;
    v4->_realLayoutManager = v5;
  }

  return v4;
}

- (CGRect)textRectForCell:(id)a3 rowWidth:(double)a4 forSizing:(BOOL)a5
{
  v5 = a5;
  v8 = a3;
  [self->_realLayoutManager textRectForCell:v8 rowWidth:v5 forSizing:a4];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (([v8 showCheckmarksOnLeft] & 1) != 0 || objc_msgSend(v8, "showsColorDot")))
  {
    [v8 textLeadingIndent];
    v18 = v17;
    if (CalInterfaceIsLeftToRight())
    {
      v14 = v14 - (v18 - v10);
      v10 = v18;
    }

    else
    {
      v19 = [v8 contentView];
      [v19 bounds];
      MaxX = CGRectGetMaxX(v27);
      v28.origin.x = v10;
      v28.origin.y = v12;
      v28.size.width = v14;
      v28.size.height = v16;
      v21 = MaxX - CGRectGetMaxX(v28);

      v14 = v14 - (v18 - v21);
      v22 = [v8 contentView];
      [v22 bounds];
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

- (void)getTextLabelRect:(CGRect *)a3 detailTextLabelRect:(CGRect *)a4 forCell:(id)a5 rowWidth:(double)a6 forSizing:(BOOL)a7
{
  v7 = a7;
  v12 = a5;
  [self->_realLayoutManager getTextLabelRect:a3 detailTextLabelRect:a4 forCell:v12 rowWidth:v7 forSizing:a6];
  [(EKCalendarChooserCellLayoutManager *)self textRectForCell:v12 rowWidth:v7 forSizing:a6];
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  IsLeftToRight = CalInterfaceIsLeftToRight();
  v22 = IsLeftToRight;
  if (a3)
  {
    y = a3->origin.y;
    height = a3->size.height;
    if (IsLeftToRight)
    {
      v36.origin.x = a3->origin.x;
      v36.origin.y = a3->origin.y;
      v36.size.width = v18;
      v36.size.height = a3->size.height;
      v37 = CGRectOffset(v36, v14 - a3->origin.x, 0.0);
      x = v37.origin.x;
      y = v37.origin.y;
      height = v37.size.height;
    }

    else
    {
      [v12 textLeadingIndent];
      v27 = v26;
      v28 = [v12 contentView];
      [v28 bounds];
      x = v29 - v18 - v27;

      v37.size.width = v18;
    }

    a3->origin.x = x;
    a3->origin.y = y;
    a3->size.width = v37.size.width;
    a3->size.height = height;
  }

  if (a4)
  {
    v30 = a4->origin.x;
    v31 = a4->origin.y;
    width = a4->size.width;
    v33 = a4->size.height;
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
      *a4 = CGRectOffset(v38, v34, 0.0);
    }
  }
}

- (BOOL)rect:(CGRect)a3 trailsOtherRect:(CGRect)a4 byDistance:(double *)a5
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  v10 = a3.size.height;
  v11 = a3.size.width;
  v12 = a3.origin.y;
  v13 = a3.origin.x;
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

  *a5 = v14;
  return v14 > 0.0;
}

- (CGSize)intrinsicContentSizeForCell:(id)a3 rowWidth:(double)a4
{
  [self->_realLayoutManager intrinsicContentSizeForCell:a3 rowWidth:a4];
  result.height = v5;
  result.width = v4;
  return result;
}

@end