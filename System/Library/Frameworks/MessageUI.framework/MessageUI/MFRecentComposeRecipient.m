@interface MFRecentComposeRecipient
- (BOOL)isEqual:(id)a3;
- (MFRecentComposeRecipient)initWithCoder:(id)a3;
- (MFRecentComposeRecipient)initWithRecentContact:(id)a3;
- (id)description;
- (id)placeholderName;
@end

@implementation MFRecentComposeRecipient

- (MFRecentComposeRecipient)initWithRecentContact:(id)a3
{
  v5 = a3;
  v6 = [v5 person];
  RecordID = ABRecordGetRecordID(v6);
  v8 = [v5 property];
  v9 = [v5 matchedIdentifier];
  v10 = [v5 address];
  v15.receiver = self;
  v15.super_class = MFRecentComposeRecipient;
  v11 = [(MFComposeRecipient *)&v15 initWithRecord:v6 recordID:RecordID property:v8 identifier:v9 address:v10];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recent, a3);
    v13 = v12;
  }

  return v12;
}

- (id)placeholderName
{
  v2 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v3 = [v2 localizedStringForKey:@"RECENT_PLACEHOLDER_NAME" value:&stru_1F3CF3758 table:@"Main"];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 recentContact];
    v6 = [v5 address];
    v7 = [(MFRecentComposeRecipient *)self recentContact];
    v8 = [v7 address];
    v9 = [v6 isEqualToString:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(MFComposeRecipient *)self address];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@", v5, self, v6];

  return v7;
}

- (MFRecentComposeRecipient)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"recent"];
  v5 = [(MFRecentComposeRecipient *)self initWithRecentContact:v4];

  return v5;
}

@end