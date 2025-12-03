@interface AKSignature
- (AKSignature)initWithCoder:(id)coder;
- (AKSignature)initWithDrawing:(id)drawing path:(CGPath *)path baselineOffset:(double)offset;
- (AKSignature)initWithDrawing:(id)drawing path:(CGPath *)path baselineOffset:(double)offset creationDate:(id)date;
- (AKSignature)initWithDrawing:(id)drawing path:(CGPath *)path baselineOffset:(double)offset creationDate:(id)date descriptionTag:(int64_t)tag customDescription:(id)description;
- (BOOL)isEqual:(id)equal;
- (CGRect)pathBounds;
- (NSString)accessibilityLabel;
- (id)copyWithZone:(_NSZone *)zone;
- (id)initForTesting;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setPath:(CGPath *)path;
@end

@implementation AKSignature

- (AKSignature)initWithDrawing:(id)drawing path:(CGPath *)path baselineOffset:(double)offset creationDate:(id)date descriptionTag:(int64_t)tag customDescription:(id)description
{
  drawingCopy = drawing;
  dateCopy = date;
  descriptionCopy = description;
  v25.receiver = self;
  v25.super_class = AKSignature;
  v17 = [(AKSignature *)&v25 init];
  if (v17)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uniqueID = v17->_uniqueID;
    v17->_uniqueID = uUID;

    v17->_baselineOffset = offset;
    objc_storeStrong(&v17->_creationDate, date);
    v20 = [drawingCopy copy];
    drawing = v17->_drawing;
    v17->_drawing = v20;

    if (path)
    {
      MutableCopy = CGPathCreateMutableCopy(path);
    }

    else
    {
      MutableCopy = 0;
    }

    v17->_path = MutableCopy;
    v17->_descriptionTag = tag;
    if (tag == -1)
    {
      v23 = descriptionCopy;
    }

    else
    {
      v23 = 0;
    }

    objc_storeStrong(&v17->_customDescription, v23);
  }

  return v17;
}

- (AKSignature)initWithDrawing:(id)drawing path:(CGPath *)path baselineOffset:(double)offset creationDate:(id)date
{
  v9 = MEMORY[0x277CBEAA8];
  drawingCopy = drawing;
  date = [v9 date];
  v12 = [(AKSignature *)self initWithDrawing:drawingCopy path:path baselineOffset:date creationDate:0 descriptionTag:0 customDescription:offset];

  return v12;
}

