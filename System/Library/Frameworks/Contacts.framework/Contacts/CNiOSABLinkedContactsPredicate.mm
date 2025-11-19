@interface CNiOSABLinkedContactsPredicate
- (CNiOSABLinkedContactsPredicate)initWithCoder:(id)a3;
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation CNiOSABLinkedContactsPredicate

- (CNiOSABLinkedContactsPredicate)initWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CNiOSABLinkedContactsPredicate;
  v3 = [(CNLinkedContactsPredicate *)&v7 initWithCoder:a3];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  v3.receiver = self;
  v3.super_class = CNiOSABLinkedContactsPredicate;
  [(CNLinkedContactsPredicate *)&v3 encodeWithCoder:a3];
}

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = [(CNLinkedContactsPredicate *)self contact];
  v9 = v8;
  if (v8)
  {
    v10 = [v8 isUnified];
    v11 = [v9 identifier];
    if (v10)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0;
    }

    if (v10)
    {
      v13 = 0;
    }

    else
    {
      v13 = v11;
    }
  }

  else
  {
    v13 = [(CNLinkedContactsPredicate *)self contactIdentifier];
    v12 = 0;
  }

  if (v13 | v12)
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