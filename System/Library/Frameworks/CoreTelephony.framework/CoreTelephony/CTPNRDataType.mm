@interface CTPNRDataType
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTPNRDataType:(id)type;
- (CTPNRDataType)init;
- (CTPNRDataType)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTPNRDataType

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  [v3 appendFormat:@", mechanism=%ld", -[CTPNRDataType pnrMechanism](self, "pnrMechanism")];
  svcCenterAddr = [(CTPNRDataType *)self svcCenterAddr];
  [v3 appendFormat:@", serviceCenter=%@", svcCenterAddr];

  destAddr = [(CTPNRDataType *)self destAddr];
  [v3 appendFormat:@", destination=%@", destAddr];

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

- (BOOL)isEqualToCTPNRDataType:(id)type
{
  typeCopy = type;
  if (!typeCopy || (v9 = -[CTPNRDataType pnrMechanism](self, "pnrMechanism"), v9 != [typeCopy pnrMechanism]))
  {
    v12 = 0;
    goto LABEL_18;
  }

  svcCenterAddr = [(CTPNRDataType *)self svcCenterAddr];
  if (!svcCenterAddr)
  {
    svcCenterAddr2 = [typeCopy svcCenterAddr];
    if (!svcCenterAddr2)
    {
      v13 = 0;
      goto LABEL_10;
    }
  }

  svcCenterAddr3 = [(CTPNRDataType *)self svcCenterAddr];
  svcCenterAddr4 = [typeCopy svcCenterAddr];
  v5 = svcCenterAddr4;
  if (svcCenterAddr3 == svcCenterAddr4)
  {
    v13 = 1;
LABEL_10:
    destAddr = [(CTPNRDataType *)self destAddr];
    if (destAddr || ([typeCopy destAddr], (v6 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      destAddr2 = [(CTPNRDataType *)self destAddr];
      destAddr3 = [typeCopy destAddr];
      v12 = destAddr2 == destAddr3;

      if (destAddr)
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
  if (!svcCenterAddr)
  {
  }

LABEL_18:
  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTPNRDataType *)self isEqualToCTPNRDataType:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CTPNRDataType allocWithZone:zone];
  [(CTPNRDataType *)v4 setPnrMechanism:self->_pnrMechanism];
  [(CTPNRDataType *)v4 setSvcCenterAddr:self->_svcCenterAddr];
  [(CTPNRDataType *)v4 setDestAddr:self->_destAddr];
  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  pnrMechanism = self->_pnrMechanism;
  coderCopy = coder;
  [coderCopy encodeInteger:pnrMechanism forKey:@"pnr_mechanism"];
  [coderCopy encodeObject:self->_svcCenterAddr forKey:@"svc_center_addr"];
  [coderCopy encodeObject:self->_destAddr forKey:@"dst_addr"];
}

- (CTPNRDataType)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = CTPNRDataType;
  v5 = [(CTPNRDataType *)&v11 init];
  if (v5)
  {
    v5->_pnrMechanism = [coderCopy decodeIntegerForKey:@"pnr_mechanism"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"svc_center_addr"];
    svcCenterAddr = v5->_svcCenterAddr;
    v5->_svcCenterAddr = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dst_addr"];
    destAddr = v5->_destAddr;
    v5->_destAddr = v8;
  }

  return v5;
}

@end