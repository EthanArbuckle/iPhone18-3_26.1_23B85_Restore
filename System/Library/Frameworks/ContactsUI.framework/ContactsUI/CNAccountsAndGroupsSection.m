@interface CNAccountsAndGroupsSection
- (BOOL)isEqual:(id)a3;
- (BOOL)wantsSectionHeader;
- (NSString)title;
- (unint64_t)hash;
@end

@implementation CNAccountsAndGroupsSection

- (BOOL)wantsSectionHeader
{
  if ([(CNAccountsAndGroupsSection *)self isAcceptedContactsSection])
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v4 = *MEMORY[0x1E6996568];
    v5 = [(CNAccountsAndGroupsSection *)self title];
    v3 = (*(v4 + 16))(v4, v5) ^ 1;
  }

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(CNAccountsAndGroupsSection *)v4 identifier], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      v6 = [(CNAccountsAndGroupsSection *)v4 identifier];
      v7 = [(CNAccountsAndGroupsSection *)self identifier];
      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(CNAccountsAndGroupsSection *)self identifier];
  if (v3)
  {
    v4 = [(CNAccountsAndGroupsSection *)self identifier];
    v5 = [v4 hash];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CNAccountsAndGroupsSection;
    v5 = [(CNAccountsAndGroupsSection *)&v7 hash];
  }

  return v5;
}

- (NSString)title
{
  if (!self->_title)
  {
    v3 = [(CNAccountsAndGroupsSection *)self titleProvider];

    if (v3)
    {
      v4 = [(CNAccountsAndGroupsSection *)self titleProvider];
      v5 = v4[2]();
      title = self->_title;
      self->_title = v5;
    }
  }

  v7 = self->_title;

  return v7;
}

@end