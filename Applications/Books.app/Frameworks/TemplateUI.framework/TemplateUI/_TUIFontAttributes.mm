@interface _TUIFontAttributes
- (_TUIFontAttributes)attributesWithCentered:(BOOL)centered truncated:(BOOL)truncated;
- (_TUIFontAttributes)attributesWithForegroundColor:(id)color;
- (_TUIFontAttributes)attributesWithLineSpacing:(double)spacing;
- (_TUIFontAttributes)attributesWithTruncated:(BOOL)truncated;
- (_TUIFontAttributes)initWithAttributes:(id)attributes caps:(unint64_t)caps;
- (id)attributedStringWithText:(id)text;
@end

@implementation _TUIFontAttributes

- (_TUIFontAttributes)initWithAttributes:(id)attributes caps:(unint64_t)caps
{
  attributesCopy = attributes;
  v11.receiver = self;
  v11.super_class = _TUIFontAttributes;
  v8 = [(_TUIFontAttributes *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_attributes, attributes);
    v9->_caps = caps;
  }

  return v9;
}

- (id)attributedStringWithText:(id)text
{
  textCopy = text;
  v5 = textCopy;
  if (self->_caps == 2)
  {
    localizedUppercaseString = [textCopy localizedUppercaseString];

    v5 = localizedUppercaseString;
  }

  if (v5)
  {
    v7 = [[NSAttributedString alloc] initWithString:v5 attributes:self->_attributes];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (_TUIFontAttributes)attributesWithTruncated:(BOOL)truncated
{
  truncatedCopy = truncated;
  v5 = [(NSDictionary *)self->_attributes mutableCopy];
  v6 = [v5 objectForKeyedSubscript:NSParagraphStyleAttributeName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSParagraphStyle defaultParagraphStyle];
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  v11 = v10;
  if (truncatedCopy)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  [v10 setLineBreakMode:v12];
  v13 = [v11 copy];
  [v5 setObject:v13 forKeyedSubscript:NSParagraphStyleAttributeName];

  v14 = [[_TUIFontAttributes alloc] initWithAttributes:v5 caps:self->_caps];

  return v14;
}

- (_TUIFontAttributes)attributesWithCentered:(BOOL)centered truncated:(BOOL)truncated
{
  truncatedCopy = truncated;
  centeredCopy = centered;
  v7 = [(NSDictionary *)self->_attributes mutableCopy];
  v8 = [v7 objectForKeyedSubscript:NSParagraphStyleAttributeName];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = +[NSParagraphStyle defaultParagraphStyle];
  }

  v11 = v10;

  v12 = [v11 mutableCopy];
  v13 = v12;
  if (centeredCopy)
  {
    [v12 setAlignment:1];
  }

  else
  {
    v14 = +[NSParagraphStyle defaultParagraphStyle];
    [v13 setAlignment:{objc_msgSend(v14, "alignment")}];
  }

  if (truncatedCopy)
  {
    v15 = 4;
  }

  else
  {
    v15 = 0;
  }

  [v13 setLineBreakMode:v15];
  v16 = [v13 copy];
  [v7 setObject:v16 forKeyedSubscript:NSParagraphStyleAttributeName];

  v17 = [[_TUIFontAttributes alloc] initWithAttributes:v7 caps:self->_caps];

  return v17;
}

- (_TUIFontAttributes)attributesWithLineSpacing:(double)spacing
{
  v5 = [(NSDictionary *)self->_attributes mutableCopy];
  v6 = [v5 objectForKeyedSubscript:NSParagraphStyleAttributeName];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = +[NSParagraphStyle defaultParagraphStyle];
  }

  v9 = v8;

  v10 = [v9 mutableCopy];
  [v10 setLineSpacing:spacing];
  v11 = [v10 copy];
  [v5 setObject:v11 forKeyedSubscript:NSParagraphStyleAttributeName];

  v12 = [[_TUIFontAttributes alloc] initWithAttributes:v5 caps:self->_caps];

  return v12;
}

- (_TUIFontAttributes)attributesWithForegroundColor:(id)color
{
  attributes = self->_attributes;
  colorCopy = color;
  v6 = [(NSDictionary *)attributes mutableCopy];
  [v6 setObject:colorCopy forKeyedSubscript:NSForegroundColorAttributeName];

  v7 = [[_TUIFontAttributes alloc] initWithAttributes:v6 caps:self->_caps];

  return v7;
}

@end