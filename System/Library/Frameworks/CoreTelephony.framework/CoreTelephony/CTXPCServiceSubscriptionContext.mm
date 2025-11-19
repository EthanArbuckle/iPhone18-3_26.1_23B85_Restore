@interface CTXPCServiceSubscriptionContext
+ (CTXPCServiceSubscriptionContext)contextWithServiceDescriptor:(id)a3;
+ (CTXPCServiceSubscriptionContext)contextWithSlot:(int64_t)a3;
+ (CTXPCServiceSubscriptionContext)contextWithUUID:(id)a3;
+ (CTXPCServiceSubscriptionContext)contextWithXPCContextInfo:(id)a3;
- (BOOL)isEqual:(id)a3;
- (CTXPCServiceSubscriptionContext)initWithCoder:(id)a3;
- (CTXPCServiceSubscriptionContext)initWithSlot:(int64_t)a3;
- (CTXPCServiceSubscriptionContext)initWithUUID:(id)a3 andSlot:(int64_t)a4;
- (NSString)ct_shortDescription;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)redactedDescription;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTXPCServiceSubscriptionContext

- (NSString)ct_shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(CTXPCServiceSubscriptionContext *)self ct_shortName];
  if ([(CTXPCServiceSubscriptionContext *)self slotID])
  {
    v5 = [(CTXPCServiceSubscriptionContext *)self slotID];
    v6 = @"???";
    if (v5 == 2)
    {
      v6 = @"two";
    }

    if (v5 == 1)
    {
      v6 = @"one";
    }

    v7 = [v3 stringWithFormat:@"<%@ id=%@>", v4, v6];
  }

  else
  {
    v8 = [(CTXPCServiceSubscriptionContext *)self uuid];
    v9 = [v8 UUIDString];
    v7 = [v3 stringWithFormat:@"<%@ id=%@>", v4, v9];
  }

  return v7;
}

- (id)redactedDescription
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  v4 = [(CTXPCServiceSubscriptionContext *)self slotID];
  v5 = "CTSubscriptionSlotUnknown";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 == 1)
  {
    v5 = "CTSubscriptionSlotOne";
  }

  [v3 appendFormat:@" slotID=%s", v5];
  v6 = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
  [v3 appendFormat:@", [userDataPreferred=%@", v6];

  v7 = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
  [v3 appendFormat:@", userDefaultVoice=%@", v7];

  v8 = [(CTXPCServiceSubscriptionContext *)self isSimPresent];
  v9 = "absent";
  if (v8)
  {
    v9 = "present";
  }

  objc_msgSend(v3, "appendFormat:", @", SIM:(%s"), v9;
  v10 = [(CTXPCServiceSubscriptionContext *)self isSimGood];
  v11 = "bad";
  if (v10)
  {
    v11 = "good";
  }

  [v3 appendFormat:@", %s", v11];
  v12 = [(CTXPCServiceSubscriptionContext *)self isSimHidden];
  v13 = "exposed";
  if (v12)
  {
    v13 = "hidden";
  }

  [v3 appendFormat:@", %s", v13];
  v14 = [(CTXPCServiceSubscriptionContext *)self isSimDataOnly];
  v15 = "voice+data";
  if (v14)
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
  v4 = [(CTXPCServiceSubscriptionContext *)self slotID];
  v5 = "CTSubscriptionSlotUnknown";
  if (v4 == 2)
  {
    v5 = "CTSubscriptionSlotTwo";
  }

  if (v4 == 1)
  {
    v5 = "CTSubscriptionSlotOne";
  }

  [v3 appendFormat:@" slotID=%s", v5];
  v6 = [(CTXPCServiceSubscriptionContext *)self uuid];
  [v3 appendFormat:@", uuid=%@", v6];

  v7 = [(CTXPCServiceSubscriptionContext *)self labelID];
  [v3 appendFormat:@", labelID=%@", v7];

  v8 = [(CTXPCServiceSubscriptionContext *)self label];
  [v3 appendFormat:@", label=%@", v8];

  v9 = [(CTXPCServiceSubscriptionContext *)self phoneNumber];
  [v3 appendFormat:@", phoneNumber=%@", v9];

  v10 = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
  [v3 appendFormat:@", [userDataPreferred=%@", v10];

  v11 = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
  [v3 appendFormat:@", userDefaultVoice=%@", v11];

  v12 = [(CTXPCServiceSubscriptionContext *)self isSimPresent];
  v13 = "absent";
  if (v12)
  {
    v13 = "present";
  }

  objc_msgSend(v3, "appendFormat:", @", SIM:(%s"), v13;
  v14 = [(CTXPCServiceSubscriptionContext *)self isSimGood];
  v15 = "bad";
  if (v14)
  {
    v15 = "good";
  }

  [v3 appendFormat:@", %s", v15];
  v16 = [(CTXPCServiceSubscriptionContext *)self isSimHidden];
  v17 = "exposed";
  if (v16)
  {
    v17 = "hidden";
  }

  [v3 appendFormat:@", %s", v17];
  v18 = [(CTXPCServiceSubscriptionContext *)self isSimDataOnly];
  v19 = "voice+data";
  if (v18)
  {
    v19 = "dataonly";
  }

  [v3 appendFormat:@", %s]"], v19);
  [v3 appendString:@">"];

  return v3;
}

