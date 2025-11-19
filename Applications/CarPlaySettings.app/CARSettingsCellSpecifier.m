@interface CARSettingsCellSpecifier
- (BOOL)cellBoolValue;
- (CARSettingsCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5 accessoryType:(int64_t)a6 actionBlock:(id)a7;
- (CARSettingsCellSpecifier)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 icon:(id)a6 accessoryType:(int64_t)a7;
- (CARSettingsCellSpecifier)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 icon:(id)a6 accessoryType:(int64_t)a7 actionBlock:(id)a8;
- (CGSize)intrinsicContentSize;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setAccessoryType:(int64_t)a3;
- (void)setAttributedTitle:(id)a3;
- (void)setCellValue:(id)a3;
- (void)setDetail:(id)a3;
- (void)setDetail:(id)a3 sizeToFit:(BOOL)a4 withNumberOfLines:(int64_t)a5 lineBreakMode:(int64_t)a6;
- (void)setEnabled:(BOOL)a3;
- (void)setImage:(id)a3;
- (void)setSelectionStyle:(int64_t)a3;
- (void)setSubtitle:(id)a3;
- (void)setTitle:(id)a3;
- (void)setTitleColor:(id)a3;
@end

@implementation CARSettingsCellSpecifier

- (CARSettingsCellSpecifier)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 icon:(id)a6 accessoryType:(int64_t)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v24.receiver = self;
  v24.super_class = CARSettingsCellSpecifier;
  v16 = [(CARSettingsCellSpecifier *)&v24 init];
  if (v16)
  {
    v17 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CARSettingsCellSpecifierObserver];
    observers = v16->_observers;
    v16->_observers = v17;

    v19 = [v12 copy];
    title = v16->_title;
    v16->_title = v19;

    v21 = [v13 copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v21;

    objc_storeStrong(&v16->_image, a5);
    objc_storeStrong(&v16->_icon, a6);
    v16->_accessoryType = a7;
    v16->_selectionStyle = 1;
    v16->_enabled = 1;
  }

  return v16;
}

- (CARSettingsCellSpecifier)initWithTitle:(id)a3 image:(id)a4 icon:(id)a5 accessoryType:(int64_t)a6 actionBlock:(id)a7
{
  v12 = a7;
  v13 = [(CARSettingsCellSpecifier *)self initWithTitle:a3 image:a4 icon:a5 accessoryType:a6];
  if (v13)
  {
    v14 = objc_retainBlock(v12);
    actionBlock = v13->_actionBlock;
    v13->_actionBlock = v14;
  }

  return v13;
}

- (CARSettingsCellSpecifier)initWithTitle:(id)a3 subtitle:(id)a4 image:(id)a5 icon:(id)a6 accessoryType:(int64_t)a7 actionBlock:(id)a8
{
  v14 = a8;
  v15 = [(CARSettingsCellSpecifier *)self initWithTitle:a3 subtitle:a4 image:a5 icon:a6 accessoryType:a7];
  if (v15)
  {
    v16 = objc_retainBlock(v14);
    actionBlock = v15->_actionBlock;
    v15->_actionBlock = v16;
  }

  return v15;
}

- (void)setTitle:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [v7 copy];
    title = self->_title;
    self->_title = v4;

    v6 = [(CARSettingsCellSpecifier *)self observers];
    [v6 specifier:self didUpdateTitle:v7];
  }
}

- (void)setSubtitle:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    v4 = [v7 copy];
    subtitle = self->_subtitle;
    self->_subtitle = v4;

    v6 = [(CARSettingsCellSpecifier *)self observers];
    [v6 specifier:self didUpdateSubtitle:v7];
  }
}

- (void)setAttributedTitle:(id)a3
{
  v7 = a3;
  if (![(NSAttributedString *)self->_attributedTitle isEqualToAttributedString:?])
  {
    v4 = [v7 copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v4;

    v6 = [(CARSettingsCellSpecifier *)self observers];
    [v6 specifier:self didUpdateAttributedTitle:v7];
  }
}

- (void)setAccessoryType:(int64_t)a3
{
  if (self->_accessoryType != a3)
  {
    self->_accessoryType = a3;
    v5 = [(CARSettingsCellSpecifier *)self observers];
    [v5 specifier:self didUpdateAccessoryType:self->_accessoryType];
  }
}

- (void)setDetail:(id)a3
{
  v7 = a3;
  if (![(NSString *)self->_detail isEqualToString:?])
  {
    v4 = [v7 copy];
    detail = self->_detail;
    self->_detail = v4;

    v6 = [(CARSettingsCellSpecifier *)self observers];
    [v6 specifier:self didUpdateDetail:self->_detail];
  }
}

- (void)setDetail:(id)a3 sizeToFit:(BOOL)a4 withNumberOfLines:(int64_t)a5 lineBreakMode:(int64_t)a6
{
  v13 = a3;
  if (![(NSString *)self->_detail isEqualToString:?])
  {
    v10 = [v13 copy];
    detail = self->_detail;
    self->_detail = v10;

    self->_detailSizeToFit = a4;
    self->_detailLineBreakMode = a6;
    self->_detailNumberOfLines = a5;
    v12 = [(CARSettingsCellSpecifier *)self observers];
    [v12 specifier:self didUpdateDetail:self->_detail];
  }
}

- (void)setTitleColor:(id)a3
{
  v7 = a3;
  if (([(UIColor *)self->_titleColor isEqual:?]& 1) == 0)
  {
    v4 = [v7 copy];
    titleColor = self->_titleColor;
    self->_titleColor = v4;

    v6 = [(CARSettingsCellSpecifier *)self observers];
    [v6 specifier:self didUpdateTitleColor:v7];
  }
}

- (void)setSelectionStyle:(int64_t)a3
{
  if (self->_selectionStyle != a3)
  {
    self->_selectionStyle = a3;
    v6 = [(CARSettingsCellSpecifier *)self observers];
    [v6 specifier:self didUpdateSelectionStyle:a3];
  }
}

- (void)setCellValue:(id)a3
{
  objc_storeStrong(&self->_cellValue, a3);
  v5 = a3;
  v6 = [(CARSettingsCellSpecifier *)self observers];
  [v6 specifier:self didUpdateValue:v5];
}

- (void)setImage:(id)a3
{
  objc_storeStrong(&self->_image, a3);
  v5 = a3;
  v6 = [(CARSettingsCellSpecifier *)self observers];
  [v6 specifier:self didUpdateImage:v5];
}

- (void)setEnabled:(BOOL)a3
{
  v3 = a3;
  self->_enabled = a3;
  v5 = [(CARSettingsCellSpecifier *)self observers];
  [v5 specifier:self didUpdateEnabled:v3];
}

- (BOOL)cellBoolValue
{
  v2 = [(CARSettingsCellSpecifier *)self cellValue];
  v3 = [v2 BOOLValue];

  return v3;
}

- (CGSize)intrinsicContentSize
{
  v2 = [(CARSettingsCellSpecifier *)self image];
  [v2 size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsCellSpecifier *)self observers];
  [v5 addObserver:v4];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(CARSettingsCellSpecifier *)self observers];
  [v5 removeObserver:v4];
}

@end