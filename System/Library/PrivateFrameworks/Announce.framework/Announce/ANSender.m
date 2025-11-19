@interface ANSender
+ (ANSender)senderWithID:(id)a3 type:(unint64_t)a4;
- (ANSender)initWithCoder:(id)a3;
- (ANSender)initWithID:(id)a3 type:(unint64_t)a4;
- (id)description;
- (id)stringForSenderIdentifierType:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation ANSender

- (ANSender)initWithID:(id)a3 type:(unint64_t)a4
{
  v7 = a3;
  v11.receiver = self;
  v11.super_class = ANSender;
  v8 = [(ANSender *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_identifier, a3);
    v9->_type = a4;
  }

  return v9;
}

+ (ANSender)senderWithID:(id)a3 type:(unint64_t)a4
{
  v5 = a3;
  v6 = [[ANSender alloc] initWithID:v5 type:a4];

  return v6;
}

- (id)stringForSenderIdentifierType:(unint64_t)a3
{
  v3 = @"Unknown";
  if (a3 == 2)
  {
    v3 = @"Rapport";
  }

  if (a3 == 1)
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
  v4 = [(ANSender *)self identifier];
  v5 = [(ANSender *)self stringForSenderIdentifierType:[(ANSender *)self type]];
  v6 = [v3 stringWithFormat:@"ID = %@, Type = %@", v4, v5];

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ANSender *)self identifier];
  [v4 encodeObject:v5 forKey:@"Identifier"];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[ANSender type](self, "type")}];
  [v4 encodeObject:v6 forKey:@"IdentifierType"];
}

- (ANSender)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(ANSender *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"IdentifierType"];
    v5->_type = [v8 unsignedIntegerValue];
  }

  return v5;
}

@end