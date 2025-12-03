@interface ANSender
+ (ANSender)senderWithID:(id)d type:(unint64_t)type;
- (ANSender)initWithCoder:(id)coder;
- (ANSender)initWithID:(id)d type:(unint64_t)type;
- (id)description;
- (id)stringForSenderIdentifierType:(unint64_t)type;
- (void)encodeWithCoder:(id)coder;
@end

@implementation ANSender

- (ANSender)initWithID:(id)d type:(unint64_t)type
{
  dCopy = d;
  v11.receiver = self;
  v11.super_class = ANSender;
  v8 = [(ANSender *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, d);
    v9->_type = type;
  }

  return v9;
}

+ (ANSender)senderWithID:(id)d type:(unint64_t)type
{
  dCopy = d;
  v6 = [[ANSender alloc] initWithID:dCopy type:type];

  return v6;
}

- (id)stringForSenderIdentifierType:(unint64_t)type
{
  v3 = @"Unknown";
  if (type == 2)
  {
    v3 = @"Rapport";
  }

  if (type == 1)
  {
    return @"IDS";
  }

  else
  {
    return v3;
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [(ANSender *)self identifier];
  v5 = [(ANSender *)self stringForSenderIdentifierType:[(ANSender *)self type]];
  v6 = [v3 stringWithFormat:@"ID = %@, Type = %@", identifier, v5];

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  identifier = [(ANSender *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"Identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANSender type](self, "type")}];
  [coderCopy encodeObject:v6 forKey:@"IdentifierType"];
}

- (ANSender)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(ANSender *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierType"];
    v5->_type = [v8 unsignedIntegerValue];
  }

  return v5;
}

@end