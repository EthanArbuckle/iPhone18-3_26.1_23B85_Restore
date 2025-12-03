@interface CNPropertyGroupSocialProfileItem
+ (id)displayLabelForSocialProfile:(id)profile forPropertyKey:(id)key;
+ (id)displayStringForSocialProfile:(id)profile;
+ (id)emptyValueForLabel:(id)label;
- (BOOL)isEquivalentToItem:(id)item;
- (CNSocialProfile)profile;
- (id)defaultActionURL;
- (id)displayLabel;
- (id)displayStringForValue:(id)value;
- (id)editingStringValue;
- (id)valueForDisplayString:(id)string;
@end

@implementation CNPropertyGroupSocialProfileItem

- (BOOL)isEquivalentToItem:(id)item
{
  itemCopy = item;
  v29.receiver = self;
  v29.super_class = CNPropertyGroupSocialProfileItem;
  if (![(CNPropertyGroupItem *)&v29 isEquivalentToItem:itemCopy])
  {
    contact = [(CNPropertyGroupItem *)self contact];
    contact2 = [itemCopy contact];

    if (contact == contact2)
    {
      v5 = 0;
      goto LABEL_22;
    }

    profile = [(CNPropertyGroupSocialProfileItem *)self profile];
    service = [profile service];

    profile2 = [itemCopy profile];
    service2 = [profile2 service];

    if (!service || !service2 || ![service isEqualToString:service2])
    {
      goto LABEL_17;
    }

    profile3 = [(CNPropertyGroupSocialProfileItem *)self profile];
    username = [profile3 username];

    profile4 = [itemCopy profile];
    username2 = [profile4 username];

    if (username && username2)
    {
      v16 = [username isEqualToString:username2];

      if ((v16 & 1) == 0)
      {
LABEL_17:
        profile5 = [(CNPropertyGroupSocialProfileItem *)self profile];
        urlString = [profile5 urlString];

        profile6 = [itemCopy profile];
        urlString2 = [profile6 urlString];

        v5 = 0;
        if (urlString && urlString2)
        {
          v26 = [MEMORY[0x1E695DFF8] URLWithString:urlString];
          v27 = [MEMORY[0x1E695DFF8] URLWithString:urlString2];
          v5 = [v26 isEqual:v27];
        }

        goto LABEL_21;
      }
    }

    else
    {
      profile7 = [(CNPropertyGroupSocialProfileItem *)self profile];
      userIdentifier = [profile7 userIdentifier];

      profile8 = [(CNPropertyGroupSocialProfileItem *)self profile];
      userIdentifier2 = [profile8 userIdentifier];

      if (!userIdentifier || !userIdentifier2)
      {

        goto LABEL_17;
      }

      v21 = [userIdentifier isEqualToString:userIdentifier2];

      if ((v21 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v5 = 1;
LABEL_21:

    goto LABEL_22;
  }

  v5 = 1;
LABEL_22:

  return v5;
}

- (id)editingStringValue
{
  profile = [(CNPropertyGroupSocialProfileItem *)self profile];
  username = [profile username];
  v5 = [username length];

  profile2 = [(CNPropertyGroupSocialProfileItem *)self profile];
  v7 = profile2;
  if (v5)
  {
    [(CNPropertyGroupSocialProfileItem *)self displayStringForValue:profile2];
  }

  else
  {
    [profile2 userIdentifier];
  }
  v8 = ;

  return v8;
}

- (id)valueForDisplayString:(id)string
{
  stringCopy = string;
  profile = [(CNPropertyGroupSocialProfileItem *)self profile];
  v6 = [profile mutableCopy];

  if ([stringCopy length] && objc_msgSend(stringCopy, "characterAtIndex:", 0) == 64)
  {
    v7 = [stringCopy substringFromIndex:1];
    [v6 setUsername:v7];
  }

  else
  {
    [v6 setUsername:stringCopy];
  }

  return v6;
}

- (id)displayStringForValue:(id)value
{
  valueCopy = value;
  v4 = [objc_opt_class() displayStringForSocialProfile:valueCopy];

  return v4;
}

- (id)displayLabel
{
  v3 = objc_opt_class();
  profile = [(CNPropertyGroupSocialProfileItem *)self profile];
  property = [(CNPropertyGroupItem *)self property];
  v6 = [v3 displayLabelForSocialProfile:profile forPropertyKey:property];

  return v6;
}

- (id)defaultActionURL
{
  v2 = MEMORY[0x1E695DFF8];
  profile = [(CNPropertyGroupSocialProfileItem *)self profile];
  urlString = [profile urlString];
  v5 = [v2 URLWithString:urlString];

  return v5;
}

- (CNSocialProfile)profile
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];

  return value;
}

+ (id)displayStringForSocialProfile:(id)profile
{
  profileCopy = profile;
  v4 = *MEMORY[0x1E6996568];
  displayname = [profileCopy displayname];
  v6 = (*(v4 + 16))(v4, displayname);

  if (v6)
  {
    username = [profileCopy username];
    v8 = (*(v4 + 16))(v4, username);

    if (v8)
    {
      userIdentifier = [profileCopy userIdentifier];
      v10 = (*(v4 + 16))(v4, userIdentifier);

      if (v10)
      {
        urlString = [profileCopy urlString];
        v12 = (*(v4 + 16))(v4, urlString);

        if (v12)
        {
          v13 = 0;
          goto LABEL_11;
        }

        urlString2 = [profileCopy urlString];
      }

      else
      {
        urlString2 = [profileCopy userIdentifier];
      }
    }

    else
    {
      urlString2 = [profileCopy username];
    }
  }

  else
  {
    urlString2 = [profileCopy displayname];
  }

  v13 = urlString2;
LABEL_11:
  if ((*(v4 + 16))(v4, v13))
  {
    service = v13;
    v13 = &stru_1F0CE7398;
  }

  else
  {
    service = [profileCopy service];
    if (((*(v4 + 16))(v4, service) & 1) == 0)
    {
      username2 = [profileCopy username];
      if (((*(v4 + 16))(v4, username2) & 1) == 0)
      {
        service2 = [profileCopy service];
        if ([service2 compare:*MEMORY[0x1E695CC78] options:1])
        {
        }

        else
        {
          v18 = [(__CFString *)v13 characterAtIndex:0];

          if (v18 == 64)
          {
            goto LABEL_21;
          }

          v19 = MEMORY[0x1E696AEC0];
          service = [profileCopy username];
          [v19 stringWithFormat:@"@%@", service];
          v13 = username2 = v13;
        }
      }
    }
  }

LABEL_21:

  return v13;
}

+ (id)displayLabelForSocialProfile:(id)profile forPropertyKey:(id)key
{
  profileCopy = profile;
  keyCopy = key;
  v7 = *MEMORY[0x1E6996568];
  service = [profileCopy service];
  LOBYTE(v7) = (*(v7 + 16))(v7, service);

  if (v7)
  {
    v9 = [MEMORY[0x1E695CD58] localizedStringForKey:keyCopy];
  }

  else
  {
    v10 = MEMORY[0x1E695CFA0];
    service2 = [profileCopy service];
    v12 = [v10 localizedStringForService:service2];
    v13 = v12;
    if (v12)
    {
      service3 = v12;
    }

    else
    {
      service3 = [profileCopy service];
    }

    v9 = service3;
  }

  return v9;
}

+ (id)emptyValueForLabel:(id)label
{
  v3 = MEMORY[0x1E695CFA0];
  labelCopy = label;
  v5 = [[v3 alloc] initWithUrlString:&stru_1F0CE7398 username:&stru_1F0CE7398 userIdentifier:&stru_1F0CE7398 service:labelCopy];

  return v5;
}

@end