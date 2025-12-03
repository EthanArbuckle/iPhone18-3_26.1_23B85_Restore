@interface CTStewieFindMyMessage
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToFindMyMessage:(id)message;
- (CTStewieFindMyMessage)initWithCoder:(id)coder;
- (CTStewieFindMyMessage)initWithData:(id)data error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CTStewieFindMyMessage

- (CTStewieFindMyMessage)initWithData:(id)data error:(id *)p_isa
{
  v16[1] = *MEMORY[0x1E69E9840];
  dataCopy = data;
  v8 = dataCopy;
  if (dataCopy && [dataCopy length])
  {
    v14.receiver = self;
    v14.super_class = CTStewieFindMyMessage;
    v9 = [(CTStewieFindMyMessage *)&v14 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_encryptedData, data);
      self = p_isa;
      p_isa = &self->super.isa;
    }

    else
    {
      self = 0;
    }
  }

  else if (p_isa)
  {
    v10 = MEMORY[0x1E696ABC0];
    v15 = *MEMORY[0x1E696A578];
    v16[0] = @"Data provided is either nil or empty";
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    *p_isa = [v10 errorWithDomain:*MEMORY[0x1E696A798] code:22 userInfo:v11];

    p_isa = 0;
  }

  v12 = *MEMORY[0x1E69E9840];
  return p_isa;
}

- (NSString)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@ %p", objc_opt_class(), self];
  encryptedData = [(CTStewieFindMyMessage *)self encryptedData];
  [v3 appendFormat:@", encryptedData=%@", encryptedData];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToFindMyMessage:(id)message
{
  messageCopy = message;
  encryptedData = [(CTStewieFindMyMessage *)self encryptedData];
  encryptedData2 = [messageCopy encryptedData];
  v7 = [encryptedData isEqualToData:encryptedData2];

  return v7;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieFindMyMessage *)self isEqualToFindMyMessage:equalCopy];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  encryptedData = [(CTStewieFindMyMessage *)self encryptedData];
  [v4 setEncryptedData:encryptedData];

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  encryptedData = [(CTStewieFindMyMessage *)self encryptedData];
  [coderCopy encodeObject:encryptedData forKey:@"encryptedData"];
}

- (CTStewieFindMyMessage)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTStewieFindMyMessage;
  v5 = [(CTStewieFindMyMessage *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    [(CTStewieFindMyMessage *)v5 setEncryptedData:v6];

    v7 = v5;
  }

  return v5;
}

@end