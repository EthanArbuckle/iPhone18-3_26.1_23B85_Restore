@interface ANParticipant
- (ANParticipant)initWithCoder:(id)coder;
- (ANParticipant)initWithMessage:(id)message;
- (ANParticipant)initWithSender:(id)sender;
- (BOOL)isEqual:(id)equal;
- (BOOL)isUser;
- (NSDictionary)info;
- (NSString)description;
- (id)copy;
- (id)message;
- (id)messageForCompanion;
- (unint64_t)hash;
- (void)clearIdentifiers;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANParticipant

- (ANParticipant)initWithSender:(id)sender
{
  senderCopy = sender;
  v12.receiver = self;
  v12.super_class = ANParticipant;
  v5 = [(ANParticipant *)&v12 init];
  if (v5)
  {
    type = [senderCopy type];
    if (type == 2)
    {
LABEL_5:
      identifier = [senderCopy identifier];
      rapportID = v5->_rapportID;
      v5->_rapportID = identifier;

      goto LABEL_6;
    }

    if (type == 1)
    {
      identifier2 = [senderCopy identifier];
      idsID = v5->_idsID;
      v5->_idsID = identifier2;

      goto LABEL_5;
    }
  }

LABEL_6:

  return v5;
}

- (NSDictionary)info
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  name = [(ANParticipant *)self name];
  [v3 setObject:name forKeyedSubscript:@"name"];

  rapportID = [(ANParticipant *)self rapportID];
  [v3 setObject:rapportID forKeyedSubscript:@"rapportID"];

  idsID = [(ANParticipant *)self idsID];
  [v3 setObject:idsID forKeyedSubscript:@"idsID"];

  homeKitID = [(ANParticipant *)self homeKitID];
  [v3 setObject:homeKitID forKeyedSubscript:@"homeKitID"];

  homeKitUserID = [(ANParticipant *)self homeKitUserID];
  [v3 setObject:homeKitUserID forKeyedSubscript:@"homeKitUserID"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isAccessory](self, "isAccessory")}];
  [v3 setObject:v9 forKeyedSubscript:@"isAccessory"];

  userID = [(ANParticipant *)self userID];
  [v3 setObject:userID forKeyedSubscript:@"userID"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isEndpoint](self, "isEndpoint")}];
  [v3 setObject:v11 forKeyedSubscript:@"isEndpoint"];

  v12 = [v3 copy];

  return v12;
}

