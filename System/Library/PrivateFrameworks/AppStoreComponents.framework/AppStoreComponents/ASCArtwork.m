@interface ASCArtwork
- (ASCArtwork)initWithCoder:(id)a3;
- (ASCArtwork)initWithImage:(id)a3 decoration:(id)a4;
- (ASCArtwork)initWithURLTemplate:(id)a3 width:(double)a4 height:(double)a5 decoration:(id)a6 preferredCrop:(id)a7 preferredFormat:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSString)URLTemplate;
- (UIImage)embeddedImage;
- (id)description;
- (id)makeURLWithSubstitutions:(id)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCArtwork

- (ASCArtwork)initWithURLTemplate:(id)a3 width:(double)a4 height:(double)a5 decoration:(id)a6 preferredCrop:(id)a7 preferredFormat:(id)a8
{
  v14 = a3;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  +[ASCEligibility assertCurrentProcessEligibility];
  v28.receiver = self;
  v28.super_class = ASCArtwork;
  v18 = [(ASCArtwork *)&v28 init];
  if (v18)
  {
    v19 = [v14 copy];
    dataSource = v18->_dataSource;
    v18->_dataSource = v19;

    v18->_width = a4;
    v18->_height = a5;
    v21 = [v15 copy];
    decoration = v18->_decoration;
    v18->_decoration = v21;

    v23 = [v16 copy];
    preferredCrop = v18->_preferredCrop;
    v18->_preferredCrop = v23;

    v25 = [v17 copy];
    preferredFormat = v18->_preferredFormat;
    v18->_preferredFormat = v25;
  }

  return v18;
}

- (ASCArtwork)initWithImage:(id)a3 decoration:(id)a4
{
  v7 = a3;
  v8 = a4;
  v16.receiver = self;
  v16.super_class = ASCArtwork;
  v9 = [(ASCArtwork *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dataSource, a3);
    [v7 size];
    v10->_width = v11;
    [v7 size];
    v10->_height = v12;
    v13 = [v8 copy];
    decoration = v10->_decoration;
    v10->_decoration = v13;

    objc_storeStrong(&v10->_preferredCrop, @"bb");
    objc_storeStrong(&v10->_preferredFormat, @"png");
  }

  return v10;
}

- (ASCArtwork)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = objc_opt_class();
  v7 = [v5 initWithObjects:{v6, objc_opt_class(), 0}];
  v8 = [v4 decodeObjectOfClasses:v7 forKey:@"dataSource"];
  if (v8)
  {
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"decoration"];
    if (v9)
    {
      v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredCrop"];
      if (v10)
      {
        v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferredFormat"];
        if (v11)
        {
          v50.receiver = self;
          v50.super_class = ASCArtwork;
          v12 = [(ASCArtwork *)&v50 init];
          v13 = v12;
          if (v12)
          {
            objc_storeStrong(&v12->_dataSource, v8);
            [v4 decodeDoubleForKey:@"width"];
            v13->_width = v14;
            [v4 decodeDoubleForKey:@"height"];
            v13->_height = v15;
            v13->_isPortrait = v15 >= v13->_width;
            objc_storeStrong(&v13->_decoration, v9);
            objc_storeStrong(&v13->_preferredCrop, v10);
            objc_storeStrong(&v13->_preferredFormat, v11);
          }

          self = v13;
          v16 = self;
        }

        else
        {
          v41 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
          if (v41)
          {
            [(ASCArtwork *)v41 initWithCoder:v42, v43, v44, v45, v46, v47, v48];
          }

          v16 = 0;
        }
      }

      else
      {
        v33 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
        if (v33)
        {
          [(ASCArtwork *)v33 initWithCoder:v34, v35, v36, v37, v38, v39, v40];
        }

        v16 = 0;
      }
    }

    else
    {
      v25 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
      if (v25)
      {
        [(ASCArtwork *)v25 initWithCoder:v26, v27, v28, v29, v30, v31, v32];
      }

      v16 = 0;
    }
  }

  else
  {
    v17 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v17)
    {
      [(ASCArtwork *)v17 initWithCoder:v18, v19, v20, v21, v22, v23, v24];
    }

    v16 = 0;
  }

  return v16;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ASCArtwork *)self dataSource];
  [v4 encodeObject:v5 forKey:@"dataSource"];

  [(ASCArtwork *)self width];
  [v4 encodeDouble:@"width" forKey:?];
  [(ASCArtwork *)self height];
  [v4 encodeDouble:@"height" forKey:?];
  v6 = [(ASCArtwork *)self decoration];
  [v4 encodeObject:v6 forKey:@"decoration"];

  v7 = [(ASCArtwork *)self preferredCrop];
  [v4 encodeObject:v7 forKey:@"preferredCrop"];

  v8 = [(ASCArtwork *)self preferredFormat];
  [v4 encodeObject:v8 forKey:@"preferredFormat"];
}

