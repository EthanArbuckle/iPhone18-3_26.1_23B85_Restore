@interface CTXPCServiceSubscriptionContext
+ (CTXPCServiceSubscriptionContext)contextWithServiceDescriptor:(id)descriptor;
+ (CTXPCServiceSubscriptionContext)contextWithSlot:(int64_t)slot;
+ (CTXPCServiceSubscriptionContext)contextWithUUID:(id)d;
+ (CTXPCServiceSubscriptionContext)contextWithXPCContextInfo:(id)info;
- (BOOL)isEqual:(id)equal;
- (CTXPCServiceSubscriptionContext)initWithCoder:(id)coder;
- (CTXPCServiceSubscriptionContext)initWithSlot:(int64_t)slot;
- (CTXPCServiceSubscriptionContext)initWithUUID:(id)d andSlot:(int64_t)slot;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTXPCServiceSubscriptionContext

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  ct_shortName = [(CTXPCServiceSubscriptionContext *)self ct_shortName];
  if ([(CTXPCServiceSubscriptionContext *)self slotID])
  {
    slotID = [(CTXPCServiceSubscriptionContext *)self slotID];
    v6 = @"???";
    if (slotID == 2)
    {
      v6 = @"two";
    }

    if (slotID == 1)
    {
      v6 = @"one";
    }

    v7 = [v3 stringWithFormat:@"<%@ id=%@>", ct_shortName, v6];
  }

  else
  {
    uuid = [(CTXPCServiceSubscriptionContext *)self uuid];
    uUIDString = [uuid UUIDString];
    v7 = [v3 stringWithFormat:@"<%@ id=%@>", ct_shortName, uUIDString];
  }

  return v7;
}

- (id)redactedDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  slotID = [(CTXPCServiceSubscriptionContext *)self slotID];
  v5 = "CTSubscriptionSlotUnknown";
  if (slotID == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (slotID == 1)
  {
    v5 = "CTSubscriptionSlotOne";
  }

  [v3 appendFormat:@" slotID=%s", v5];
  userDataPreferred = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
  [v3 appendFormat:@", [userDataPreferred=%@", userDataPreferred];

  userDefaultVoice = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
  [v3 appendFormat:@", userDefaultVoice=%@", userDefaultVoice];

  isSimPresent = [(CTXPCServiceSubscriptionContext *)self isSimPresent];
  v9 = "absent";
  if (isSimPresent)
  {
    v9 = "present";
  }

  objc_msgSend(v3, "appendFormat:", @", SIM:(%s"), v9;
  isSimGood = [(CTXPCServiceSubscriptionContext *)self isSimGood];
  v11 = "bad";
  if (isSimGood)
  {
    v11 = "good";
  }

  [v3 appendFormat:@", %s", v11];
  isSimHidden = [(CTXPCServiceSubscriptionContext *)self isSimHidden];
  v13 = "exposed";
  if (isSimHidden)
  {
    v13 = "hidden";
  }

  [v3 appendFormat:@", %s", v13];
  isSimDataOnly = [(CTXPCServiceSubscriptionContext *)self isSimDataOnly];
  v15 = "voice+data";
  if (isSimDataOnly)
  {
    v15 = "dataonly";
  }

  [v3 appendFormat:@", %s]"], v15);
  [v3 appendString:@">"];

  return v3;
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  slotID = [(CTXPCServiceSubscriptionContext *)self slotID];
  v5 = "CTSubscriptionSlotUnknown";
  if (slotID == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (slotID == 1)
  {
    v5 = "CTSubscriptionSlotOne";
  }

  [v3 appendFormat:@" slotID=%s", v5];
  uuid = [(CTXPCServiceSubscriptionContext *)self uuid];
  [v3 appendFormat:@", uuid=%@", uuid];

  labelID = [(CTXPCServiceSubscriptionContext *)self labelID];
  [v3 appendFormat:@", labelID=%@", labelID];

  label = [(CTXPCServiceSubscriptionContext *)self label];
  [v3 appendFormat:@", label=%@", label];

  phoneNumber = [(CTXPCServiceSubscriptionContext *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber=%@", phoneNumber];

  userDataPreferred = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
  [v3 appendFormat:@", [userDataPreferred=%@", userDataPreferred];

  userDefaultVoice = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
  [v3 appendFormat:@", userDefaultVoice=%@", userDefaultVoice];

  isSimPresent = [(CTXPCServiceSubscriptionContext *)self isSimPresent];
  v13 = "absent";
  if (isSimPresent)
  {
    v13 = "present";
  }

  objc_msgSend(v3, "appendFormat:", @", SIM:(%s"), v13;
  isSimGood = [(CTXPCServiceSubscriptionContext *)self isSimGood];
  v15 = "bad";
  if (isSimGood)
  {
    v15 = "good";
  }

  [v3 appendFormat:@", %s", v15];
  isSimHidden = [(CTXPCServiceSubscriptionContext *)self isSimHidden];
  v17 = "exposed";
  if (isSimHidden)
  {
    v17 = "hidden";
  }

  [v3 appendFormat:@", %s", v17];
  isSimDataOnly = [(CTXPCServiceSubscriptionContext *)self isSimDataOnly];
  v19 = "voice+data";
  if (isSimDataOnly)
  {
    v19 = "dataonly";
  }

  [v3 appendFormat:@", %s]"], v19);
  [v3 appendString:@">"];

  return v3;
}

- (CTXPCServiceSubscriptionContext)initWithSlot:(int64_t)slot
{
  v5 = CTSubscriptionSlotAsUUID(slot);
  v6 = [(CTXPCServiceSubscriptionContext *)self initWithUUID:v5 andSlot:slot];

  return v6;
}

+ (CTXPCServiceSubscriptionContext)contextWithSlot:(int64_t)slot
{
  v3 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:slot];

  return v3;
}

