@interface ASCArtwork
- (ASCArtwork)initWithCoder:(id)coder;
- (ASCArtwork)initWithImage:(id)image decoration:(id)decoration;
- (ASCArtwork)initWithURLTemplate:(id)template width:(double)width height:(double)height decoration:(id)decoration preferredCrop:(id)crop preferredFormat:(id)format;
- (BOOL)isEqual:(id)equal;
- (NSString)URLTemplate;
- (UIImage)embeddedImage;
- (id)description;
- (id)makeURLWithSubstitutions:(id)substitutions;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCArtwork

- (ASCArtwork)initWithURLTemplate:(id)template width:(double)width height:(double)height decoration:(id)decoration preferredCrop:(id)crop preferredFormat:(id)format
{
  templateCopy = template;
  decorationCopy = decoration;
  cropCopy = crop;
  formatCopy = format;
  +[ASCEligibility assertCurrentProcessEligibility];
  v28.receiver = self;
  v28.super_class = ASCArtwork;
  v18 = [(ASCArtwork *)&v28 init];
  if (v18)
  {
    v19 = [templateCopy copy];
    dataSource = v18->_dataSource;
    v18->_dataSource = v19;

    v18->_width = width;
    v18->_height = height;
    v21 = [decorationCopy copy];
    decoration = v18->_decoration;
    v18->_decoration = v21;

    v23 = [cropCopy copy];
    preferredCrop = v18->_preferredCrop;
    v18->_preferredCrop = v23;

    v25 = [formatCopy copy];
    preferredFormat = v18->_preferredFormat;
    v18->_preferredFormat = v25;
  }

  return v18;
}

- (ASCArtwork)initWithImage:(id)image decoration:(id)decoration
{
  imageCopy = image;
  decorationCopy = decoration;
  v16.receiver = self;
  v16.super_class = ASCArtwork;
  v9 = [(ASCArtwork *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, image);
    [imageCopy size];
    v10->_width = v11;
    [imageCopy size];
    v10->_height = v12;
    v13 = [decorationCopy copy];
    decoration = v10->_decoration;
    v10->_decoration = v13;

    objc_storeStrong(&v10->_preferredCrop, @"bb");
    objc_storeStrong(&v10->_preferredFormat, @"png");
  }

  return v10;
}

