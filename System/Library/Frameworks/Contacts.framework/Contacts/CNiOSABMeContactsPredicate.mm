@interface CNiOSABMeContactsPredicate
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
@end

@implementation CNiOSABMeContactsPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  values = ABAddressBookCopyMe();
  if (values)
  {
    v7 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    CFRelease(values);
    return v7;
  }

  else
  {
    v9 = MEMORY[0x1E695E9C0];

    return CFArrayCreate(0, 0, 0, v9);
  }
}

@end