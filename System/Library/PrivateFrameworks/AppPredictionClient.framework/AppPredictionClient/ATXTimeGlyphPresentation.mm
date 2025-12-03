@interface ATXTimeGlyphPresentation
- (ATXTimeGlyphPresentation)initWithCoder:(id)coder;
- (ATXTimeGlyphPresentation)initWithSymbolName:(id)name colorName:(id)colorName title:(id)title options:(unint64_t)options;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXTimeGlyphPresentation:(id)presentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATXTimeGlyphPresentation

- (void)encodeWithCoder:(id)coder
{
  symbolName = self->_symbolName;
  coderCopy = coder;
  [coderCopy encodeObject:symbolName forKey:@"symbolName"];
  [coderCopy encodeObject:self->_colorName forKey:@"colorName"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeInteger:self->_options forKey:@"options"];
}

- (ATXTimeGlyphPresentation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [coderCopy decodeIntegerForKey:@"options"];

  v9 = [(ATXTimeGlyphPresentation *)self initWithSymbolName:v5 colorName:v6 title:v7 options:v8];
  return v9;
}

- (ATXTimeGlyphPresentation)initWithSymbolName:(id)name colorName:(id)colorName title:(id)title options:(unint64_t)options
{
  nameCopy = name;
  colorNameCopy = colorName;
  titleCopy = title;
  v21.receiver = self;
  v21.super_class = ATXTimeGlyphPresentation;
  v13 = [(ATXTimeGlyphPresentation *)&v21 init];
  if (v13)
  {
    v14 = [nameCopy copy];
    symbolName = v13->_symbolName;
    v13->_symbolName = v14;

    v16 = [colorNameCopy copy];
    colorName = v13->_colorName;
    v13->_colorName = v16;

    v18 = [titleCopy copy];
    title = v13->_title;
    v13->_title = v18;

    v13->_options = options;
  }

  return v13;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTimeGlyphPresentation *)self isEqualToATXTimeGlyphPresentation:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXTimeGlyphPresentation:(id)presentation
{
  presentationCopy = presentation;
  v5 = self->_symbolName;
  v6 = v5;
  if (v5 == presentationCopy[1])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      v8 = 0;
      goto LABEL_9;
    }
  }

  v9 = self->_colorName;
  v10 = v9;
  if (v9 == presentationCopy[2])
  {
    v8 = 1;
  }

  else
  {
    v8 = [(NSString *)v9 isEqual:?];
  }

LABEL_9:
  return v8;
}

@end