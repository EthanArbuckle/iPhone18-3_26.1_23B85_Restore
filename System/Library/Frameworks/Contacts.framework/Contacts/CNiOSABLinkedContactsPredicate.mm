@interface CNiOSABLinkedContactsPredicate
- (CNiOSABLinkedContactsPredicate)initWithCoder:(id)coder;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CNiOSABLinkedContactsPredicate

- (CNiOSABLinkedContactsPredicate)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CNiOSABLinkedContactsPredicate;
  v3 = [(CNLinkedContactsPredicate *)&v7 initWithCoder:coder];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  v3.receiver = self;
  v3.super_class = CNiOSABLinkedContactsPredicate;
  [(CNLinkedContactsPredicate *)&v3 encodeWithCoder:coder];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v18[1] = *MEMORY[0x1E69E9840];
  contact = [(CNLinkedContactsPredicate *)self contact];
  v9 = contact;
  if (contact)
  {
    isUnified = [contact isUnified];
    identifier = [v9 identifier];
    if (isUnified)
    {
      v12 = identifier;
    }

    else
    {
      v12 = 0;
    }

    if (isUnified)
    {
      contactIdentifier = 0;
    }

    else
    {
      contactIdentifier = identifier;
    }
  }

  else
  {
    contactIdentifier = [(CNLinkedContactsPredicate *)self contactIdentifier];
    v12 = 0;
  }

  if (contactIdentifier | v12)
  {
    if (v12)
    {
      v18[0] = v12;
      [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
      v14 = ABAddressBookCopyPeopleWithUUIDs();
      goto LABEL_15;
    }

    v15 = ABAddressBookCopyPersonMatchingInternalUUID();
    if (v15)
    {
      v16 = v15;
      v14 = ABPersonCopyArrayOfAllLinkedPeople(v15);
      CFRelease(v16);
      goto LABEL_15;
    }
  }

  v14 = 0;
LABEL_15:

  return v14;
}

@end