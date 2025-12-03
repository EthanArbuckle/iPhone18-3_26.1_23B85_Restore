@interface ATMessage
- (ATMessage)initWithCoder:(id)coder;
- (id)description;
- (id)parameterForKey:(id)key;
- (unsigned)options;
- (void)encodeWithCoder:(id)coder;
- (void)setOptions:(unsigned int)options;
@end

@implementation ATMessage

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:self->_messageID forKey:@"messageID"];
  [coderCopy encodeDouble:@"timestamp" forKey:self->_timestamp];
  parameters = self->_parameters;
  if (parameters)
  {
    v12 = 0;
    v6 = [MEMORY[0x277CCAC58] dataWithPropertyList:parameters format:200 options:0 error:&v12];
    v7 = v12;
    if (!v6)
    {
      v11 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"unable to encode params data" userInfo:0];
      objc_exception_throw(v11);
    }

    v8 = v7;
    [coderCopy encodeObject:v6 forKey:@"parameters"];
  }

  if (self->_dataStream)
  {
    v9 = [[ATCodableStream alloc] initWithInputStream:self->_dataStream];
    stream = self->_stream;
    self->_stream = v9;

    [coderCopy encodeObject:self->_stream forKey:@"dataStream"];
  }
}

- (ATMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = ATMessage;
  v5 = [(ATMessage *)&v18 init];
  if (v5)
  {
    v5->_messageID = [coderCopy decodeInt64ForKey:@"messageID"];
    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v6;
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"dataStream"];
    stream = v5->_stream;
    v5->_stream = v7;

    inputStream = [(ATCodableStream *)v5->_stream inputStream];
    dataStream = v5->_dataStream;
    v5->_dataStream = inputStream;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"parameters"];
    if (v11)
    {
      v17 = 0;
      v12 = [MEMORY[0x277CCAC58] propertyListWithData:v11 options:0 format:0 error:&v17];
      v13 = v17;
      parameters = v5->_parameters;
      v5->_parameters = v12;

      if (!v5->_parameters)
      {
        v16 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"unable to decode params data" userInfo:0];
        objc_exception_throw(v16);
      }
    }
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  messageID = [(ATMessage *)self messageID];
  additionalDescription = [(ATMessage *)self additionalDescription];
  v7 = [v3 stringWithFormat:@"<%@: %p id=%d %@>", v4, self, messageID, additionalDescription];

  return v7;
}

- (void)setOptions:(unsigned int)options
{
  parameters = [(ATMessage *)self parameters];
  if (parameters)
  {
    parameters2 = [(ATMessage *)self parameters];
    v8 = [parameters2 mutableCopy];
  }

  else
  {
    v8 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];
  }

  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:options];
  [v8 setValue:v7 forKey:@"_Options"];
  [(ATMessage *)self setParameters:v8];
}

- (unsigned)options
{
  v2 = [(ATMessage *)self parameterForKey:@"_Options"];
  unsignedIntValue = [v2 unsignedIntValue];

  return unsignedIntValue;
}

- (id)parameterForKey:(id)key
{
  keyCopy = key;
  parameters = [(ATMessage *)self parameters];
  v6 = [parameters objectForKey:keyCopy];

  return v6;
}

@end