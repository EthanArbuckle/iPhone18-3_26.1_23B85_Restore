@interface CNUIContactSaveConfiguration
- (CNUIContactSaveConfiguration)initWithContact:(id)a3 mutableContact:(id)a4 originalContacts:(id)a5 editingLinkedContacts:(id)a6 contactStore:(id)a7 ignoresParentalRestrictions:(BOOL)a8 saveWasAuthorized:(BOOL)a9;
- (CNUIContactSaveConfiguration)initWithContact:(id)a3 mutableContact:(id)a4 originalContacts:(id)a5 shadowCopyOfReadonlyContact:(id)a6 editingLinkedContacts:(id)a7 contactStore:(id)a8 parentGroup:(id)a9 parentContainer:(id)a10 containerContext:(id)a11 groupContext:(id)a12 ignoresParentalRestrictions:(BOOL)a13 saveWasAuthorized:(BOOL)a14;
- (id)copyWithEditingLinkedContacts:(id)a3;
@end

@implementation CNUIContactSaveConfiguration

- (id)copyWithEditingLinkedContacts:(id)a3
{
  v18 = a3;
  v4 = [CNUIContactSaveConfiguration alloc];
  v17 = [(CNUIContactSaveConfiguration *)self contact];
  v16 = [(CNUIContactSaveConfiguration *)self mutableContact];
  v5 = [(CNUIContactSaveConfiguration *)self originalContacts];
  v6 = [(CNUIContactSaveConfiguration *)self shadowCopyOfReadonlyContact];
  v7 = [(CNUIContactSaveConfiguration *)self contactStore];
  v8 = [(CNUIContactSaveConfiguration *)self parentGroup];
  v9 = [(CNUIContactSaveConfiguration *)self parentContainer];
  v10 = [(CNUIContactSaveConfiguration *)self containerContext];
  v11 = [(CNUIContactSaveConfiguration *)self groupContext];
  v12 = [(CNUIContactSaveConfiguration *)self ignoresParentalRestrictions];
  BYTE1(v14) = [(CNUIContactSaveConfiguration *)self saveWasAuthorized];
  LOBYTE(v14) = v12;
  v15 = [(CNUIContactSaveConfiguration *)v4 initWithContact:v17 mutableContact:v16 originalContacts:v5 shadowCopyOfReadonlyContact:v6 editingLinkedContacts:v18 contactStore:v7 parentGroup:v8 parentContainer:v9 containerContext:v10 groupContext:v11 ignoresParentalRestrictions:v14 saveWasAuthorized:?];

  return v15;
}

- (CNUIContactSaveConfiguration)initWithContact:(id)a3 mutableContact:(id)a4 originalContacts:(id)a5 shadowCopyOfReadonlyContact:(id)a6 editingLinkedContacts:(id)a7 contactStore:(id)a8 parentGroup:(id)a9 parentContainer:(id)a10 containerContext:(id)a11 groupContext:(id)a12 ignoresParentalRestrictions:(BOOL)a13 saveWasAuthorized:(BOOL)a14
{
  v38 = a3;
  obj = a4;
  v37 = a4;
  v39 = a5;
  v31 = a6;
  v36 = a6;
  v32 = a7;
  v35 = a7;
  v34 = a8;
  v20 = a9;
  v21 = a10;
  v22 = a11;
  v23 = a12;
  v40.receiver = self;
  v40.super_class = CNUIContactSaveConfiguration;
  v24 = [(CNUIContactSaveConfiguration *)&v40 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_contact, a3);
    objc_storeStrong(&v25->_mutableContact, obj);
    v26 = [v39 copy];
    originalContacts = v25->_originalContacts;
    v25->_originalContacts = v26;

    objc_storeStrong(&v25->_shadowCopyOfReadonlyContact, v31);
    objc_storeStrong(&v25->_editingLinkedContacts, v32);
    objc_storeStrong(&v25->_contactStore, a8);
    objc_storeStrong(&v25->_parentGroup, a9);
    objc_storeStrong(&v25->_parentContainer, a10);
    objc_storeStrong(&v25->_groupContext, a12);
    objc_storeStrong(&v25->_containerContext, a11);
    v25->_ignoresParentalRestrictions = a13;
    v25->_saveWasAuthorized = a14;
    v28 = v25;
  }

  return v25;
}

- (CNUIContactSaveConfiguration)initWithContact:(id)a3 mutableContact:(id)a4 originalContacts:(id)a5 editingLinkedContacts:(id)a6 contactStore:(id)a7 ignoresParentalRestrictions:(BOOL)a8 saveWasAuthorized:(BOOL)a9
{
  BYTE1(v10) = a9;
  LOBYTE(v10) = a8;
  return [(CNUIContactSaveConfiguration *)self initWithContact:a3 mutableContact:a4 originalContacts:a5 shadowCopyOfReadonlyContact:0 editingLinkedContacts:a6 contactStore:a7 parentGroup:0 parentContainer:0 containerContext:0 groupContext:0 ignoresParentalRestrictions:v10 saveWasAuthorized:?];
}

@end