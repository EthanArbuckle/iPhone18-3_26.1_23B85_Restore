@interface MFRecentComposeRecipientGroup
- (MFRecentComposeRecipientGroup)initWithChildren:(id)a3 displayString:(id)a4 recentContact:(id)a5;
- (id)label;
- (id)placeholderName;
@end

@implementation MFRecentComposeRecipientGroup

- (MFRecentComposeRecipientGroup)initWithChildren:(id)a3 displayString:(id)a4 recentContact:(id)a5
{
  v9 = a5;
  v14.receiver = self;
  v14.super_class = MFRecentComposeRecipientGroup;
  v10 = [(MFComposeRecipientGroup *)&v14 initWithChildren:a3 displayString:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_recentContact, a5);
    v12 = v11;
  }

  return v11;
}

- (id)label
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RECENT_GROUP" value:&stru_1F3CF3758 table:@"Main"];

  return v3;
}

- (id)placeholderName
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RECENT_GROUP_PLACEHOLDER" value:&stru_1F3CF3758 table:@"Main"];

  return v3;
}

@end