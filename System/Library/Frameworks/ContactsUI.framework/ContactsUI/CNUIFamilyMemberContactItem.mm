@interface CNUIFamilyMemberContactItem
+ (id)familyMemberContactItemFromCoreFamilyMemberContactItem:(id)item;
+ (id)typeLabelStringFromContactType:(int64_t)type;
- (BOOL)isEqual:(id)equal;
- (CNUIFamilyMemberContactItem)init;
- (CNUIFamilyMemberContactItem)initWithContactIdentifier:(id)identifier label:(id)label detailLabel:(id)detailLabel unreachable:(BOOL)unreachable;
- (CNUIFamilyMemberContactItem)initWithLabel:(id)label detailLabel:(id)detailLabel unreachable:(BOOL)unreachable;
- (unint64_t)hash;
@end

@implementation CNUIFamilyMemberContactItem

- (unint64_t)hash
{
  v3 = MEMORY[0x1E6996730];
  contactIdentifier = [(CNUIFamilyMemberContactItem *)self contactIdentifier];
  v5 = [v3 objectHash:contactIdentifier];

  v6 = MEMORY[0x1E6996730];
  label = [(CNUIFamilyMemberContactItem *)self label];
  v8 = [v6 objectHash:label] - v5 + 32 * v5;

  v9 = MEMORY[0x1E6996730];
  detailLabel = [(CNUIFamilyMemberContactItem *)self detailLabel];
  v11 = 31 * ([v9 objectHash:detailLabel] - v8 + 32 * v8);

  return v11 + [(CNUIFamilyMemberContactItem *)self isUnreachable]+ 15699857;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    LOBYTE(v12) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && ((v5 = -[CNUIFamilyMemberContactItem contactIdentifier](self, "contactIdentifier"), v6 = -[CNUIFamilyMemberContactItem contactIdentifier](equalCopy, "contactIdentifier"), !(v5 | v6)) || [v5 isEqual:v6]) && ((v7 = -[CNUIFamilyMemberContactItem label](self, "label"), v8 = -[CNUIFamilyMemberContactItem label](equalCopy, "label"), !(v7 | v8)) || objc_msgSend(v7, "isEqual:", v8)) && ((v9 = -[CNUIFamilyMemberContactItem detailLabel](self, "detailLabel"), v10 = -[CNUIFamilyMemberContactItem detailLabel](equalCopy, "detailLabel"), !(v9 | v10)) || objc_msgSend(v9, "isEqual:", v10)))
    {
      isUnreachable = [(CNUIFamilyMemberContactItem *)self isUnreachable];
      v12 = isUnreachable ^ [(CNUIFamilyMemberContactItem *)equalCopy isUnreachable]^ 1;
    }

    else
    {
      LOBYTE(v12) = 0;
    }
  }

  return v12;
}

- (CNUIFamilyMemberContactItem)initWithContactIdentifier:(id)identifier label:(id)label detailLabel:(id)detailLabel unreachable:(BOOL)unreachable
{
  identifierCopy = identifier;
  labelCopy = label;
  detailLabelCopy = detailLabel;
  v18.receiver = self;
  v18.super_class = CNUIFamilyMemberContactItem;
  v14 = [(CNUIFamilyMemberContactItem *)&v18 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_contactIdentifier, identifier);
    objc_storeStrong(&v15->_label, label);
    objc_storeStrong(&v15->_detailLabel, detailLabel);
    v15->_unreachable = unreachable;
    v16 = v15;
  }

  return v15;
}

- (CNUIFamilyMemberContactItem)initWithLabel:(id)label detailLabel:(id)detailLabel unreachable:(BOOL)unreachable
{
  unreachableCopy = unreachable;
  v8 = MEMORY[0x1E696AFB0];
  detailLabelCopy = detailLabel;
  labelCopy = label;
  uUID = [v8 UUID];
  uUIDString = [uUID UUIDString];
  v13 = [(CNUIFamilyMemberContactItem *)self initWithContactIdentifier:uUIDString label:labelCopy detailLabel:detailLabelCopy unreachable:unreachableCopy];

  return v13;
}

- (CNUIFamilyMemberContactItem)init
{
  selfCopy = self;
  v3 = CNInitializerUnavailableException();
  objc_exception_throw(v3);
}

+ (id)typeLabelStringFromContactType:(int64_t)type
{
  if (type == 1)
  {
    v3 = @"PARENT_OR_GUARDIAN";
    goto LABEL_5;
  }

  if (type == 2)
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

+ (id)familyMemberContactItemFromCoreFamilyMemberContactItem:(id)item
{
  itemCopy = item;
  v5 = [objc_opt_class() typeLabelStringFromContactType:{objc_msgSend(itemCopy, "contactType")}];
  v6 = [self alloc];
  contactIdentifier = [itemCopy contactIdentifier];
  formattedName = [itemCopy formattedName];
  isUnreachable = [itemCopy isUnreachable];

  v10 = [v6 initWithContactIdentifier:contactIdentifier label:formattedName detailLabel:v5 unreachable:isUnreachable];

  return v10;
}

@end