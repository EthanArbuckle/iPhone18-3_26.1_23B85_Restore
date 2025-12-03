@interface CTPlanIdentifier
- (BOOL)isEqual:(id)equal;
- (CTPlanIdentifier)initWithCoder:(id)coder;
- (CTPlanIdentifier)initWithIccid:(id)iccid carrierName:(id)name phoneNumber:(id)number countryCode:(id)code label:(id)label mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPlanIdentifier

- (CTPlanIdentifier)initWithIccid:(id)iccid carrierName:(id)name phoneNumber:(id)number countryCode:(id)code label:(id)label mcc:(id)mcc mnc:(id)mnc gid1:(id)self0 gid2:(id)self1
{
  iccidCopy = iccid;
  nameCopy = name;
  numberCopy = number;
  codeCopy = code;
  labelCopy = label;
  mccCopy = mcc;
  mncCopy = mnc;
  gid1Copy = gid1;
  gid2Copy = gid2;
  v46.receiver = self;
  v46.super_class = CTPlanIdentifier;
  v26 = [(CTPlanIdentifier *)&v46 init];
  if (v26)
  {
    v27 = [iccidCopy copy];
    iccid = v26->_iccid;
    v26->_iccid = v27;

    v29 = [nameCopy copy];
    carrierName = v26->_carrierName;
    v26->_carrierName = v29;

    v31 = [numberCopy copy];
    phoneNumber = v26->_phoneNumber;
    v26->_phoneNumber = v31;

    v33 = [codeCopy copy];
    countryCode = v26->_countryCode;
    v26->_countryCode = v33;

    v35 = [labelCopy copy];
    label = v26->_label;
    v26->_label = v35;

    v37 = [mccCopy copy];
    mcc = v26->_mcc;
    v26->_mcc = v37;

    v39 = [mncCopy copy];
    mnc = v26->_mnc;
    v26->_mnc = v39;

    v41 = [gid1Copy copy];
    gid1 = v26->_gid1;
    v26->_gid1 = v41;

    v43 = [gid2Copy copy];
    gid2 = v26->_gid2;
    v26->_gid2 = v43;
  }

  return v26;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  iccid = [(CTPlanIdentifier *)self iccid];
  [v3 appendFormat:@" iccid=%@", iccid];

  carrierName = [(CTPlanIdentifier *)self carrierName];
  [v3 appendFormat:@" carrierName=%@", carrierName];

  phoneNumber = [(CTPlanIdentifier *)self phoneNumber];
  [v3 appendFormat:@" phoneNumber=%@", phoneNumber];

  countryCode = [(CTPlanIdentifier *)self countryCode];
  [v3 appendFormat:@" countryCode=%@", countryCode];

  label = [(CTPlanIdentifier *)self label];
  [v3 appendFormat:@" label=%@", label];

  v9 = [(CTPlanIdentifier *)self mcc];
  [v3 appendFormat:@" mcc=%@", v9];

  v10 = [(CTPlanIdentifier *)self mnc];
  [v3 appendFormat:@" mnc=%@", v10];

  gid1 = [(CTPlanIdentifier *)self gid1];
  [v3 appendFormat:@" gid1=%@", gid1];

  gid2 = [(CTPlanIdentifier *)self gid2];
  [v3 appendFormat:@" gid2=%@", gid2];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      iccid = [(CTPlanIdentifier *)self iccid];
      iccid2 = [(CTPlanIdentifier *)equalCopy iccid];
      if (iccid != iccid2)
      {
        iccid3 = [(CTPlanIdentifier *)self iccid];
        iccid4 = [(CTPlanIdentifier *)equalCopy iccid];
        v64 = iccid3;
        if (![iccid3 isEqualToString:iccid4])
        {
          v9 = 0;
          goto LABEL_49;
        }
      }

      carrierName = [(CTPlanIdentifier *)self carrierName];
      carrierName2 = [(CTPlanIdentifier *)equalCopy carrierName];
      if (carrierName != carrierName2)
      {
        carrierName3 = [(CTPlanIdentifier *)self carrierName];
        carrierName4 = [(CTPlanIdentifier *)equalCopy carrierName];
        if (![carrierName3 isEqualToString:carrierName4])
        {
          v9 = 0;
LABEL_47:

LABEL_48:
          if (iccid == iccid2)
          {
LABEL_50:

            goto LABEL_51;
          }

LABEL_49:

          goto LABEL_50;
        }

        v61 = carrierName4;
        v62 = carrierName3;
      }

      phoneNumber = [(CTPlanIdentifier *)self phoneNumber];
      phoneNumber2 = [(CTPlanIdentifier *)equalCopy phoneNumber];
      if (phoneNumber != phoneNumber2)
      {
        v16 = iccid4;
        phoneNumber3 = [(CTPlanIdentifier *)self phoneNumber];
        phoneNumber4 = [(CTPlanIdentifier *)equalCopy phoneNumber];
        v59 = phoneNumber3;
        if (![phoneNumber3 isEqualToString:?])
        {
          v9 = 0;
          iccid4 = v16;
LABEL_45:

LABEL_46:
          carrierName4 = v61;
          carrierName3 = v62;
          if (carrierName == carrierName2)
          {
            goto LABEL_48;
          }

          goto LABEL_47;
        }

        iccid4 = v16;
      }

      countryCode = [(CTPlanIdentifier *)self countryCode];
      countryCode2 = [(CTPlanIdentifier *)equalCopy countryCode];
      v63 = countryCode;
      if (countryCode != countryCode2)
      {
        countryCode3 = [(CTPlanIdentifier *)self countryCode];
        countryCode4 = [(CTPlanIdentifier *)equalCopy countryCode];
        v55 = countryCode3;
        if (![countryCode3 isEqualToString:?])
        {
          v9 = 0;
          v20 = countryCode2;
LABEL_43:

LABEL_44:
          if (phoneNumber == phoneNumber2)
          {
            goto LABEL_46;
          }

          goto LABEL_45;
        }
      }

      label = [(CTPlanIdentifier *)self label];
      label2 = [(CTPlanIdentifier *)equalCopy label];
      v57 = label;
      if (label != label2)
      {
        label3 = [(CTPlanIdentifier *)self label];
        label4 = [(CTPlanIdentifier *)equalCopy label];
        v51 = label3;
        if (![label3 isEqualToString:?])
        {
          v9 = 0;
          v23 = label2;
LABEL_41:

LABEL_42:
          v20 = countryCode2;
          if (v63 == countryCode2)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }
      }

      v24 = [(CTPlanIdentifier *)self mcc];
      v52 = [(CTPlanIdentifier *)equalCopy mcc];
      v53 = v24;
      if (v24 != v52)
      {
        v25 = [(CTPlanIdentifier *)self mcc];
        v46 = [(CTPlanIdentifier *)equalCopy mcc];
        v47 = v25;
        if (![v25 isEqualToString:?])
        {
          v9 = 0;
          v26 = v52;
LABEL_39:

LABEL_40:
          v23 = label2;
          if (v57 == label2)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }
      }

      v27 = [(CTPlanIdentifier *)self mnc];
      v48 = [(CTPlanIdentifier *)equalCopy mnc];
      v49 = v27;
      if (v27 != v48)
      {
        v28 = [(CTPlanIdentifier *)self mnc];
        v42 = [(CTPlanIdentifier *)equalCopy mnc];
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

      gid1 = [(CTPlanIdentifier *)self gid1];
      gid12 = [(CTPlanIdentifier *)equalCopy gid1];
      v45 = gid1;
      if (gid1 == gid12 || (-[CTPlanIdentifier gid1](self, "gid1"), v31 = objc_claimAutoreleasedReturnValue(), -[CTPlanIdentifier gid1](equalCopy, "gid1"), v40 = objc_claimAutoreleasedReturnValue(), v41 = v31, [v31 isEqualToString:?]))
      {
        gid2 = [(CTPlanIdentifier *)self gid2];
        gid22 = [(CTPlanIdentifier *)equalCopy gid2];
        if (gid2 == gid22)
        {

          v9 = 1;
        }

        else
        {
          v39 = gid22;
          gid23 = [(CTPlanIdentifier *)self gid2];
          [(CTPlanIdentifier *)equalCopy gid2];
          v35 = v38 = gid2;
          v9 = [gid23 isEqualToString:v35];
        }

        v32 = gid12;
        if (v45 == gid12)
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
        v32 = gid12;
      }

      goto LABEL_36;
    }

    v9 = 0;
  }

