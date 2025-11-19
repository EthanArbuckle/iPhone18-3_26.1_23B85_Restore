@interface CenteringCellLayoutManager
+ (id)layoutManagerForTableViewCellStyle:(int64_t)a3;
- (CGRect)_adjustedContentViewFrame:(CGRect)a3 cell:(id)a4 rowWidth:(double)a5 accessoryViewFrame:(CGRect)a6;
- (CGRect)_offsetAccessoryViewFrame:(CGRect)a3 forCell:(id)a4;
- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5;
- (CGRect)contentEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4 rowWidth:(double)a5;
- (CGRect)contentStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4;
- (CenteringCellLayoutManager)initWithTableViewCellStyle:(int64_t)a3;
- (UIEdgeInsets)_marginForRowWith:(double)a3;
- (UIEdgeInsets)minimumHorizontalMargins;
@end

@implementation CenteringCellLayoutManager

- (UIEdgeInsets)minimumHorizontalMargins
{
  top = self->_minimumHorizontalMargins.top;
  left = self->_minimumHorizontalMargins.left;
  bottom = self->_minimumHorizontalMargins.bottom;
  right = self->_minimumHorizontalMargins.right;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

- (UIEdgeInsets)_marginForRowWith:(double)a3
{
  [(CenteringCellLayoutManager *)self maximumCellContentWidth];
  v6 = a3 - v5;
  [(CenteringCellLayoutManager *)self minimumHorizontalMargins];
  v8 = v7;
  [(CenteringCellLayoutManager *)self minimumHorizontalMargins];
  if (v6 <= v9 + v8)
  {
    [(CenteringCellLayoutManager *)self minimumHorizontalMargins];
  }

  else
  {
    v10 = v6 * 0.5;
    v11 = 0.0;
    v12 = v6 * 0.5;
    v13 = 0.0;
  }

  result.right = v12;
  result.bottom = v13;
  result.left = v10;
  result.top = v11;
  return result;
}

- (CGRect)_offsetAccessoryViewFrame:(CGRect)a3 forCell:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v9 = a4;
  v17.origin.x = CGRectZero.origin.x;
  v17.origin.y = CGRectZero.origin.y;
  v17.size.width = CGRectZero.size.width;
  v17.size.height = CGRectZero.size.height;
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v10 = x;
  if (!CGRectEqualToRect(v17, v22))
  {
    [v9 bounds];
    [(CenteringCellLayoutManager *)self _marginForRowWith:CGRectGetWidth(v18)];
    v10 = v11;
    if (+[UIView userInterfaceLayoutDirectionForSemanticContentAttribute:](UIView, "userInterfaceLayoutDirectionForSemanticContentAttribute:", [v9 semanticContentAttribute]) != 1)
    {
      [v9 bounds];
      MaxX = CGRectGetMaxX(v19);
      v20.origin.x = x;
      v20.origin.y = y;
      v20.size.width = width;
      v20.size.height = height;
      v10 = MaxX - (v10 + CGRectGetWidth(v20));
    }
  }

  v13 = v10;
  v14 = y;
  v15 = width;
  v16 = height;
  result.size.height = v16;
  result.size.width = v15;
  result.origin.y = v14;
  result.origin.x = v13;
  return result;
}

- (CGRect)accessoryEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v21.receiver = self;
  v21.super_class = CenteringCellLayoutManager;
  v8 = a3;
  [(CenteringCellLayoutManager *)&v21 accessoryEndingRectForCell:v8 forNewEditingState:v6 showingDeleteConfirmation:v5];
  [(CenteringCellLayoutManager *)self _offsetAccessoryViewFrame:v8 forCell:v21.receiver, v21.super_class];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)accessoryStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4 showingDeleteConfirmation:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v21.receiver = self;
  v21.super_class = CenteringCellLayoutManager;
  v8 = a3;
  [(CenteringCellLayoutManager *)&v21 accessoryStartingRectForCell:v8 forNewEditingState:v6 showingDeleteConfirmation:v5];
  [(CenteringCellLayoutManager *)self _offsetAccessoryViewFrame:v8 forCell:v21.receiver, v21.super_class];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v17 = v10;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

