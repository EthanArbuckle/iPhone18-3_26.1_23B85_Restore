@interface CTODAPlan
- (BOOL)isEqual:(id)equal;
- (CTODAPlan)initWithCoder:(id)coder;
- (CTODAPlan)initWithSetupUrl:(id)url mcc:(id)mcc mnc:(id)mnc gid1:(id)gid1 gid2:(id)gid2 handoffToken:(id)token inBuddy:(BOOL)buddy;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTODAPlan

- (CTODAPlan)initWithSetupUrl:(id)url mcc:(id)mcc mnc:(id)mnc gid1:(id)gid1 gid2:(id)gid2 handoffToken:(id)token inBuddy:(BOOL)buddy
{
  urlCopy = url;
  mccCopy = mcc;
  mncCopy = mnc;
  gid1Copy = gid1;
  gid2Copy = gid2;
  tokenCopy = token;
  v25.receiver = self;
  v25.super_class = CTODAPlan;
  v19 = [(CTODAPlan *)&v25 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_mcc, mcc);
    objc_storeStrong(&v20->_mnc, mnc);
    objc_storeStrong(&v20->_gid1, gid1);
    objc_storeStrong(&v20->_gid2, gid2);
    objc_storeStrong(&v20->_setupURL, url);
    objc_storeStrong(&v20->_handoffToken, token);
    v20->_inBuddy = buddy;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v50.receiver = self;
  v50.super_class = CTODAPlan;
  if ([(CTPlan *)&v50 isEqual:equalCopy])
  {
    v7 = [(CTODAPlan *)self mcc];
    v8 = [equalCopy mcc];
    if (v7 != v8)
    {
      v3 = [(CTODAPlan *)self mcc];
      v4 = [equalCopy mcc];
      if (![v3 isEqual:v4])
      {
        LOBYTE(v9) = 0;
        goto LABEL_40;
      }
    }

    v10 = [(CTODAPlan *)self mnc];
    v11 = [equalCopy mnc];
    if (v10 != v11)
    {
      v12 = [(CTODAPlan *)self mnc];
      v13 = [equalCopy mnc];
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

    gid1 = [(CTODAPlan *)self gid1];
    gid12 = [equalCopy gid1];
    v49 = gid1;
    if (gid1 != gid12)
    {
      gid13 = [(CTODAPlan *)self gid1];
      gid14 = [equalCopy gid1];
      v44 = gid13;
      if (![gid13 isEqual:?])
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

    gid2 = [(CTODAPlan *)self gid2];
    gid22 = [equalCopy gid2];
    v45 = gid2;
    v18 = gid2 == gid22;
    v19 = gid22;
    if (v18)
    {
      v21 = gid22;
    }

    else
    {
      gid23 = [(CTODAPlan *)self gid2];
      gid24 = [equalCopy gid2];
      v39 = gid23;
      if (![gid23 isEqual:?])
      {
        LOBYTE(v9) = 0;
        v24 = v45;
LABEL_34:

LABEL_35:
        if (v49 == gid12)
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v21 = v19;
    }

    setupURL = [(CTODAPlan *)self setupURL];
    setupURL2 = [equalCopy setupURL];
    v41 = v21;
    v42 = setupURL;
    if (setupURL == setupURL2)
    {
      v36 = v4;
      v37 = v3;
    }

    else
    {
      setupURL3 = [(CTODAPlan *)self setupURL];
      setupURL4 = [equalCopy setupURL];
      v35 = setupURL3;
      if (![setupURL3 isEqual:?])
      {
        LOBYTE(v9) = 0;
        v29 = setupURL2;
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

    handoffToken = [(CTODAPlan *)self handoffToken];
    handoffToken2 = [equalCopy handoffToken];
    v27 = v42;
    if (handoffToken != handoffToken2)
    {
      handoffToken3 = [(CTODAPlan *)self handoffToken];
      handoffToken4 = [equalCopy handoffToken];
      v33 = handoffToken3;
      if (![handoffToken3 isEqual:?])
      {
        LOBYTE(v9) = 0;
        v27 = v42;
        goto LABEL_30;
      }

      v27 = v42;
    }

    inBuddy = [(CTODAPlan *)self inBuddy];
    v9 = inBuddy ^ [equalCopy inBuddy] ^ 1;
    if (handoffToken == handoffToken2)
    {
LABEL_31:

      v29 = setupURL2;
      v4 = v36;
      v3 = v37;
      if (v27 == setupURL2)
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

- (CTODAPlan)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTODAPlan;
  v5 = [(CTPlan *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mcc"];
    mcc = v5->_mcc;
    v5->_mcc = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mnc"];
    mnc = v5->_mnc;
    v5->_mnc = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gid1"];
    gid1 = v5->_gid1;
    v5->_gid1 = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gid2"];
    gid2 = v5->_gid2;
    v5->_gid2 = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"setupURL"];
    setupURL = v5->_setupURL;
    v5->_setupURL = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handoffToken"];
    handoffToken = v5->_handoffToken;
    v5->_handoffToken = v16;

    v5->_inBuddy = [coderCopy decodeBoolForKey:@"inBuddy"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CTODAPlan;
  coderCopy = coder;
  [(CTPlan *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_mcc forKey:{@"mcc", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_mnc forKey:@"mnc"];
  [coderCopy encodeObject:self->_gid1 forKey:@"gid1"];
  [coderCopy encodeObject:self->_gid2 forKey:@"gid2"];
  [coderCopy encodeObject:self->_setupURL forKey:@"setupURL"];
  [coderCopy encodeObject:self->_handoffToken forKey:@"handoffToken"];
  [coderCopy encodeBool:self->_inBuddy forKey:@"inBuddy"];
}

@end