@interface CNFMLFriend
- (BOOL)isEqual:(id)equal;
- (CNFMLFriend)initWithHandle:(id)handle handleType:(int64_t)type createDate:(id)date expiry:(id)expiry origin:(int64_t)origin originatedFromTheSameClient:(BOOL)client;
- (id)comparisonIdentifier;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation CNFMLFriend

- (id)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  comparisonIdentifier = [(CNFMLFriend *)self comparisonIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, comparisonIdentifier];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  comparisonIdentifier = [(CNFMLFriend *)self comparisonIdentifier];
  v4 = [v2 stringWithFormat:@"%@", comparisonIdentifier];

  return v4;
}

- (unint64_t)hash
{
  comparisonIdentifier = [(CNFMLFriend *)self comparisonIdentifier];
  v3 = [comparisonIdentifier hash];

  return v3;
}

- (id)comparisonIdentifier
{
  v13 = MEMORY[0x1E696AEC0];
  handle = [(CNFMLFriend *)self handle];
  identifier = [handle identifier];
  lowercaseString = [identifier lowercaseString];
  handleType = [(CNFMLFriend *)self handleType];
  createdAt = [(CNFMLFriend *)self createdAt];
  v8 = [createdAt description];
  expiry = [(CNFMLFriend *)self expiry];
  v10 = [expiry description];
  v11 = [v13 stringWithFormat:@"Handle:%@ Handle Type:%ld CreateAt:%@ expiry:%@ origin:%ld originatedFromTheSameClient:%d", lowercaseString, handleType, v8, v10, -[CNFMLFriend origin](self, "origin"), -[CNFMLFriend originatedFromTheSameClient](self, "originatedFromTheSameClient")];

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    comparisonIdentifier = [(CNFMLFriend *)self comparisonIdentifier];
    comparisonIdentifier2 = [v5 comparisonIdentifier];

    v8 = [comparisonIdentifier isEqualToString:comparisonIdentifier2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNFMLFriend)initWithHandle:(id)handle handleType:(int64_t)type createDate:(id)date expiry:(id)expiry origin:(int64_t)origin originatedFromTheSameClient:(BOOL)client
{
  clientCopy = client;
  handleCopy = handle;
  dateCopy = date;
  expiryCopy = expiry;
  v20.receiver = self;
  v20.super_class = CNFMLFriend;
  v17 = [(CNFMLFriend *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(CNFMLFriend *)v17 setHandle:handleCopy];
    [(CNFMLFriend *)v18 setHandleType:type];
    [(CNFMLFriend *)v18 setCreatedAt:dateCopy];
    [(CNFMLFriend *)v18 setExpiry:expiryCopy];
    [(CNFMLFriend *)v18 setOrigin:origin];
    [(CNFMLFriend *)v18 setOriginatedFromTheSameClient:clientCopy];
  }

  return v18;
}

@end