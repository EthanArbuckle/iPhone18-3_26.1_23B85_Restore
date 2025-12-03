@interface WCMessage
- (BOOL)isEqual:(id)equal;
- (WCMessage)initWithCoder:(id)coder;
- (WCMessage)initWithPairingID:(id)d identifier:(id)identifier data:(id)data dictionaryMessage:(BOOL)message;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCMessage

- (WCMessage)initWithPairingID:(id)d identifier:(id)identifier data:(id)data dictionaryMessage:(BOOL)message
{
  dCopy = d;
  identifierCopy = identifier;
  dataCopy = data;
  v21.receiver = self;
  v21.super_class = WCMessage;
  v13 = [(WCMessage *)&v21 init];
  if (v13)
  {
    v14 = [dCopy copy];
    pairingID = v13->_pairingID;
    v13->_pairingID = v14;

    v16 = [identifierCopy copy];
    identifier = v13->_identifier;
    v13->_identifier = v16;

    v18 = [dataCopy copy];
    data = v13->_data;
    v13->_data = v18;

    v13->_dictionaryMessage = message;
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  pairingID = self->_pairingID;
  coderCopy = coder;
  [coderCopy encodeObject:pairingID forKey:@"pairingID"];
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_data forKey:@"data"];
  [coderCopy encodeBool:self->_dictionaryMessage forKey:@"dictionaryMessage"];
}

- (WCMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = WCMessage;
  v5 = [(WCMessage *)&v16 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pairingID"];
    v7 = [v6 copy];
    pairingID = v5->_pairingID;
    v5->_pairingID = v7;

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    v10 = [v9 copy];
    identifier = v5->_identifier;
    v5->_identifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"data"];
    v13 = [v12 copy];
    data = v5->_data;
    v5->_data = v13;

    v5->_dictionaryMessage = [coderCopy decodeBoolForKey:@"dictionaryMessage"];
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  pairingID = [(WCMessage *)self pairingID];
  identifier = [(WCMessage *)self identifier];
  data = [(WCMessage *)self data];
  v9 = [data length];
  isDictionaryMessage = [(WCMessage *)self isDictionaryMessage];
  v11 = "NO";
  if (isDictionaryMessage)
  {
    v11 = "YES";
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, pairingID: %@, identifier: %@, dataLength: %lu, dictionaryMessage: %s>", v5, self, pairingID, identifier, v9, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      pairingID = [(WCMessage *)self pairingID];
      pairingID2 = [(WCMessage *)v5 pairingID];
      if ([pairingID isEqual:pairingID2])
      {
        identifier = [(WCMessage *)self identifier];
        identifier2 = [(WCMessage *)v5 identifier];
        v10 = [identifier isEqual:identifier2];
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
  pairingID = [(WCMessage *)self pairingID];
  v4 = [pairingID hash];
  identifier = [(WCMessage *)self identifier];
  v6 = [identifier hash];

  return v6 ^ v4;
}

@end