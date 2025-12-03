@interface CTCarrierSignupPlan
- (BOOL)isEqual:(id)equal;
- (CTCarrierSignupPlan)initWithCoder:(id)coder;
- (CTCarrierSignupPlan)initWithName:(id)name url:(id)url type:(id)type;
- (CTCarrierSignupPlan)initWithName:(id)name url:(id)url type:(id)type option:(int64_t)option identifiers:(id)identifiers;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTCarrierSignupPlan

- (CTCarrierSignupPlan)initWithName:(id)name url:(id)url type:(id)type
{
  nameCopy = name;
  urlCopy = url;
  typeCopy = type;
  v15.receiver = self;
  v15.super_class = CTCarrierSignupPlan;
  v11 = [(CTCarrierSignupPlan *)&v15 init];
  if (v11)
  {
    v12 = [nameCopy copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_url, url);
    objc_storeStrong(&v11->_type, type);
    v11->_option = 0;
  }

  return v11;
}

- (CTCarrierSignupPlan)initWithName:(id)name url:(id)url type:(id)type option:(int64_t)option identifiers:(id)identifiers
{
  nameCopy = name;
  urlCopy = url;
  typeCopy = type;
  identifiersCopy = identifiers;
  v20.receiver = self;
  v20.super_class = CTCarrierSignupPlan;
  v16 = [(CTCarrierSignupPlan *)&v20 init];
  if (v16)
  {
    v17 = [nameCopy copy];
    name = v16->_name;
    v16->_name = v17;

    objc_storeStrong(&v16->_url, url);
    objc_storeStrong(&v16->_type, type);
    v16->_option = option;
    objc_storeStrong(&v16->_identifiers, identifiers);
  }

  return v16;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", name=%@", self->_name];
  [v3 appendFormat:@", url=%@", self->_url];
  [v3 appendFormat:@", type=%@", self->_type];
  [v3 appendFormat:@", option=%s", CTPlanPurchaseOptionAsString(-[CTCarrierSignupPlan option](self, "option"))];
  [v3 appendFormat:@", identifiers=%@", self->_identifiers];
  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v31.receiver = self;
  v31.super_class = CTCarrierSignupPlan;
  if ([(CTPlan *)&v31 isEqual:equalCopy])
  {
    name = [(CTCarrierSignupPlan *)self name];
    name2 = [equalCopy name];
    if (name != name2)
    {
      name3 = [(CTCarrierSignupPlan *)self name];
      name4 = [equalCopy name];
      v30 = name3;
      if (![name3 isEqual:name4])
      {
        v9 = 0;
        goto LABEL_25;
      }

      v29 = name4;
    }

    v10 = [(CTCarrierSignupPlan *)self url];
    v11 = [equalCopy url];
    if (v10 != v11)
    {
      v12 = [(CTCarrierSignupPlan *)self url];
      v13 = [equalCopy url];
      if (![v12 isEqual:v13])
      {
        v9 = 0;
LABEL_23:

LABEL_24:
        name4 = v29;
        if (name == name2)
        {
LABEL_26:

          goto LABEL_27;
        }

LABEL_25:

        goto LABEL_26;
      }

      v27 = v13;
      v28 = v12;
    }

    type = [(CTCarrierSignupPlan *)self type];
    type2 = [equalCopy type];
    if (type != type2)
    {
      type3 = [(CTCarrierSignupPlan *)self type];
      type4 = [equalCopy type];
      if (![type3 isEqual:?])
      {
        v9 = 0;
        goto LABEL_21;
      }

      v25 = type3;
    }

    option = [(CTCarrierSignupPlan *)self option];
    if (option == [equalCopy option])
    {
      identifiers = [(CTCarrierSignupPlan *)self identifiers];
      identifiers2 = [equalCopy identifiers];
      v20 = identifiers2;
      v24 = identifiers;
      if (identifiers == identifiers2)
      {

        v9 = 1;
      }

      else
      {
        identifiers3 = [(CTCarrierSignupPlan *)self identifiers];
        identifiers4 = [equalCopy identifiers];
        v9 = [identifiers3 isEqual:identifiers4];
      }
    }

    else
    {
      v9 = 0;
    }

    type3 = v25;
    if (type == type2)
    {
LABEL_22:

      v13 = v27;
      v12 = v28;
      if (v10 == v11)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_21:

    goto LABEL_22;
  }

  v9 = 0;
LABEL_27:

  return v9;
}

- (CTCarrierSignupPlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = CTCarrierSignupPlan;
  v5 = [(CTPlan *)&v18 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v10;

    v5->_option = [coderCopy decodeIntegerForKey:@"option"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [coderCopy decodeObjectOfClasses:v14 forKey:@"planID"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CTCarrierSignupPlan;
  coderCopy = coder;
  [(CTPlan *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_url forKey:@"url"];
  [coderCopy encodeObject:self->_type forKey:@"type"];
  [coderCopy encodeInteger:self->_option forKey:@"option"];
  [coderCopy encodeObject:self->_identifiers forKey:@"planID"];
}

@end