@interface ATRequest
- (ATRequest)initWithCoder:(id)coder;
- (ATRequest)initWithCommand:(id)command dataClass:(id)class parameters:(id)parameters;
- (id)additionalDescription;
- (id)partialResponseWithParameters:(id)parameters;
- (id)responseWithError:(id)error parameters:(id)parameters;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ATRequest

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = ATRequest;
  coderCopy = coder;
  [(ATMessage *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_command forKey:{@"command", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_dataClass forKey:@"dataClass"];
}

- (ATRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = ATRequest;
  v5 = [(ATMessage *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"command"];
    command = v5->_command;
    v5->_command = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataClass"];
    dataClass = v5->_dataClass;
    v5->_dataClass = v8;
  }

  return v5;
}

- (id)additionalDescription
{
  v3 = MEMORY[0x277CCACA8];
  command = [(ATRequest *)self command];
  dataClass = [(ATRequest *)self dataClass];
  v6 = [v3 stringWithFormat:@"%@ %@", command, dataClass];

  return v6;
}

- (id)partialResponseWithParameters:(id)parameters
{
  parametersCopy = parameters;
  v5 = objc_alloc_init(ATResponse);
  [(ATMessage *)v5 setMessageID:[(ATMessage *)self messageID]];
  [(ATMessage *)v5 setSessionID:[(ATMessage *)self sessionID]];
  [(ATResponse *)v5 setPartial:1];
  [(ATMessage *)v5 setParameters:parametersCopy];

  return v5;
}

- (id)responseWithError:(id)error parameters:(id)parameters
{
  parametersCopy = parameters;
  errorCopy = error;
  v8 = objc_alloc_init(ATResponse);
  [(ATMessage *)v8 setMessageID:[(ATMessage *)self messageID]];
  [(ATMessage *)v8 setSessionID:[(ATMessage *)self sessionID]];
  [(ATResponse *)v8 setError:errorCopy];

  [(ATMessage *)v8 setParameters:parametersCopy];

  return v8;
}

- (ATRequest)initWithCommand:(id)command dataClass:(id)class parameters:(id)parameters
{
  commandCopy = command;
  classCopy = class;
  parametersCopy = parameters;
  v14.receiver = self;
  v14.super_class = ATRequest;
  v11 = [(ATRequest *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(ATRequest *)v11 setCommand:commandCopy];
    [(ATRequest *)v12 setDataClass:classCopy];
    [(ATMessage *)v12 setParameters:parametersCopy];
  }

  return v12;
}

@end