- (CGRect)_adjustedContentViewFrame:(CGRect)a3 cell:(id)a4 rowWidth:(double)a5 accessoryViewFrame:(CGRect)a6
{
  y = a3.origin.y;
  height = a3.size.height;
  v8 = a4;
  [(CenteringCellLayoutManager *)self _marginForRowWith:a5];
  v10 = v9;
  v12 = v11;
  v13 = [v8 semanticContentAttribute];

  v14 = [UIView userInterfaceLayoutDirectionForSemanticContentAttribute:v13];
  if (v14 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    v15 = v12;
  }

  else
  {
    v15 = v10;
  }

  v16 = a5 - (v12 + v10);
  v32.origin.x = CGRectZero.origin.x;
  v32.origin.y = CGRectZero.origin.y;
  v32.size.width = CGRectZero.size.width;
  v32.size.height = CGRectZero.size.height;
  if (CGRectEqualToRect(v32, a6))
  {
    v18 = y;
    v17 = height;
  }

  else if (v14 == UIUserInterfaceLayoutDirectionRightToLeft)
  {
    MaxX = CGRectGetMaxX(a6);
    v33.origin.x = v12;
    v18 = y;
    v17 = height;
    v33.origin.y = y;
    v33.size.width = v16;
    v33.size.height = height;
    v20 = MaxX - CGRectGetMinX(v33);
    [(CenteringCellLayoutManager *)self minimumHorizontalMargins];
    v16 = v16 - (v21 + v20);
    v15 = v21 + v20 + v12;
  }

  else
  {
    v34.origin.x = v10;
    v34.origin.y = y;
    v34.size.width = v16;
    v34.size.height = height;
    v29 = CGRectGetMaxX(v34);
    v18 = y;
    MinX = CGRectGetMinX(a6);
    [(CenteringCellLayoutManager *)self minimumHorizontalMargins];
    v23 = v16 + MinX;
    v17 = height;
    v16 = v23 - (v29 + v24);
    v15 = v10;
  }

  v25 = v15;
  v26 = v18;
  v27 = v16;
  v28 = v17;
  result.size.height = v28;
  result.size.width = v27;
  result.origin.y = v26;
  result.origin.x = v25;
  return result;
}

- (CGRect)contentEndingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v35.receiver = self;
  v35.super_class = CenteringCellLayoutManager;
  v6 = a3;
  [(CenteringCellLayoutManager *)&v35 contentEndingRectForCell:v6 forNewEditingState:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  -[CenteringCellLayoutManager accessoryEndingRectForCell:forNewEditingState:showingDeleteConfirmation:](self, "accessoryEndingRectForCell:forNewEditingState:showingDeleteConfirmation:", v6, v4, [v6 showingDeleteConfirmation]);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v6 bounds];
  [(CenteringCellLayoutManager *)self _adjustedContentViewFrame:v6 cell:v8 rowWidth:v10 accessoryViewFrame:v12, v14, CGRectGetWidth(v36), v16, v18, v20, v22, v35.receiver, v35.super_class];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)contentStartingRectForCell:(id)a3 forNewEditingState:(BOOL)a4
{
  v4 = a4;
  v35.receiver = self;
  v35.super_class = CenteringCellLayoutManager;
  v6 = a3;
  [(CenteringCellLayoutManager *)&v35 contentStartingRectForCell:v6 forNewEditingState:v4];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  -[CenteringCellLayoutManager accessoryStartingRectForCell:forNewEditingState:showingDeleteConfirmation:](self, "accessoryStartingRectForCell:forNewEditingState:showingDeleteConfirmation:", v6, v4, [v6 showingDeleteConfirmation]);
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  [v6 bounds];
  [(CenteringCellLayoutManager *)self _adjustedContentViewFrame:v6 cell:v8 rowWidth:v10 accessoryViewFrame:v12, v14, CGRectGetWidth(v36), v16, v18, v20, v22, v35.receiver, v35.super_class];
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;

  v31 = v24;
  v32 = v26;
  v33 = v28;
  v34 = v30;
  result.size.height = v34;
  result.size.width = v33;
  result.origin.y = v32;
  result.origin.x = v31;
  return result;
}

- (CGRect)contentRectForCell:(id)a3 forState:(unint64_t)a4 rowWidth:(double)a5
{
  v33.receiver = self;
  v33.super_class = CenteringCellLayoutManager;
  v8 = a3;
  [(CenteringCellLayoutManager *)&v33 contentRectForCell:v8 forState:a4 rowWidth:a5];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;
  -[CenteringCellLayoutManager accessoryEndingRectForCell:forNewEditingState:showingDeleteConfirmation:](self, "accessoryEndingRectForCell:forNewEditingState:showingDeleteConfirmation:", v8, [v8 isEditing], objc_msgSend(v8, "showingDeleteConfirmation"));
  [(CenteringCellLayoutManager *)self _adjustedContentViewFrame:v8 cell:v10 rowWidth:v12 accessoryViewFrame:v14, v16, a5, v17, v18, v19, v20, v33.receiver, v33.super_class];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;

  v29 = v22;
  v30 = v24;
  v31 = v26;
  v32 = v28;
  result.size.height = v32;
  result.size.width = v31;
  result.origin.y = v30;
  result.origin.x = v29;
  return result;
}

- (CenteringCellLayoutManager)initWithTableViewCellStyle:(int64_t)a3
{
  v7.receiver = self;
  v7.super_class = CenteringCellLayoutManager;
  v3 = [(CenteringCellLayoutManager *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v3->_maximumCellContentWidth = 1.79769313e308;
    v5 = v3;
  }

  return v4;
}

+ (id)layoutManagerForTableViewCellStyle:(int64_t)a3
{
  v3 = [[a1 alloc] initWithTableViewCellStyle:a3];

  return v3;
}

@end