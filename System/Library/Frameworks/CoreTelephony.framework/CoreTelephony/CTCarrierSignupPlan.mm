@interface CTCarrierSignupPlan
- (BOOL)isEqual:(id)a3;
- (CTCarrierSignupPlan)initWithCoder:(id)a3;
- (CTCarrierSignupPlan)initWithName:(id)a3 url:(id)a4 type:(id)a5;
- (CTCarrierSignupPlan)initWithName:(id)a3 url:(id)a4 type:(id)a5 option:(int64_t)a6 identifiers:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCarrierSignupPlan

- (CTCarrierSignupPlan)initWithName:(id)a3 url:(id)a4 type:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v15.receiver = self;
  v15.super_class = CTCarrierSignupPlan;
  v11 = [(CTCarrierSignupPlan *)&v15 init];
  if (v11)
  {
    v12 = [v8 copy];
    name = v11->_name;
    v11->_name = v12;

    objc_storeStrong(&v11->_url, a4);
    objc_storeStrong(&v11->_type, a5);
    v11->_option = 0;
  }

  return v11;
}

- (CTCarrierSignupPlan)initWithName:(id)a3 url:(id)a4 type:(id)a5 option:(int64_t)a6 identifiers:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v20.receiver = self;
  v20.super_class = CTCarrierSignupPlan;
  v16 = [(CTCarrierSignupPlan *)&v20 init];
  if (v16)
  {
    v17 = [v12 copy];
    name = v16->_name;
    v16->_name = v17;

    objc_storeStrong(&v16->_url, a4);
    objc_storeStrong(&v16->_type, a5);
    v16->_option = a6;
    objc_storeStrong(&v16->_identifiers, a7);
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v31.receiver = self;
  v31.super_class = CTCarrierSignupPlan;
  if ([(CTPlan *)&v31 isEqual:v4])
  {
    v5 = [(CTCarrierSignupPlan *)self name];
    v6 = [v4 name];
    if (v5 != v6)
    {
      v7 = [(CTCarrierSignupPlan *)self name];
      v8 = [v4 name];
      v30 = v7;
      if (![v7 isEqual:v8])
      {
        v9 = 0;
        goto LABEL_25;
      }

      v29 = v8;
    }

    v10 = [(CTCarrierSignupPlan *)self url];
    v11 = [v4 url];
    if (v10 != v11)
    {
      v12 = [(CTCarrierSignupPlan *)self url];
      v13 = [v4 url];
      if (![v12 isEqual:v13])
      {
        v9 = 0;
LABEL_23:

LABEL_24:
        v8 = v29;
        if (v5 == v6)
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

    v14 = [(CTCarrierSignupPlan *)self type];
    v15 = [v4 type];
    if (v14 != v15)
    {
      v16 = [(CTCarrierSignupPlan *)self type];
      v26 = [v4 type];
      if (![v16 isEqual:?])
      {
        v9 = 0;
        goto LABEL_21;
      }

      v25 = v16;
    }

    v17 = [(CTCarrierSignupPlan *)self option];
    if (v17 == [v4 option])
    {
      v18 = [(CTCarrierSignupPlan *)self identifiers];
      v19 = [v4 identifiers];
      v20 = v19;
      v24 = v18;
      if (v18 == v19)
      {

        v9 = 1;
      }

      else
      {
        v23 = [(CTCarrierSignupPlan *)self identifiers];
        v21 = [v4 identifiers];
        v9 = [v23 isEqual:v21];
      }
    }

    else
    {
      v9 = 0;
    }

    v16 = v25;
    if (v14 == v15)
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

- (CTCarrierSignupPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = CTCarrierSignupPlan;
  v5 = [(CTPlan *)&v18 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"url"];
    url = v5->_url;
    v5->_url = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v10;

    v5->_option = [v4 decodeIntegerForKey:@"option"];
    v12 = MEMORY[0x1E695DFD8];
    v13 = objc_opt_class();
    v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
    v15 = [v4 decodeObjectOfClasses:v14 forKey:@"planID"];
    identifiers = v5->_identifiers;
    v5->_identifiers = v15;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CTCarrierSignupPlan;
  v4 = a3;
  [(CTPlan *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_name forKey:{@"name", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_url forKey:@"url"];
  [v4 encodeObject:self->_type forKey:@"type"];
  [v4 encodeInteger:self->_option forKey:@"option"];
  [v4 encodeObject:self->_identifiers forKey:@"planID"];
}

@end