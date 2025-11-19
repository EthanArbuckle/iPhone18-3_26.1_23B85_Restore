@interface CNiOSABWithWallpaperMetadataContactPredicate
- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7;
@end

@implementation CNiOSABWithWallpaperMetadataContactPredicate

- (__CFArray)cn_copyPeopleInAddressBook:(void *)a3 fetchRequest:(id)a4 matchInfos:(id *)a5 environment:(id)a6 error:(__CFError *)a7
{
  v7 = MEMORY[0x1E698A130];
  v8 = a4;
  v9 = [v7 predicateForContactsWithWallpaperMetadata];
  [v8 sortOrder];

  v10 = ABAddressBookCopyAllPeopleForBufferPredicate();
  return v10;
}

@end