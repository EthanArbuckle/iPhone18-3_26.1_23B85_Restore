@interface CTPNRContextInfo
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToPNRContextInfo:(id)info;
- (CTPNRContextInfo)init;
- (CTPNRContextInfo)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPNRContextInfo

- (CTPNRContextInfo)init
{
  v5.receiver = self;
  v5.super_class = CTPNRContextInfo;
  v2 = [(CTPNRContextInfo *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CTPNRContextInfo *)v2 setIsReady:0];
  }

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", isReady=%d", -[CTPNRContextInfo isReady](self, "isReady")];
  plmn = [(CTPNRContextInfo *)self plmn];
  [v3 appendFormat:@", plmn=%@", plmn];

  imsi = [(CTPNRContextInfo *)self imsi];
  [v3 appendFormat:@", imsi=%@", imsi];

  phoneNumber = [(CTPNRContextInfo *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber=%@", phoneNumber];

  phoneNumberOnSIM = [(CTPNRContextInfo *)self phoneNumberOnSIM];
  [v3 appendFormat:@", phoneNumberOnSIM=%@", phoneNumberOnSIM];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToPNRContextInfo:(id)info
{
  infoCopy = info;
  isReady = [(CTPNRContextInfo *)self isReady];
  if (isReady != [infoCopy isReady])
  {
    v10 = 0;
    goto LABEL_43;
  }

  imsi = [(CTPNRContextInfo *)self imsi];
  if (!imsi)
  {
    imsi2 = [infoCopy imsi];
    if (!imsi2)
    {
      v31 = 0;
      goto LABEL_9;
    }
  }

  imsi3 = [(CTPNRContextInfo *)self imsi];
  imsi4 = [infoCopy imsi];
  if ([imsi3 isEqualToString:imsi4])
  {
    v31 = 1;
LABEL_9:
    plmn = [(CTPNRContextInfo *)self plmn];
    if (plmn || ([infoCopy plmn], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      plmn2 = [(CTPNRContextInfo *)self plmn];
      plmn3 = [infoCopy plmn];
      if (![plmn2 isEqualToString:?])
      {
        v10 = 0;
        goto LABEL_35;
      }

      v26 = plmn2;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    phoneNumber = [(CTPNRContextInfo *)self phoneNumber];
    if (phoneNumber || ([infoCopy phoneNumber], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      phoneNumber2 = [(CTPNRContextInfo *)self phoneNumber];
      phoneNumber3 = [infoCopy phoneNumber];
      v28 = phoneNumber2;
      if (![phoneNumber2 isEqualToString:?])
      {
        v10 = 0;
LABEL_30:

        goto LABEL_31;
      }

      v24 = v3;
      v25 = 1;
    }

    else
    {
      v24 = v3;
      v22 = 0;
      v25 = 0;
    }

    phoneNumberOnSIM = [(CTPNRContextInfo *)self phoneNumberOnSIM];
    if (phoneNumberOnSIM || ([infoCopy phoneNumberOnSIM], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = imsi2;
      phoneNumberOnSIM2 = [(CTPNRContextInfo *)self phoneNumberOnSIM];
      phoneNumberOnSIM3 = [infoCopy phoneNumberOnSIM];
      v10 = [phoneNumberOnSIM2 isEqualToString:phoneNumberOnSIM3];

      if (phoneNumberOnSIM)
      {

        if (v25)
        {
          imsi2 = v23;
          v3 = v24;
          goto LABEL_30;
        }

        imsi2 = v23;
        v3 = v24;
LABEL_31:
        if (!phoneNumber)
        {
        }

        if (!v29)
        {
          goto LABEL_36;
        }

        plmn2 = v26;
LABEL_35:

LABEL_36:
        if (!plmn)
        {
        }

        if (v31)
        {
        }

        goto LABEL_40;
      }

      imsi2 = v23;
      v19 = v21;
    }

    else
    {
      v19 = 0;
      v10 = 1;
    }

    v3 = v24;
    if (v25)
    {
      goto LABEL_30;
    }

    goto LABEL_31;
  }

  v10 = 0;
LABEL_40:
  if (!imsi)
  {
  }

LABEL_43:
  return v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTPNRContextInfo *)self isEqualToPNRContextInfo:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTPNRContextInfo allocWithZone:zone];
  [(CTPNRContextInfo *)v4 setIsReady:self->_isReady];
  [(CTPNRContextInfo *)v4 setImsi:self->_imsi];
  [(CTPNRContextInfo *)v4 setPlmn:self->_plmn];
  [(CTPNRContextInfo *)v4 setPhoneNumber:self->_phoneNumber];
  [(CTPNRContextInfo *)v4 setPhoneNumberOnSIM:self->_phoneNumberOnSIM];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  isReady = self->_isReady;
  coderCopy = coder;
  [coderCopy encodeBool:isReady forKey:@"registered"];
  [coderCopy encodeObject:self->_plmn forKey:@"plmn"];
  [coderCopy encodeObject:self->_imsi forKey:@"imsi"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phone_number"];
  [coderCopy encodeObject:self->_phoneNumberOnSIM forKey:@"phone_number_on_sim"];
}

- (CTPNRContextInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = CTPNRContextInfo;
  v5 = [(CTPNRContextInfo *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"plmn"];
    plmn = v5->_plmn;
    v5->_plmn = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"imsi"];
    imsi = v5->_imsi;
    v5->_imsi = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phone_number"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phone_number_on_sim"];
    phoneNumberOnSIM = v5->_phoneNumberOnSIM;
    v5->_phoneNumberOnSIM = v12;

    v5->_isReady = [coderCopy decodeBoolForKey:@"registered"];
  }

  return v5;
}

@end