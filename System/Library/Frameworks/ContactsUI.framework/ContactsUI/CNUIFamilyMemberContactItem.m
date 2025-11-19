@interface CNUIFamilyMemberContactItem
+ (id)familyMemberContactItemFromCoreFamilyMemberContactItem:(id)a3;
+ (id)typeLabelStringFromContactType:(int64_t)a3;
- (BOOL)isEqual:(id)a3;
- (CNUIFamilyMemberContactItem)init;
- (CNUIFamilyMemberContactItem)initWithContactIdentifier:(id)a3 label:(id)a4 detailLabel:(id)a5 unreachable:(BOOL)a6;
- (CNUIFamilyMemberContactItem)initWithLabel:(id)a3 detailLabel:(id)a4 unreachable:(BOOL)a5;
- (unint64_t)hash;
@end

@implementation CNUIFamilyMemberContactItem

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  v4 = [(CNUIFamilyMemberContactItem *)self contactIdentifier];
  v5 = [v3 objectHash:v4];

  v6 = MEMORY[0x1E6996730];
  v7 = [(CNUIFamilyMemberContactItem *)self label];
  v8 = [v6 objectHash:v7] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  v10 = [(CNUIFamilyMemberContactItem *)self detailLabel];
  v11 = 31 * ([v9 objectHash:v10] - v8 + 32 * v8);

  return v11 + [(CNUIFamilyMemberContactItem *)self isUnreachable]+ 15699857;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNUIFamilyMemberContactItem contactIdentifier](self, "contactIdentifier"), v6 = -[CNUIFamilyMemberContactItem contactIdentifier](v4, "contactIdentifier"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNUIFamilyMemberContactItem label](self, "label"), v8 = -[CNUIFamilyMemberContactItem label](v4, "label"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNUIFamilyMemberContactItem detailLabel](self, "detailLabel"), v10 = -[CNUIFamilyMemberContactItem detailLabel](v4, "detailLabel"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)))
    {
      v11 = [(CNUIFamilyMemberContactItem *)self isUnreachable];
      v12 = v11 ^ [(CNUIFamilyMemberContactItem *)v4 isUnreachable]^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (CNUIFamilyMemberContactItem)initWithContactIdentifier:(id)a3 label:(id)a4 detailLabel:(id)a5 unreachable:(BOOL)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v18.receiver = self;
  v18.super_class = CNUIFamilyMemberContactItem;
  v14 = [(CNUIFamilyMemberContactItem *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contactIdentifier, a3);
    objc_storeStrong(&v15->_label, a4);
    objc_storeStrong(&v15->_detailLabel, a5);
    v15->_unreachable = a6;
    v16 = v15;
  }

  return v15;
}

- (CNUIFamilyMemberContactItem)initWithLabel:(id)a3 detailLabel:(id)a4 unreachable:(BOOL)a5
{
  v5 = a5;
  v8 = MEMORY[0x1E696AFB0];
  v9 = a4;
  v10 = a3;
  v11 = [v8 UUID];
  v12 = [v11 UUIDString];
  v13 = [(CNUIFamilyMemberContactItem *)self initWithContactIdentifier:v12 label:v10 detailLabel:v9 unreachable:v5];

  return v13;
}

- (CNUIFamilyMemberContactItem)init
{
  v2 = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)typeLabelStringFromContactType:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = @"PARENT_OR_GUARDIAN";
    goto LABEL_5;
  }

  if (a3 == 2)
  {
    v3 = @"ME";
LABEL_5:
    v4 = CNContactsUIBundle();
    v5 = [v4 localizedStringForKey:v3 value:&stru_1F0CE7398 table:@"Localized"];

    goto LABEL_7;
  }

  v5 = 0;
LABEL_7:

  return v5;
}

+ (id)familyMemberContactItemFromCoreFamilyMemberContactItem:(id)a3
{
  v4 = a3;
  v5 = [objc_opt_class() typeLabelStringFromContactType:{objc_msgSend(v4, "contactType")}];
  v6 = [a1 alloc];
  v7 = [v4 contactIdentifier];
  v8 = [v4 formattedName];
  v9 = [v4 isUnreachable];

  v10 = [v6 initWithContactIdentifier:v7 label:v8 detailLabel:v5 unreachable:v9];

  return v10;
}

@end