- (NSString)description
{
  info = [(ANParticipant *)self info];
  v3 = [info description];

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v7 = equalCopy;
  if (!equalCopy)
  {
    goto LABEL_26;
  }

  homeKitID = [equalCopy homeKitID];
  if (!homeKitID)
  {
LABEL_7:
    homeKitUserID = [v7 homeKitUserID];
    if (homeKitUserID)
    {
      homeKitUserID2 = [(ANParticipant *)self homeKitUserID];
      homeKitUserID3 = [v7 homeKitUserID];
      if ([homeKitUserID2 isEqualToString:homeKitUserID3])
      {
        v10 = 1;
LABEL_21:

LABEL_22:
        if (homeKitID)
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

    idsID = [v7 idsID];
    if (idsID)
    {
      idsID2 = [(ANParticipant *)self idsID];
      idsID3 = [v7 idsID];
      if ([idsID2 isEqualToString:idsID3])
      {
        v10 = 1;
        goto LABEL_19;
      }

      v22 = idsID3;
      v24 = idsID2;
    }

    rapportID = [v7 rapportID];
    if (rapportID)
    {
      v15 = rapportID;
      [(ANParticipant *)self rapportID];
      v16 = homeKitUserID3;
      v18 = v17 = homeKitUserID2;
      rapportID2 = [v7 rapportID];
      v10 = [v18 isEqualToString:rapportID2];

      homeKitUserID2 = v17;
      homeKitUserID3 = v16;
    }

    else
    {
      v10 = 0;
    }

    idsID3 = v23;
    idsID2 = v25;
    if (!idsID)
    {
LABEL_20:
      if (!homeKitUserID)
      {
        goto LABEL_22;
      }

      goto LABEL_21;
    }

LABEL_19:

    goto LABEL_20;
  }

  homeKitUserID2 = [(ANParticipant *)self homeKitID];
  homeKitUserID3 = [v7 homeKitID];
  if (![homeKitUserID2 isEqualToString:homeKitUserID3])
  {
    v26 = homeKitUserID3;
    v27 = homeKitUserID2;
    goto LABEL_7;
  }

LABEL_25:
  v20 = 1;
LABEL_27:

  return v20;
}

- (unint64_t)hash
{
  homeKitID = [(ANParticipant *)self homeKitID];
  v4 = [homeKitID hash];
  homeKitUserID = [(ANParticipant *)self homeKitUserID];
  v6 = [homeKitUserID hash] ^ v4;
  idsID = [(ANParticipant *)self idsID];
  v8 = [idsID hash];
  rapportID = [(ANParticipant *)self rapportID];
  v10 = v8 ^ [rapportID hash];

  return v6 ^ v10;
}

- (id)copy
{
  v3 = objc_opt_new();
  name = [(ANParticipant *)self name];
  [v3 setName:name];

  rapportID = [(ANParticipant *)self rapportID];
  [v3 setRapportID:rapportID];

  idsID = [(ANParticipant *)self idsID];
  [v3 setIdsID:idsID];

  homeKitID = [(ANParticipant *)self homeKitID];
  [v3 setHomeKitID:homeKitID];

  homeKitUserID = [(ANParticipant *)self homeKitUserID];
  [v3 setHomeKitUserID:homeKitUserID];

  userID = [(ANParticipant *)self userID];
  [v3 setUserID:userID];

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

  homeKitUserID = [(ANParticipant *)self homeKitUserID];
  v4 = homeKitUserID != 0;

  return v4;
}

- (ANParticipant)initWithMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy count])
  {
    v18.receiver = self;
    v18.super_class = ANParticipant;
    v5 = [(ANParticipant *)&v18 init];
    if (v5)
    {
      v6 = [messageCopy objectForKeyedSubscript:@"homeKitID"];
      homeKitID = v5->_homeKitID;
      v5->_homeKitID = v6;

      v8 = [messageCopy objectForKeyedSubscript:@"homeKitUserID"];
      homeKitUserID = v5->_homeKitUserID;
      v5->_homeKitUserID = v8;

      v10 = [messageCopy objectForKeyedSubscript:@"userID"];
      userID = v5->_userID;
      v5->_userID = v10;

      v12 = [messageCopy objectForKeyedSubscript:@"name"];
      name = v5->_name;
      v5->_name = v12;

      v14 = [messageCopy objectForKeyedSubscript:@"isAccessory"];
      v5->_isAccessory = [v14 BOOLValue];
      v15 = [messageCopy objectForKeyedSubscript:@"isEndpoint"];
      v5->_isEndpoint = [v15 BOOLValue];
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)message
{
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  homeKitID = [(ANParticipant *)self homeKitID];
  [v3 setObject:homeKitID forKeyedSubscript:@"homeKitID"];

  homeKitUserID = [(ANParticipant *)self homeKitUserID];
  [v3 setObject:homeKitUserID forKeyedSubscript:@"homeKitUserID"];

  userID = [(ANParticipant *)self userID];
  [v3 setObject:userID forKeyedSubscript:@"userID"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isAccessory](self, "isAccessory")}];
  [v3 setObject:v7 forKeyedSubscript:@"isAccessory"];

  v8 = [MEMORY[0x277CCABB0] numberWithBool:{-[ANParticipant isEndpoint](self, "isEndpoint")}];
  [v3 setObject:v8 forKeyedSubscript:@"isEndpoint"];

  return v3;
}

- (id)messageForCompanion
{
  v3 = MEMORY[0x277CBEB38];
  message = [(ANParticipant *)self message];
  v5 = [v3 dictionaryWithDictionary:message];

  [v5 setObject:self->_name forKeyedSubscript:@"name"];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  name = self->_name;
  coderCopy = coder;
  [coderCopy encodeObject:name forKey:@"name"];
  [coderCopy encodeObject:self->_rapportID forKey:@"rapportID"];
  [coderCopy encodeObject:self->_idsID forKey:@"idsID"];
  [coderCopy encodeObject:self->_homeKitID forKey:@"homeKitID"];
  [coderCopy encodeObject:self->_homeKitUserID forKey:@"homeKitUserID"];
  [coderCopy encodeObject:self->_userID forKey:@"userID"];
  v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_isAccessory];
  [coderCopy encodeObject:v6 forKey:@"isAccessory"];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:self->_isEndpoint];
  [coderCopy encodeObject:v7 forKey:@"isEndpoint"];
}

- (ANParticipant)initWithCoder:(id)coder
{
  coderCopy = coder;
  v21.receiver = self;
  v21.super_class = ANParticipant;
  v5 = [(ANParticipant *)&v21 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"rapportID"];
    rapportID = v5->_rapportID;
    v5->_rapportID = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"idsID"];
    idsID = v5->_idsID;
    v5->_idsID = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeKitID"];
    homeKitID = v5->_homeKitID;
    v5->_homeKitID = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeKitUserID"];
    homeKitUserID = v5->_homeKitUserID;
    v5->_homeKitUserID = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"userID"];
    userID = v5->_userID;
    v5->_userID = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isAccessory"];
    v5->_isAccessory = [v18 BOOLValue];
    v19 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isEndpoint"];
    v5->_isEndpoint = [v19 BOOLValue];
  }

  return v5;
}

@end