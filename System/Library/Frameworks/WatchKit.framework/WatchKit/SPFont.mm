@interface SPFont
- (SPFont)initWithCoder:(id)coder;
- (SPFont)initWithFont:(id)font;
- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPFont

- (SPFont)initWithFont:(id)font
{
  v6.receiver = self;
  v6.super_class = SPFont;
  fontCopy = font;
  v4 = [(SPFont *)&v6 init];
  [(SPFont *)v4 setFont:fontCopy, v6.receiver, v6.super_class];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  font = self->_font;
  coderCopy = coder;
  fontDescriptor = [(UIFont *)font fontDescriptor];
  fontAttributes = [fontDescriptor fontAttributes];
  [coderCopy encodeObject:fontAttributes forKey:@"SPFontAttributes"];
}

- (id)unarchiver:(id)unarchiver didDecodeObject:(id)object
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 || (v5 = objc_opt_class(), NSStringFromClass(v5), v6 = objc_claimAutoreleasedReturnValue(), v7 = [v6 isEqualToString:@"SPFont"], v6, v7))
  {
    objectCopy = [object font];
  }

  else
  {
    objectCopy = object;
  }

  v9 = objectCopy;

  return v9;
}

- (SPFont)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = SPFont;
  v5 = [(SPFont *)&v14 init];
  v6 = [coderCopy decodeObjectForKey:@"SPFontAttributes"];
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v7 = getUIFontClass_softClass;
  v23 = getUIFontClass_softClass;
  if (!getUIFontClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getUIFontClass_block_invoke;
    v18 = &unk_278B7E070;
    v19 = &v20;
    __getUIFontClass_block_invoke(&v15);
    v7 = v21[3];
  }

  v8 = v7;
  _Block_object_dispose(&v20, 8);
  v20 = 0;
  v21 = &v20;
  v22 = 0x2050000000;
  v9 = getUIFontDescriptorClass_softClass;
  v23 = getUIFontDescriptorClass_softClass;
  if (!getUIFontDescriptorClass_softClass)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __getUIFontDescriptorClass_block_invoke;
    v18 = &unk_278B7E070;
    v19 = &v20;
    __getUIFontDescriptorClass_block_invoke(&v15);
    v9 = v21[3];
  }

  v10 = v9;
  _Block_object_dispose(&v20, 8);
  v11 = [v9 fontDescriptorWithFontAttributes:v6];
  v12 = [v7 fontWithDescriptor:v11 size:0.0];
  [(SPFont *)v5 setFont:v12];

  return v5;
}

@end