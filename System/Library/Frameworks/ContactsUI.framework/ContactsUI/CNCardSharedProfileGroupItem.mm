@interface CNCardSharedProfileGroupItem
- (id)contactDisplayName;
- (id)displayStringForValue:(id)value;
- (id)sharedByDisplayString;
- (int64_t)sharedPhotoDisplayPreference;
@end

@implementation CNCardSharedProfileGroupItem

- (int64_t)sharedPhotoDisplayPreference
{
  labeledValue = [(CNPropertyGroupItem *)self labeledValue];
  value = [labeledValue value];
  v5 = [(CNCardSharedProfileGroupItem *)self sharedPhotoDisplayPreferenceForValue:value];

  return v5;
}

- (id)sharedByDisplayString
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = CNContactsUIBundle();
  v5 = [v4 localizedStringForKey:@"SNAP_DISPLAY_PREFERENCE_CONTACT_CARD_VALUE_ALWAYS_UPDATE" value:&stru_1F0CE7398 table:@"Localized"];
  contactDisplayName = [(CNCardSharedProfileGroupItem *)self contactDisplayName];
  v7 = [v3 stringWithFormat:v5, contactDisplayName];

  return v7;
}

- (id)displayStringForValue:(id)value
{
  sharedProfileStateOracle = [(CNCardSharedProfileGroupItem *)self sharedProfileStateOracle];
  effectiveStateForContact = [sharedProfileStateOracle effectiveStateForContact];

  if (effectiveStateForContact != 1)
  {
    if (effectiveStateForContact != 3)
    {
      sharedByDisplayString = 0;
      goto LABEL_10;
    }

    contact = [(CNPropertyGroupItem *)self contact];
    sharedPhotoDisplayPreference = [contact sharedPhotoDisplayPreference];

    sharedProfileStateOracle2 = [(CNCardSharedProfileGroupItem *)self sharedProfileStateOracle];
    pendingNickname = [sharedProfileStateOracle2 pendingNickname];
    if (pendingNickname)
    {
      v10 = 0;
    }

    else
    {
      sharedProfileStateOracle3 = [(CNCardSharedProfileGroupItem *)self sharedProfileStateOracle];
      currentNickname = [sharedProfileStateOracle3 currentNickname];
      v10 = currentNickname == 0;
    }

    sharedByDisplayString = 0;
    if (!sharedPhotoDisplayPreference || v10)
    {
      goto LABEL_10;
    }
  }

  sharedByDisplayString = [(CNCardSharedProfileGroupItem *)self sharedByDisplayString];
LABEL_10:

  return sharedByDisplayString;
}

- (id)contactDisplayName
{
  v3 = objc_alloc_init(MEMORY[0x1E695CD80]);
  [v3 setStyle:1000];
  [v3 setFallbackStyle:-1];
  contact = [(CNPropertyGroupItem *)self contact];
  v5 = [v3 stringFromContact:contact];

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