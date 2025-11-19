@interface CNFMLFriend
- (BOOL)isEqual:(id)a3;
- (CNFMLFriend)initWithHandle:(id)a3 handleType:(int64_t)a4 createDate:(id)a5 expiry:(id)a6 origin:(int64_t)a7 originatedFromTheSameClient:(BOOL)a8;
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
  v5 = [(CNFMLFriend *)self comparisonIdentifier];
  v6 = [v3 stringWithFormat:@"<%@ %p [%@]>", v4, self, v5];

  return v6;
}

- (id)description
{
  v2 = MEMORY[0x1E696AEC0];
  v3 = [(CNFMLFriend *)self comparisonIdentifier];
  v4 = [v2 stringWithFormat:@"%@", v3];

  return v4;
}

- (unint64_t)hash
{
  v2 = [(CNFMLFriend *)self comparisonIdentifier];
  v3 = [v2 hash];

  return v3;
}

- (id)comparisonIdentifier
{
  v13 = MEMORY[0x1E696AEC0];
  v3 = [(CNFMLFriend *)self handle];
  v4 = [v3 identifier];
  v5 = [v4 lowercaseString];
  v6 = [(CNFMLFriend *)self handleType];
  v7 = [(CNFMLFriend *)self createdAt];
  v8 = [v7 description];
  v9 = [(CNFMLFriend *)self expiry];
  v10 = [v9 description];
  v11 = [v13 stringWithFormat:@"Handle:%@ Handle Type:%ld CreateAt:%@ expiry:%@ origin:%ld originatedFromTheSameClient:%d", v5, v6, v8, v10, -[CNFMLFriend origin](self, "origin"), -[CNFMLFriend originatedFromTheSameClient](self, "originatedFromTheSameClient")];

  return v11;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(CNFMLFriend *)self comparisonIdentifier];
    v7 = [v5 comparisonIdentifier];

    v8 = [v6 isEqualToString:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (CNFMLFriend)initWithHandle:(id)a3 handleType:(int64_t)a4 createDate:(id)a5 expiry:(id)a6 origin:(int64_t)a7 originatedFromTheSameClient:(BOOL)a8
{
  v8 = a8;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v20.receiver = self;
  v20.super_class = CNFMLFriend;
  v17 = [(CNFMLFriend *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(CNFMLFriend *)v17 setHandle:v14];
    [(CNFMLFriend *)v18 setHandleType:a4];
    [(CNFMLFriend *)v18 setCreatedAt:v15];
    [(CNFMLFriend *)v18 setExpiry:v16];
    [(CNFMLFriend *)v18 setOrigin:a7];
    [(CNFMLFriend *)v18 setOriginatedFromTheSameClient:v8];
  }

  return v18;
}

@end