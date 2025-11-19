@interface CTPNRDataType
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTPNRDataType:(id)a3;
- (CTPNRDataType)init;
- (CTPNRDataType)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTPNRDataType

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", mechanism=%ld", -[CTPNRDataType pnrMechanism](self, "pnrMechanism")];
  v4 = [(CTPNRDataType *)self svcCenterAddr];
  [v3 appendFormat:@", serviceCenter=%@", v4];

  v5 = [(CTPNRDataType *)self destAddr];
  [v3 appendFormat:@", destination=%@", v5];

  [v3 appendString:@">"];

  return v3;
}

- (CTPNRDataType)init
{
  v3.receiver = self;
  v3.super_class = CTPNRDataType;
  result = [(CTPNRDataType *)&v3 init];
  if (result)
  {
    result->_pnrMechanism = 0;
  }

  return result;
}

- (BOOL)isEqualToCTPNRDataType:(id)a3
{
  v8 = a3;
  if (!v8 || (v9 = -[CTPNRDataType pnrMechanism](self, "pnrMechanism"), v9 != [v8 pnrMechanism]))
  {
    v12 = 0;
    goto LABEL_18;
  }

  v10 = [(CTPNRDataType *)self svcCenterAddr];
  if (!v10)
  {
    v3 = [v8 svcCenterAddr];
    if (!v3)
    {
      v13 = 0;
      goto LABEL_10;
    }
  }

  v4 = [(CTPNRDataType *)self svcCenterAddr];
  v11 = [v8 svcCenterAddr];
  v5 = v11;
  if (v4 == v11)
  {
    v13 = 1;
LABEL_10:
    v14 = [(CTPNRDataType *)self destAddr];
    if (v14 || ([v8 destAddr], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v15 = [(CTPNRDataType *)self destAddr];
      v16 = [v8 destAddr];
      v12 = v15 == v16;

      if (v14)
      {

        if (!v13)
        {
          goto LABEL_15;
        }

LABEL_14:

        goto LABEL_15;
      }
    }

    else
    {
      v12 = 1;
    }

    if ((v13 & 1) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v12 = 0;
LABEL_15:
  if (!v10)
  {
  }

LABEL_18:
  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTPNRDataType *)self isEqualToCTPNRDataType:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CTPNRDataType allocWithZone:a3];
  [(CTPNRDataType *)v4 setPnrMechanism:self->_pnrMechanism];
  [(CTPNRDataType *)v4 setSvcCenterAddr:self->_svcCenterAddr];
  [(CTPNRDataType *)v4 setDestAddr:self->_destAddr];
  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  pnrMechanism = self->_pnrMechanism;
  v5 = a3;
  [v5 encodeInteger:pnrMechanism forKey:@"pnr_mechanism"];
  [v5 encodeObject:self->_svcCenterAddr forKey:@"svc_center_addr"];
  [v5 encodeObject:self->_destAddr forKey:@"dst_addr"];
}

- (CTPNRDataType)initWithCoder:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CTPNRDataType;
  v5 = [(CTPNRDataType *)&v11 init];
  if (v5)
  {
    v5->_pnrMechanism = [v4 decodeIntegerForKey:@"pnr_mechanism"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"svc_center_addr"];
    svcCenterAddr = v5->_svcCenterAddr;
    v5->_svcCenterAddr = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"dst_addr"];
    destAddr = v5->_destAddr;
    v5->_destAddr = v8;
  }

  return v5;
}

@end