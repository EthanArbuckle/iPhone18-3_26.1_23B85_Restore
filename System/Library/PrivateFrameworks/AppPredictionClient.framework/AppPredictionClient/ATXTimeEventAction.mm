@interface ATXTimeEventAction
- (ATXTimeEventAction)initWithCoder:(id)coder;
- (ATXTimeEventAction)initWithTitle:(id)title compactTitle:(id)compactTitle identifier:(id)identifier symbolName:(id)name colorName:(id)colorName options:(unint64_t)options;
- (id)compactTitleUsingETAIfPossibleWithMinutes:(double)minutes style:(int64_t)style;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeEventAction

- (ATXTimeEventAction)initWithTitle:(id)title compactTitle:(id)compactTitle identifier:(id)identifier symbolName:(id)name colorName:(id)colorName options:(unint64_t)options
{
  titleCopy = title;
  compactTitleCopy = compactTitle;
  identifierCopy = identifier;
  nameCopy = name;
  colorNameCopy = colorName;
  v32.receiver = self;
  v32.super_class = ATXTimeEventAction;
  v19 = [(ATXTimeEventAction *)&v32 init];
  if (v19)
  {
    v20 = [titleCopy copy];
    title = v19->_title;
    v19->_title = v20;

    v22 = [compactTitleCopy copy];
    compactTitle = v19->_compactTitle;
    v19->_compactTitle = v22;

    v24 = [identifierCopy copy];
    identifier = v19->_identifier;
    v19->_identifier = v24;

    v26 = [nameCopy copy];
    symbolName = v19->_symbolName;
    v19->_symbolName = v26;

    v28 = [colorNameCopy copy];
    colorName = v19->_colorName;
    v19->_colorName = v28;

    v19->_options = options;
    v30 = v19;
  }

  return v19;
}

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"symbol"];
  [coderCopy encodeObject:self->_colorName forKey:@"symbolColorName"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_compactTitle forKey:@"compactTitle"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (ATXTimeEventAction)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"compactTitle"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbol"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolColorName"];
  v10 = [coderCopy decodeIntegerForKey:@"options"];

  v11 = [(ATXTimeEventAction *)self initWithTitle:v5 compactTitle:v6 identifier:v7 symbolName:v8 colorName:v9 options:v10];
  return v11;
}

- (id)compactTitleUsingETAIfPossibleWithMinutes:(double)minutes style:(int64_t)style
{
  if (minutes < 1.0 || (self->_options & 2) == 0)
  {
    compactTitle = [(ATXTimeEventAction *)self compactTitle];
  }

  else
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF10]);
    [v7 setMinute:minutes];
    v8 = objc_alloc_init(MEMORY[0x1E696AB70]);
    [v8 setUnitsStyle:style];
    compactTitle = [v8 stringFromDateComponents:v7];
  }

  return compactTitle;
}

@end