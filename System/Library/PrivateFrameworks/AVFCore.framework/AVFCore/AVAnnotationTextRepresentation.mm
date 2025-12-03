@interface AVAnnotationTextRepresentation
- (AVAnnotationTextRepresentation)initWithText:(id)text font:(id)font;
- (BOOL)isEqual:(id)equal;
- (CGColor)backgroundColor;
- (CGColor)foregroundColor;
- (id)_initWithPropertyList:(id)list binaryData:(id)data;
- (id)_propertyListAndBinaryData:(id *)data;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setBackgroundColor:(CGColor *)color;
- (void)setForegroundColor:(CGColor *)color;
@end

@implementation AVAnnotationTextRepresentation

- (AVAnnotationTextRepresentation)initWithText:(id)text font:(id)font
{
  v8.receiver = self;
  v8.super_class = AVAnnotationTextRepresentation;
  v6 = [(AVAnnotationRepresentation *)&v8 _initWithRepresentationType:@"AVAnnotationRepresentationTypeText"];
  if (v6)
  {
    v6->_text = [text copy];
    v6->_font = [font copy];
    v6->_backgroundColor = FigCreateCGColorSRGBFromCFArray();
    v6->_foregroundColor = FigCreateCGColorSRGBFromCFArray();
    v6->_link = 0;
    v6->_hasShadow = 0;
    v6->_hasUnderline = 0;
    v6->_writingMode = 0;
  }

  return v6;
}

- (id)_initWithPropertyList:(id)list binaryData:(id)data
{
  v35 = *MEMORY[0x1E69E9840];
  v32.receiver = self;
  v32.super_class = AVAnnotationTextRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v32 _initWithPropertyList:list binaryData:data];
  if (!v5)
  {
    goto LABEL_31;
  }

  v6 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyText"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  v5[4] = [v6 copy];
  v7 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyFont"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  v5[5] = [v7 copy];
  v8 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyBackgroundColor"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v8 count] != 4)
  {
    goto LABEL_31;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
LABEL_8:
    v12 = 0;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(v8);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v28 objects:v34 count:16];
        if (v10)
        {
          goto LABEL_8;
        }

        break;
      }
    }
  }

  v5[6] = FigCreateCGColorSRGBFromCFArray();
  v13 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyForegroundColor"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v13 count] != 4)
  {
    goto LABEL_31;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
LABEL_18:
    v17 = 0;
    while (1)
    {
      if (*v25 != v16)
      {
        objc_enumerationMutation(v13);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      if (v15 == ++v17)
      {
        v15 = [v13 countByEnumeratingWithState:&v24 objects:v33 count:16];
        if (v15)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  v5[7] = FigCreateCGColorSRGBFromCFArray();
  v18 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyLink"];
  if (v18)
  {
    v19 = v18;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v18 = [v19 copy];
      goto LABEL_27;
    }

LABEL_31:

    return 0;
  }

LABEL_27:
  v5[8] = v18;
  v20 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyHasShadow"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  *(v5 + 72) = [v20 BOOLValue];
  v21 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyHasUnderline"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  *(v5 + 73) = [v21 BOOLValue];
  v22 = [list objectForKey:@"AVAnnotationRepresentationArchiveKeyWritingMode"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_31;
  }

  v5[10] = [v22 integerValue];
  return v5;
}

- (void)dealloc
{
  CGColorRelease(self->_backgroundColor);
  CGColorRelease(self->_foregroundColor);

  v3.receiver = self;
  v3.super_class = AVAnnotationTextRepresentation;
  [(AVAnnotationRepresentation *)&v3 dealloc];
}

- (CGColor)backgroundColor
{
  v2 = self->_backgroundColor;

  return v2;
}

- (void)setBackgroundColor:(CGColor *)color
{
  v4 = CGColorRetain(color);
  CGColorRelease(self->_backgroundColor);
  self->_backgroundColor = v4;
}

- (CGColor)foregroundColor
{
  v2 = self->_foregroundColor;

  return v2;
}

- (void)setForegroundColor:(CGColor *)color
{
  v4 = CGColorRetain(color);
  CGColorRelease(self->_foregroundColor);
  self->_foregroundColor = v4;
}

- (BOOL)isEqual:(id)equal
{
  v11.receiver = self;
  v11.super_class = AVAnnotationTextRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v11 isEqual:?];
  if (equal != self)
  {
    if (!equal)
    {
      goto LABEL_17;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_17;
    }

    if (v5)
    {
      v5 = -[NSString isEqualToString:](-[AVAnnotationTextRepresentation text](self, "text"), "isEqualToString:", [equal text]) && -[NSString isEqualToString:](-[AVAnnotationTextRepresentation font](self, "font"), "isEqualToString:", objc_msgSend(equal, "font")) && CGColorEqualToColor(-[AVAnnotationTextRepresentation backgroundColor](self, "backgroundColor"), objc_msgSend(equal, "backgroundColor")) && CGColorEqualToColor(-[AVAnnotationTextRepresentation foregroundColor](self, "foregroundColor"), objc_msgSend(equal, "foregroundColor"));
    }

    link = [(AVAnnotationTextRepresentation *)self link];
    if (link == [equal link])
    {
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else if (v5)
    {
      if (!-[NSString isEqualToString:](-[AVAnnotationTextRepresentation link](self, "link"), "isEqualToString:", [equal link]))
      {
LABEL_17:
        LOBYTE(v5) = 0;
        return v5;
      }

LABEL_15:
      hasShadow = [(AVAnnotationTextRepresentation *)self hasShadow];
      if (hasShadow == [equal hasShadow])
      {
        hasUnderline = [(AVAnnotationTextRepresentation *)self hasUnderline];
        if (hasUnderline == [equal hasUnderline])
        {
          writingMode = [(AVAnnotationTextRepresentation *)self writingMode];
          LOBYTE(v5) = writingMode == [equal writingMode];
          return v5;
        }
      }

      goto LABEL_17;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v12.receiver = self;
  v12.super_class = AVAnnotationTextRepresentation;
  v3 = [(AVAnnotationRepresentation *)&v12 hash];
  v4 = [(NSString *)[(AVAnnotationTextRepresentation *)self text] hash];
  v5 = v4 ^ [(NSString *)[(AVAnnotationTextRepresentation *)self font] hash];
  [(AVAnnotationTextRepresentation *)self backgroundColor];
  v6 = v5 ^ [FigCopyCGColorSRGBAsCFArray() hash];
  [(AVAnnotationTextRepresentation *)self foregroundColor];
  v7 = v6 ^ [FigCopyCGColorSRGBAsCFArray() hash] ^ v3;
  v8 = v7 ^ [(NSString *)[(AVAnnotationTextRepresentation *)self link] hash];
  v9 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{-[AVAnnotationTextRepresentation hasShadow](self, "hasShadow")), "hash"}];
  v10 = v8 ^ v9 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{-[AVAnnotationTextRepresentation hasUnderline](self, "hasUnderline")), "hash"}];
  return v10 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{-[AVAnnotationTextRepresentation writingMode](self, "writingMode")), "hash"}];
}

