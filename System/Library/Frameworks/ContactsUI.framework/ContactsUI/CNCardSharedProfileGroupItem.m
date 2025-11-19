@interface CNCardSharedProfileGroupItem
- (id)contactDisplayName;
- (id)displayStringForValue:(id)a3;
- (id)sharedByDisplayString;
- (int64_t)sharedPhotoDisplayPreference;
@end

@implementation CNCardSharedProfileGroupItem

- (int64_t)sharedPhotoDisplayPreference
{
  v3 = [(CNPropertyGroupItem *)self labeledValue];
  v4 = [v3 value];
  v5 = [(CNCardSharedProfileGroupItem *)self sharedPhotoDisplayPreferenceForValue:v4];

  return v5;
}

- (id)sharedByDisplayString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_CONTACT_CARD_VALUE_ALWAYS_UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
  v6 = [(CNCardSharedProfileGroupItem *)self contactDisplayName];
  v7 = [v3 stringWithFormat:v5, v6];

  return v7;
}

- (id)displayStringForValue:(id)a3
{
  v4 = [(CNCardSharedProfileGroupItem *)self sharedProfileStateOracle];
  v5 = [v4 effectiveStateForContact];

  if (v5 != 1)
  {
    if (v5 != 3)
    {
      v11 = 0;
      goto LABEL_10;
    }

    v6 = [(CNPropertyGroupItem *)self contact];
    v7 = [v6 sharedPhotoDisplayPreference];

    v8 = [(CNCardSharedProfileGroupItem *)self sharedProfileStateOracle];
    v9 = [v8 pendingNickname];
    if (v9)
    {
      v10 = 0;
    }

    else
    {
      v12 = [(CNCardSharedProfileGroupItem *)self sharedProfileStateOracle];
      v13 = [v12 currentNickname];
      v10 = v13 == 0;
    }

    v11 = 0;
    if (!v7 || v10)
    {
      goto LABEL_10;
    }
  }

  v11 = [(CNCardSharedProfileGroupItem *)self sharedByDisplayString];
LABEL_10:

  return v11;
}

- (id)contactDisplayName
{
  v3 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v3 setStyle:1000];
  [v3 setFallbackStyle:-1];
  v4 = [(CNPropertyGroupItem *)self contact];
  v5 = [v3 stringFromContact:v4];

  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = &stru_1F0CE7398;
  }

  v7 = v6;

  return v6;
}

@end