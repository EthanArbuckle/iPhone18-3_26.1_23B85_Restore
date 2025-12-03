@interface CNiOSABMeContactsPredicate
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
@end

@implementation CNiOSABMeContactsPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
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