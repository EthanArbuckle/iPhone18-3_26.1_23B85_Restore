@interface AVAnnotationPathRepresentation
- (AVAnnotationPathRepresentation)initWithPaths:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGColor)strokeColor;
- (id)_initWithPropertyList:(id)a3 binaryData:(id)a4;
- (id)_propertyListAndBinaryData:(id *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setStrokeColor:(CGColor *)a3;
@end

@implementation AVAnnotationPathRepresentation

- (AVAnnotationPathRepresentation)initWithPaths:(id)a3
{
  v30 = *MEMORY[0x1E69E9840];
  v27.receiver = self;
  v27.super_class = AVAnnotationPathRepresentation;
  v4 = [(AVAnnotationRepresentation *)&v27 _initWithRepresentationType:@"AVAnnotationRepresentationTypePath"];
  v5 = v4;
  if (v4)
  {
    v18 = v4;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a3, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [a3 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(a3);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v11, "count")}];
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v22 = 0u;
          v13 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v20;
            do
            {
              for (j = 0; j != v14; ++j)
              {
                if (*v20 != v15)
                {
                  objc_enumerationMutation(v11);
                }

                [v12 addObject:{objc_msgSend(*(*(&v19 + 1) + 8 * j), "copy")}];
              }

              v14 = [v11 countByEnumeratingWithState:&v19 objects:v28 count:16];
            }

            while (v14);
          }

          [v6 addObject:v12];
        }

        v8 = [a3 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v8);
    }

    v5 = v18;
    v18->_paths = [v6 copy];
    v18->_strokeColor = FigCreateCGColorSRGBFromCFArray();
    v18->_strokeWidth = 1;
    v18->_dashed = 0;
    v18->_hasShadow = 0;
  }

  return v5;
}

- (id)_initWithPropertyList:(id)a3 binaryData:(id)a4
{
  v41 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = AVAnnotationPathRepresentation;
  v24 = [(AVAnnotationRepresentation *)&v37 _initWithPropertyList:a3 binaryData:a4];
  if (v24)
  {
    v4 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyPaths"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v5 = [v4 countByEnumeratingWithState:&v33 objects:v40 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v34;
LABEL_5:
        v8 = 0;
        while (1)
        {
          if (*v34 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v33 + 1) + 8 * v8);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0)
          {
            break;
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v30;
LABEL_11:
            v13 = 0;
            while (1)
            {
              if (*v30 != v12)
              {
                objc_enumerationMutation(v9);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                goto LABEL_33;
              }

              if (v11 == ++v13)
              {
                v11 = [v9 countByEnumeratingWithState:&v29 objects:v39 count:16];
                if (v11)
                {
                  goto LABEL_11;
                }

                break;
              }
            }
          }

          if (++v8 == v6)
          {
            v6 = [v4 countByEnumeratingWithState:&v33 objects:v40 count:16];
            if (v6)
            {
              goto LABEL_5;
            }

            goto LABEL_19;
          }
        }
      }

      else
      {
LABEL_19:
        v24[4] = [v4 copy];
        v14 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyStrokeColor"];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && [v14 count] == 4)
        {
          v27 = 0u;
          v28 = 0u;
          v25 = 0u;
          v26 = 0u;
          v15 = [v14 countByEnumeratingWithState:&v25 objects:v38 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v26;
LABEL_23:
            v18 = 0;
            while (1)
            {
              if (*v26 != v17)
              {
                objc_enumerationMutation(v14);
              }

              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) == 0)
              {
                break;
              }

              if (v16 == ++v18)
              {
                v16 = [v14 countByEnumeratingWithState:&v25 objects:v38 count:16];
                if (v16)
                {
                  goto LABEL_23;
                }

                goto LABEL_29;
              }
            }
          }

          else
          {
LABEL_29:
            v24[5] = FigCreateCGColorSRGBFromCFArray();
            v19 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyStrokeWidth"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v24[6] = [v19 integerValue];
              v20 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyDashed"];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                *(v24 + 56) = [v20 BOOLValue];
                v21 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyHasShadow"];
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  *(v24 + 57) = [v21 BOOLValue];
                  return v24;
                }
              }
            }
          }
        }
      }
    }
  }

