@interface AVAnnotationShapeRepresentation
- (AVAnnotationShapeRepresentation)initWithShape:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CGColor)strokeColor;
- (id)_initWithPropertyList:(id)a3 binaryData:(id)a4;
- (id)_propertyListAndBinaryData:(id *)a3;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)setStrokeColor:(CGColor *)a3;
@end

@implementation AVAnnotationShapeRepresentation

- (AVAnnotationShapeRepresentation)initWithShape:(id)a3
{
  v6.receiver = self;
  v6.super_class = AVAnnotationShapeRepresentation;
  v4 = [(AVAnnotationRepresentation *)&v6 _initWithRepresentationType:@"AVAnnotationRepresentationTypeShape"];
  if (v4)
  {
    v4->_shape = [a3 copy];
    v4->_strokeColor = FigCreateCGColorSRGBFromCFArray();
    v4->_strokeWidth = 1;
    v4->_dashed = 0;
    v4->_hasShadow = 0;
  }

  return v4;
}

- (id)_initWithPropertyList:(id)a3 binaryData:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v20.receiver = self;
  v20.super_class = AVAnnotationShapeRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v20 _initWithPropertyList:a3 binaryData:a4];
  if (!v5)
  {
    goto LABEL_17;
  }

  v6 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyShape"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5[4] = [v6 copy];
  v7 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyStrokeColor"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || [v7 count] != 4)
  {
    goto LABEL_17;
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
LABEL_7:
    v11 = 0;
    while (1)
    {
      if (*v17 != v10)
      {
        objc_enumerationMutation(v7);
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_17;
      }

      if (v9 == ++v11)
      {
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v21 count:16];
        if (v9)
        {
          goto LABEL_7;
        }

        break;
      }
    }
  }

  v5[5] = FigCreateCGColorSRGBFromCFArray();
  v12 = [a3 objectForKey:@"AVAnnotationRepresentationArchiveKeyStrokeWidth"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || (v5[6] = [v12 integerValue], v13 = objc_msgSend(a3, "objectForKey:", @"AVAnnotationRepresentationArchiveKeyDashed"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (*(v5 + 56) = objc_msgSend(v13, "BOOLValue"), v14 = objc_msgSend(a3, "objectForKey:", @"AVAnnotationRepresentationArchiveKeyHasShadow"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
LABEL_17:

    return 0;
  }

  *(v5 + 57) = [v14 BOOLValue];
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = AVAnnotationShapeRepresentation;
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
  v10.super_class = AVAnnotationShapeRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v10 isEqual:?];
  if (a3 != self)
  {
    if (a3 && (objc_opt_class(), (objc_opt_isKindOfClass() & v5 & 1) != 0) && -[NSString isEqualToString:](-[AVAnnotationShapeRepresentation shape](self, "shape"), "isEqualToString:", [a3 shape]) && CGColorEqualToColor(-[AVAnnotationShapeRepresentation strokeColor](self, "strokeColor"), objc_msgSend(a3, "strokeColor")) && (v6 = -[AVAnnotationShapeRepresentation strokeWidth](self, "strokeWidth"), v6 == objc_msgSend(a3, "strokeWidth")) && (v7 = -[AVAnnotationShapeRepresentation dashed](self, "dashed"), v7 == objc_msgSend(a3, "dashed")))
    {
      v9 = [(AVAnnotationShapeRepresentation *)self hasShadow];
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
  v9.super_class = AVAnnotationShapeRepresentation;
  v3 = [(AVAnnotationRepresentation *)&v9 hash];
  v4 = [(NSString *)[(AVAnnotationShapeRepresentation *)self shape] hash];
  [(AVAnnotationShapeRepresentation *)self strokeColor];
  v5 = v4 ^ [FigCopyCGColorSRGBAsCFArray() hash] ^ v3;
  v6 = v5 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithInteger:{-[AVAnnotationShapeRepresentation strokeWidth](self, "strokeWidth")), "hash"}];
  v7 = [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{-[AVAnnotationShapeRepresentation dashed](self, "dashed")), "hash"}];
  return v6 ^ v7 ^ [objc_msgSend(MEMORY[0x1E696AD98] numberWithBool:{-[AVAnnotationShapeRepresentation hasShadow](self, "hasShadow")), "hash"}];
}

- (id)_propertyListAndBinaryData:(id *)a3
{
  v7.receiver = self;
  v7.super_class = AVAnnotationShapeRepresentation;
  v5 = [(AVAnnotationRepresentation *)&v7 _propertyListAndBinaryData:?];
  [v5 setObject:-[AVAnnotationShapeRepresentation shape](self forKey:{"shape"), @"AVAnnotationRepresentationArchiveKeyShape"}];
  [(AVAnnotationShapeRepresentation *)self strokeColor];
  [v5 setObject:FigCopyCGColorSRGBAsCFArray() forKey:@"AVAnnotationRepresentationArchiveKeyStrokeColor"];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", -[AVAnnotationShapeRepresentation strokeWidth](self, "strokeWidth")), @"AVAnnotationRepresentationArchiveKeyStrokeWidth"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[AVAnnotationShapeRepresentation dashed](self, "dashed")), @"AVAnnotationRepresentationArchiveKeyDashed"}];
  [v5 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithBool:", -[AVAnnotationShapeRepresentation hasShadow](self, "hasShadow")), @"AVAnnotationRepresentationArchiveKeyHasShadow"}];
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
  return [v3 stringWithFormat:@"<%@: %p, %@>", NSStringFromClass(v4), self, -[AVAnnotationShapeRepresentation shape](self, "shape")];
}

@end