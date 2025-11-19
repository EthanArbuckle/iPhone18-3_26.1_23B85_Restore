@interface CTRatSelection
- (BOOL)isEqual:(id)a3;
- (CTRatSelection)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTRatSelection

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", mask=0x%08x", -[CTRatSelection mask](self, "mask")];
  v4 = [(CTRatSelection *)self selection];
  [v3 appendFormat:@", selection=%@", v4];

  v5 = [(CTRatSelection *)self preferred];
  [v3 appendFormat:@", preferred=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (self == v5)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
      mask = self->_mask;
      if (mask != [(CTRatSelection *)v6 mask])
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      selection = self->_selection;
      v9 = [(CTRatSelection *)v6 selection];
      if (selection == v9 || (v10 = self->_selection, [(CTRatSelection *)v6 selection], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v10 isEqual:v3]))
      {
        preferred = self->_preferred;
        v13 = [(CTRatSelection *)v6 preferred];
        if (preferred == v13)
        {
          v11 = 1;
        }

        else
        {
          v14 = self->_preferred;
          v15 = [(CTRatSelection *)v6 preferred];
          v11 = [(NSString *)v14 isEqual:v15];
        }

        if (selection == v9)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = 0;
      }

LABEL_15:
      goto LABEL_16;
    }

    v11 = 0;
  }

LABEL_17:

  return v11;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  [v4 setMask:{-[CTRatSelection mask](self, "mask")}];
  v5 = [(CTRatSelection *)self selection];
  v6 = [v5 copy];
  [v4 setSelection:v6];

  v7 = [(CTRatSelection *)self preferred];
  v8 = [v7 copy];
  [v4 setPreferred:v8];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInt32:-[CTRatSelection mask](self forKey:{"mask"), @"mask"}];
  v5 = [(CTRatSelection *)self selection];
  [v4 encodeObject:v5 forKey:@"selection"];

  v6 = [(CTRatSelection *)self preferred];
  [v4 encodeObject:v6 forKey:@"preferred"];
}

- (CTRatSelection)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTRatSelection;
  v5 = [(CTRatSelection *)&v11 init];
  if (v5)
  {
    v5->_mask = [v4 decodeInt32ForKey:@"mask"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    selection = v5->_selection;
    v5->_selection = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"preferred"];
    preferred = v5->_preferred;
    v5->_preferred = v8;
  }

  return v5;
}

@end