+ (CTXPCServiceSubscriptionContext)contextWithUUID:(id)d
{
  dCopy = d;
  v4 = [[CTXPCServiceSubscriptionContext alloc] initWithUUID:dCopy];

  return v4;
}

- (CTXPCServiceSubscriptionContext)initWithUUID:(id)d andSlot:(int64_t)slot
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = CTXPCServiceSubscriptionContext;
  v8 = [(CTXPCServiceSubscriptionContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuid, d);
    v9->_slotID = slot;
    *&v9->_isSimPresent = 256;
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      slotID = [(CTXPCServiceSubscriptionContext *)self slotID];
      if (slotID == [(CTXPCServiceSubscriptionContext *)equalCopy slotID])
      {
        uuid = [(CTXPCServiceSubscriptionContext *)self uuid];
        uuid2 = [(CTXPCServiceSubscriptionContext *)equalCopy uuid];
        if (![uuid isEqual:uuid2])
        {
          LOBYTE(v13) = 0;
LABEL_91:

          goto LABEL_92;
        }

        labelID = [(CTXPCServiceSubscriptionContext *)self labelID];
        if (labelID && (-[CTXPCServiceSubscriptionContext labelID](self, "labelID"), v3 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext labelID](equalCopy, "labelID"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqual:v4] & 1) != 0))
        {
          v12 = 0;
        }

        else
        {
          labelID2 = [(CTXPCServiceSubscriptionContext *)self labelID];
          if (labelID2)
          {
            LOBYTE(v13) = 0;
LABEL_87:

            goto LABEL_88;
          }

          labelID3 = [(CTXPCServiceSubscriptionContext *)equalCopy labelID];
          if (labelID3)
          {

LABEL_48:
            LOBYTE(v13) = 0;
            goto LABEL_88;
          }

          v12 = 1;
        }

        label = [(CTXPCServiceSubscriptionContext *)self label];
        if (label && (-[CTXPCServiceSubscriptionContext label](self, "label"), userDataPreferred2 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext label](equalCopy, "label"), v48 = userDataPreferred2, v47 = objc_claimAutoreleasedReturnValue(), ([userDataPreferred2 isEqual:v47] & 1) != 0))
        {
          v45 = 0;
          v46 = v12;
        }

        else
        {
          label2 = [(CTXPCServiceSubscriptionContext *)self label];
          if (label2)
          {
            LOBYTE(v13) = 0;
            goto LABEL_83;
          }

          label3 = [(CTXPCServiceSubscriptionContext *)equalCopy label];
          if (label3)
          {

            if (!label)
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          v45 = 1;
          v46 = v12;
        }

        phoneNumber = [(CTXPCServiceSubscriptionContext *)self phoneNumber];
        if (phoneNumber && (-[CTXPCServiceSubscriptionContext phoneNumber](self, "phoneNumber"), userDataPreferred2 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext phoneNumber](equalCopy, "phoneNumber"), v43 = objc_claimAutoreleasedReturnValue(), v44 = userDataPreferred2, ([userDataPreferred2 isEqual:v43] & 1) != 0))
        {
          v41 = 0;
        }

        else
        {
          phoneNumber2 = [(CTXPCServiceSubscriptionContext *)self phoneNumber];
          if (phoneNumber2)
          {
            LOBYTE(v13) = 0;
            goto LABEL_78;
          }

          phoneNumber3 = [(CTXPCServiceSubscriptionContext *)equalCopy phoneNumber];
          if (phoneNumber3)
          {

            if (!phoneNumber)
            {
LABEL_45:
              if (!label)
              {
LABEL_47:

                goto LABEL_48;
              }

LABEL_46:

              goto LABEL_47;
            }

LABEL_43:

LABEL_44:
            goto LABEL_45;
          }

          v41 = 1;
        }

        userDataPreferred = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
        if (userDataPreferred)
        {
          userDataPreferred2 = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
          userDataPreferred3 = [(CTXPCServiceSubscriptionContext *)equalCopy userDataPreferred];
          v40 = userDataPreferred2;
          if ([userDataPreferred2 isEqual:userDataPreferred3])
          {
            v37 = 0;
LABEL_50:
            userDefaultVoice = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
            if (userDefaultVoice && (-[CTXPCServiceSubscriptionContext userDefaultVoice](self, "userDefaultVoice"), userDataPreferred2 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext userDefaultVoice](equalCopy, "userDefaultVoice"), v36 = objc_claimAutoreleasedReturnValue(), ([userDataPreferred2 isEqual:?] & 1) != 0))
            {
              v35 = 0;
            }

            else
            {
              userDefaultVoice2 = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
              if (userDefaultVoice2)
              {
LABEL_63:

                v26 = userDefaultVoice;
                if (userDefaultVoice)
                {

                  v26 = userDefaultVoice;
                }

                LOBYTE(v13) = 0;
LABEL_66:

                if (!v37)
                {
                  goto LABEL_74;
                }

LABEL_72:
                userDataPreferred4 = 0;
                goto LABEL_73;
              }

              userDefaultVoice3 = [(CTXPCServiceSubscriptionContext *)equalCopy userDefaultVoice];
              if (userDefaultVoice3)
              {
                LOBYTE(v13) = 0;
                goto LABEL_56;
              }

              v35 = 1;
            }

            isSimPresent = [(CTXPCServiceSubscriptionContext *)self isSimPresent];
            if (isSimPresent != [(CTXPCServiceSubscriptionContext *)equalCopy isSimPresent]|| (v33 = [(CTXPCServiceSubscriptionContext *)self isSimGood], v33 != [(CTXPCServiceSubscriptionContext *)equalCopy isSimGood]) || (v34 = [(CTXPCServiceSubscriptionContext *)self isSimHidden], v34 != [(CTXPCServiceSubscriptionContext *)equalCopy isSimHidden]))
            {
              if (v35)
              {
                userDefaultVoice2 = 0;
                goto LABEL_63;
              }

              LOBYTE(v13) = 0;
LABEL_69:
              v27 = userDefaultVoice;
              v28 = v36;
              if (!userDefaultVoice)
              {
                goto LABEL_71;
              }

              goto LABEL_70;
            }

            isSimDataOnly = [(CTXPCServiceSubscriptionContext *)self isSimDataOnly];
            v13 = isSimDataOnly ^ [(CTXPCServiceSubscriptionContext *)equalCopy isSimDataOnly]^ 1;
            if ((v35 & 1) == 0)
            {
              v26 = userDefaultVoice;
              v28 = v36;
              if (!userDefaultVoice)
              {
                goto LABEL_66;
              }

LABEL_70:

              v27 = userDefaultVoice;
LABEL_71:

              if ((v37 & 1) == 0)
              {
LABEL_74:
                v29 = userDataPreferred;
                if (userDataPreferred)
                {

                  v29 = userDataPreferred;
                }

                if ((v41 & 1) == 0)
                {
                  goto LABEL_79;
                }

                phoneNumber2 = 0;
LABEL_78:

LABEL_79:
                if (phoneNumber)
                {
                }

                if ((v45 & 1) == 0)
                {
                  v12 = v46;
                  if (!label)
                  {
LABEL_85:

                    if (v12)
                    {
                      labelID2 = 0;
                      goto LABEL_87;
                    }

LABEL_88:
                    if (labelID)
                    {
                    }

                    goto LABEL_91;
                  }

LABEL_84:

                  goto LABEL_85;
                }

                label2 = 0;
                v12 = v46;
LABEL_83:

                if (!label)
                {
                  goto LABEL_85;
                }

                goto LABEL_84;
              }

              goto LABEL_72;
            }

            userDefaultVoice3 = 0;
LABEL_56:

            goto LABEL_69;
          }
        }

        userDataPreferred4 = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
        if (userDataPreferred4)
        {
          LOBYTE(v13) = 0;
LABEL_73:

          goto LABEL_74;
        }

        userDataPreferred5 = [(CTXPCServiceSubscriptionContext *)equalCopy userDataPreferred];
        if (!userDataPreferred5)
        {
          v37 = 1;
          goto LABEL_50;
        }

        if (userDataPreferred)
        {
        }

        if (!phoneNumber)
        {
          goto LABEL_44;
        }

        goto LABEL_43;
      }
    }

    LOBYTE(v13) = 0;
  }

