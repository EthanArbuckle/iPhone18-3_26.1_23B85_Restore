@interface CNiOSABMissingBackgroundColorsContactPredicate
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
@end

@implementation CNiOSABMissingBackgroundColorsContactPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v7 = MEMORY[0x1E698A130];
  requestCopy = request;
  predicateForContactsMissingBackgroundColors = [v7 predicateForContactsMissingBackgroundColors];
  [requestCopy sortOrder];

  v10 = ABAddressBookCopyAllPeopleForBufferPredicate();
  return v10;
}

@end