@interface CTLazuliGroupChatContributionID
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToCTLazuliGroupChatContributionID:(id)d;
- (CTLazuliGroupChatContributionID)initWithCoder:(id)coder;
- (CTLazuliGroupChatContributionID)initWithReflection:(const void *)reflection;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation CTLazuliGroupChatContributionID

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] stringWithFormat:@"<%@", objc_opt_class()];
  identifier = [(CTLazuliGroupChatContributionID *)self identifier];
  [v3 appendFormat:@", identifier = %@", identifier];

  [v3 appendString:@">"];

  return v3;
}

- (BOOL)isEqualToCTLazuliGroupChatContributionID:(id)d
{
  dCopy = d;
  identifier = [(CTLazuliGroupChatContributionID *)self identifier];
  identifier2 = [dCopy identifier];
  if (identifier == identifier2)
  {
    v9 = 1;
  }

  else
  {
    identifier3 = [(CTLazuliGroupChatContributionID *)self identifier];
    identifier4 = [dCopy identifier];
    v9 = [identifier3 isEqualToString:identifier4];
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(CTLazuliGroupChatContributionID *)self isEqualToCTLazuliGroupChatContributionID:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [CTLazuliGroupChatContributionID allocWithZone:?];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  [(CTLazuliGroupChatContributionID *)v5 setIdentifier:v6];

  return v5;
}

- (CTLazuliGroupChatContributionID)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatContributionID;
  v5 = [(CTLazuliGroupChatContributionID *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"kIdentifierKey"];
    identifier = v5->_identifier;
    v5->_identifier = v6;
  }

  return v5;
}

- (CTLazuliGroupChatContributionID)initWithReflection:(const void *)reflection
{
  v9.receiver = self;
  v9.super_class = CTLazuliGroupChatContributionID;
  v4 = [(CTLazuliGroupChatContributionID *)&v9 init];
  if (v4)
  {
    if (*(reflection + 23) >= 0)
    {
      reflectionCopy = reflection;
    }

    else
    {
      reflectionCopy = *reflection;
    }

    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:reflectionCopy];
    identifier = v4->_identifier;
    v4->_identifier = v6;
  }

  return v4;
}

@end