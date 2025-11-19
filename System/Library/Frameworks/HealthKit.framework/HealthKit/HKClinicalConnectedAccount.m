@interface HKClinicalConnectedAccount
- (BOOL)isEqual:(id)a3;
- (HKClinicalConnectedAccount)init;
- (HKClinicalConnectedAccount)initWithCoder:(id)a3;
- (HKClinicalConnectedAccount)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 brand:(id)a6 needsRelogin:(BOOL)a7;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
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

- (HKClinicalConnectedAccount)initWithIdentifier:(id)a3 title:(id)a4 subtitle:(id)a5 brand:(id)a6 needsRelogin:(BOOL)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v26.receiver = self;
  v26.super_class = HKClinicalConnectedAccount;
  v16 = [(HKClinicalConnectedAccount *)&v26 init];
  if (v16)
  {
    v17 = [v12 copy];
    identifier = v16->_identifier;
    v16->_identifier = v17;

    v19 = [v13 copy];
    title = v16->_title;
    v16->_title = v19;

    v21 = [v14 copy];
    subtitle = v16->_subtitle;
    v16->_subtitle = v21;

    v23 = [v15 copy];
    brand = v16->_brand;
    v16->_brand = v23;

    v16->_needsRelogin = a7;
  }

  return v16;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (self != v6)
  {
    v8 = v6;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v13 = 0;
LABEL_41:

      goto LABEL_42;
    }

    identifier = self->_identifier;
    v10 = [(HKClinicalConnectedAccount *)v8 identifier];
    if (identifier != v10)
    {
      v11 = [(HKClinicalConnectedAccount *)v8 identifier];
      if (!v11)
      {
        v13 = 0;
        goto LABEL_40;
      }

      v4 = v11;
      v3 = self->_identifier;
      v12 = [(HKClinicalConnectedAccount *)v8 identifier];
      if (![(NSUUID *)v3 isEqual:v12])
      {
        v13 = 0;
LABEL_39:

        goto LABEL_40;
      }

      v44 = v12;
    }

    title = self->_title;
    v15 = [(HKClinicalConnectedAccount *)v8 title];
    if (title != v15)
    {
      v16 = [(HKClinicalConnectedAccount *)v8 title];
      if (!v16)
      {
        v13 = 0;
LABEL_37:

LABEL_38:
        v12 = v44;
        if (identifier != v10)
        {
          goto LABEL_39;
        }

LABEL_40:

        goto LABEL_41;
      }

      v17 = v16;
      v18 = self->_title;
      v19 = [(HKClinicalConnectedAccount *)v8 title];
      v20 = v18;
      v3 = v19;
      if (![(NSString *)v20 isEqualToString:v19])
      {

        v13 = 0;
        goto LABEL_38;
      }

      v40 = v17;
    }

    subtitle = self->_subtitle;
    v22 = [(HKClinicalConnectedAccount *)v8 subtitle];
    v43 = subtitle;
    v23 = subtitle == v22;
    v24 = v22;
    if (v23)
    {
      v41 = v4;
      v42 = v3;
    }

    else
    {
      v25 = [(HKClinicalConnectedAccount *)v8 subtitle];
      if (!v25)
      {
        v13 = 0;
        goto LABEL_35;
      }

      v39 = v25;
      v42 = v3;
      v26 = self->_subtitle;
      v38 = [(HKClinicalConnectedAccount *)v8 subtitle];
      if (![(NSString *)v26 isEqualToString:?])
      {
        v13 = 0;
        v3 = v42;
LABEL_34:

LABEL_35:
        if (title != v15)
        {
        }

        goto LABEL_37;
      }

      v41 = v4;
    }

    brand = self->_brand;
    v28 = [(HKClinicalConnectedAccount *)v8 brand];
    if (brand != v28)
    {
      v29 = [(HKClinicalConnectedAccount *)v8 brand];
      if (!v29)
      {

        v13 = 0;
        goto LABEL_32;
      }

      v36 = self->_brand;
      v37 = v29;
      v30 = [(HKClinicalConnectedAccount *)v8 brand];
      v31 = v36;
      v35 = v30;
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
    if (brand != v28)
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

- (void)encodeWithCoder:(id)a3
{
  identifier = self->_identifier;
  v5 = a3;
  [v5 encodeObject:identifier forKey:@"identifier"];
  [v5 encodeObject:self->_title forKey:@"title"];
  [v5 encodeObject:self->_subtitle forKey:@"subtitle"];
  [v5 encodeObject:self->_brand forKey:@"brand"];
  [v5 encodeBool:self->_needsRelogin forKey:@"needsRelogin"];
}

- (HKClinicalConnectedAccount)initWithCoder:(id)a3
{
  v4 = a3;
  if ([v4 containsValueForKey:@"title"] && (objc_msgSend(v4, "containsValueForKey:", @"needsRelogin") & 1) != 0)
  {
    v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"title"];
    v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"subtitle"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"brand"];
    self = -[HKClinicalConnectedAccount initWithIdentifier:title:subtitle:brand:needsRelogin:](self, "initWithIdentifier:title:subtitle:brand:needsRelogin:", v5, v6, v7, v8, [v4 decodeBoolForKey:@"needsRelogin"]);

    v9 = self;
  }

  else
  {
    v5 = [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A250] code:4865 userInfo:0];
    [v4 failWithError:v5];
    v9 = 0;
  }

  return v9;
}

@end