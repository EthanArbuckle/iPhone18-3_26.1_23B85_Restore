@interface TUIAttributedStringBuilder
- (TUIAttributedStringBuilder)initWithFontSpec:(id)spec style:(unint64_t)style color:(id)color textAlignment:(int64_t)alignment;
- (_NSRange)appendWithBlock:(id)block;
- (id)finalizeTextModelWithContext:(id)context;
- (void)addImageModel:(id)model forRole:(id)role;
- (void)appendHyperlinkWithURL:(id)l block:(id)block;
- (void)appendString:(id)string;
- (void)appendWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec block:(id)block;
@end

@implementation TUIAttributedStringBuilder

- (TUIAttributedStringBuilder)initWithFontSpec:(id)spec style:(unint64_t)style color:(id)color textAlignment:(int64_t)alignment
{
  specCopy = spec;
  colorCopy = color;
  v36.receiver = self;
  v36.super_class = TUIAttributedStringBuilder;
  v12 = [(TUIAttributedStringBuilder *)&v36 init];
  if (v12)
  {
    v13 = [specCopy copy];
    fontSpec = v12->_fontSpec;
    v12->_fontSpec = v13;

    v15 = [colorCopy copy];
    color = v12->_color;
    v12->_color = v15;

    caps = [specCopy caps];
    v12->_style = style;
    v12->_caps = caps;
    attributesForAttributedString = [specCopy attributesForAttributedString];
    attributes = [attributesForAttributedString attributes];
    v20 = [attributes mutableCopy];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = objc_opt_new();
    }

    v23 = v22;

    v24 = v12->_color;
    if (v24)
    {
      [v23 setObject:v24 forKeyedSubscript:NSForegroundColorAttributeName];
    }

    if (alignment != 4)
    {
      v25 = [v23 objectForKeyedSubscript:NSParagraphStyleAttributeName];
      v26 = v25;
      if (v25)
      {
        v27 = v25;
      }

      else
      {
        v27 = +[NSParagraphStyle defaultParagraphStyle];
      }

      v28 = v27;

      v29 = [v28 mutableCopy];
      [v29 setAlignment:alignment];
      v30 = [v29 copy];
      [v23 setObject:v30 forKeyedSubscript:NSParagraphStyleAttributeName];
    }

    v31 = [v23 copy];
    attributes = v12->_attributes;
    v12->_attributes = v31;

    v33 = objc_alloc_init(NSMutableAttributedString);
    attributedString = v12->_attributedString;
    v12->_attributedString = v33;
  }

  return v12;
}

