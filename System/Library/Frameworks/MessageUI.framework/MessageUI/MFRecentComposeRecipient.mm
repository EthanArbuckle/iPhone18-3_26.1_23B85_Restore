@interface MFRecentComposeRecipient
- (BOOL)isEqual:(id)equal;
- (MFRecentComposeRecipient)initWithCoder:(id)coder;
- (MFRecentComposeRecipient)initWithRecentContact:(id)contact;
- (id)description;
- (id)placeholderName;
@end

@implementation MFRecentComposeRecipient

- (MFRecentComposeRecipient)initWithRecentContact:(id)contact
{
  contactCopy = contact;
  person = [contactCopy person];
  RecordID = ABRecordGetRecordID(person);
  property = [contactCopy property];
  matchedIdentifier = [contactCopy matchedIdentifier];
  address = [contactCopy address];
  v15.receiver = self;
  v15.super_class = MFRecentComposeRecipient;
  v11 = [(MFComposeRecipient *)&v15 initWithRecord:person recordID:RecordID property:property identifier:matchedIdentifier address:address];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_recent, contact);
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

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    recentContact = [equalCopy recentContact];
    address = [recentContact address];
    recentContact2 = [(MFRecentComposeRecipient *)self recentContact];
    address2 = [recentContact2 address];
    v9 = [address isEqualToString:address2];
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
  address = [(MFComposeRecipient *)self address];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@", v5, self, address];

  return v7;
}

- (MFRecentComposeRecipient)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"recent"];
  v5 = [(MFRecentComposeRecipient *)self initWithRecentContact:v4];

  return v5;
}

@end