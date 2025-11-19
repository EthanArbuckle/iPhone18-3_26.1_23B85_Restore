@interface ASCTextOfferMetadata
- (ASCTextOfferMetadata)initWithCoder:(id)a3;
- (ASCTextOfferMetadata)initWithTitle:(id)a3 subtitle:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ASCTextOfferMetadata

- (ASCTextOfferMetadata)initWithTitle:(id)a3 subtitle:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = ASCTextOfferMetadata;
  v8 = [(ASCOfferMetadata *)&v14 _init];
  if (v8)
  {
    v9 = [v6 copy];
    title = v8->_title;
    v8->_title = v9;

    v11 = [v7 copy];
    subtitle = v8->_subtitle;
    v8->_subtitle = v11;
  }

  return v8;
}

- (ASCTextOfferMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v5)
  {
    v20.receiver = self;
    v20.super_class = ASCTextOfferMetadata;
    v6 = [(ASCOfferMetadata *)&v20 initWithCoder:v4];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_title, v5);
      v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
      subtitle = v7->_subtitle;
      v7->_subtitle = v8;
    }

    self = v7;
    v10 = self;
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(ASCTextOfferMetadata *)v11 initWithCoder:v12, v13, v14, v15, v16, v17, v18];
    }

    v10 = 0;
  }

  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = ASCTextOfferMetadata;
  v4 = a3;
  [(ASCOfferMetadata *)&v7 encodeWithCoder:v4];
  v5 = [(ASCTextOfferMetadata *)self title:v7.receiver];
  [v4 encodeObject:v5 forKey:@"title"];

  v6 = [(ASCTextOfferMetadata *)self subtitle];
  [v4 encodeObject:v6 forKey:@"subtitle"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  v4 = [(ASCTextOfferMetadata *)self title];
  [(ASCHasher *)v3 combineObject:v4];

  v5 = [(ASCTextOfferMetadata *)self subtitle];
  [(ASCHasher *)v3 combineObject:v5];

  v6 = [(ASCHasher *)v3 finalizeHash];
  return v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
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

  v7 = v6;

  if (v7)
  {
    v8 = [(ASCTextOfferMetadata *)self title];
    v9 = [v7 title];
    v10 = v9;
    if (v8 && v9)
    {
      if ([v8 isEqual:v9])
      {
        goto LABEL_10;
      }
    }

    else if (v8 == v9)
    {
LABEL_10:
      v11 = [(ASCTextOfferMetadata *)self subtitle];
      v12 = [v7 subtitle];
      v13 = v12;
      if (v11 && v12)
      {
        v14 = [v11 isEqual:v12];
      }

      else
      {
        v14 = v11 == v12;
      }

      goto LABEL_18;
    }

    v14 = 0;
LABEL_18:

    goto LABEL_19;
  }

  v14 = 0;
LABEL_19:

  return v14;
}

- (id)description
{
  v3 = [[ASCDescriber alloc] initWithObject:self];
  v4 = [(ASCTextOfferMetadata *)self title];
  [(ASCDescriber *)v3 addObject:v4 withName:@"title"];

  v5 = [(ASCTextOfferMetadata *)self subtitle];
  [(ASCDescriber *)v3 addObject:v5 withName:@"subtitle"];

  v6 = [(ASCDescriber *)v3 finalizeDescription];

  return v6;
}

@end