- (void)appendHyperlinkWithURL:(id)l block:(id)block
{
  blockCopy = block;
  attributes = self->_attributes;
  p_attributes = &self->_attributes;
  v8 = attributes;
  v9 = *p_attributes;
  lCopy = l;
  v11 = [v9 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v14 = v13;

  [v14 setObject:lCopy forKeyedSubscript:NSLinkAttributeName];
  v15 = +[UIColor clearColor];
  [v14 setObject:v15 forKeyedSubscript:NSUnderlineColorAttributeName];

  objc_storeStrong(p_attributes, v14);
  if (blockCopy)
  {
    blockCopy[2]();
  }

  v16 = *p_attributes;
  *p_attributes = v8;
  v17 = v8;
}

- (void)appendString:(id)string
{
  stringCopy = string;
  if (!stringCopy)
  {
    return;
  }

  caps = self->_caps;
  v10 = stringCopy;
  switch(caps)
  {
    case 5uLL:
      localizedLowercaseString = [stringCopy localizedLowercaseString];
      goto LABEL_9;
    case 4uLL:
      localizedLowercaseString = [stringCopy localizedCapitalizedString];
      goto LABEL_9;
    case 2uLL:
      localizedLowercaseString = [stringCopy localizedUppercaseString];
LABEL_9:
      v7 = localizedLowercaseString;

      v10 = v7;
      break;
  }

  attributedString = self->_attributedString;
  v9 = [[NSAttributedString alloc] initWithString:v10 attributes:self->_attributes];
  [(NSMutableAttributedString *)attributedString appendAttributedString:v9];
}

- (void)appendWithStyle:(unint64_t)style color:(id)color fontSpec:(id)spec block:(id)block
{
  colorCopy = color;
  specCopy = spec;
  blockCopy = block;
  v13 = self->_attributes;
  v41 = *&self->_style;
  v40 = self->_color;
  v14 = self->_style | style;
  self->_style = v14;
  if (specCopy)
  {
    if ([specCopy caps])
    {
      self->_caps = [specCopy caps];
    }
  }

  else if (v14 == v41)
  {
    if (!colorCopy || ([(UIColor *)self->_color isEqual:colorCopy]& 1) != 0)
    {
      blockCopy[2](blockCopy);
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  if (colorCopy)
  {
LABEL_9:
    objc_storeStrong(&self->_color, color);
    v15 = 0;
    goto LABEL_11;
  }

  v15 = 1;
LABEL_11:
  v16 = [(NSDictionary *)self->_attributes mutableCopy];
  v17 = v16;
  if (v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = objc_opt_new();
  }

  v19 = v18;

  if (specCopy)
  {
    attributesForAttributedString = [specCopy attributesForAttributedString];
    attributes = [attributesForAttributedString attributes];
    [v19 addEntriesFromDictionary:attributes];
  }

  if ((v15 & 1) == 0)
  {
    [v19 setObject:colorCopy forKeyedSubscript:NSForegroundColorAttributeName];
  }

  if ((style & 1) == 0)
  {
    if ((style & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    v32 = [v19 objectForKeyedSubscript:NSFontAttributeName];
    v33 = v32;
    if (v32)
    {
      fontDescriptor = [v32 fontDescriptor];
      v35 = [fontDescriptor fontDescriptorWithSymbolicTraits:1];
      v39 = blockCopy;
      v36 = v13;
      [v33 pointSize];
      v37 = [UIFont fontWithDescriptor:v35 size:?];
      [v19 setObject:v37 forKeyedSubscript:NSFontAttributeName];

      v13 = v36;
      blockCopy = v39;
    }

    if ((style & 8) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_21;
  }

  v27 = [v19 objectForKeyedSubscript:NSFontAttributeName];
  v28 = v27;
  if (v27)
  {
    [v27 fontDescriptor];
    v29 = v38 = v13;
    v30 = [v29 fontDescriptorWithSymbolicTraits:2];
    [v28 pointSize];
    v31 = [UIFont fontWithDescriptor:v30 size:?];
    [v19 setObject:v31 forKeyedSubscript:NSFontAttributeName];

    v13 = v38;
  }

  if ((style & 2) != 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((style & 8) != 0)
  {
LABEL_21:
    [v19 setObject:&off_2733A0 forKeyedSubscript:NSStrikethroughStyleAttributeName];
  }

LABEL_22:
  v22 = [v19 copy];
  attributes = self->_attributes;
  self->_attributes = v22;

  blockCopy[2](blockCopy);
LABEL_23:
  v24 = self->_attributes;
  self->_attributes = v13;
  v25 = v13;

  *&self->_style = v41;
  color = self->_color;
  self->_color = v40;
}

- (_NSRange)appendWithBlock:(id)block
{
  blockCopy = block;
  v5 = [(NSMutableAttributedString *)self->_attributedString length];
  if (blockCopy)
  {
    blockCopy[2](blockCopy);
  }

  v6 = ([(NSMutableAttributedString *)self->_attributedString length]- v5);

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)finalizeTextModelWithContext:(id)context
{
  v3 = [(NSMutableAttributedString *)self->_attributedString copy];

  return v3;
}

- (void)addImageModel:(id)model forRole:(id)role
{
  modelCopy = model;
  roleCopy = role;
  v7 = roleCopy;
  if (!roleCopy || [roleCopy isEqualToString:@"content"])
  {
    image = [modelCopy image];
    v9 = [NSTextAttachment textAttachmentWithImage:image];
    attributedString = self->_attributedString;
    v11 = [NSAttributedString attributedStringWithAttachment:v9];
    [(NSMutableAttributedString *)attributedString appendAttributedString:v11];

    if (self->_color && [image isSymbolImage])
    {
      [(NSMutableAttributedString *)self->_attributedString addAttribute:NSForegroundColorAttributeName value:self->_color range:[(NSMutableAttributedString *)self->_attributedString length]- 1, 1];
    }
  }
}

@end