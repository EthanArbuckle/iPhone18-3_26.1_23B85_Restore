@interface ATXTimeGlyphPresentation
- (ATXTimeGlyphPresentation)initWithCoder:(id)a3;
- (ATXTimeGlyphPresentation)initWithSymbolName:(id)a3 colorName:(id)a4 title:(id)a5 options:(unint64_t)a6;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToATXTimeGlyphPresentation:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ATXTimeGlyphPresentation

- (void)encodeWithCoder:(id)a3
{
  symbolName = self->_symbolName;
  v5 = a3;
  [v5 encodeObject:symbolName forKey:@"symbolName"];
  [v5 encodeObject:self->_colorName forKey:@"colorName"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeInteger:self->_options forKey:@"options"];
}

- (ATXTimeGlyphPresentation)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"symbolName"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"colorName"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  v8 = [v4 decodeIntegerForKey:@"options"];

  v9 = [(ATXTimeGlyphPresentation *)self initWithSymbolName:v5 colorName:v6 title:v7 options:v8];
  return v9;
}

- (ATXTimeGlyphPresentation)initWithSymbolName:(id)a3 colorName:(id)a4 title:(id)a5 options:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = ATXTimeGlyphPresentation;
  v13 = [(ATXTimeGlyphPresentation *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    symbolName = v13->_symbolName;
    v13->_symbolName = v14;

    v16 = [v11 copy];
    colorName = v13->_colorName;
    v13->_colorName = v16;

    v18 = [v12 copy];
    title = v13->_title;
    v13->_title = v18;

    v13->_options = a6;
  }

  return v13;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXTimeGlyphPresentation *)self isEqualToATXTimeGlyphPresentation:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXTimeGlyphPresentation:(id)a3
{
  v4 = a3;
  v5 = self->_symbolName;
  v6 = v5;
  if (v5 == v4[1])
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
  if (v9 == v4[2])
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