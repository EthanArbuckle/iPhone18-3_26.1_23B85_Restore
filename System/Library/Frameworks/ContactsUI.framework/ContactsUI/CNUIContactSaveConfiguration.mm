@interface CNUIContactSaveConfiguration
- (CNUIContactSaveConfiguration)initWithContact:(id)contact mutableContact:(id)mutableContact originalContacts:(id)contacts editingLinkedContacts:(id)linkedContacts contactStore:(id)store ignoresParentalRestrictions:(BOOL)restrictions saveWasAuthorized:(BOOL)authorized;
- (CNUIContactSaveConfiguration)initWithContact:(id)contact mutableContact:(id)mutableContact originalContacts:(id)contacts shadowCopyOfReadonlyContact:(id)readonlyContact editingLinkedContacts:(id)linkedContacts contactStore:(id)store parentGroup:(id)group parentContainer:(id)self0 containerContext:(id)self1 groupContext:(id)self2 ignoresParentalRestrictions:(BOOL)self3 saveWasAuthorized:(BOOL)self4;
- (id)copyWithEditingLinkedContacts:(id)contacts;
@end

@implementation CNUIContactSaveConfiguration

- (id)copyWithEditingLinkedContacts:(id)contacts
{
  contactsCopy = contacts;
  v4 = [CNUIContactSaveConfiguration alloc];
  contact = [(CNUIContactSaveConfiguration *)self contact];
  mutableContact = [(CNUIContactSaveConfiguration *)self mutableContact];
  originalContacts = [(CNUIContactSaveConfiguration *)self originalContacts];
  shadowCopyOfReadonlyContact = [(CNUIContactSaveConfiguration *)self shadowCopyOfReadonlyContact];
  contactStore = [(CNUIContactSaveConfiguration *)self contactStore];
  parentGroup = [(CNUIContactSaveConfiguration *)self parentGroup];
  parentContainer = [(CNUIContactSaveConfiguration *)self parentContainer];
  containerContext = [(CNUIContactSaveConfiguration *)self containerContext];
  groupContext = [(CNUIContactSaveConfiguration *)self groupContext];
  ignoresParentalRestrictions = [(CNUIContactSaveConfiguration *)self ignoresParentalRestrictions];
  BYTE1(v14) = [(CNUIContactSaveConfiguration *)self saveWasAuthorized];
  LOBYTE(v14) = ignoresParentalRestrictions;
  v15 = [(CNUIContactSaveConfiguration *)v4 initWithContact:contact mutableContact:mutableContact originalContacts:originalContacts shadowCopyOfReadonlyContact:shadowCopyOfReadonlyContact editingLinkedContacts:contactsCopy contactStore:contactStore parentGroup:parentGroup parentContainer:parentContainer containerContext:containerContext groupContext:groupContext ignoresParentalRestrictions:v14 saveWasAuthorized:?];

  return v15;
}

- (CNUIContactSaveConfiguration)initWithContact:(id)contact mutableContact:(id)mutableContact originalContacts:(id)contacts shadowCopyOfReadonlyContact:(id)readonlyContact editingLinkedContacts:(id)linkedContacts contactStore:(id)store parentGroup:(id)group parentContainer:(id)self0 containerContext:(id)self1 groupContext:(id)self2 ignoresParentalRestrictions:(BOOL)self3 saveWasAuthorized:(BOOL)self4
{
  contactCopy = contact;
  obj = mutableContact;
  mutableContactCopy = mutableContact;
  contactsCopy = contacts;
  readonlyContactCopy = readonlyContact;
  readonlyContactCopy2 = readonlyContact;
  linkedContactsCopy = linkedContacts;
  linkedContactsCopy2 = linkedContacts;
  storeCopy = store;
  groupCopy = group;
  containerCopy = container;
  contextCopy = context;
  groupContextCopy = groupContext;
  v40.receiver = self;
  v40.super_class = CNUIContactSaveConfiguration;
  v24 = [(CNUIContactSaveConfiguration *)&v40 init];
  v25 = v24;
  if (v24)
  {
    objc_storeStrong(&v24->_contact, contact);
    objc_storeStrong(&v25->_mutableContact, obj);
    v26 = [contactsCopy copy];
    originalContacts = v25->_originalContacts;
    v25->_originalContacts = v26;

    objc_storeStrong(&v25->_shadowCopyOfReadonlyContact, readonlyContactCopy);
    objc_storeStrong(&v25->_editingLinkedContacts, linkedContactsCopy);
    objc_storeStrong(&v25->_contactStore, store);
    objc_storeStrong(&v25->_parentGroup, group);
    objc_storeStrong(&v25->_parentContainer, container);
    objc_storeStrong(&v25->_groupContext, groupContext);
    objc_storeStrong(&v25->_containerContext, context);
    v25->_ignoresParentalRestrictions = restrictions;
    v25->_saveWasAuthorized = authorized;
    v28 = v25;
  }

  return v25;
}

- (CNUIContactSaveConfiguration)initWithContact:(id)contact mutableContact:(id)mutableContact originalContacts:(id)contacts editingLinkedContacts:(id)linkedContacts contactStore:(id)store ignoresParentalRestrictions:(BOOL)restrictions saveWasAuthorized:(BOOL)authorized
{
  BYTE1(v10) = authorized;
  LOBYTE(v10) = restrictions;
  return [(CNUIContactSaveConfiguration *)self initWithContact:contact mutableContact:mutableContact originalContacts:contacts shadowCopyOfReadonlyContact:0 editingLinkedContacts:linkedContacts contactStore:store parentGroup:0 parentContainer:0 containerContext:0 groupContext:0 ignoresParentalRestrictions:v10 saveWasAuthorized:?];
}

@end