@interface CNPropertyGroupSocialProfileItem
+ (id)displayLabelForSocialProfile:(id)a3 forPropertyKey:(id)a4;
+ (id)displayStringForSocialProfile:(id)a3;
+ (id)emptyValueForLabel:(id)a3;
- (BOOL)isEquivalentToItem:(id)a3;
- (CNSocialProfile)profile;
- (id)defaultActionURL;
- (id)displayLabel;
- (id)displayStringForValue:(id)a3;
- (id)editingStringValue;
- (id)valueForDisplayString:(id)a3;
@end

@implementation CNPropertyGroupSocialProfileItem

- (BOOL)isEquivalentToItem:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = CNPropertyGroupSocialProfileItem;
  if (![(CNPropertyGroupItem *)&v29 isEquivalentToItem:v4])
  {
    v6 = [(CNPropertyGroupItem *)self contact];
    v7 = [v4 contact];

    if (v6 == v7)
    {
      v5 = 0;
      goto LABEL_22;
    }

    v8 = [(CNPropertyGroupSocialProfileItem *)self profile];
    v9 = [v8 service];

    v10 = [v4 profile];
    v11 = [v10 service];

    if (!v9 || !v11 || ![v9 isEqualToString:v11])
    {
      goto LABEL_17;
    }

    v12 = [(CNPropertyGroupSocialProfileItem *)self profile];
    v13 = [v12 username];

    v14 = [v4 profile];
    v15 = [v14 username];

    if (v13 && v15)
    {
      v16 = [v13 isEqualToString:v15];

      if ((v16 & 1) == 0)
      {
LABEL_17:
        v22 = [(CNPropertyGroupSocialProfileItem *)self profile];
        v23 = [v22 urlString];

        v24 = [v4 profile];
        v25 = [v24 urlString];

        v5 = 0;
        if (v23 && v25)
        {
          v26 = [MEMORY[0x1E695DFF8] URLWithString:v23];
          v27 = [MEMORY[0x1E695DFF8] URLWithString:v25];
          v5 = [v26 isEqual:v27];
        }

        goto LABEL_21;
      }
    }

    else
    {
      v17 = [(CNPropertyGroupSocialProfileItem *)self profile];
      v18 = [v17 userIdentifier];

      v19 = [(CNPropertyGroupSocialProfileItem *)self profile];
      v20 = [v19 userIdentifier];

      if (!v18 || !v20)
      {

        goto LABEL_17;
      }

      v21 = [v18 isEqualToString:v20];

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
  v3 = [(CNPropertyGroupSocialProfileItem *)self profile];
  v4 = [v3 username];
  v5 = [v4 length];

  v6 = [(CNPropertyGroupSocialProfileItem *)self profile];
  v7 = v6;
  if (v5)
  {
    [(CNPropertyGroupSocialProfileItem *)self displayStringForValue:v6];
  }

  else
  {
    [v6 userIdentifier];
  }
  v8 = ;

  return v8;
}

- (id)valueForDisplayString:(id)a3
{
  v4 = a3;
  v5 = [(CNPropertyGroupSocialProfileItem *)self profile];
  v6 = [v5 mutableCopy];

  if ([v4 length] && objc_msgSend(v4, "characterAtIndex:", 0) == 64)
  {
    v7 = [v4 substringFromIndex:1];
    [v6 setUsername:v7];
  }

  else
  {
    [v6 setUsername:v4];
  }

  return v6;
}

- (id)displayStringForValue:(id)a3
{
  v3 = a3;
  v4 = [objc_opt_class() displayStringForSocialProfile:v3];

  return v4;
}

- (id)displayLabel
{
  v3 = objc_opt_class();
  v4 = [(CNPropertyGroupSocialProfileItem *)self profile];
  v5 = [(CNPropertyGroupItem *)self property];
  v6 = [v3 displayLabelForSocialProfile:v4 forPropertyKey:v5];

  return v6;
}

- (id)defaultActionURL
{
  v2 = MEMORY[0x1E695DFF8];
  v3 = [(CNPropertyGroupSocialProfileItem *)self profile];
  v4 = [v3 urlString];
  v5 = [v2 URLWithString:v4];

  return v5;
}

- (CNSocialProfile)profile
{
  v2 = [(CNPropertyGroupItem *)self labeledValue];
  v3 = [v2 value];

  return v3;
}

+ (id)displayStringForSocialProfile:(id)a3
{
  v3 = a3;
  v4 = *MEMORY[0x1E6996568];
  v5 = [v3 displayname];
  v6 = (*(v4 + 16))(v4, v5);

  if (v6)
  {
    v7 = [v3 username];
    v8 = (*(v4 + 16))(v4, v7);

    if (v8)
    {
      v9 = [v3 userIdentifier];
      v10 = (*(v4 + 16))(v4, v9);

      if (v10)
      {
        v11 = [v3 urlString];
        v12 = (*(v4 + 16))(v4, v11);

        if (v12)
        {
          v13 = 0;
          goto LABEL_11;
        }

        v14 = [v3 urlString];
      }

      else
      {
        v14 = [v3 userIdentifier];
      }
    }

    else
    {
      v14 = [v3 username];
    }
  }

  else
  {
    v14 = [v3 displayname];
  }

  v13 = v14;
LABEL_11:
  if ((*(v4 + 16))(v4, v13))
  {
    v15 = v13;
    v13 = &stru_1F0CE7398;
  }

  else
  {
    v15 = [v3 service];
    if (((*(v4 + 16))(v4, v15) & 1) == 0)
    {
      v16 = [v3 username];
      if (((*(v4 + 16))(v4, v16) & 1) == 0)
      {
        v17 = [v3 service];
        if ([v17 compare:*MEMORY[0x1E695CC78] options:1])
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
          v15 = [v3 username];
          [v19 stringWithFormat:@"@%@", v15];
          v13 = v16 = v13;
        }
      }
    }
  }

LABEL_21:

  return v13;
}

+ (id)displayLabelForSocialProfile:(id)a3 forPropertyKey:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = *MEMORY[0x1E6996568];
  v8 = [v5 service];
  LOBYTE(v7) = (*(v7 + 16))(v7, v8);

  if (v7)
  {
    v9 = [MEMORY[0x1E695CD58] localizedStringForKey:v6];
  }

  else
  {
    v10 = MEMORY[0x1E695CFA0];
    v11 = [v5 service];
    v12 = [v10 localizedStringForService:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = [v5 service];
    }

    v9 = v14;
  }

  return v9;
}

+ (id)emptyValueForLabel:(id)a3
{
  v3 = MEMORY[0x1E695CFA0];
  v4 = a3;
  v5 = [[v3 alloc] initWithUrlString:&stru_1F0CE7398 username:&stru_1F0CE7398 userIdentifier:&stru_1F0CE7398 service:v4];

  return v5;
}

@end