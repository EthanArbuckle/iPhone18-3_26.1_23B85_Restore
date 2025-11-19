@interface CTPNRContextInfo
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToPNRContextInfo:(id)a3;
- (CTPNRContextInfo)init;
- (CTPNRContextInfo)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
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
  v4 = [(CTPNRContextInfo *)self plmn];
  [v3 appendFormat:@", plmn=%@", v4];

  v5 = [(CTPNRContextInfo *)self imsi];
  [v3 appendFormat:@", imsi=%@", v5];

  v6 = [(CTPNRContextInfo *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber=%@", v6];

  v7 = [(CTPNRContextInfo *)self phoneNumberOnSIM];
  [v3 appendFormat:@", phoneNumberOnSIM=%@", v7];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToPNRContextInfo:(id)a3
{
  v8 = a3;
  v9 = [(CTPNRContextInfo *)self isReady];
  if (v9 != [v8 isReady])
  {
    v10 = 0;
    goto LABEL_43;
  }

  v11 = [(CTPNRContextInfo *)self imsi];
  if (!v11)
  {
    v6 = [v8 imsi];
    if (!v6)
    {
      v31 = 0;
      goto LABEL_9;
    }
  }

  v4 = [(CTPNRContextInfo *)self imsi];
  v5 = [v8 imsi];
  if ([v4 isEqualToString:v5])
  {
    v31 = 1;
LABEL_9:
    v12 = [(CTPNRContextInfo *)self plmn];
    if (v12 || ([v8 plmn], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v13 = [(CTPNRContextInfo *)self plmn];
      v30 = [v8 plmn];
      if (![v13 isEqualToString:?])
      {
        v10 = 0;
        goto LABEL_35;
      }

      v26 = v13;
      v29 = 1;
    }

    else
    {
      v29 = 0;
    }

    v14 = [(CTPNRContextInfo *)self phoneNumber];
    if (v14 || ([v8 phoneNumber], (v22 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(CTPNRContextInfo *)self phoneNumber];
      v27 = [v8 phoneNumber];
      v28 = v15;
      if (![v15 isEqualToString:?])
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

    v16 = [(CTPNRContextInfo *)self phoneNumberOnSIM];
    if (v16 || ([v8 phoneNumberOnSIM], (v21 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v23 = v6;
      v17 = [(CTPNRContextInfo *)self phoneNumberOnSIM];
      v18 = [v8 phoneNumberOnSIM];
      v10 = [v17 isEqualToString:v18];

      if (v16)
      {

        if (v25)
        {
          v6 = v23;
          v3 = v24;
          goto LABEL_30;
        }

        v6 = v23;
        v3 = v24;
LABEL_31:
        if (!v14)
        {
        }

        if (!v29)
        {
          goto LABEL_36;
        }

        v13 = v26;
LABEL_35:

LABEL_36:
        if (!v12)
        {
        }

        if (v31)
        {
        }

        goto LABEL_40;
      }

      v6 = v23;
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
  if (!v11)
  {
  }

LABEL_43:
  return v10;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTPNRContextInfo *)self isEqualToPNRContextInfo:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTPNRContextInfo allocWithZone:a3];
  [(CTPNRContextInfo *)v4 setIsReady:self->_isReady];
  [(CTPNRContextInfo *)v4 setImsi:self->_imsi];
  [(CTPNRContextInfo *)v4 setPlmn:self->_plmn];
  [(CTPNRContextInfo *)v4 setPhoneNumber:self->_phoneNumber];
  [(CTPNRContextInfo *)v4 setPhoneNumberOnSIM:self->_phoneNumberOnSIM];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  isReady = self->_isReady;
  v5 = a3;
  [v5 encodeBool:isReady forKey:@"registered"];
  [v5 encodeObject:self->_plmn forKey:@"plmn"];
  [v5 encodeObject:self->_imsi forKey:@"imsi"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phone_number"];
  [v5 encodeObject:self->_phoneNumberOnSIM forKey:@"phone_number_on_sim"];
}

- (CTPNRContextInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = CTPNRContextInfo;
  v5 = [(CTPNRContextInfo *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"plmn"];
    plmn = v5->_plmn;
    v5->_plmn = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"imsi"];
    imsi = v5->_imsi;
    v5->_imsi = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phone_number"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phone_number_on_sim"];
    phoneNumberOnSIM = v5->_phoneNumberOnSIM;
    v5->_phoneNumberOnSIM = v12;

    v5->_isReady = [v4 decodeBoolForKey:@"registered"];
  }

  return v5;
}

@end