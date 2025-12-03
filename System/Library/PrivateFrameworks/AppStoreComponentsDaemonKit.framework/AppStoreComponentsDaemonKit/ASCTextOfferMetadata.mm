@interface ASCTextOfferMetadata
- (ASCTextOfferMetadata)initWithCoder:(id)coder;
- (ASCTextOfferMetadata)initWithTitle:(id)title subtitle:(id)subtitle;
- (BOOL)isEqual:(id)equal;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ASCTextOfferMetadata

- (ASCTextOfferMetadata)initWithTitle:(id)title subtitle:(id)subtitle
{
  titleCopy = title;
  subtitleCopy = subtitle;
  v14.receiver = self;
  v14.super_class = ASCTextOfferMetadata;
  _init = [(ASCOfferMetadata *)&v14 _init];
  if (_init)
  {
    v9 = [titleCopy copy];
    title = _init->_title;
    _init->_title = v9;

    v11 = [subtitleCopy copy];
    subtitle = _init->_subtitle;
    _init->_subtitle = v11;
  }

  return _init;
}

- (ASCTextOfferMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
  if (v5)
  {
    v20.receiver = self;
    v20.super_class = ASCTextOfferMetadata;
    v6 = [(ASCOfferMetadata *)&v20 initWithCoder:coderCopy];
    v7 = v6;
    if (v6)
    {
      objc_storeStrong(&v6->_title, v5);
      v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
      subtitle = v7->_subtitle;
      v7->_subtitle = v8;
    }

    self = v7;
    selfCopy = self;
  }

  else
  {
    v11 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
    if (v11)
    {
      [(ASCTextOfferMetadata *)v11 initWithCoder:v12, v13, v14, v15, v16, v17, v18];
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = ASCTextOfferMetadata;
  coderCopy = coder;
  [(ASCOfferMetadata *)&v7 encodeWithCoder:coderCopy];
  v5 = [(ASCTextOfferMetadata *)self title:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"title"];

  subtitle = [(ASCTextOfferMetadata *)self subtitle];
  [coderCopy encodeObject:subtitle forKey:@"subtitle"];
}

- (unint64_t)hash
{
  v3 = objc_alloc_init(ASCHasher);
  title = [(ASCTextOfferMetadata *)self title];
  [(ASCHasher *)v3 combineObject:title];

  subtitle = [(ASCTextOfferMetadata *)self subtitle];
  [(ASCHasher *)v3 combineObject:subtitle];

  finalizeHash = [(ASCHasher *)v3 finalizeHash];
  return finalizeHash;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
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

  v7 = v6;

  if (v7)
  {
    title = [(ASCTextOfferMetadata *)self title];
    title2 = [v7 title];
    v10 = title2;
    if (title && title2)
    {
      if ([title isEqual:title2])
      {
        goto LABEL_10;
      }
    }

    else if (title == title2)
    {
LABEL_10:
      subtitle = [(ASCTextOfferMetadata *)self subtitle];
      subtitle2 = [v7 subtitle];
      v13 = subtitle2;
      if (subtitle && subtitle2)
      {
        v14 = [subtitle isEqual:subtitle2];
      }

      else
      {
        v14 = subtitle == subtitle2;
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
  title = [(ASCTextOfferMetadata *)self title];
  [(ASCDescriber *)v3 addObject:title withName:@"title"];

  subtitle = [(ASCTextOfferMetadata *)self subtitle];
  [(ASCDescriber *)v3 addObject:subtitle withName:@"subtitle"];

  finalizeDescription = [(ASCDescriber *)v3 finalizeDescription];

  return finalizeDescription;
}

@end