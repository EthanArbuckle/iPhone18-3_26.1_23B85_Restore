@interface CNiOSABWithWallpaperMetadataContactPredicate
- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error;
@end

@implementation CNiOSABWithWallpaperMetadataContactPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)book fetchRequest:(id)request matchInfos:(id *)infos environment:(id)environment error:(__CFError *)error
{
  v7 = MEMORY[0x1E698A130];
  requestCopy = request;
  predicateForContactsWithWallpaperMetadata = [v7 predicateForContactsWithWallpaperMetadata];
  [requestCopy sortOrder];

  v10 = ABAddressBookCopyAllPeopleForBufferPredicate();
  return v10;
}

@end