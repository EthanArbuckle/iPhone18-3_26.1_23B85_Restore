@interface ATXTimeMarble
- (ATXTimeMarble)initWithCoder:(id)coder;
- (ATXTimeMarble)initWithSymbolName:(id)name colorName:(id)colorName dateComponents:(id)components title:(id)title;
- (NSDate)date;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeMarble

- (ATXTimeMarble)initWithSymbolName:(id)name colorName:(id)colorName dateComponents:(id)components title:(id)title
{
  nameCopy = name;
  colorNameCopy = colorName;
  componentsCopy = components;
  titleCopy = title;
  v25.receiver = self;
  v25.super_class = ATXTimeMarble;
  v14 = [(ATXTimeMarble *)&v25 init];
  if (v14)
  {
    v15 = [nameCopy copy];
    symbolName = v14->_symbolName;
    v14->_symbolName = v15;

    v17 = [colorNameCopy copy];
    colorName = v14->_colorName;
    v14->_colorName = v17;

    v19 = [componentsCopy copy];
    dateComponents = v14->_dateComponents;
    v14->_dateComponents = v19;

    v21 = [titleCopy copy];
    title = v14->_title;
    v14->_title = v21;

    v23 = v14;
  }

  return v14;
}

- (ATXTimeMarble)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dateComponents"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];

  v9 = [(ATXTimeMarble *)self initWithSymbolName:v5 colorName:v6 dateComponents:v7 title:v8];
  return v9;
}

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
  [coderCopy encodeObject:self->_colorName forKey:@"colorName"];
  [coderCopy encodeObject:self->_dateComponents forKey:@"dateComponents"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
}

- (NSDate)date
{
  currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
  dateComponents = [(ATXTimeMarble *)self dateComponents];
  v5 = [currentCalendar dateFromComponents:dateComponents];

  return v5;
}

@end