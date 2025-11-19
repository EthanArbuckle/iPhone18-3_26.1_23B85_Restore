@interface WCMessageRequest
- (BOOL)isEqual:(id)a3;
- (WCMessageRequest)initWithCoder:(id)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation WCMessageRequest

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = WCMessageRequest;
  v4 = a3;
  [(WCMessage *)&v5 encodeWithCoder:v4];
  [v4 encodeBool:self->_expectsResponse forKey:{@"expectsResponse", v5.receiver, v5.super_class}];
}

- (WCMessageRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = WCMessageRequest;
  v5 = [(WCMessage *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_expectsResponse = [v4 decodeBoolForKey:@"expectsResponse"];
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

  v12 = [v3 stringWithFormat:@"<%@: %p, pairingID: %@, identifier: %@, dataLength: %lu, isDictionary:%s, expectsResponse: %s>", v5, self, v6, v7, v9, v10, v11];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4.receiver = self;
  v4.super_class = WCMessageRequest;
  return [(WCMessage *)&v4 isEqual:a3];
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = WCMessageRequest;
  return [(WCMessage *)&v3 hash];
}

@end