@interface WCMessage
- (BOOL)isEqual:(id)a3;
- (WCMessage)initWithCoder:(id)a3;
- (WCMessage)initWithPairingID:(id)a3 identifier:(id)a4 data:(id)a5 dictionaryMessage:(BOOL)a6;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCMessage

- (WCMessage)initWithPairingID:(id)a3 identifier:(id)a4 data:(id)a5 dictionaryMessage:(BOOL)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v21.receiver = self;
  v21.super_class = WCMessage;
  v13 = [(WCMessage *)&v21 init];
  if (v13)
  {
    v14 = [v10 copy];
    pairingID = v13->_pairingID;
    v13->_pairingID = v14;

    v16 = [v11 copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [v12 copy];
    data = v13->_data;
    v13->_data = v18;

    v13->_dictionaryMessage = a6;
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  pairingID = self->_pairingID;
  v5 = a3;
  [v5 encodeObject:pairingID forKey:@"pairingID"];
  [v5 encodeObject:self->_identifier forKey:@"identifier"];
  [v5 encodeObject:self->_data forKey:@"data"];
  [v5 encodeBool:self->_dictionaryMessage forKey:@"dictionaryMessage"];
}

- (WCMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v16.receiver = self;
  v16.super_class = WCMessage;
  v5 = [(WCMessage *)&v16 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pairingID"];
    v7 = [v6 copy];
    pairingID = v5->_pairingID;
    v5->_pairingID = v7;

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [v9 copy];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v13 = [v12 copy];
    data = v5->_data;
    v5->_data = v13;

    v5->_dictionaryMessage = [v4 decodeBoolForKey:@"dictionaryMessage"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(WCMessage *)self pairingID];
  v7 = [(WCMessage *)self identifier];
  v8 = [(WCMessage *)self data];
  v9 = [v8 length];
  v10 = [(WCMessage *)self isDictionaryMessage];
  v11 = "NO";
  if (v10)
  {
    v11 = "YES";
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, pairingID: %@, identifier: %@, dataLength: %lu, dictionaryMessage: %s>", v5, self, v6, v7, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(WCMessage *)self pairingID];
      v7 = [(WCMessage *)v5 pairingID];
      if ([v6 isEqual:v7])
      {
        v8 = [(WCMessage *)self identifier];
        v9 = [(WCMessage *)v5 identifier];
        v10 = [v8 isEqual:v9];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(WCMessage *)self pairingID];
  v4 = [v3 hash];
  v5 = [(WCMessage *)self identifier];
  v6 = [v5 hash];

  return v6 ^ v4;
}

@end