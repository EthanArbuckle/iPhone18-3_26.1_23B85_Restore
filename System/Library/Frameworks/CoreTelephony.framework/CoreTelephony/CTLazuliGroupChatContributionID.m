@interface CTLazuliGroupChatContributionID
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToCTLazuliGroupChatContributionID:(id)a3;
- (CTLazuliGroupChatContributionID)initWithCoder:(id)a3;
- (CTLazuliGroupChatContributionID)initWithReflection:(const void *)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
@end

@implementation CTLazuliGroupChatContributionID

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  v4 = [(CTLazuliGroupChatContributionID *)self identifier];
  [v3 appendFormat:@", identifier = %@", v4];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatContributionID:(id)a3
{
  v4 = a3;
  v5 = [(CTLazuliGroupChatContributionID *)self identifier];
  v6 = [v4 identifier];
  if (v5 == v6)
  {
    v9 = 1;
  }

  else
  {
    v7 = [(CTLazuliGroupChatContributionID *)self identifier];
    v8 = [v4 identifier];
    v9 = [v7 isEqualToString:v8];
  }

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatContributionID *)self isEqualToCTLazuliGroupChatContributionID:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [CTLazuliGroupChatContributionID allocWithZone:?];
  v6 = [(NSString *)self->_identifier copyWithZone:a3];
  [(CTLazuliGroupChatContributionID *)v5 setIdentifier:v6];

  return v5;
}

- (CTLazuliGroupChatContributionID)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatContributionID;
  v5 = [(CTLazuliGroupChatContributionID *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (CTLazuliGroupChatContributionID)initWithReflection:(const void *)a3
{
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatContributionID;
  v4 = [(CTLazuliGroupChatContributionID *)&v9 init];
  if (v4)
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = a3;
    }

    else
    {
      v5 = *a3;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
    identifier = v4->_identifier;
    v4->_identifier = v6;
  }

  return v4;
}

@end