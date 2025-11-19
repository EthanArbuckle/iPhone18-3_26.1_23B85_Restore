@interface TUISmartGridBox
+ (double)columnWidthWithConfiguration:(id)a3 columns:(unint64_t)a4 spacing:(double)a5;
+ (unint64_t)columnsWithConfiguration:(id)a3;
+ (unint64_t)layoutModeFromString:(id)a3;
+ (unint64_t)verticalPlacementFromString:(id)a3;
- (UIEdgeInsets)gradientFraction;
- (UIEdgeInsets)gradientInsets;
- (UIEdgeInsets)insets;
- (void)updateWithContents:(id)a3;
@end

@implementation TUISmartGridBox

+ (unint64_t)layoutModeFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6588 != -1)
  {
    sub_19BC2C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6580 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

- (void)updateWithContents:(id)a3
{
  v4 = a3;
  if ((self->_layoutMode & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v5 = off_25CD18;
  }

  else
  {
    v5 = off_25CD00;
  }

  v6 = objc_alloc_init(*v5);
  scrollBox = self->_scrollBox;
  self->_scrollBox = v6;

  [(TUIScrollingBox *)self->_scrollBox setAcceptsDrop:self->_acceptsDrop];
  [(TUIScrollingBox *)self->_scrollBox setDropHandler:self->_dropHandler];
  [(TUIScrollingBox *)self->_scrollBox setDecelerationRate:self->_decelerationRate];
  v8 = [(TUIBox *)self identifier];
  v9 = [v8 tui_identifierByAppendingString:@"scrollable"];
  [(TUIScrollingBox *)self->_scrollBox setIdentifier:v9];

  v10 = [(TUISmartGridBox *)self modelIdentifierForScrollable];
  [(TUIScrollingBox *)self->_scrollBox setModelIdentifierForScrollable:v10];

  content = self->_content;
  if (!content)
  {
    v12 = objc_alloc_init(TUISmartGridContentBox);
    v13 = self->_content;
    self->_content = v12;

    v14 = [(TUIBox *)self identifier];
    v15 = [v14 tui_identifierByAppendingString:@"content"];
    [(TUIBox *)self->_content setIdentifier:v15];

    content = self->_content;
  }

  [(TUIContainerBox *)content updateModelChildren:v4];
  v16 = self->_scrollBox;
  v20 = self->_content;
  v17 = [NSArray arrayWithObjects:&v20 count:1];
  [(TUIScrollingBox *)v16 updateModelChildren:v17];

  v19 = self->_scrollBox;
  v18 = [NSArray arrayWithObjects:&v19 count:1];
  [(TUIContainerBox *)self updateModelChildren:v18];
}

+ (unint64_t)verticalPlacementFromString:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (qword_2E6598 != -1)
  {
    sub_19BC40();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6590 objectForKeyedSubscript:v4];
  v6 = [v5 unsignedIntegerValue];

LABEL_6:
  return v6;
}

+ (unint64_t)columnsWithConfiguration:(id)a3
{
  v3 = a3;
  v4 = [v3 columns];
  [v3 width];
  v6 = v5;
  [v3 contentInsets];
  v8 = v7;
  v10 = v9;
  v11 = [v3 columnSpacing];
  v13 = TUILengthValueWithDefault(v11, v12, 0.0);
  if (v4 == 0x7FFFFFFFFFFFFFFFLL || !v4)
  {
    v14 = [v3 columnWidth];
    v16 = TUILengthValueWithDefault(v14, v15, 100.0);
    v17 = [v3 widthSnap];

    if (v17)
    {
      v18 = [v3 widthSnap];
      [v18 valueForValue:v6];
      v6 = v19;
    }

    v4 = vcvtmd_u64_f64((v13 + v6 - v8 - v10) / (v13 + v16));
  }

  v20 = [v3 columnMultiple];
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  if (v4 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v4;
  }

  v23 = v22 / v21 * v21;
  if ([v3 maxColumns] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = [v3 maxColumns];
    if (v24 < v23)
    {
      v23 = v24;
    }
  }

  return v23;
}

+ (double)columnWidthWithConfiguration:(id)a3 columns:(unint64_t)a4 spacing:(double)a5
{
  v7 = a3;
  [v7 width];
  v9 = v8;
  [v7 contentInsets];
  v12 = (v9 - v10 - v11 + a5) / a4 - a5;
  [v7 columnWidth];
  LODWORD(a4) = v13;

  return fmin(v12, *&a4);
}

- (UIEdgeInsets)insets
{
  v2 = *&self->_rowSpacing.max;
  v3 = *&self->_rowSpacing._flags;
  top = self->_insets.top;
  left = self->_insets.left;
  result.right = left;
  result.bottom = top;
  result.left = v3;
  result.top = v2;
  return result;
}

- (UIEdgeInsets)gradientInsets
{
  bottom = self->_insets.bottom;
  right = self->_insets.right;
  top = self->_gradientInsets.top;
  left = self->_gradientInsets.left;
  result.right = left;
  result.bottom = top;
  result.left = right;
  result.top = bottom;
  return result;
}

- (UIEdgeInsets)gradientFraction
{
  bottom = self->_gradientInsets.bottom;
  right = self->_gradientInsets.right;
  top = self->_gradientFraction.top;
  left = self->_gradientFraction.left;
  result.right = left;
  result.bottom = top;
  result.left = right;
  result.top = bottom;
  return result;
}

@end