LABEL_33:

  return 0;
}

- (void)dealloc
{
  CGColorRelease(self->_strokeColor);
  v3.receiver = self;
  v3.super_class = AVAnnotationPathRepresentation;
  [(AVAnnotationRepresentation *)&v3 dealloc];
}

- (CGColor)strokeColor
{
  v2 = self->_strokeColor;

  return v2;
}

- (void)setStrokeColor:(CGColor *)a3
{
  v4 = CGColorRetain(a3);
  CGColorRelease(self->_strokeColor);
  self->_strokeColor = v4;
}

- (BOOL)isEqual:(id)a3
{
  v10.receiver = self;
  v10.super_class = AVAnnotationPathRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v10 isEqual:?];
  if (a3 != self)
  {
    if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & v5 & 1) != 0) && -[NSArray isEqualToArray:](-[AVAnnotationPathRepresentation paths](self, "paths"), "isEqualToArray:", [a3 paths]) && CGColorEqualToColor(-[AVAnnotationPathRepresentation strokeColor](self, "strokeColor"), objc_msgSend(a3, "strokeColor")) && (v6 = -[AVAnnotationPathRepresentation strokeWidth](self, "strokeWidth"), v6 == objc_msgSend(a3, "strokeWidth")) && (v7 = -[AVAnnotationPathRepresentation dashed](self, "dashed"), v7 == objc_msgSend(a3, "dashed")))
    {
      v9 = [(AVAnnotationPathRepresentation *)self hasShadow];
      return v9 ^ [a3 hasShadow] ^ 1;
    }

    else
    {
      LOBYTE(v5) = 0;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  v9.receiver = self;
  v9.super_class = AVAnnotationPathRepresentation;
  v3 = [(AVAnnotationRepresentation *)&v9 hash];
  v4 = [(NSArray *)[(AVAnnotationPathRepresentation *)self paths] hash];
  [(AVAnnotationPathRepresentation *)self strokeColor];
  v5 = v4 ^ [FigCopyCGColorSRGBAsCFArray() hash] ^ v3;
  v6 = v5 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{-[AVAnnotationPathRepresentation strokeWidth](self, "strokeWidth")), "hash"}];
  v7 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{-[AVAnnotationPathRepresentation dashed](self, "dashed")), "hash"}];
  return v6 ^ v7 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{-[AVAnnotationPathRepresentation hasShadow](self, "hasShadow")), "hash"}];
}

- (id)_propertyListAndBinaryData:(id *)a3
{
  v7.receiver = self;
  v7.super_class = AVAnnotationPathRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 _propertyListAndBinaryData:?];
  [v5 setObject:-[AVAnnotationPathRepresentation paths](self forKey:{"paths"), @"AVAnnotationRepresentationArchiveKeyPaths"}];
  [(AVAnnotationPathRepresentation *)self strokeColor];
  [v5 setObject:FigCopyCGColorSRGBAsCFArray() forKey:@"AVAnnotationRepresentationArchiveKeyStrokeColor"];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[AVAnnotationPathRepresentation strokeWidth](self, "strokeWidth")), @"AVAnnotationRepresentationArchiveKeyStrokeWidth"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[AVAnnotationPathRepresentation dashed](self, "dashed")), @"AVAnnotationRepresentationArchiveKeyDashed"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[AVAnnotationPathRepresentation hasShadow](self, "hasShadow")), @"AVAnnotationRepresentationArchiveKeyHasShadow"}];
  if (a3)
  {
    *a3 = [MEMORY[0x1E695DEF0] data];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  return [v3 stringWithFormat:@"<%@: %p>", NSStringFromClass(v4), self];
}

@end