@interface TUIAttributedStringBuilder
- (TUIAttributedStringBuilder)initWithFontSpec:(id)a3 style:(unint64_t)a4 color:(id)a5 textAlignment:(int64_t)a6;
- (_NSRange)appendWithBlock:(id)a3;
- (id)finalizeTextModelWithContext:(id)a3;
- (void)addImageModel:(id)a3 forRole:(id)a4;
- (void)appendHyperlinkWithURL:(id)a3 block:(id)a4;
- (void)appendString:(id)a3;
- (void)appendWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5 block:(id)a6;
@end

@implementation TUIAttributedStringBuilder

- (TUIAttributedStringBuilder)initWithFontSpec:(id)a3 style:(unint64_t)a4 color:(id)a5 textAlignment:(int64_t)a6
{
  v10 = a3;
  v11 = a5;
  v36.receiver = self;
  v36.super_class = TUIAttributedStringBuilder;
  v12 = [(TUIAttributedStringBuilder *)&v36 init];
  if (v12)
  {
    v13 = [v10 copy];
    fontSpec = v12->_fontSpec;
    v12->_fontSpec = v13;

    v15 = [v11 copy];
    color = v12->_color;
    v12->_color = v15;

    v17 = [v10 caps];
    v12->_style = a4;
    v12->_caps = v17;
    v18 = [v10 attributesForAttributedString];
    v19 = [v18 attributes];
    v20 = [v19 mutableCopy];
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

    if (a6 != 4)
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
      [v29 setAlignment:a6];
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

- (void)appendHyperlinkWithURL:(id)a3 block:(id)a4
{
  v18 = a4;
  attributes = self->_attributes;
  p_attributes = &self->_attributes;
  v8 = attributes;
  v9 = *p_attributes;
  v10 = a3;
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

  [v14 setObject:v10 forKeyedSubscript:NSLinkAttributeName];
  v15 = +[UIColor clearColor];
  [v14 setObject:v15 forKeyedSubscript:NSUnderlineColorAttributeName];

  objc_storeStrong(p_attributes, v14);
  if (v18)
  {
    v18[2]();
  }

  v16 = *p_attributes;
  *p_attributes = v8;
  v17 = v8;
}

- (void)appendString:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    return;
  }

  caps = self->_caps;
  v10 = v4;
  switch(caps)
  {
    case 5uLL:
      v6 = [v4 localizedLowercaseString];
      goto LABEL_9;
    case 4uLL:
      v6 = [v4 localizedCapitalizedString];
      goto LABEL_9;
    case 2uLL:
      v6 = [v4 localizedUppercaseString];
LABEL_9:
      v7 = v6;

      v10 = v7;
      break;
  }

  attributedString = self->_attributedString;
  v9 = [[NSAttributedString alloc] initWithString:v10 attributes:self->_attributes];
  [(NSMutableAttributedString *)attributedString appendAttributedString:v9];
}

- (void)appendWithStyle:(unint64_t)a3 color:(id)a4 fontSpec:(id)a5 block:(id)a6
{
  v42 = a4;
  v11 = a5;
  v12 = a6;
  v13 = self->_attributes;
  v41 = *&self->_style;
  v40 = self->_color;
  v14 = self->_style | a3;
  self->_style = v14;
  if (v11)
  {
    if ([v11 caps])
    {
      self->_caps = [v11 caps];
    }
  }

  else if (v14 == v41)
  {
    if (!v42 || ([(UIColor *)self->_color isEqual:v42]& 1) != 0)
    {
      v12[2](v12);
      goto LABEL_23;
    }

    goto LABEL_9;
  }

  if (v42)
  {
LABEL_9:
    objc_storeStrong(&self->_color, a4);
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

  if (v11)
  {
    v20 = [v11 attributesForAttributedString];
    v21 = [v20 attributes];
    [v19 addEntriesFromDictionary:v21];
  }

  if ((v15 & 1) == 0)
  {
    [v19 setObject:v42 forKeyedSubscript:NSForegroundColorAttributeName];
  }

  if ((a3 & 1) == 0)
  {
    if ((a3 & 2) == 0)
    {
      goto LABEL_20;
    }

LABEL_29:
    v32 = [v19 objectForKeyedSubscript:NSFontAttributeName];
    v33 = v32;
    if (v32)
    {
      v34 = [v32 fontDescriptor];
      v35 = [v34 fontDescriptorWithSymbolicTraits:1];
      v39 = v12;
      v36 = v13;
      [v33 pointSize];
      v37 = [UIFont fontWithDescriptor:v35 size:?];
      [v19 setObject:v37 forKeyedSubscript:NSFontAttributeName];

      v13 = v36;
      v12 = v39;
    }

    if ((a3 & 8) == 0)
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

  if ((a3 & 2) != 0)
  {
    goto LABEL_29;
  }

LABEL_20:
  if ((a3 & 8) != 0)
  {
LABEL_21:
    [v19 setObject:&off_2733A0 forKeyedSubscript:NSStrikethroughStyleAttributeName];
  }

LABEL_22:
  v22 = [v19 copy];
  attributes = self->_attributes;
  self->_attributes = v22;

  v12[2](v12);
LABEL_23:
  v24 = self->_attributes;
  self->_attributes = v13;
  v25 = v13;

  *&self->_style = v41;
  color = self->_color;
  self->_color = v40;
}

- (_NSRange)appendWithBlock:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableAttributedString *)self->_attributedString length];
  if (v4)
  {
    v4[2](v4);
  }

  v6 = ([(NSMutableAttributedString *)self->_attributedString length]- v5);

  v7 = v5;
  v8 = v6;
  result.length = v8;
  result.location = v7;
  return result;
}

- (id)finalizeTextModelWithContext:(id)a3
{
  v3 = [(NSMutableAttributedString *)self->_attributedString copy];

  return v3;
}

- (void)addImageModel:(id)a3 forRole:(id)a4
{
  v12 = a3;
  v6 = a4;
  v7 = v6;
  if (!v6 || [v6 isEqualToString:@"content"])
  {
    v8 = [v12 image];
    v9 = [NSTextAttachment textAttachmentWithImage:v8];
    attributedString = self->_attributedString;
    v11 = [NSAttributedString attributedStringWithAttachment:v9];
    [(NSMutableAttributedString *)attributedString appendAttributedString:v11];

    if (self->_color && [v8 isSymbolImage])
    {
      [(NSMutableAttributedString *)self->_attributedString addAttribute:NSForegroundColorAttributeName value:self->_color range:[(NSMutableAttributedString *)self->_attributedString length]- 1, 1];
    }
  }
}

@end