- (UIImage)embeddedImage
{
  objc_opt_class();
  v3 = [(ASCArtwork *)self dataSource];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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
  v3 = [(ASCArtwork *)self dataSource];
  if (v3)
  {
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
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
  v4 = [(ASCArtwork *)self dataSource];
  [(ASCHasher *)v3 combineObject:v4];

  [(ASCArtwork *)self width];
  [(ASCHasher *)v3 combineDouble:?];
  [(ASCArtwork *)self height];
  [(ASCHasher *)v3 combineDouble:?];
  v5 = [(ASCArtwork *)self decoration];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCArtwork *)self preferredCrop];
  [(ASCHasher *)v3 combineObject:v6];

  v7 = [(ASCArtwork *)self preferredFormat];
  [(ASCHasher *)v3 combineObject:v7];

  v8 = [(ASCHasher *)v3 finalizeHash];
  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self != v4)
  {
    objc_opt_class();
    v5 = v4;
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

    v9 = [(ASCArtwork *)self dataSource];
    v10 = [(ASCArtwork *)v8 dataSource];
    v11 = v10;
    if (v9 && v10)
    {
      if (![v9 isEqual:v10])
      {
        goto LABEL_26;
      }
    }

    else if (v9 != v10)
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

    v18 = [(ASCArtwork *)self decoration];
    v19 = [(ASCArtwork *)v8 decoration];
    v20 = v19;
    if (v18 && v19)
    {
      if ([v18 isEqual:v19])
      {
LABEL_20:
        v21 = [(ASCArtwork *)self preferredCrop];
        v22 = [(ASCArtwork *)v8 preferredCrop];
        v23 = v22;
        if (v21 && v22)
        {
          if ([v21 isEqual:v22])
          {
            goto LABEL_23;
          }
        }

        else if (v21 == v22)
        {
LABEL_23:
          v24 = [(ASCArtwork *)self preferredFormat];
          v25 = [(ASCArtwork *)v8 preferredFormat];
          v26 = v25;
          v28 = v24;
          if (v24 && v25)
          {
            v7 = [v24 isEqual:v25];
          }

          else
          {
            v7 = v24 == v25;
          }

          goto LABEL_36;
        }

        v7 = 0;
LABEL_36:

        goto LABEL_37;
      }
    }

    else if (v18 == v19)
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
  v4 = [(ASCArtwork *)self URLTemplate];
  [(ASCDescriber *)v3 addObject:v4 withName:@"URLTemplate"];

  [(ASCArtwork *)self width];
  [(ASCDescriber *)v3 addDouble:@"width" withName:?];
  [(ASCArtwork *)self height];
  [(ASCDescriber *)v3 addDouble:@"height" withName:?];
  v5 = [(ASCArtwork *)self decoration];
  [(ASCDescriber *)v3 addObject:v5 withName:@"decoration"];

  v6 = [(ASCArtwork *)self preferredCrop];
  [(ASCDescriber *)v3 addObject:v6 withName:@"preferredCrop"];

  v7 = [(ASCArtwork *)self preferredFormat];
  [(ASCDescriber *)v3 addObject:v7 withName:@"preferredFormat"];

  v8 = [(ASCDescriber *)v3 finalizeDescription];

  return v8;
}

- (id)makeURLWithSubstitutions:(id)a3
{
  v4 = a3;
  v5 = [(ASCArtwork *)self URLTemplate];
  v6 = [v5 mutableCopy];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__ASCArtwork_makeURLWithSubstitutions___block_invoke;
  v10[3] = &unk_2781CBE28;
  v11 = v6;
  v7 = v6;
  [v4 enumerateKeysAndObjectsUsingBlock:v10];

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