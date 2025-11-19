@interface SWHighlightIdentifier
- (BOOL)isEqual:(id)a3;
- (SWHighlightIdentifier)initWithCoder:(id)a3;
- (SWHighlightIdentifier)initWithStringIdentifier:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SWHighlightIdentifier

- (SWHighlightIdentifier)initWithStringIdentifier:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SWHighlightIdentifier;
  v5 = [(SWHighlightIdentifier *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SWHighlightIdentifier *)v5 setStringIdentifier:v4];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(SWHighlightIdentifier *)self stringIdentifier];
  [v4 encodeObject:v5 forKey:@"sid"];
}

- (SWHighlightIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SWHighlightIdentifier;
  v5 = [(SWHighlightIdentifier *)&v8 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sid"];
    [(SWHighlightIdentifier *)v5 setStringIdentifier:v6];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v3 = objc_alloc_init(objc_opt_class());
  v4 = [v3 stringIdentifier];
  [v3 setStringIdentifier:v4];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [(SWHighlightIdentifier *)self stringIdentifier];
    if (v7 || ([v6 stringIdentifier], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v8 = [(SWHighlightIdentifier *)self stringIdentifier];
      v9 = [v6 stringIdentifier];
      v10 = [v8 isEqualToString:v9];

      if (v7)
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
  v2 = [(SWHighlightIdentifier *)self stringIdentifier];
  v3 = [v2 hash];

  return v3;
}

@end