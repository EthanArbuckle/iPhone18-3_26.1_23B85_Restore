@interface CTRatSelection
- (BOOL)isEqual:(id)equal;
- (CTRatSelection)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTRatSelection

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", mask=0x%08x", -[CTRatSelection mask](self, "mask")];
  selection = [(CTRatSelection *)self selection];
  [v3 appendFormat:@", selection=%@", selection];

  preferred = [(CTRatSelection *)self preferred];
  [v3 appendFormat:@", preferred=%@", preferred];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = equalCopy;
      mask = self->_mask;
      if (mask != [(CTRatSelection *)v6 mask])
      {
        v11 = 0;
LABEL_16:

        goto LABEL_17;
      }

      selection = self->_selection;
      selection = [(CTRatSelection *)v6 selection];
      if (selection == selection || (v10 = self->_selection, [(CTRatSelection *)v6 selection], v3 = objc_claimAutoreleasedReturnValue(), [(NSString *)v10 isEqual:v3]))
      {
        preferred = self->_preferred;
        preferred = [(CTRatSelection *)v6 preferred];
        if (preferred == preferred)
        {
          v11 = 1;
        }

        else
        {
          v14 = self->_preferred;
          preferred2 = [(CTRatSelection *)v6 preferred];
          v11 = [(NSString *)v14 isEqual:preferred2];
        }

        if (selection == selection)
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setMask:{-[CTRatSelection mask](self, "mask")}];
  selection = [(CTRatSelection *)self selection];
  v6 = [selection copy];
  [v4 setSelection:v6];

  preferred = [(CTRatSelection *)self preferred];
  v8 = [preferred copy];
  [v4 setPreferred:v8];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt32:-[CTRatSelection mask](self forKey:{"mask"), @"mask"}];
  selection = [(CTRatSelection *)self selection];
  [coderCopy encodeObject:selection forKey:@"selection"];

  preferred = [(CTRatSelection *)self preferred];
  [coderCopy encodeObject:preferred forKey:@"preferred"];
}

- (CTRatSelection)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTRatSelection;
  v5 = [(CTRatSelection *)&v11 init];
  if (v5)
  {
    v5->_mask = [coderCopy decodeInt32ForKey:@"mask"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"selection"];
    selection = v5->_selection;
    v5->_selection = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"preferred"];
    preferred = v5->_preferred;
    v5->_preferred = v8;
  }

  return v5;
}

@end