LABEL_51:

  return v9;
}

- (CTPlanIdentifier)initWithCoder:(id)coder
{
  coderCopy = coder;
  v25.receiver = self;
  v25.super_class = CTPlanIdentifier;
  v5 = [(CTPlanIdentifier *)&v25 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"iccid"];
    iccid = v5->_iccid;
    v5->_iccid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"carrierName"];
    carrierName = v5->_carrierName;
    v5->_carrierName = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phoneNumber"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"countryCode"];
    countryCode = v5->_countryCode;
    v5->_countryCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mcc"];
    mcc = v5->_mcc;
    v5->_mcc = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"mnc"];
    mnc = v5->_mnc;
    v5->_mnc = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gid1"];
    gid1 = v5->_gid1;
    v5->_gid1 = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"gid2"];
    gid2 = v5->_gid2;
    v5->_gid2 = v22;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  iccid = self->_iccid;
  coderCopy = coder;
  [coderCopy encodeObject:iccid forKey:@"iccid"];
  [coderCopy encodeObject:self->_carrierName forKey:@"carrierName"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phoneNumber"];
  [coderCopy encodeObject:self->_countryCode forKey:@"countryCode"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_mcc forKey:@"mcc"];
  [coderCopy encodeObject:self->_mnc forKey:@"mnc"];
  [coderCopy encodeObject:self->_gid1 forKey:@"gid1"];
  [coderCopy encodeObject:self->_gid2 forKey:@"gid2"];
}

@end