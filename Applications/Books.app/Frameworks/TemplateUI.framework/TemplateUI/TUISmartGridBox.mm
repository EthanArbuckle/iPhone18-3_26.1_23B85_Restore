@interface TUISmartGridBox
+ (double)columnWidthWithConfiguration:(id)configuration columns:(unint64_t)columns spacing:(double)spacing;
+ (unint64_t)columnsWithConfiguration:(id)configuration;
+ (unint64_t)layoutModeFromString:(id)string;
+ (unint64_t)verticalPlacementFromString:(id)string;
- (UIEdgeInsets)gradientFraction;
- (UIEdgeInsets)gradientInsets;
- (UIEdgeInsets)insets;
- (void)updateWithContents:(id)contents;
@end

@implementation TUISmartGridBox

+ (unint64_t)layoutModeFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E6588 != -1)
  {
    sub_19BC2C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6580 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

- (void)updateWithContents:(id)contents
{
  contentsCopy = contents;
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
  identifier = [(TUIBox *)self identifier];
  v9 = [identifier tui_identifierByAppendingString:@"scrollable"];
  [(TUIScrollingBox *)self->_scrollBox setIdentifier:v9];

  modelIdentifierForScrollable = [(TUISmartGridBox *)self modelIdentifierForScrollable];
  [(TUIScrollingBox *)self->_scrollBox setModelIdentifierForScrollable:modelIdentifierForScrollable];

  content = self->_content;
  if (!content)
  {
    v12 = objc_alloc_init(TUISmartGridContentBox);
    v13 = self->_content;
    self->_content = v12;

    identifier2 = [(TUIBox *)self identifier];
    v15 = [identifier2 tui_identifierByAppendingString:@"content"];
    [(TUIBox *)self->_content setIdentifier:v15];

    content = self->_content;
  }

  [(TUIContainerBox *)content updateModelChildren:contentsCopy];
  v16 = self->_scrollBox;
  v20 = self->_content;
  v17 = [NSArray arrayWithObjects:&v20 count:1];
  [(TUIScrollingBox *)v16 updateModelChildren:v17];

  v19 = self->_scrollBox;
  v18 = [NSArray arrayWithObjects:&v19 count:1];
  [(TUIContainerBox *)self updateModelChildren:v18];
}

+ (unint64_t)verticalPlacementFromString:(id)string
{
  stringCopy = string;
  v4 = stringCopy;
  if (qword_2E6598 != -1)
  {
    sub_19BC40();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_5:
    unsignedIntegerValue = 0;
    goto LABEL_6;
  }

  if (!stringCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v5 = [qword_2E6590 objectForKeyedSubscript:v4];
  unsignedIntegerValue = [v5 unsignedIntegerValue];

LABEL_6:
  return unsignedIntegerValue;
}

+ (unint64_t)columnsWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  columns = [configurationCopy columns];
  [configurationCopy width];
  v6 = v5;
  [configurationCopy contentInsets];
  v8 = v7;
  v10 = v9;
  columnSpacing = [configurationCopy columnSpacing];
  v13 = TUILengthValueWithDefault(columnSpacing, v12, 0.0);
  if (columns == 0x7FFFFFFFFFFFFFFFLL || !columns)
  {
    columnWidth = [configurationCopy columnWidth];
    v16 = TUILengthValueWithDefault(columnWidth, v15, 100.0);
    widthSnap = [configurationCopy widthSnap];

    if (widthSnap)
    {
      widthSnap2 = [configurationCopy widthSnap];
      [widthSnap2 valueForValue:v6];
      v6 = v19;
    }

    columns = vcvtmd_u64_f64((v13 + v6 - v8 - v10) / (v13 + v16));
  }

  columnMultiple = [configurationCopy columnMultiple];
  if (columnMultiple <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = columnMultiple;
  }

  if (columns <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = columns;
  }

  v23 = v22 / v21 * v21;
  if ([configurationCopy maxColumns] != 0x7FFFFFFFFFFFFFFFLL)
  {
    maxColumns = [configurationCopy maxColumns];
    if (maxColumns < v23)
    {
      v23 = maxColumns;
    }
  }

  return v23;
}

+ (double)columnWidthWithConfiguration:(id)configuration columns:(unint64_t)columns spacing:(double)spacing
{
  configurationCopy = configuration;
  [configurationCopy width];
  v9 = v8;
  [configurationCopy contentInsets];
  v12 = (v9 - v10 - v11 + spacing) / columns - spacing;
  [configurationCopy columnWidth];
  LODWORD(columns) = v13;

  return fmin(v12, *&columns);
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