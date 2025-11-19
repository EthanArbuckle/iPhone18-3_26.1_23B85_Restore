@interface CTCellularPlanProvisioningRequest
- (BOOL)isEqual:(id)a3;
- (CTCellularPlanProvisioningRequest)init;
- (CTCellularPlanProvisioningRequest)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTCellularPlanProvisioningRequest

- (CTCellularPlanProvisioningRequest)init
{
  v11.receiver = self;
  v11.super_class = CTCellularPlanProvisioningRequest;
  v2 = [(CTCellularPlanProvisioningRequest *)&v11 init];
  v3 = v2;
  if (v2)
  {
    address = v2->_address;
    v2->_address = 0;

    matchingID = v3->_matchingID;
    v3->_matchingID = 0;

    OID = v3->_OID;
    v3->_OID = 0;

    confirmationCode = v3->_confirmationCode;
    v3->_confirmationCode = 0;

    ICCID = v3->_ICCID;
    v3->_ICCID = 0;

    EID = v3->_EID;
    v3->_EID = 0;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v17 = 1;
  }

  else if ([(CTCellularPlanProvisioningRequest *)v4 isMemberOfClass:objc_opt_class()])
  {
    address = self->_address;
    v6 = [(CTCellularPlanProvisioningRequest *)v4 address];
    if (IsEqualString(address, v6))
    {
      matchingID = self->_matchingID;
      v8 = [(CTCellularPlanProvisioningRequest *)v4 matchingID];
      if (IsEqualString(matchingID, v8))
      {
        OID = self->_OID;
        v10 = [(CTCellularPlanProvisioningRequest *)v4 OID];
        if (IsEqualString(OID, v10))
        {
          confirmationCode = self->_confirmationCode;
          v12 = [(CTCellularPlanProvisioningRequest *)v4 confirmationCode];
          if (IsEqualString(confirmationCode, v12))
          {
            ICCID = self->_ICCID;
            v14 = [(CTCellularPlanProvisioningRequest *)v4 ICCID];
            if (IsEqualString(ICCID, v14))
            {
              EID = self->_EID;
              v16 = [(CTCellularPlanProvisioningRequest *)v4 EID];
              v17 = IsEqualString(EID, v16);
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }
        }

        else
        {
          v17 = 0;
        }
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v6 = [(NSString *)self->_address copyWithZone:a3];
  [v5 setAddress:v6];

  v7 = [(NSString *)self->_matchingID copyWithZone:a3];
  [v5 setMatchingID:v7];

  v8 = [(NSString *)self->_OID copyWithZone:a3];
  [v5 setOID:v8];

  v9 = [(NSString *)self->_confirmationCode copyWithZone:a3];
  [v5 setConfirmationCode:v9];

  v10 = [(NSString *)self->_ICCID copyWithZone:a3];
  [v5 setICCID:v10];

  v11 = [(NSString *)self->_EID copyWithZone:a3];
  [v5 setEID:v11];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  address = self->_address;
  v5 = a3;
  [v5 encodeObject:address forKey:@"address"];
  [v5 encodeObject:self->_matchingID forKey:@"matchingID"];
  [v5 encodeObject:self->_OID forKey:@"OID"];
  [v5 encodeObject:self->_confirmationCode forKey:@"confirmationCode"];
  [v5 encodeObject:self->_ICCID forKey:@"ICCID"];
  [v5 encodeObject:self->_EID forKey:@"EID"];
}

- (CTCellularPlanProvisioningRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTCellularPlanProvisioningRequest;
  v5 = [(CTCellularPlanProvisioningRequest *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"matchingID"];
    matchingID = v5->_matchingID;
    v5->_matchingID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"OID"];
    OID = v5->_OID;
    v5->_OID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"confirmationCode"];
    confirmationCode = v5->_confirmationCode;
    v5->_confirmationCode = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ICCID"];
    ICCID = v5->_ICCID;
    v5->_ICCID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"EID"];
    EID = v5->_EID;
    v5->_EID = v16;
  }

  return v5;
}

@end