LABEL_92:

  return v13;
}

+ (CTXPCServiceSubscriptionContext)contextWithServiceDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  if ([descriptorCopy domain] == 1)
  {
    v4 = objc_alloc(objc_opt_class());
    instance = [descriptorCopy instance];
    v6 = [v4 initWithSlot:{objc_msgSend(instance, "integerValue")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (CTXPCServiceSubscriptionContext)contextWithXPCContextInfo:(id)info
{
  infoCopy = info;
  v4 = objc_opt_class();
  if (infoCopy)
  {
    v5 = [v4 alloc];
    uuid = [infoCopy uuid];
    v7 = [v5 initWithUUID:uuid andSlot:{objc_msgSend(infoCopy, "slotID")}];

    label = [infoCopy label];
    [v7 setLabel:label];

    labelID = [infoCopy labelID];
    [v7 setLabelID:labelID];

    phoneNumber = [infoCopy phoneNumber];
    [v7 setPhoneNumber:phoneNumber];
  }

  else
  {
    v7 = objc_alloc_init(v4);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  uuid = [(CTXPCServiceSubscriptionContext *)self uuid];
  v6 = [v4 initWithUUID:uuid andSlot:{-[CTXPCServiceSubscriptionContext slotID](self, "slotID")}];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  slotID = self->_slotID;
  coderCopy = coder;
  [coderCopy encodeInteger:slotID forKey:@"slot_id"];
  [coderCopy encodeObject:self->_labelID forKey:@"label_id"];
  [coderCopy encodeObject:self->_label forKey:@"label"];
  [coderCopy encodeObject:self->_phoneNumber forKey:@"phone_number"];
  [coderCopy encodeObject:self->_userDataPreferred forKey:@"user_data_preferred"];
  [coderCopy encodeObject:self->_userDefaultVoice forKey:@"user_default_voice"];
  [coderCopy encodeObject:self->_uuid forKey:@"uuid"];
  [coderCopy encodeBool:self->_isSimPresent forKey:@"isSimPresent"];
  [coderCopy encodeBool:self->_isSimGood forKey:@"isSimGood"];
  [coderCopy encodeBool:self->_isSimHidden forKey:@"isSimHidden"];
  [coderCopy encodeBool:self->_isSimDataOnly forKey:@"isSimDataOnly"];
}

- (CTXPCServiceSubscriptionContext)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = CTXPCServiceSubscriptionContext;
  v5 = [(CTXPCServiceSubscriptionContext *)&v19 init];
  if (v5)
  {
    v5->_slotID = [coderCopy decodeIntegerForKey:@"slot_id"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label_id"];
    labelID = v5->_labelID;
    v5->_labelID = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"phone_number"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user_data_preferred"];
    userDataPreferred = v5->_userDataPreferred;
    v5->_userDataPreferred = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"user_default_voice"];
    userDefaultVoice = v5->_userDefaultVoice;
    v5->_userDefaultVoice = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v16;

    v5->_isSimPresent = [coderCopy decodeBoolForKey:@"isSimPresent"];
    v5->_isSimGood = [coderCopy decodeBoolForKey:@"isSimGood"];
    v5->_isSimHidden = [coderCopy decodeBoolForKey:@"isSimHidden"];
    v5->_isSimDataOnly = [coderCopy decodeBoolForKey:@"isSimDataOnly"];
  }

  return v5;
}

@end