@interface AKSignature
- (AKSignature)initWithCoder:(id)a3;
- (AKSignature)initWithDrawing:(id)a3 path:(CGPath *)a4 baselineOffset:(double)a5;
- (AKSignature)initWithDrawing:(id)a3 path:(CGPath *)a4 baselineOffset:(double)a5 creationDate:(id)a6;
- (AKSignature)initWithDrawing:(id)a3 path:(CGPath *)a4 baselineOffset:(double)a5 creationDate:(id)a6 descriptionTag:(int64_t)a7 customDescription:(id)a8;
- (BOOL)isEqual:(id)a3;
- (CGRect)pathBounds;
- (NSString)accessibilityLabel;
- (id)copyWithZone:(_NSZone *)a3;
- (id)initForTesting;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setPath:(CGPath *)a3;
@end

@implementation AKSignature

- (AKSignature)initWithDrawing:(id)a3 path:(CGPath *)a4 baselineOffset:(double)a5 creationDate:(id)a6 descriptionTag:(int64_t)a7 customDescription:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a8;
  v25.receiver = self;
  v25.super_class = AKSignature;
  v17 = [(AKSignature *)&v25 init];
  if (v17)
  {
    v18 = [MEMORY[0x277CCAD78] UUID];
    uniqueID = v17->_uniqueID;
    v17->_uniqueID = v18;

    v17->_baselineOffset = a5;
    objc_storeStrong(&v17->_creationDate, a6);
    v20 = [v14 copy];
    drawing = v17->_drawing;
    v17->_drawing = v20;

    if (a4)
    {
      MutableCopy = CGPathCreateMutableCopy(a4);
    }

    else
    {
      MutableCopy = 0;
    }

    v17->_path = MutableCopy;
    v17->_descriptionTag = a7;
    if (a7 == -1)
    {
      v23 = v16;
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v17->_customDescription, v23);
  }

  return v17;
}

- (AKSignature)initWithDrawing:(id)a3 path:(CGPath *)a4 baselineOffset:(double)a5 creationDate:(id)a6
{
  v9 = MEMORY[0x277CBEAA8];
  v10 = a3;
  v11 = [v9 date];
  v12 = [(AKSignature *)self initWithDrawing:v10 path:a4 baselineOffset:v11 creationDate:0 descriptionTag:0 customDescription:a5];

  return v12;
}

- (AKSignature)initWithDrawing:(id)a3 path:(CGPath *)a4 baselineOffset:(double)a5
{
  v8 = MEMORY[0x277CBEAA8];
  v9 = a3;
  v10 = [v8 date];
  v11 = [(AKSignature *)self initWithDrawing:v9 path:a4 baselineOffset:v10 creationDate:a5];

  return v11;
}

- (id)initForTesting
{
  v2 = [(AKSignature *)self init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:@"12345678-1234-1234-1234-123456789012"];
    uniqueID = v2->_uniqueID;
    v2->_uniqueID = v3;
  }

  return v2;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v16 = 1;
  }

  else
  {
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        v7 = [(AKSignature *)self uniqueID];
        v8 = [(AKSignature *)v6 uniqueID];
        v9 = [v7 isEqual:v8];

        if (!v9 || (v10 = [(AKSignature *)self descriptionTag], v10 != [(AKSignature *)v6 descriptionTag]))
        {
          v16 = 0;
LABEL_19:

          goto LABEL_20;
        }

        v11 = [(AKSignature *)self customDescription];
        if (v11 || ([(AKSignature *)v6 customDescription], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          v12 = [(AKSignature *)self customDescription];
          if (v12)
          {
            v13 = [(AKSignature *)self customDescription];
            v14 = [(AKSignature *)v6 customDescription];
            v15 = [v13 isEqualToString:v14] ^ 1;
          }

          else
          {
            LOBYTE(v15) = 0;
          }

          if (v11)
          {
            goto LABEL_18;
          }

          v17 = 0;
        }

        else
        {
          LOBYTE(v15) = 1;
        }

LABEL_18:
        v16 = v15 ^ 1;
        goto LABEL_19;
      }
    }

    v16 = 0;
  }

LABEL_20:

  return v16;
}

- (void)dealloc
{
  path = self->_path;
  if (path)
  {
    CGPathRelease(path);
  }

  v4.receiver = self;
  v4.super_class = AKSignature;
  [(AKSignature *)&v4 dealloc];
}

- (CGRect)pathBounds
{
  drawing = self->_drawing;
  if (drawing)
  {
    [(PKDrawing *)drawing bounds];
  }

  else
  {
    path = self->_path;
    if (path)
    {
      *&v4 = CGPathGetBoundingBox(path);
    }

    else
    {
      v4 = *MEMORY[0x277CBF3A0];
      v5 = *(MEMORY[0x277CBF3A0] + 8);
      v6 = *(MEMORY[0x277CBF3A0] + 16);
      v7 = *(MEMORY[0x277CBF3A0] + 24);
    }
  }

  result.size.height = v7;
  result.size.width = v6;
  result.origin.y = v5;
  result.origin.x = v4;
  return result;
}

- (void)setPath:(CGPath *)a3
{
  path = self->_path;
  if (path != a3)
  {
    if (path)
    {
      CGPathRelease(path);
    }

    self->_path = a3;
    if (a3)
    {

      CGPathRetain(a3);
    }
  }
}

