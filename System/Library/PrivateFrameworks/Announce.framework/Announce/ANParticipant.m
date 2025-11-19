@interface ANParticipant
- (ANParticipant)initWithCoder:(id)a3;
- (ANParticipant)initWithMessage:(id)a3;
- (ANParticipant)initWithSender:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isUser;
- (NSDictionary)info;
- (NSString)description;
- (id)copy;
- (id)message;
- (id)messageForCompanion;
- (unint64_t)hash;
- (void)clearIdentifiers;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANParticipant

- (ANParticipant)initWithSender:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = ANParticipant;
  v5 = [(ANParticipant *)&v12 init];
  if (v5)
  {
    v6 = [v4 type];
    if (v6 == 2)
    {
LABEL_5:
      v9 = [v4 identifier];
      rapportID = v5->_rapportID;
      v5->_rapportID = v9;

      goto LABEL_6;
    }

    if (v6 == 1)
    {
      v7 = [v4 identifier];
      idsID = v5->_idsID;
      v5->_idsID = v7;

      goto LABEL_5;
    }
  }

LABEL_6:

  return v5;
}

- (NSDictionary)info
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(ANParticipant *)self name];
  [v3 setObject:v4 forKeyedSubscript:@"name"];

  v5 = [(ANParticipant *)self rapportID];
  [v3 setObject:v5 forKeyedSubscript:@"rapportID"];

  v6 = [(ANParticipant *)self idsID];
  [v3 setObject:v6 forKeyedSubscript:@"idsID"];

  v7 = [(ANParticipant *)self homeKitID];
  [v3 setObject:v7 forKeyedSubscript:@"homeKitID"];

  v8 = [(ANParticipant *)self homeKitUserID];
  [v3 setObject:v8 forKeyedSubscript:@"homeKitUserID"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isAccessory](self, "isAccessory")}];
  [v3 setObject:v9 forKeyedSubscript:@"isAccessory"];

  v10 = [(ANParticipant *)self userID];
  [v3 setObject:v10 forKeyedSubscript:@"userID"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isEndpoint](self, "isEndpoint")}];
  [v3 setObject:v11 forKeyedSubscript:@"isEndpoint"];

  v12 = [v3 copy];

  return v12;
}

