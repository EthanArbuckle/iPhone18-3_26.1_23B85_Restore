@interface ASCArtwork
- (ASCArtwork)initWithCoder:(id)coder;
- (ASCArtwork)initWithURLTemplate:(id)template width:(double)width height:(double)height decoration:(id)decoration preferredCrop:(id)crop preferredFormat:(id)format;
- (BOOL)isEqual:(id)equal;
- (NSString)URLTemplate;
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

- (ASCArtwork)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{objc_opt_class(), 0}];
  v6 = [coderCopy decodeObjectOfClasses:v5 forKey:@"dataSource"];
  if (v6)
  {
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"decoration"];
    if (v7)
    {
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredCrop"];
      if (v8)
      {
        v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferredFormat"];
        if (v9)
        {
          v48.receiver = self;
          v48.super_class = ASCArtwork;
          v10 = [(ASCArtwork *)&v48 init];
          v11 = v10;
          if (v10)
          {
            objc_storeStrong(&v10->_dataSource, v6);
            [coderCopy decodeDoubleForKey:@"width"];
            v11->_width = v12;
            [coderCopy decodeDoubleForKey:@"height"];
            v11->_height = v13;
            v11->_isPortrait = v13 >= v11->_width;
            objc_storeStrong(&v11->_decoration, v7);
            objc_storeStrong(&v11->_preferredCrop, v8);
            objc_storeStrong(&v11->_preferredFormat, v9);
          }

          self = v11;
          selfCopy = self;
        }

        else
        {
          v39 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v39)
          {
            [(ASCArtwork *)v39 initWithCoder:v40, v41, v42, v43, v44, v45, v46];
          }

          selfCopy = 0;
        }
      }

      else
      {
        v31 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v31)
        {
          [(ASCArtwork *)v31 initWithCoder:v32, v33, v34, v35, v36, v37, v38];
        }

        selfCopy = 0;
      }
    }

    else
    {
      v23 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v23)
      {
        [(ASCArtwork *)v23 initWithCoder:v24, v25, v26, v27, v28, v29, v30];
      }

      selfCopy = 0;
    }
  }

  else
  {
    v15 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      [(ASCArtwork *)v15 initWithCoder:v16, v17, v18, v19, v20, v21, v22];
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
  v10[3] = &unk_2784B14C0;
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