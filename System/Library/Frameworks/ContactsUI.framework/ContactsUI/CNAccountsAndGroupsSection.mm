@interface CNAccountsAndGroupsSection
- (BOOL)isEqual:(id)equal;
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
    title = [(CNAccountsAndGroupsSection *)self title];
    v3 = (*(v4 + 16))(v4, title) ^ 1;
  }

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ([(CNAccountsAndGroupsSection *)equalCopy identifier], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      identifier = [(CNAccountsAndGroupsSection *)equalCopy identifier];
      identifier2 = [(CNAccountsAndGroupsSection *)self identifier];
      v8 = [identifier isEqualToString:identifier2];
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
  identifier = [(CNAccountsAndGroupsSection *)self identifier];
  if (identifier)
  {
    identifier2 = [(CNAccountsAndGroupsSection *)self identifier];
    v5 = [identifier2 hash];
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
    titleProvider = [(CNAccountsAndGroupsSection *)self titleProvider];

    if (titleProvider)
    {
      titleProvider2 = [(CNAccountsAndGroupsSection *)self titleProvider];
      v5 = titleProvider2[2]();
      title = self->_title;
      self->_title = v5;
    }
  }

  v7 = self->_title;

  return v7;
}

@end