- (CTXPCServiceSubscriptionContext)initWithSlot:(int64_t)a3
{
  v5 = CTSubscriptionSlotAsUUID(a3);
  v6 = [(CTXPCServiceSubscriptionContext *)self initWithUUID:v5 andSlot:a3];

  return v6;
}

+ (CTXPCServiceSubscriptionContext)contextWithSlot:(int64_t)a3
{
  v3 = [[CTXPCServiceSubscriptionContext alloc] initWithSlot:a3];

  return v3;
}

+ (CTXPCServiceSubscriptionContext)contextWithUUID:(id)a3
{
  v3 = a3;
  v4 = [[CTXPCServiceSubscriptionContext alloc] initWithUUID:v3];

  return v4;
}

- (CTXPCServiceSubscriptionContext)initWithUUID:(id)a3 andSlot:(int64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CTXPCServiceSubscriptionContext;
  v8 = [(CTXPCServiceSubscriptionContext *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_uuid, a3);
    v9->_slotID = a4;
    *&v9->_isSimPresent = 256;
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (v7 == self)
  {
    LOBYTE(v13) = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = [(CTXPCServiceSubscriptionContext *)self slotID];
      if (v8 == [(CTXPCServiceSubscriptionContext *)v7 slotID])
      {
        v9 = [(CTXPCServiceSubscriptionContext *)self uuid];
        v10 = [(CTXPCServiceSubscriptionContext *)v7 uuid];
        if (![v9 isEqual:v10])
        {
          LOBYTE(v13) = 0;
LABEL_91:

          goto LABEL_92;
        }

        v11 = [(CTXPCServiceSubscriptionContext *)self labelID];
        if (v11 && (-[CTXPCServiceSubscriptionContext labelID](self, "labelID"), v3 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext labelID](v7, "labelID"), v4 = objc_claimAutoreleasedReturnValue(), ([v3 isEqual:v4] & 1) != 0))
        {
          v12 = 0;
        }

        else
        {
          v14 = [(CTXPCServiceSubscriptionContext *)self labelID];
          if (v14)
          {
            LOBYTE(v13) = 0;
LABEL_87:

            goto LABEL_88;
          }

          v15 = [(CTXPCServiceSubscriptionContext *)v7 labelID];
          if (v15)
          {

LABEL_48:
            LOBYTE(v13) = 0;
            goto LABEL_88;
          }

          v12 = 1;
        }

        v16 = [(CTXPCServiceSubscriptionContext *)self label];
        if (v16 && (-[CTXPCServiceSubscriptionContext label](self, "label"), v5 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext label](v7, "label"), v48 = v5, v47 = objc_claimAutoreleasedReturnValue(), ([v5 isEqual:v47] & 1) != 0))
        {
          v45 = 0;
          v46 = v12;
        }

        else
        {
          v17 = [(CTXPCServiceSubscriptionContext *)self label];
          if (v17)
          {
            LOBYTE(v13) = 0;
            goto LABEL_83;
          }

          v18 = [(CTXPCServiceSubscriptionContext *)v7 label];
          if (v18)
          {

            if (!v16)
            {
              goto LABEL_48;
            }

            goto LABEL_46;
          }

          v45 = 1;
          v46 = v12;
        }

        v19 = [(CTXPCServiceSubscriptionContext *)self phoneNumber];
        if (v19 && (-[CTXPCServiceSubscriptionContext phoneNumber](self, "phoneNumber"), v5 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext phoneNumber](v7, "phoneNumber"), v43 = objc_claimAutoreleasedReturnValue(), v44 = v5, ([v5 isEqual:v43] & 1) != 0))
        {
          v41 = 0;
        }

        else
        {
          v20 = [(CTXPCServiceSubscriptionContext *)self phoneNumber];
          if (v20)
          {
            LOBYTE(v13) = 0;
            goto LABEL_78;
          }

          v21 = [(CTXPCServiceSubscriptionContext *)v7 phoneNumber];
          if (v21)
          {

            if (!v19)
            {
LABEL_45:
              if (!v16)
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

        v42 = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
        if (v42)
        {
          v5 = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
          v39 = [(CTXPCServiceSubscriptionContext *)v7 userDataPreferred];
          v40 = v5;
          if ([v5 isEqual:v39])
          {
            v37 = 0;
LABEL_50:
            v38 = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
            if (v38 && (-[CTXPCServiceSubscriptionContext userDefaultVoice](self, "userDefaultVoice"), v5 = objc_claimAutoreleasedReturnValue(), -[CTXPCServiceSubscriptionContext userDefaultVoice](v7, "userDefaultVoice"), v36 = objc_claimAutoreleasedReturnValue(), ([v5 isEqual:?] & 1) != 0))
            {
              v35 = 0;
            }

            else
            {
              v24 = [(CTXPCServiceSubscriptionContext *)self userDefaultVoice];
              if (v24)
              {
LABEL_63:

                v26 = v38;
                if (v38)
                {

                  v26 = v38;
                }

                LOBYTE(v13) = 0;
LABEL_66:

                if (!v37)
                {
                  goto LABEL_74;
                }

LABEL_72:
                v22 = 0;
                goto LABEL_73;
              }

              v25 = [(CTXPCServiceSubscriptionContext *)v7 userDefaultVoice];
              if (v25)
              {
                LOBYTE(v13) = 0;
                goto LABEL_56;
              }

              v35 = 1;
            }

            v32 = [(CTXPCServiceSubscriptionContext *)self isSimPresent];
            if (v32 != [(CTXPCServiceSubscriptionContext *)v7 isSimPresent]|| (v33 = [(CTXPCServiceSubscriptionContext *)self isSimGood], v33 != [(CTXPCServiceSubscriptionContext *)v7 isSimGood]) || (v34 = [(CTXPCServiceSubscriptionContext *)self isSimHidden], v34 != [(CTXPCServiceSubscriptionContext *)v7 isSimHidden]))
            {
              if (v35)
              {
                v24 = 0;
                goto LABEL_63;
              }

              LOBYTE(v13) = 0;
LABEL_69:
              v27 = v38;
              v28 = v36;
              if (!v38)
              {
                goto LABEL_71;
              }

              goto LABEL_70;
            }

            v31 = [(CTXPCServiceSubscriptionContext *)self isSimDataOnly];
            v13 = v31 ^ [(CTXPCServiceSubscriptionContext *)v7 isSimDataOnly]^ 1;
            if ((v35 & 1) == 0)
            {
              v26 = v38;
              v28 = v36;
              if (!v38)
              {
                goto LABEL_66;
              }

LABEL_70:

              v27 = v38;
LABEL_71:

              if ((v37 & 1) == 0)
              {
LABEL_74:
                v29 = v42;
                if (v42)
                {

                  v29 = v42;
                }

                if ((v41 & 1) == 0)
                {
                  goto LABEL_79;
                }

                v20 = 0;
LABEL_78:

LABEL_79:
                if (v19)
                {
                }

                if ((v45 & 1) == 0)
                {
                  v12 = v46;
                  if (!v16)
                  {
LABEL_85:

                    if (v12)
                    {
                      v14 = 0;
                      goto LABEL_87;
                    }

LABEL_88:
                    if (v11)
                    {
                    }

                    goto LABEL_91;
                  }

LABEL_84:

                  goto LABEL_85;
                }

                v17 = 0;
                v12 = v46;
LABEL_83:

                if (!v16)
                {
                  goto LABEL_85;
                }

                goto LABEL_84;
              }

              goto LABEL_72;
            }

            v25 = 0;
LABEL_56:

            goto LABEL_69;
          }
        }

        v22 = [(CTXPCServiceSubscriptionContext *)self userDataPreferred];
        if (v22)
        {
          LOBYTE(v13) = 0;
LABEL_73:

          goto LABEL_74;
        }

        v23 = [(CTXPCServiceSubscriptionContext *)v7 userDataPreferred];
        if (!v23)
        {
          v37 = 1;
          goto LABEL_50;
        }

        if (v42)
        {
        }

        if (!v19)
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

+ (CTXPCServiceSubscriptionContext)contextWithServiceDescriptor:(id)a3
{
  v3 = a3;
  if ([v3 domain] == 1)
  {
    v4 = objc_alloc(objc_opt_class());
    v5 = [v3 instance];
    v6 = [v4 initWithSlot:{objc_msgSend(v5, "integerValue")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (CTXPCServiceSubscriptionContext)contextWithXPCContextInfo:(id)a3
{
  v3 = a3;
  v4 = objc_opt_class();
  if (v3)
  {
    v5 = [v4 alloc];
    v6 = [v3 uuid];
    v7 = [v5 initWithUUID:v6 andSlot:{objc_msgSend(v3, "slotID")}];

    v8 = [v3 label];
    [v7 setLabel:v8];

    v9 = [v3 labelID];
    [v7 setLabelID:v9];

    v10 = [v3 phoneNumber];
    [v7 setPhoneNumber:v10];
  }

  else
  {
    v7 = objc_alloc_init(v4);
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(CTXPCServiceSubscriptionContext *)self uuid];
  v6 = [v4 initWithUUID:v5 andSlot:{-[CTXPCServiceSubscriptionContext slotID](self, "slotID")}];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  slotID = self->_slotID;
  v5 = a3;
  [v5 encodeInteger:slotID forKey:@"slot_id"];
  [v5 encodeObject:self->_labelID forKey:@"label_id"];
  [v5 encodeObject:self->_label forKey:@"label"];
  [v5 encodeObject:self->_phoneNumber forKey:@"phone_number"];
  [v5 encodeObject:self->_userDataPreferred forKey:@"user_data_preferred"];
  [v5 encodeObject:self->_userDefaultVoice forKey:@"user_default_voice"];
  [v5 encodeObject:self->_uuid forKey:@"uuid"];
  [v5 encodeBool:self->_isSimPresent forKey:@"isSimPresent"];
  [v5 encodeBool:self->_isSimGood forKey:@"isSimGood"];
  [v5 encodeBool:self->_isSimHidden forKey:@"isSimHidden"];
  [v5 encodeBool:self->_isSimDataOnly forKey:@"isSimDataOnly"];
}

- (CTXPCServiceSubscriptionContext)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = CTXPCServiceSubscriptionContext;
  v5 = [(CTXPCServiceSubscriptionContext *)&v19 init];
  if (v5)
  {
    v5->_slotID = [v4 decodeIntegerForKey:@"slot_id"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label_id"];
    labelID = v5->_labelID;
    v5->_labelID = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"phone_number"];
    phoneNumber = v5->_phoneNumber;
    v5->_phoneNumber = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user_data_preferred"];
    userDataPreferred = v5->_userDataPreferred;
    v5->_userDataPreferred = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"user_default_voice"];
    userDefaultVoice = v5->_userDefaultVoice;
    v5->_userDefaultVoice = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"uuid"];
    uuid = v5->_uuid;
    v5->_uuid = v16;

    v5->_isSimPresent = [v4 decodeBoolForKey:@"isSimPresent"];
    v5->_isSimGood = [v4 decodeBoolForKey:@"isSimGood"];
    v5->_isSimHidden = [v4 decodeBoolForKey:@"isSimHidden"];
    v5->_isSimDataOnly = [v4 decodeBoolForKey:@"isSimDataOnly"];
  }

  return v5;
}

@end