- (NSString)description
{
  v2 = [(ANParticipant *)self info];
  v3 = [v2 description];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v6 = a3;
  v7 = v6;
  if (!v6)
  {
    goto LABEL_26;
  }

  v8 = [v6 homeKitID];
  if (!v8)
  {
LABEL_7:
    v9 = [v7 homeKitUserID];
    if (v9)
    {
      v3 = [(ANParticipant *)self homeKitUserID];
      v4 = [v7 homeKitUserID];
      if ([v3 isEqualToString:v4])
      {
        v10 = 1;
LABEL_21:

LABEL_22:
        if (v8)
        {
        }

        if (v10)
        {
          goto LABEL_25;
        }

LABEL_26:
        v20 = 0;
        goto LABEL_27;
      }
    }

    v11 = [v7 idsID];
    if (v11)
    {
      v12 = [(ANParticipant *)self idsID];
      v13 = [v7 idsID];
      if ([v12 isEqualToString:v13])
      {
        v10 = 1;
        goto LABEL_19;
      }

      v22 = v13;
      v24 = v12;
    }

    v14 = [v7 rapportID];
    if (v14)
    {
      v15 = v14;
      [(ANParticipant *)self rapportID];
      v16 = v4;
      v18 = v17 = v3;
      v19 = [v7 rapportID];
      v10 = [v18 isEqualToString:v19];

      v3 = v17;
      v4 = v16;
    }

    else
    {
      v10 = 0;
    }

    v13 = v23;
    v12 = v25;
    if (!v11)
    {
LABEL_20:
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  v3 = [(ANParticipant *)self homeKitID];
  v4 = [v7 homeKitID];
  if (![v3 isEqualToString:v4])
  {
    v26 = v4;
    v27 = v3;
    goto LABEL_7;
  }

LABEL_25:
  v20 = 1;
LABEL_27:

  return v20;
}

- (unint64_t)hash
{
  v3 = [(ANParticipant *)self homeKitID];
  v4 = [v3 hash];
  v5 = [(ANParticipant *)self homeKitUserID];
  v6 = [v5 hash] ^ v4;
  v7 = [(ANParticipant *)self idsID];
  v8 = [v7 hash];
  v9 = [(ANParticipant *)self rapportID];
  v10 = v8 ^ [v9 hash];

  return v6 ^ v10;
}

- (id)copy
{
  v3 = objc_opt_new();
  v4 = [(ANParticipant *)self name];
  [v3 setName:v4];

  v5 = [(ANParticipant *)self rapportID];
  [v3 setRapportID:v5];

  v6 = [(ANParticipant *)self idsID];
  [v3 setIdsID:v6];

  v7 = [(ANParticipant *)self homeKitID];
  [v3 setHomeKitID:v7];

  v8 = [(ANParticipant *)self homeKitUserID];
  [v3 setHomeKitUserID:v8];

  v9 = [(ANParticipant *)self userID];
  [v3 setUserID:v9];

  [v3 setIsAccessory:{-[ANParticipant isAccessory](self, "isAccessory")}];
  [v3 setIsEndpoint:{-[ANParticipant isEndpoint](self, "isEndpoint")}];
  return v3;
}

- (void)clearIdentifiers
{
  [(ANParticipant *)self setName:&stru_2836DAA20];
  [(ANParticipant *)self setRapportID:&stru_2836DAA20];
  [(ANParticipant *)self setIdsID:&stru_2836DAA20];
  if (![(ANParticipant *)self isAccessory])
  {
    [(ANParticipant *)self setHomeKitID:&stru_2836DAA20];
  }

  [(ANParticipant *)self setHomeKitUserID:&stru_2836DAA20];

  [(ANParticipant *)self setUserID:&stru_2836DAA20];
}

- (BOOL)isUser
{
  if (![(ANParticipant *)self isAccessory])
  {
    return 1;
  }

  v3 = [(ANParticipant *)self homeKitUserID];
  v4 = v3 != 0;

  return v4;
}

- (ANParticipant)initWithMessage:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v18.receiver = self;
    v18.super_class = ANParticipant;
    v5 = [(ANParticipant *)&v18 init];
    if (v5)
    {
      v6 = [v4 objectForKeyedSubscript:@"homeKitID"];
      homeKitID = v5->_homeKitID;
      v5->_homeKitID = v6;

      v8 = [v4 objectForKeyedSubscript:@"homeKitUserID"];
      homeKitUserID = v5->_homeKitUserID;
      v5->_homeKitUserID = v8;

      v10 = [v4 objectForKeyedSubscript:@"userID"];
      userID = v5->_userID;
      v5->_userID = v10;

      v12 = [v4 objectForKeyedSubscript:@"name"];
      name = v5->_name;
      v5->_name = v12;

      v14 = [v4 objectForKeyedSubscript:@"isAccessory"];
      v5->_isAccessory = [v14 BOOLValue];
      v15 = [v4 objectForKeyedSubscript:@"isEndpoint"];
      v5->_isEndpoint = [v15 BOOLValue];
    }

    self = v5;
    v16 = self;
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)message
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v4 = [(ANParticipant *)self homeKitID];
  [v3 setObject:v4 forKeyedSubscript:@"homeKitID"];

  v5 = [(ANParticipant *)self homeKitUserID];
  [v3 setObject:v5 forKeyedSubscript:@"homeKitUserID"];

  v6 = [(ANParticipant *)self userID];
  [v3 setObject:v6 forKeyedSubscript:@"userID"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isAccessory](self, "isAccessory")}];
  [v3 setObject:v7 forKeyedSubscript:@"isAccessory"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isEndpoint](self, "isEndpoint")}];
  [v3 setObject:v8 forKeyedSubscript:@"isEndpoint"];

  return v3;
}

- (id)messageForCompanion
{
  v3 = MEMORY[0x277CBEB38];
  v4 = [(ANParticipant *)self message];
  v5 = [v3 dictionaryWithDictionary:v4];

  [v5 setObject:self->_name forKeyedSubscript:@"name"];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  name = self->_name;
  v5 = a3;
  [v5 encodeObject:name forKey:@"name"];
  [v5 encodeObject:self->_rapportID forKey:@"rapportID"];
  [v5 encodeObject:self->_idsID forKey:@"idsID"];
  [v5 encodeObject:self->_homeKitID forKey:@"homeKitID"];
  [v5 encodeObject:self->_homeKitUserID forKey:@"homeKitUserID"];
  [v5 encodeObject:self->_userID forKey:@"userID"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAccessory];
  [v5 encodeObject:v6 forKey:@"isAccessory"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEndpoint];
  [v5 encodeObject:v7 forKey:@"isEndpoint"];
}

- (ANParticipant)initWithCoder:(id)a3
{
  v4 = a3;
  v21.receiver = self;
  v21.super_class = ANParticipant;
  v5 = [(ANParticipant *)&v21 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"rapportID"];
    rapportID = v5->_rapportID;
    v5->_rapportID = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"idsID"];
    idsID = v5->_idsID;
    v5->_idsID = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeKitID"];
    homeKitID = v5->_homeKitID;
    v5->_homeKitID = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeKitUserID"];
    homeKitUserID = v5->_homeKitUserID;
    v5->_homeKitUserID = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
    userID = v5->_userID;
    v5->_userID = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isAccessory"];
    v5->_isAccessory = [v18 BOOLValue];
    v19 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isEndpoint"];
    v5->_isEndpoint = [v19 BOOLValue];
  }

  return v5;
}

@end