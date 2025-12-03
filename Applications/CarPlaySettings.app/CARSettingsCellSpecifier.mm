@interface CARSettingsCellSpecifier
- (BOOL)cellBoolValue;
- (CARSettingsCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon accessoryType:(int64_t)type actionBlock:(id)block;
- (CARSettingsCellSpecifier)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image icon:(id)icon accessoryType:(int64_t)type;
- (CARSettingsCellSpecifier)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image icon:(id)icon accessoryType:(int64_t)type actionBlock:(id)block;
- (CGSize)intrinsicContentSize;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setAccessoryType:(int64_t)type;
- (void)setAttributedTitle:(id)title;
- (void)setCellValue:(id)value;
- (void)setDetail:(id)detail;
- (void)setDetail:(id)detail sizeToFit:(BOOL)fit withNumberOfLines:(int64_t)lines lineBreakMode:(int64_t)mode;
- (void)setEnabled:(BOOL)enabled;
- (void)setImage:(id)image;
- (void)setSelectionStyle:(int64_t)style;
- (void)setSubtitle:(id)subtitle;
- (void)setTitle:(id)title;
- (void)setTitleColor:(id)color;
@end

@implementation CARSettingsCellSpecifier

- (CARSettingsCellSpecifier)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image icon:(id)icon accessoryType:(int64_t)type
{
  titleCopy = title;
  subtitleCopy = subtitle;
  imageCopy = image;
  iconCopy = icon;
  v24.receiver = self;
  v24.super_class = CARSettingsCellSpecifier;
  v16 = [(CARSettingsCellSpecifier *)&v24 init];
  if (v16)
  {
    v17 = [[CARObserverHashTable alloc] initWithProtocol:&OBJC_PROTOCOL___CARSettingsCellSpecifierObserver];
    observers = v16->_observers;
    v16->_observers = v17;

    v19 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v19;

    v21 = [subtitleCopy copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v21;

    objc_storeStrong(&v16->_image, image);
    objc_storeStrong(&v16->_icon, icon);
    v16->_accessoryType = type;
    v16->_selectionStyle = 1;
    v16->_enabled = 1;
  }

  return v16;
}

- (CARSettingsCellSpecifier)initWithTitle:(id)title image:(id)image icon:(id)icon accessoryType:(int64_t)type actionBlock:(id)block
{
  blockCopy = block;
  v13 = [(CARSettingsCellSpecifier *)self initWithTitle:title image:image icon:icon accessoryType:type];
  if (v13)
  {
    v14 = objc_retainBlock(blockCopy);
    actionBlock = v13->_actionBlock;
    v13->_actionBlock = v14;
  }

  return v13;
}

- (CARSettingsCellSpecifier)initWithTitle:(id)title subtitle:(id)subtitle image:(id)image icon:(id)icon accessoryType:(int64_t)type actionBlock:(id)block
{
  blockCopy = block;
  v15 = [(CARSettingsCellSpecifier *)self initWithTitle:title subtitle:subtitle image:image icon:icon accessoryType:type];
  if (v15)
  {
    v16 = objc_retainBlock(blockCopy);
    actionBlock = v15->_actionBlock;
    v15->_actionBlock = v16;
  }

  return v15;
}

- (void)setTitle:(id)title
{
  titleCopy = title;
  if (![(NSString *)self->_title isEqualToString:?])
  {
    v4 = [titleCopy copy];
    title = self->_title;
    self->_title = v4;

    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateTitle:titleCopy];
  }
}

- (void)setSubtitle:(id)subtitle
{
  subtitleCopy = subtitle;
  if (![(NSString *)self->_subtitle isEqualToString:?])
  {
    v4 = [subtitleCopy copy];
    subtitle = self->_subtitle;
    self->_subtitle = v4;

    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateSubtitle:subtitleCopy];
  }
}

- (void)setAttributedTitle:(id)title
{
  titleCopy = title;
  if (![(NSAttributedString *)self->_attributedTitle isEqualToAttributedString:?])
  {
    v4 = [titleCopy copy];
    attributedTitle = self->_attributedTitle;
    self->_attributedTitle = v4;

    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateAttributedTitle:titleCopy];
  }
}

- (void)setAccessoryType:(int64_t)type
{
  if (self->_accessoryType != type)
  {
    self->_accessoryType = type;
    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateAccessoryType:self->_accessoryType];
  }
}

- (void)setDetail:(id)detail
{
  detailCopy = detail;
  if (![(NSString *)self->_detail isEqualToString:?])
  {
    v4 = [detailCopy copy];
    detail = self->_detail;
    self->_detail = v4;

    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateDetail:self->_detail];
  }
}

- (void)setDetail:(id)detail sizeToFit:(BOOL)fit withNumberOfLines:(int64_t)lines lineBreakMode:(int64_t)mode
{
  detailCopy = detail;
  if (![(NSString *)self->_detail isEqualToString:?])
  {
    v10 = [detailCopy copy];
    detail = self->_detail;
    self->_detail = v10;

    self->_detailSizeToFit = fit;
    self->_detailLineBreakMode = mode;
    self->_detailNumberOfLines = lines;
    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateDetail:self->_detail];
  }
}

- (void)setTitleColor:(id)color
{
  colorCopy = color;
  if (([(UIColor *)self->_titleColor isEqual:?]& 1) == 0)
  {
    v4 = [colorCopy copy];
    titleColor = self->_titleColor;
    self->_titleColor = v4;

    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateTitleColor:colorCopy];
  }
}

- (void)setSelectionStyle:(int64_t)style
{
  if (self->_selectionStyle != style)
  {
    self->_selectionStyle = style;
    observers = [(CARSettingsCellSpecifier *)self observers];
    [observers specifier:self didUpdateSelectionStyle:style];
  }
}

- (void)setCellValue:(id)value
{
  objc_storeStrong(&self->_cellValue, value);
  valueCopy = value;
  observers = [(CARSettingsCellSpecifier *)self observers];
  [observers specifier:self didUpdateValue:valueCopy];
}

- (void)setImage:(id)image
{
  objc_storeStrong(&self->_image, image);
  imageCopy = image;
  observers = [(CARSettingsCellSpecifier *)self observers];
  [observers specifier:self didUpdateImage:imageCopy];
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  self->_enabled = enabled;
  observers = [(CARSettingsCellSpecifier *)self observers];
  [observers specifier:self didUpdateEnabled:enabledCopy];
}

- (BOOL)cellBoolValue
{
  cellValue = [(CARSettingsCellSpecifier *)self cellValue];
  bOOLValue = [cellValue BOOLValue];

  return bOOLValue;
}

- (CGSize)intrinsicContentSize
{
  image = [(CARSettingsCellSpecifier *)self image];
  [image size];
  v4 = v3;
  v6 = v5;

  v7 = v4;
  v8 = v6;
  result.height = v8;
  result.width = v7;
  return result;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARSettingsCellSpecifier *)self observers];
  [observers addObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observers = [(CARSettingsCellSpecifier *)self observers];
  [observers removeObserver:observerCopy];
}

@end