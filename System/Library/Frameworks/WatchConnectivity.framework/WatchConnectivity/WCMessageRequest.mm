@interface WCMessageRequest
- (BOOL)isEqual:(id)equal;
- (WCMessageRequest)initWithCoder:(id)coder;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation WCMessageRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = WCMessageRequest;
  coderCopy = coder;
  [(WCMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeBool:self->_expectsResponse forKey:{@"expectsResponse", v5.receiver, v5.super_class}];
}

- (WCMessageRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = WCMessageRequest;
  v5 = [(WCMessage *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_expectsResponse = [coderCopy decodeBoolForKey:@"expectsResponse"];
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
  if ([(WCMessage *)self isDictionaryMessage])
  {
    v10 = "YES";
  }

  else
  {
    v10 = "NO";
  }

  if ([(WCMessageRequest *)self expectsResponse])
  {
    v11 = "YES";
  }

  else
  {
    v11 = "NO";
  }

  v12 = [v3 stringWithFormat:@"<%@: %p, pairingID: %@, identifier: %@, dataLength: %lu, isDictionary:%s, expectsResponse: %s>", v5, self, pairingID, identifier, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)equal
{
  v4.receiver = self;
  v4.super_class = WCMessageRequest;
  return [(WCMessage *)&v4 isEqual:equal];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = WCMessageRequest;
  return [(WCMessage *)&v3 hash];
}

@end