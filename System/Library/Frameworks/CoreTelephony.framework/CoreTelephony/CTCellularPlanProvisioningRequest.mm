@interface CTCellularPlanProvisioningRequest
- (BOOL)isEqual:(id)equal;
- (CTCellularPlanProvisioningRequest)init;
- (CTCellularPlanProvisioningRequest)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v17 = 1;
  }

  else if ([(CTCellularPlanProvisioningRequest *)equalCopy isMemberOfClass:objc_opt_class()])
  {
    address = self->_address;
    address = [(CTCellularPlanProvisioningRequest *)equalCopy address];
    if (IsEqualString(address, address))
    {
      matchingID = self->_matchingID;
      matchingID = [(CTCellularPlanProvisioningRequest *)equalCopy matchingID];
      if (IsEqualString(matchingID, matchingID))
      {
        OID = self->_OID;
        v10 = [(CTCellularPlanProvisioningRequest *)equalCopy OID];
        if (IsEqualString(OID, v10))
        {
          confirmationCode = self->_confirmationCode;
          confirmationCode = [(CTCellularPlanProvisioningRequest *)equalCopy confirmationCode];
          if (IsEqualString(confirmationCode, confirmationCode))
          {
            ICCID = self->_ICCID;
            iCCID = [(CTCellularPlanProvisioningRequest *)equalCopy ICCID];
            if (IsEqualString(ICCID, iCCID))
            {
              EID = self->_EID;
              v16 = [(CTCellularPlanProvisioningRequest *)equalCopy EID];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_address copyWithZone:zone];
  [v5 setAddress:v6];

  v7 = [(NSString *)self->_matchingID copyWithZone:zone];
  [v5 setMatchingID:v7];

  v8 = [(NSString *)self->_OID copyWithZone:zone];
  [v5 setOID:v8];

  v9 = [(NSString *)self->_confirmationCode copyWithZone:zone];
  [v5 setConfirmationCode:v9];

  v10 = [(NSString *)self->_ICCID copyWithZone:zone];
  [v5 setICCID:v10];

  v11 = [(NSString *)self->_EID copyWithZone:zone];
  [v5 setEID:v11];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  address = self->_address;
  coderCopy = coder;
  [coderCopy encodeObject:address forKey:@"address"];
  [coderCopy encodeObject:self->_matchingID forKey:@"matchingID"];
  [coderCopy encodeObject:self->_OID forKey:@"OID"];
  [coderCopy encodeObject:self->_confirmationCode forKey:@"confirmationCode"];
  [coderCopy encodeObject:self->_ICCID forKey:@"ICCID"];
  [coderCopy encodeObject:self->_EID forKey:@"EID"];
}

- (CTCellularPlanProvisioningRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTCellularPlanProvisioningRequest;
  v5 = [(CTCellularPlanProvisioningRequest *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"address"];
    address = v5->_address;
    v5->_address = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"matchingID"];
    matchingID = v5->_matchingID;
    v5->_matchingID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"OID"];
    OID = v5->_OID;
    v5->_OID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"confirmationCode"];
    confirmationCode = v5->_confirmationCode;
    v5->_confirmationCode = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ICCID"];
    ICCID = v5->_ICCID;
    v5->_ICCID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"EID"];
    EID = v5->_EID;
    v5->_EID = v16;
  }

  return v5;
}

@end