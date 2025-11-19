@interface CTODAPlan
- (BOOL)isEqual:(id)a3;
- (CTODAPlan)initWithCoder:(id)a3;
- (CTODAPlan)initWithSetupUrl:(id)a3 mcc:(id)a4 mnc:(id)a5 gid1:(id)a6 gid2:(id)a7 handoffToken:(id)a8 inBuddy:(BOOL)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTODAPlan

- (CTODAPlan)initWithSetupUrl:(id)a3 mcc:(id)a4 mnc:(id)a5 gid1:(id)a6 gid2:(id)a7 handoffToken:(id)a8 inBuddy:(BOOL)a9
{
  v16 = a3;
  v24 = a4;
  v23 = a5;
  v22 = a6;
  v17 = a7;
  v18 = a8;
  v25.receiver = self;
  v25.super_class = CTODAPlan;
  v19 = [(CTODAPlan *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_mcc, a4);
    objc_storeStrong(&v20->_mnc, a5);
    objc_storeStrong(&v20->_gid1, a6);
    objc_storeStrong(&v20->_gid2, a7);
    objc_storeStrong(&v20->_setupURL, a3);
    objc_storeStrong(&v20->_handoffToken, a8);
    v20->_inBuddy = a9;
  }

  return v20;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = v3;
  if (self->_mcc)
  {
    [v3 appendFormat:@", mcc=%@", self->_mcc];
  }

  if (self->_mnc)
  {
    [v4 appendFormat:@", mnc=%@", self->_mnc];
  }

  if (self->_gid1)
  {
    [v4 appendFormat:@", gid1=%@", self->_gid1];
  }

  if (self->_gid2)
  {
    [v4 appendFormat:@", gid1=%@", self->_gid2];
  }

  if (self->_setupURL)
  {
    [v4 appendFormat:@", setupURL=%@", self->_setupURL];
  }

  if (self->_handoffToken)
  {
    [v4 appendFormat:@", handoffToken=%@", self->_handoffToken];
  }

  if (self->_inBuddy)
  {
    v5 = "YES";
  }

  else
  {
    v5 = "NO";
  }

  [v4 appendFormat:@", inBuddy=%s", v5];
  [v4 appendString:@">"];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v50.receiver = self;
  v50.super_class = CTODAPlan;
  if ([(CTPlan *)&v50 isEqual:v6])
  {
    v7 = [(CTODAPlan *)self mcc];
    v8 = [v6 mcc];
    if (v7 != v8)
    {
      v3 = [(CTODAPlan *)self mcc];
      v4 = [v6 mcc];
      if (![v3 isEqual:v4])
      {
        LOBYTE(v9) = 0;
        goto LABEL_40;
      }
    }

    v10 = [(CTODAPlan *)self mnc];
    v11 = [v6 mnc];
    if (v10 != v11)
    {
      v12 = [(CTODAPlan *)self mnc];
      v13 = [v6 mnc];
      if (![v12 isEqual:v13])
      {
        LOBYTE(v9) = 0;
LABEL_38:

LABEL_39:
        if (v7 == v8)
        {
LABEL_41:

          goto LABEL_42;
        }

LABEL_40:

        goto LABEL_41;
      }

      v46 = v13;
      v47 = v12;
    }

    v14 = [(CTODAPlan *)self gid1];
    v48 = [v6 gid1];
    v49 = v14;
    if (v14 != v48)
    {
      v15 = [(CTODAPlan *)self gid1];
      v43 = [v6 gid1];
      v44 = v15;
      if (![v15 isEqual:?])
      {
        LOBYTE(v9) = 0;
LABEL_36:

LABEL_37:
        v13 = v46;
        v12 = v47;
        if (v10 == v11)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }
    }

    v16 = [(CTODAPlan *)self gid2];
    v17 = [v6 gid2];
    v45 = v16;
    v18 = v16 == v17;
    v19 = v17;
    if (v18)
    {
      v21 = v17;
    }

    else
    {
      v20 = [(CTODAPlan *)self gid2];
      v38 = [v6 gid2];
      v39 = v20;
      if (![v20 isEqual:?])
      {
        LOBYTE(v9) = 0;
        v24 = v45;
LABEL_34:

LABEL_35:
        if (v49 == v48)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v21 = v19;
    }

    v22 = [(CTODAPlan *)self setupURL];
    v40 = [v6 setupURL];
    v41 = v21;
    v42 = v22;
    if (v22 == v40)
    {
      v36 = v4;
      v37 = v3;
    }

    else
    {
      v23 = [(CTODAPlan *)self setupURL];
      v34 = [v6 setupURL];
      v35 = v23;
      if (![v23 isEqual:?])
      {
        LOBYTE(v9) = 0;
        v29 = v40;
        v27 = v42;
LABEL_32:

LABEL_33:
        v24 = v45;
        v19 = v41;
        if (v45 == v41)
        {
          goto LABEL_35;
        }

        goto LABEL_34;
      }

      v36 = v4;
      v37 = v3;
    }

    v25 = [(CTODAPlan *)self handoffToken];
    v26 = [v6 handoffToken];
    v27 = v42;
    if (v25 != v26)
    {
      v28 = [(CTODAPlan *)self handoffToken];
      v32 = [v6 handoffToken];
      v33 = v28;
      if (![v28 isEqual:?])
      {
        LOBYTE(v9) = 0;
        v27 = v42;
        goto LABEL_30;
      }

      v27 = v42;
    }

    v30 = [(CTODAPlan *)self inBuddy];
    v9 = v30 ^ [v6 inBuddy] ^ 1;
    if (v25 == v26)
    {
LABEL_31:

      v29 = v40;
      v4 = v36;
      v3 = v37;
      if (v27 == v40)
      {
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_30:

    goto LABEL_31;
  }

  LOBYTE(v9) = 0;
LABEL_42:

  return v9;
}

- (CTODAPlan)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTODAPlan;
  v5 = [(CTPlan *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mcc"];
    mcc = v5->_mcc;
    v5->_mcc = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mnc"];
    mnc = v5->_mnc;
    v5->_mnc = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gid1"];
    gid1 = v5->_gid1;
    v5->_gid1 = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gid2"];
    gid2 = v5->_gid2;
    v5->_gid2 = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"setupURL"];
    setupURL = v5->_setupURL;
    v5->_setupURL = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handoffToken"];
    handoffToken = v5->_handoffToken;
    v5->_handoffToken = v16;

    v5->_inBuddy = [v4 decodeBoolForKey:@"inBuddy"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = CTODAPlan;
  v4 = a3;
  [(CTPlan *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_mcc forKey:{@"mcc", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_mnc forKey:@"mnc"];
  [v4 encodeObject:self->_gid1 forKey:@"gid1"];
  [v4 encodeObject:self->_gid2 forKey:@"gid2"];
  [v4 encodeObject:self->_setupURL forKey:@"setupURL"];
  [v4 encodeObject:self->_handoffToken forKey:@"handoffToken"];
  [v4 encodeBool:self->_inBuddy forKey:@"inBuddy"];
}

@end