- (AKSignature)initWithDrawing:(id)drawing path:(CGPath *)path baselineOffset:(double)offset
{
  v8 = MEMORY[0x277CBEAA8];
  drawingCopy = drawing;
  date = [v8 date];
  v11 = [(AKSignature *)self initWithDrawing:drawingCopy path:path baselineOffset:date creationDate:offset];

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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v16 = 1;
  }

  else
  {
    if (equalCopy)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
        uniqueID = [(AKSignature *)self uniqueID];
        uniqueID2 = [(AKSignature *)v6 uniqueID];
        v9 = [uniqueID isEqual:uniqueID2];

        if (!v9 || (v10 = [(AKSignature *)self descriptionTag], v10 != [(AKSignature *)v6 descriptionTag]))
        {
          v16 = 0;
LABEL_19:

          goto LABEL_20;
        }

        customDescription = [(AKSignature *)self customDescription];
        if (customDescription || ([(AKSignature *)v6 customDescription], (v17 = objc_claimAutoreleasedReturnValue()) == 0))
        {
          customDescription2 = [(AKSignature *)self customDescription];
          if (customDescription2)
          {
            customDescription3 = [(AKSignature *)self customDescription];
            customDescription4 = [(AKSignature *)v6 customDescription];
            v15 = [customDescription3 isEqualToString:customDescription4] ^ 1;
          }

          else
          {
            LOBYTE(v15) = 0;
          }

          if (customDescription)
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

- (void)setPath:(CGPath *)path
{
  path = self->_path;
  if (path != path)
  {
    if (path)
    {
      CGPathRelease(path);
    }

    self->_path = path;
    if (path)
    {

      CGPathRetain(path);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  uniqueID = [(AKSignature *)self uniqueID];
  [coderCopy encodeObject:uniqueID forKey:@"uniqueID"];

  [(AKSignature *)self baselineOffset];
  [coderCopy encodeDouble:@"baselineOffset" forKey:?];
  creationDate = [(AKSignature *)self creationDate];
  [coderCopy encodeObject:creationDate forKey:@"creationDate"];

  [coderCopy encodeBool:-[AKSignature shouldPersist](self forKey:{"shouldPersist"), @"shouldPersist"}];
  if ([(AKSignature *)self descriptionTag])
  {
    [coderCopy encodeInteger:-[AKSignature descriptionTag](self forKey:{"descriptionTag"), @"descriptionTag"}];
    if ([(AKSignature *)self descriptionTag]== -1)
    {
      customDescription = [(AKSignature *)self customDescription];

      if (customDescription)
      {
        customDescription2 = [(AKSignature *)self customDescription];
        [coderCopy encodeObject:customDescription2 forKey:@"customDescription"];
      }
    }
  }

  if ([(AKSignature *)self path])
  {
    v8 = [MEMORY[0x277CBEA90] encodeCGPath:{-[AKSignature path](self, "path")}];
    [coderCopy encodeObject:v8 forKey:@"path"];
  }

  drawing = [(AKSignature *)self drawing];

  v10 = coderCopy;
  if (drawing)
  {
    drawing2 = [(AKSignature *)self drawing];
    serialize = [drawing2 serialize];

    [coderCopy encodeObject:serialize forKey:@"drawing"];
    v10 = coderCopy;
  }
}

- (AKSignature)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(AKSignature *)self init];
  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uniqueID"];
  [(AKSignature *)v5 setUniqueID:v6];

  [coderCopy decodeDoubleForKey:@"baselineOffset"];
  [(AKSignature *)v5 setBaselineOffset:?];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"creationDate"];
  [(AKSignature *)v5 setCreationDate:v7];

  -[AKSignature setShouldPersist:](v5, "setShouldPersist:", [coderCopy decodeBoolForKey:@"shouldPersist"]);
  if ([coderCopy containsValueForKey:@"descriptionTag"])
  {
    v8 = [coderCopy decodeIntegerForKey:@"descriptionTag"];
    v5->_descriptionTag = v8;
    if (v8 == -1)
    {
      v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customDescription"];
      customDescription = v5->_customDescription;
      v5->_customDescription = v9;
LABEL_9:
    }
  }

  else if ([coderCopy containsValueForKey:@"caption"])
  {
    customDescription = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"caption"];
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

  if ([coderCopy containsValueForKey:@"path"])
  {
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"path"];
    v13 = [MEMORY[0x277CBEA90] newCGPathDecodedFromData:v12];
    [(AKSignature *)v5 setPath:v13];
    CGPathRelease(v13);
  }

  if ([coderCopy containsValueForKey:@"drawing"])
  {
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"drawing"];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSUUID *)self->_uniqueID copyWithZone:zone];
  v7 = *(v5 + 64);
  *(v5 + 64) = v6;

  *(v5 + 72) = self->_baselineOffset;
  v8 = [(NSDate *)self->_creationDate copyWithZone:zone];
  v9 = *(v5 + 80);
  *(v5 + 80) = v8;

  *(v5 + 56) = self->_shouldPersist;
  *(v5 + 88) = self->_descriptionTag;
  v10 = [(NSString *)self->_customDescription copyWithZone:zone];
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
  descriptionTag = [(AKSignature *)self descriptionTag];
  if ((descriptionTag - 1) >= 5)
  {
    if (descriptionTag != -1)
    {
LABEL_7:
      creationDate = [(AKSignature *)self creationDate];
      if (creationDate)
      {
        v7 = MEMORY[0x277CCACA8];
        v8 = +[AKController akBundle];
        v9 = [v8 localizedStringForKey:@"Created %@" value:&stru_28519E870 table:@"AKSignature"];
        v10 = [MEMORY[0x277CCA968] localizedStringFromDate:creationDate dateStyle:3 timeStyle:3];
        v5 = [v7 stringWithFormat:v9, v10];
      }

      else
      {
        v5 = 0;
      }

      goto LABEL_11;
    }

    customDescription = [(AKSignature *)self customDescription];
  }

  else
  {
    customDescription = [AKSignatureDescription stringValueForSignatureDescriptionTag:[(AKSignature *)self descriptionTag]];
  }

  v5 = customDescription;
  if (!customDescription)
  {
    goto LABEL_7;
  }

LABEL_11:

  return v5;
}

@end