- (id)_propertyListAndBinaryData:(id *)data
{
  v8.receiver = self;
  v8.super_class = AVAnnotationTextRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v8 _propertyListAndBinaryData:?];
  [v5 setObject:-[AVAnnotationTextRepresentation text](self forKey:{"text"), @"AVAnnotationRepresentationArchiveKeyText"}];
  [v5 setObject:-[AVAnnotationTextRepresentation font](self forKey:{"font"), @"AVAnnotationRepresentationArchiveKeyFont"}];
  [(AVAnnotationTextRepresentation *)self backgroundColor];
  [v5 setObject:FigCopyCGColorSRGBAsCFArray() forKey:@"AVAnnotationRepresentationArchiveKeyBackgroundColor"];
  [(AVAnnotationTextRepresentation *)self foregroundColor];
  [v5 setObject:FigCopyCGColorSRGBAsCFArray() forKey:@"AVAnnotationRepresentationArchiveKeyForegroundColor"];
  link = [(AVAnnotationTextRepresentation *)self link];
  if (link)
  {
    [v5 setObject:link forKey:@"AVAnnotationRepresentationArchiveKeyLink"];
  }

  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[AVAnnotationTextRepresentation hasShadow](self, "hasShadow")), @"AVAnnotationRepresentationArchiveKeyHasShadow"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[AVAnnotationTextRepresentation hasUnderline](self, "hasUnderline")), @"AVAnnotationRepresentationArchiveKeyHasUnderline"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[AVAnnotationTextRepresentation writingMode](self, "writingMode")), @"AVAnnotationRepresentationArchiveKeyWritingMode"}];
  if (data)
  {
    *data = [MEMORY[0x1E695DEF0] data];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p, text = %@>", NSStringFromClass(v4), self, -[AVAnnotationTextRepresentation text](self, "text")];
}

@end