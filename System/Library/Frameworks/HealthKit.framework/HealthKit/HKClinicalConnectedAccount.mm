@interface HKClinicalConnectedAccount
- (BOOL)isEqual:(id)equal;
- (HKClinicalConnectedAccount)init;
- (HKClinicalConnectedAccount)initWithCoder:(id)coder;
- (HKClinicalConnectedAccount)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle brand:(id)brand needsRelogin:(BOOL)relogin;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HKClinicalConnectedAccount

- (HKClinicalConnectedAccount)init
{
  v3 = MEMORY[0x1E695DF30];
  v4 = *MEMORY[0x1E695D940];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (HKClinicalConnectedAccount)initWithIdentifier:(id)identifier title:(id)title subtitle:(id)subtitle brand:(id)brand needsRelogin:(BOOL)relogin
{
  identifierCopy = identifier;
  titleCopy = title;
  subtitleCopy = subtitle;
  brandCopy = brand;
  v26.receiver = self;
  v26.super_class = HKClinicalConnectedAccount;
  v16 = [(HKClinicalConnectedAccount *)&v26 init];
  if (v16)
  {
    v17 = [identifierCopy copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [titleCopy copy];
    title = v16->_title;
    v16->_title = v19;

    v21 = [subtitleCopy copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v21;

    v23 = [brandCopy copy];
    brand = v16->_brand;
    v16->_brand = v23;

    v16->_needsRelogin = relogin;
  }

  return v16;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (self != equalCopy)
  {
    v8 = equalCopy;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_41:

      goto LABEL_42;
    }

    identifier = self->_identifier;
    identifier = [(HKClinicalConnectedAccount *)v8 identifier];
    if (identifier != identifier)
    {
      identifier2 = [(HKClinicalConnectedAccount *)v8 identifier];
      if (!identifier2)
      {
        v13 = 0;
        goto LABEL_40;
      }

      v4 = identifier2;
      v3 = self->_identifier;
      identifier3 = [(HKClinicalConnectedAccount *)v8 identifier];
      if (![(NSUUID *)v3 isEqual:identifier3])
      {
        v13 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v44 = identifier3;
    }

    title = self->_title;
    title = [(HKClinicalConnectedAccount *)v8 title];
    if (title != title)
    {
      title2 = [(HKClinicalConnectedAccount *)v8 title];
      if (!title2)
      {
        v13 = 0;
LABEL_37:

LABEL_38:
        identifier3 = v44;
        if (identifier != identifier)
        {
          goto LABEL_39;
        }

LABEL_40:

        goto LABEL_41;
      }

      v17 = title2;
      v18 = self->_title;
      title3 = [(HKClinicalConnectedAccount *)v8 title];
      v20 = v18;
      v3 = title3;
      if (![(NSString *)v20 isEqualToString:title3])
      {

        v13 = 0;
        goto LABEL_38;
      }

      v40 = v17;
    }

    subtitle = self->_subtitle;
    subtitle = [(HKClinicalConnectedAccount *)v8 subtitle];
    v43 = subtitle;
    v23 = subtitle == subtitle;
    v24 = subtitle;
    if (v23)
    {
      v41 = v4;
      v42 = v3;
    }

    else
    {
      subtitle2 = [(HKClinicalConnectedAccount *)v8 subtitle];
      if (!subtitle2)
      {
        v13 = 0;
        goto LABEL_35;
      }

      v39 = subtitle2;
      v42 = v3;
      v26 = self->_subtitle;
      subtitle3 = [(HKClinicalConnectedAccount *)v8 subtitle];
      if (![(NSString *)v26 isEqualToString:?])
      {
        v13 = 0;
        v3 = v42;
LABEL_34:

LABEL_35:
        if (title != title)
        {
        }

        goto LABEL_37;
      }

      v41 = v4;
    }

    brand = self->_brand;
    brand = [(HKClinicalConnectedAccount *)v8 brand];
    if (brand != brand)
    {
      brand2 = [(HKClinicalConnectedAccount *)v8 brand];
      if (!brand2)
      {

        v13 = 0;
        goto LABEL_32;
      }

      v36 = self->_brand;
      v37 = brand2;
      brand3 = [(HKClinicalConnectedAccount *)v8 brand];
      v31 = v36;
      v35 = brand3;
      if (![(HKClinicalBrand *)v31 isEqual:?])
      {
        v13 = 0;
LABEL_28:
        v3 = v42;

        v33 = v43;
        goto LABEL_33;
      }
    }

    needsRelogin = self->_needsRelogin;
    v13 = needsRelogin == [(HKClinicalConnectedAccount *)v8 needsRelogin];
    if (brand != brand)
    {
      goto LABEL_28;
    }

LABEL_32:
    v3 = v42;
    v33 = v43;
LABEL_33:
    v4 = v41;
    if (v33 == v24)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v13 = 1;
LABEL_42:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSUUID *)self->_identifier hash];
  v4 = [(NSString *)self->_title hash]^ v3;
  v5 = [(NSString *)self->_subtitle hash];
  return v4 ^ v5 ^ [(HKClinicalBrand *)self->_brand hash]^ self->_needsRelogin;
}

- (void)encodeWithCoder:(id)coder
{
  identifier = self->_identifier;
  coderCopy = coder;
  [coderCopy encodeObject:identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_title forKey:@"title"];
  [coderCopy encodeObject:self->_subtitle forKey:@"subtitle"];
  [coderCopy encodeObject:self->_brand forKey:@"brand"];
  [coderCopy encodeBool:self->_needsRelogin forKey:@"needsRelogin"];
}

- (HKClinicalConnectedAccount)initWithCoder:(id)coder
{
  coderCopy = coder;
  if ([coderCopy containsValueForKey:@"title"] && (objc_msgSend(coderCopy, "containsValueForKey:", @"needsRelogin") & 1) != 0)
  {
    v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
    self = -[HKClinicalConnectedAccount initWithIdentifier:title:subtitle:brand:needsRelogin:](self, "initWithIdentifier:title:subtitle:brand:needsRelogin:", v5, v6, v7, v8, [coderCopy decodeBoolForKey:@"needsRelogin"]);

    selfCopy = self;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [coderCopy failWithError:v5];
    selfCopy = 0;
  }

  return selfCopy;
}

@end