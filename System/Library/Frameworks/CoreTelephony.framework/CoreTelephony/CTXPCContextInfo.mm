@interface CTXPCContextInfo
+ (id)contextWithUUID:(id)d andAccountID:(id)iD andSlot:(int64_t)slot;
- (BOOL)isEqual:(id)equal;
- (CTXPCContextInfo)initWithCoder:(id)coder;
- (CTXPCContextInfo)initWithUUID:(id)d andAccountID:(id)iD andSlot:(int64_t)slot;
- (id)context;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTXPCContextInfo

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  uuid = [(CTXPCContextInfo *)self uuid];
  [v3 appendFormat:@", uuid=%@", uuid];

  accountID = [(CTXPCContextInfo *)self accountID];
  [v3 appendFormat:@", accountID=%@", accountID];

  slotID = [(CTXPCContextInfo *)self slotID];
  v7 = "CTSubscriptionSlotUnknown";
  if (slotID == 2)
  {
    v7 = "CTSubscriptionSlotTwo";
  }

  if (slotID == 1)
  {
    v7 = "CTSubscriptionSlotOne";
  }

  [v3 appendFormat:@", slotID=%s", v7];
  labelID = [(CTXPCContextInfo *)self labelID];
  [v3 appendFormat:@", labelID=%@", labelID];

  label = [(CTXPCContextInfo *)self label];
  [v3 appendFormat:@", label=%@", label];

  phoneNumber = [(CTXPCContextInfo *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber=%@", phoneNumber];

  [v3 appendString:@">"];

  return v3;
}

- (id)context
{
  v2 = [[CTXPCServiceSubscriptionContext alloc] initWithUUID:self->_uuid andSlot:self->_slotID];

  return v2;
}

- (CTXPCContextInfo)initWithUUID:(id)d andAccountID:(id)iD andSlot:(int64_t)slot
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = CTXPCContextInfo;
  v11 = [(CTXPCContextInfo *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_uuid, d);
    objc_storeStrong(&v12->_accountID, iD);
    v12->_slotID = slot;
  }

  return v12;
}

+ (id)contextWithUUID:(id)d andAccountID:(id)iD andSlot:(int64_t)slot
{
  iDCopy = iD;
  dCopy = d;
  v9 = [[CTXPCContextInfo alloc] initWithUUID:dCopy andAccountID:iDCopy andSlot:slot];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v13 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      uuid = [(CTXPCContextInfo *)self uuid];
      uuid2 = [(CTXPCContextInfo *)equalCopy uuid];
      if (![uuid isEqual:uuid2])
      {
        v13 = 0;
LABEL_54:

        goto LABEL_55;
      }

      accountID = [(CTXPCContextInfo *)self accountID];
      accountID2 = [(CTXPCContextInfo *)equalCopy accountID];
      if (![accountID isEqual:accountID2] || (v11 = -[CTXPCContextInfo slotID](self, "slotID"), v11 != -[CTXPCContextInfo slotID](equalCopy, "slotID")))
      {
        v13 = 0;
LABEL_53:

        goto LABEL_54;
      }

      labelID = [(CTXPCContextInfo *)self labelID];
      if (labelID && (-[CTXPCContextInfo labelID](self, "labelID"), v3 = objc_claimAutoreleasedReturnValue(), -[CTXPCContextInfo labelID](equalCopy, "labelID"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqual:v4] & 1) != 0))
      {
        v36 = 0;
      }

      else
      {
        labelID2 = [(CTXPCContextInfo *)self labelID];
        if (labelID2)
        {
          v13 = 0;
LABEL_49:

          goto LABEL_50;
        }

        labelID3 = [(CTXPCContextInfo *)equalCopy labelID];
        if (labelID3)
        {

          v13 = 0;
LABEL_50:
          if (labelID)
          {
          }

          goto LABEL_53;
        }

        v36 = 1;
      }

      label = [(CTXPCContextInfo *)self label];
      v17 = label;
      if (label)
      {
        v33 = labelID;
        v18 = label;
        v19 = v4;
        label2 = [(CTXPCContextInfo *)self label];
        [(CTXPCContextInfo *)equalCopy label];
        v35 = v34 = label2;
        if ([label2 isEqual:?])
        {
          v32 = v3;
          v31 = 0;
          v4 = v19;
          v17 = v18;
          labelID = v33;
          goto LABEL_28;
        }

        v4 = v19;
        v17 = v18;
        labelID = v33;
      }

      label3 = [(CTXPCContextInfo *)self label];
      if (label3)
      {
        v13 = 0;
        goto LABEL_41;
      }

      label4 = [(CTXPCContextInfo *)equalCopy label];
      if (label4)
      {

        v13 = 0;
        goto LABEL_45;
      }

      v32 = v3;
      v31 = 1;
LABEL_28:
      phoneNumber = [(CTXPCContextInfo *)self phoneNumber];
      v24 = phoneNumber;
      if (phoneNumber)
      {
        v29 = phoneNumber;
        phoneNumber2 = [(CTXPCContextInfo *)self phoneNumber];
        [(CTXPCContextInfo *)equalCopy phoneNumber];
        v30 = v33 = phoneNumber2;
        if ([phoneNumber2 isEqual:?])
        {
          v13 = 1;
          v24 = v29;
LABEL_35:

          if (v31)
          {
            label3 = 0;
            v3 = v32;
            goto LABEL_41;
          }

          v3 = v32;
          goto LABEL_45;
        }

        v24 = v29;
      }

      phoneNumber3 = [(CTXPCContextInfo *)self phoneNumber];
      if (phoneNumber3)
      {

        v13 = 0;
        if (v24)
        {
          goto LABEL_35;
        }
      }

      else
      {
        phoneNumber4 = [(CTXPCContextInfo *)equalCopy phoneNumber];
        v13 = phoneNumber4 == 0;

        if (v24)
        {
          goto LABEL_35;
        }
      }

      v3 = v32;
      if (v31)
      {
        label3 = 0;
LABEL_41:

        if (v17)
        {
        }

        if (!v36)
        {
          goto LABEL_50;
        }

        goto LABEL_48;
      }

LABEL_45:
      if (v17)
      {
      }

      if ((v36 & 1) == 0)
      {
        goto LABEL_50;
      }

LABEL_48:
      labelID2 = 0;
      goto LABEL_49;
    }

    v13 = 0;
  }

LABEL_55:

  return v13;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uuid = [(CTXPCContextInfo *)self uuid];
  accountID = [(CTXPCContextInfo *)self accountID];
  v7 = [v4 initWithUUID:uuid andAccountID:accountID andSlot:{-[CTXPCContextInfo slotID](self, "slotID")}];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  uuid = self->_uuid;
  coderCopy = coder;
  [coderCopy encodeObject:uuid forKey:@"uuid"];
  [coderCopy encodeObject:self->_accountID forKey:@"account_id"];
  [coderCopy encodeInteger:self->_slotID forKey:@"slot_id"];
  [coderCopy encodeObject:self->_labelID forKey:@"label_id"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phone_number"];
}

- (CTXPCContextInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = CTXPCContextInfo;
  v5 = [(CTXPCContextInfo *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"account_id"];
    accountID = v5->_accountID;
    v5->_accountID = v8;

    v5->_slotID = [coderCopy decodeIntegerForKey:@"slot_id"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label_id"];
    labelID = v5->_labelID;
    v5->_labelID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phone_number"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v14;
  }

  return v5;
}

@end