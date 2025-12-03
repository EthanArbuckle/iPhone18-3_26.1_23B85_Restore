@interface SWHighlightIdentifier
- (BOOL)isEqual:(id)equal;
- (SWHighlightIdentifier)initWithCoder:(id)coder;
- (SWHighlightIdentifier)initWithStringIdentifier:(id)identifier;
- (id)copyWithZone:(_NSZone *)zone;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SWHighlightIdentifier

- (SWHighlightIdentifier)initWithStringIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v8.receiver = self;
  v8.super_class = SWHighlightIdentifier;
  v5 = [(SWHighlightIdentifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SWHighlightIdentifier *)v5 setStringIdentifier:identifierCopy];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  stringIdentifier = [(SWHighlightIdentifier *)self stringIdentifier];
  [coderCopy encodeObject:stringIdentifier forKey:@"sid"];
}

- (SWHighlightIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = SWHighlightIdentifier;
  v5 = [(SWHighlightIdentifier *)&v8 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    [(SWHighlightIdentifier *)v5 setStringIdentifier:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v3 = objc_alloc_init(objc_opt_class());
  stringIdentifier = [v3 stringIdentifier];
  [v3 setStringIdentifier:stringIdentifier];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = equalCopy;
    stringIdentifier = [(SWHighlightIdentifier *)self stringIdentifier];
    if (stringIdentifier || ([v6 stringIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      stringIdentifier2 = [(SWHighlightIdentifier *)self stringIdentifier];
      stringIdentifier3 = [v6 stringIdentifier];
      v10 = [stringIdentifier2 isEqualToString:stringIdentifier3];

      if (stringIdentifier)
      {
LABEL_9:

        goto LABEL_10;
      }
    }

    else
    {
      v10 = 1;
    }

    goto LABEL_9;
  }

  v10 = 0;
LABEL_10:

  return v10;
}

- (unint64_t)hash
{
  stringIdentifier = [(SWHighlightIdentifier *)self stringIdentifier];
  v3 = [stringIdentifier hash];

  return v3;
}

@end