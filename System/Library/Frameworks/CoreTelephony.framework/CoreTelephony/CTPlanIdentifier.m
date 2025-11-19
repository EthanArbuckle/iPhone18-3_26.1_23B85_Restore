@interface CTPlanIdentifier
- (BOOL)isEqual:(id)a3;
- (CTPlanIdentifier)initWithCoder:(id)a3;
- (CTPlanIdentifier)initWithIccid:(id)a3 carrierName:(id)a4 phoneNumber:(id)a5 countryCode:(id)a6 label:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPlanIdentifier

- (CTPlanIdentifier)initWithIccid:(id)a3 carrierName:(id)a4 phoneNumber:(id)a5 countryCode:(id)a6 label:(id)a7 mcc:(id)a8 mnc:(id)a9 gid1:(id)a10 gid2:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v46.receiver = self;
  v46.super_class = CTPlanIdentifier;
  v26 = [(CTPlanIdentifier *)&v46 init];
  if (v26)
  {
    v27 = [v17 copy];
    iccid = v26->_iccid;
    v26->_iccid = v27;

    v29 = [v18 copy];
    carrierName = v26->_carrierName;
    v26->_carrierName = v29;

    v31 = [v19 copy];
    phoneNumber = v26->_phoneNumber;
    v26->_phoneNumber = v31;

    v33 = [v20 copy];
    countryCode = v26->_countryCode;
    v26->_countryCode = v33;

    v35 = [v21 copy];
    label = v26->_label;
    v26->_label = v35;

    v37 = [v22 copy];
    mcc = v26->_mcc;
    v26->_mcc = v37;

    v39 = [v23 copy];
    mnc = v26->_mnc;
    v26->_mnc = v39;

    v41 = [v24 copy];
    gid1 = v26->_gid1;
    v26->_gid1 = v41;

    v43 = [v25 copy];
    gid2 = v26->_gid2;
    v26->_gid2 = v43;
  }

  return v26;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTPlanIdentifier *)self iccid];
  [v3 appendFormat:@" iccid=%@", v4];

  v5 = [(CTPlanIdentifier *)self carrierName];
  [v3 appendFormat:@" carrierName=%@", v5];

  v6 = [(CTPlanIdentifier *)self phoneNumber];
  [v3 appendFormat:@" phoneNumber=%@", v6];

  v7 = [(CTPlanIdentifier *)self countryCode];
  [v3 appendFormat:@" countryCode=%@", v7];

  v8 = [(CTPlanIdentifier *)self label];
  [v3 appendFormat:@" label=%@", v8];

  v9 = [(CTPlanIdentifier *)self mcc];
  [v3 appendFormat:@" mcc=%@", v9];

  v10 = [(CTPlanIdentifier *)self mnc];
  [v3 appendFormat:@" mnc=%@", v10];

  v11 = [(CTPlanIdentifier *)self gid1];
  [v3 appendFormat:@" gid1=%@", v11];

  v12 = [(CTPlanIdentifier *)self gid2];
  [v3 appendFormat:@" gid2=%@", v12];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v5 = a3;
  if (v5 == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = [(CTPlanIdentifier *)self iccid];
      v7 = [(CTPlanIdentifier *)v5 iccid];
      if (v6 != v7)
      {
        v8 = [(CTPlanIdentifier *)self iccid];
        v3 = [(CTPlanIdentifier *)v5 iccid];
        v64 = v8;
        if (![v8 isEqualToString:v3])
        {
          v9 = 0;
          goto LABEL_49;
        }
      }

      v10 = [(CTPlanIdentifier *)self carrierName];
      v11 = [(CTPlanIdentifier *)v5 carrierName];
      if (v10 != v11)
      {
        v12 = [(CTPlanIdentifier *)self carrierName];
        v13 = [(CTPlanIdentifier *)v5 carrierName];
        if (![v12 isEqualToString:v13])
        {
          v9 = 0;
LABEL_47:

LABEL_48:
          if (v6 == v7)
          {
LABEL_50:

            goto LABEL_51;
          }

LABEL_49:

          goto LABEL_50;
        }

        v61 = v13;
        v62 = v12;
      }

      v14 = [(CTPlanIdentifier *)self phoneNumber];
      v15 = [(CTPlanIdentifier *)v5 phoneNumber];
      if (v14 != v15)
      {
        v16 = v3;
        v17 = [(CTPlanIdentifier *)self phoneNumber];
        v58 = [(CTPlanIdentifier *)v5 phoneNumber];
        v59 = v17;
        if (![v17 isEqualToString:?])
        {
          v9 = 0;
          v3 = v16;
LABEL_45:

LABEL_46:
          v13 = v61;
          v12 = v62;
          if (v10 == v11)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        v3 = v16;
      }

      v18 = [(CTPlanIdentifier *)self countryCode];
      v60 = [(CTPlanIdentifier *)v5 countryCode];
      v63 = v18;
      if (v18 != v60)
      {
        v19 = [(CTPlanIdentifier *)self countryCode];
        v54 = [(CTPlanIdentifier *)v5 countryCode];
        v55 = v19;
        if (![v19 isEqualToString:?])
        {
          v9 = 0;
          v20 = v60;
LABEL_43:

LABEL_44:
          if (v14 == v15)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }

      v21 = [(CTPlanIdentifier *)self label];
      v56 = [(CTPlanIdentifier *)v5 label];
      v57 = v21;
      if (v21 != v56)
      {
        v22 = [(CTPlanIdentifier *)self label];
        v50 = [(CTPlanIdentifier *)v5 label];
        v51 = v22;
        if (![v22 isEqualToString:?])
        {
          v9 = 0;
          v23 = v56;
LABEL_41:

LABEL_42:
          v20 = v60;
          if (v63 == v60)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      v24 = [(CTPlanIdentifier *)self mcc];
      v52 = [(CTPlanIdentifier *)v5 mcc];
      v53 = v24;
      if (v24 != v52)
      {
        v25 = [(CTPlanIdentifier *)self mcc];
        v46 = [(CTPlanIdentifier *)v5 mcc];
        v47 = v25;
        if (![v25 isEqualToString:?])
        {
          v9 = 0;
          v26 = v52;
LABEL_39:

LABEL_40:
          v23 = v56;
          if (v57 == v56)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      v27 = [(CTPlanIdentifier *)self mnc];
      v48 = [(CTPlanIdentifier *)v5 mnc];
      v49 = v27;
      if (v27 != v48)
      {
        v28 = [(CTPlanIdentifier *)self mnc];
        v42 = [(CTPlanIdentifier *)v5 mnc];
        v43 = v28;
        if (![v28 isEqualToString:?])
        {
          v9 = 0;
          v29 = v48;
LABEL_37:

LABEL_38:
          v26 = v52;
          if (v53 == v52)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }
      }

      v30 = [(CTPlanIdentifier *)self gid1];
      v44 = [(CTPlanIdentifier *)v5 gid1];
      v45 = v30;
      if (v30 == v44 || (-[CTPlanIdentifier gid1](self, "gid1"), v31 = objc_claimAutoreleasedReturnValue(), -[CTPlanIdentifier gid1](v5, "gid1"), v40 = objc_claimAutoreleasedReturnValue(), v41 = v31, [v31 isEqualToString:?]))
      {
        v33 = [(CTPlanIdentifier *)self gid2];
        v34 = [(CTPlanIdentifier *)v5 gid2];
        if (v33 == v34)
        {

          v9 = 1;
        }

        else
        {
          v39 = v34;
          v37 = [(CTPlanIdentifier *)self gid2];
          [(CTPlanIdentifier *)v5 gid2];
          v35 = v38 = v33;
          v9 = [v37 isEqualToString:v35];
        }

        v32 = v44;
        if (v45 == v44)
        {
LABEL_36:

          v29 = v48;
          if (v49 == v48)
          {
            goto LABEL_38;
          }

          goto LABEL_37;
        }
      }

      else
      {
        v9 = 0;
        v32 = v44;
      }

      goto LABEL_36;
    }

    v9 = 0;
  }

LABEL_51:

  return v9;
}

- (CTPlanIdentifier)initWithCoder:(id)a3
{
  v4 = a3;
  v25.receiver = self;
  v25.super_class = CTPlanIdentifier;
  v5 = [(CTPlanIdentifier *)&v25 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"carrierName"];
    carrierName = v5->_carrierName;
    v5->_carrierName = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mcc"];
    mcc = v5->_mcc;
    v5->_mcc = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"mnc"];
    mnc = v5->_mnc;
    v5->_mnc = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gid1"];
    gid1 = v5->_gid1;
    v5->_gid1 = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"gid2"];
    gid2 = v5->_gid2;
    v5->_gid2 = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  iccid = self->_iccid;
  v5 = a3;
  [v5 encodeObject:iccid forKey:@"iccid"];
  [v5 encodeObject:self->_carrierName forKey:@"carrierName"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [v5 encodeObject:self->_countryCode forKey:@"countryCode"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_mcc forKey:@"mcc"];
  [v5 encodeObject:self->_mnc forKey:@"mnc"];
  [v5 encodeObject:self->_gid1 forKey:@"gid1"];
  [v5 encodeObject:self->_gid2 forKey:@"gid2"];
}

@end