@interface CTStewieFindMyMessage
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToFindMyMessage:(id)a3;
- (CTStewieFindMyMessage)initWithCoder:(id)a3;
- (CTStewieFindMyMessage)initWithData:(id)a3 error:(id *)p_isa;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CTStewieFindMyMessage

- (CTStewieFindMyMessage)initWithData:(id)a3 error:(id *)p_isa
{
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (v7 && [v7 length])
  {
    v14.receiver = self;
    v14.super_class = CTStewieFindMyMessage;
    v9 = [(CTStewieFindMyMessage *)&v14 init];
    p_isa = &v9->super.isa;
    if (v9)
    {
      objc_storeStrong(&v9->_encryptedData, a3);
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
  v4 = [(CTStewieFindMyMessage *)self encryptedData];
  [v3 appendFormat:@", encryptedData=%@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToFindMyMessage:(id)a3
{
  v4 = a3;
  v5 = [(CTStewieFindMyMessage *)self encryptedData];
  v6 = [v4 encryptedData];
  v7 = [v5 isEqualToData:v6];

  return v7;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(CTStewieFindMyMessage *)self isEqualToFindMyMessage:v4];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(CTStewieFindMyMessage *)self encryptedData];
  [v4 setEncryptedData:v5];

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(CTStewieFindMyMessage *)self encryptedData];
  [v5 encodeObject:v4 forKey:@"encryptedData"];
}

- (CTStewieFindMyMessage)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTStewieFindMyMessage;
  v5 = [(CTStewieFindMyMessage *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"encryptedData"];
    [(CTStewieFindMyMessage *)v5 setEncryptedData:v6];

    v7 = v5;
  }

  return v5;
}

@end