- (void)encodeWithCoder:(id)a3
{
  v13 = a3;
  v4 = [(AKSignature *)self uniqueID];
  [v13 encodeObject:v4 forKey:@"uniqueID"];

  [(AKSignature *)self baselineOffset];
  [v13 encodeDouble:@"baselineOffset" forKey:?];
  v5 = [(AKSignature *)self creationDate];
  [v13 encodeObject:v5 forKey:@"creationDate"];

  [v13 encodeBool:-[AKSignature shouldPersist](self forKey:{"shouldPersist"), @"shouldPersist"}];
  if ([(AKSignature *)self descriptionTag])
  {
    [v13 encodeInteger:-[AKSignature descriptionTag](self forKey:{"descriptionTag"), @"descriptionTag"}];
    if ([(AKSignature *)self descriptionTag]== -1)
    {
      v6 = [(AKSignature *)self customDescription];

      if (v6)
      {
        v7 = [(AKSignature *)self customDescription];
        [v13 encodeObject:v7 forKey:@"customDescription"];
      }
    }
  }

  if ([(AKSignature *)self path])
  {
    v8 = [MEMORY[0x277CBEA90] encodeCGPath:{-[AKSignature path](self, "path")}];
    [v13 encodeObject:v8 forKey:@"path"];
  }

  v9 = [(AKSignature *)self drawing];

  v10 = v13;
  if (v9)
  {
    v11 = [(AKSignature *)self drawing];
    v12 = [v11 serialize];

    [v13 encodeObject:v12 forKey:@"drawing"];
    v10 = v13;
  }
}

- (AKSignature)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(AKSignature *)self init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  [(AKSignature *)v5 setUniqueID:v6];

  [v4 decodeDoubleForKey:@"baselineOffset"];
  [(AKSignature *)v5 setBaselineOffset:?];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [(AKSignature *)v5 setCreationDate:v7];

  -[AKSignature setShouldPersist:](v5, "setShouldPersist:", [v4 decodeBoolForKey:@"shouldPersist"]);
  if ([v4 containsValueForKey:@"descriptionTag"])
  {
    v8 = [v4 decodeIntegerForKey:@"descriptionTag"];
    v5->_descriptionTag = v8;
    if (v8 == -1)
    {
      v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customDescription"];
      customDescription = v5->_customDescription;
      v5->_customDescription = v9;
LABEL_9:
    }
  }

  else if ([v4 containsValueForKey:@"caption"])
  {
    customDescription = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
    if (customDescription)
    {
      v11 = [AKSignatureDescription signatureDescriptionTagFromStringValue:customDescription];
      v5->_descriptionTag = v11;
      if (v11 == -1)
      {
        objc_storeStrong(&v5->_customDescription, customDescription);
      }
    }

    goto LABEL_9;
  }

  if ([v4 containsValueForKey:@"path"])
  {
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v13 = [MEMORY[0x277CBEA90] newCGPathDecodedFromData:v12];
    [(AKSignature *)v5 setPath:v13];
    CGPathRelease(v13);
  }

  if ([v4 containsValueForKey:@"drawing"])
  {
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"drawing"];
    if (v14)
    {
      v18 = 0;
      v15 = [objc_alloc(MEMORY[0x277CD95F8]) initWithData:v14 error:&v18];
      v16 = v18;
      objc_storeStrong(&v5->_drawing, v15);
      if (v16)
      {
        NSLog(&cfstr_EncounteredErr.isa, v16);
      }
    }
  }

LABEL_18:

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSUUID *)self->_uniqueID copyWithZone:a3];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  *(v5 + 72) = self->_baselineOffset;
  v8 = [(NSDate *)self->_creationDate copyWithZone:a3];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  *(v5 + 56) = self->_shouldPersist;
  *(v5 + 88) = self->_descriptionTag;
  v10 = [(NSString *)self->_customDescription copyWithZone:a3];
  v11 = *(v5 + 96);
  *(v5 + 96) = v10;

  *(v5 + 16) = CGPathCreateMutableCopy(self->_path);
  v12 = [(PKDrawing *)self->_drawing copy];
  v13 = *(v5 + 8);
  *(v5 + 8) = v12;

  return v5;
}

- (NSString)accessibilityLabel
{
  v3 = [(AKSignature *)self descriptionTag];
  if ((v3 - 1) >= 5)
  {
    if (v3 != -1)
    {
LABEL_7:
      v6 = [(AKSignature *)self creationDate];
      if (v6)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = +[AKController akBundle];
        v9 = [v8 localizedStringForKey:@"Created %@" value:&stru_28519E870 table:@"AKSignature"];
        v10 = [MEMORY[0x277CCA968] localizedStringFromDate:v6 dateStyle:3 timeStyle:3];
        v5 = [v7 stringWithFormat:v9, v10];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_11;
    }

    v4 = [(AKSignature *)self customDescription];
  }

  else
  {
    v4 = [AKSignatureDescription stringValueForSignatureDescriptionTag:[(AKSignature *)self descriptionTag]];
  }

  v5 = v4;
  if (!v4)
  {
    goto LABEL_7;
  }

LABEL_11:

  return v5;
}

@end