- (ASCArtwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"dataSource"];
  if (v8)
  {
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"decoration"];
    if (v9)
    {
      v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredCrop"];
      if (v10)
      {
        v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredFormat"];
        if (v11)
        {
          v50.receiver = self;
          v50.super_class = ASCArtwork;
          v12 = [(ASCArtwork *)&v50 init];
          v13 = v12;
          if (v12)
          {
            objc_storeStrong(&v12->_dataSource, v8);
            [coderCopy decodeDoubleForKey:@"width"];
            v13->_width = v14;
            [coderCopy decodeDoubleForKey:@"height"];
            v13->_height = v15;
            v13->_isPortrait = v15 >= v13->_width;
            objc_storeStrong(&v13->_decoration, v9);
            objc_storeStrong(&v13->_preferredCrop, v10);
            objc_storeStrong(&v13->_preferredFormat, v11);
          }

          self = v13;
          selfCopy = self;
        }

        else
        {
          v41 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v41)
          {
            [(ASCArtwork *)v41 initWithCoder:v42, v43, v44, v45, v46, v47, v48];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v33)
        {
          [(ASCArtwork *)v33 initWithCoder:v34, v35, v36, v37, v38, v39, v40];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v25)
      {
        [(ASCArtwork *)v25 initWithCoder:v26, v27, v28, v29, v30, v31, v32];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      [(ASCArtwork *)v17 initWithCoder:v18, v19, v20, v21, v22, v23, v24];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  dataSource = [(ASCArtwork *)self dataSource];
  [coderCopy encodeObject:dataSource forKey:@"dataSource"];

  [(ASCArtwork *)self width];
  [coderCopy encodeDouble:@"width" forKey:?];
  [(ASCArtwork *)self height];
  [coderCopy encodeDouble:@"height" forKey:?];
  decoration = [(ASCArtwork *)self decoration];
  [coderCopy encodeObject:decoration forKey:@"decoration"];

  preferredCrop = [(ASCArtwork *)self preferredCrop];
  [coderCopy encodeObject:preferredCrop forKey:@"preferredCrop"];

  preferredFormat = [(ASCArtwork *)self preferredFormat];
  [coderCopy encodeObject:preferredFormat forKey:@"preferredFormat"];
}

- (UIImage)embeddedImage
{
  objc_opt_class();
  dataSource = [(ASCArtwork *)self dataSource];
  if (dataSource)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = dataSource;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

- (NSString)URLTemplate
{
  objc_opt_class();
  dataSource = [(ASCArtwork *)self dataSource];
  if (dataSource)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = dataSource;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    v6 = [v5 copy];
  }

  else
  {
    v6 = @"<embedded image>";
  }

  return v6;
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  dataSource = [(ASCArtwork *)self dataSource];
  [(ASCHasher *)v3 combineObject:dataSource];

  [(ASCArtwork *)self width];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCArtwork *)self height];
  [(ASCHasher *)v3 combineDouble:?];
  decoration = [(ASCArtwork *)self decoration];
  [(ASCHasher *)v3 combineObject:decoration];

  preferredCrop = [(ASCArtwork *)self preferredCrop];
  [(ASCHasher *)v3 combineObject:preferredCrop];

  preferredFormat = [(ASCArtwork *)self preferredFormat];
  [(ASCHasher *)v3 combineObject:preferredFormat];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self != equalCopy)
  {
    objc_opt_class();
    v5 = equalCopy;
    if (v5)
    {
      if (objc_opt_isKindOfClass())
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }

    v8 = v6;

    if (!v8)
    {
      v7 = 0;
LABEL_28:

      goto LABEL_29;
    }

    dataSource = [(ASCArtwork *)self dataSource];
    dataSource2 = [(ASCArtwork *)v8 dataSource];
    v11 = dataSource2;
    if (dataSource && dataSource2)
    {
      if (![dataSource isEqual:dataSource2])
      {
        goto LABEL_26;
      }
    }

    else if (dataSource != dataSource2)
    {
LABEL_26:
      v7 = 0;
LABEL_27:

      goto LABEL_28;
    }

    [(ASCArtwork *)self width];
    v13 = v12;
    [(ASCArtwork *)v8 width];
    if (v13 != v14)
    {
      goto LABEL_26;
    }

    [(ASCArtwork *)self height];
    v16 = v15;
    [(ASCArtwork *)v8 height];
    if (v16 != v17)
    {
      goto LABEL_26;
    }

    decoration = [(ASCArtwork *)self decoration];
    decoration2 = [(ASCArtwork *)v8 decoration];
    v20 = decoration2;
    if (decoration && decoration2)
    {
      if ([decoration isEqual:decoration2])
      {
LABEL_20:
        preferredCrop = [(ASCArtwork *)self preferredCrop];
        preferredCrop2 = [(ASCArtwork *)v8 preferredCrop];
        v23 = preferredCrop2;
        if (preferredCrop && preferredCrop2)
        {
          if ([preferredCrop isEqual:preferredCrop2])
          {
            goto LABEL_23;
          }
        }

        else if (preferredCrop == preferredCrop2)
        {
LABEL_23:
          preferredFormat = [(ASCArtwork *)self preferredFormat];
          preferredFormat2 = [(ASCArtwork *)v8 preferredFormat];
          v26 = preferredFormat2;
          v28 = preferredFormat;
          if (preferredFormat && preferredFormat2)
          {
            v7 = [preferredFormat isEqual:preferredFormat2];
          }

          else
          {
            v7 = preferredFormat == preferredFormat2;
          }

          goto LABEL_36;
        }

        v7 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    else if (decoration == decoration2)
    {
      goto LABEL_20;
    }

    v7 = 0;
LABEL_37:

    goto LABEL_27;
  }

  v7 = 1;
LABEL_29:

  return v7;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  uRLTemplate = [(ASCArtwork *)self URLTemplate];
  [(ASCDescriber *)v3 addObject:uRLTemplate withName:@"URLTemplate"];

  [(ASCArtwork *)self width];
  [(ASCDescriber *)v3 addDouble:@"width" withName:?];
  [(ASCArtwork *)self height];
  [(ASCDescriber *)v3 addDouble:@"height" withName:?];
  decoration = [(ASCArtwork *)self decoration];
  [(ASCDescriber *)v3 addObject:decoration withName:@"decoration"];

  preferredCrop = [(ASCArtwork *)self preferredCrop];
  [(ASCDescriber *)v3 addObject:preferredCrop withName:@"preferredCrop"];

  preferredFormat = [(ASCArtwork *)self preferredFormat];
  [(ASCDescriber *)v3 addObject:preferredFormat withName:@"preferredFormat"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

- (id)makeURLWithSubstitutions:(id)substitutions
{
  substitutionsCopy = substitutions;
  uRLTemplate = [(ASCArtwork *)self URLTemplate];
  v6 = [uRLTemplate mutableCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__ASCArtwork_makeURLWithSubstitutions___block_invoke;
  v10[3] = &unk_2781CBE28;
  v11 = v6;
  v7 = v6;
  [substitutionsCopy enumerateKeysAndObjectsUsingBlock:v10];

  v8 = [MEMORY[0x277CBEBC0] URLWithString:v7];

  return v8;
}

void __39__ASCArtwork_makeURLWithSubstitutions___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  [v4 replaceOccurrencesOfString:v6 withString:v5 options:0 range:{0, objc_msgSend(v4, "length")}];
}

@end