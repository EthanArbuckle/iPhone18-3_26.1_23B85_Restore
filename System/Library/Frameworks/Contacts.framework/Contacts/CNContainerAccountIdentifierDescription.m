@interface CNContainerAccountIdentifierDescription
- (void)ABValueForABSource:(void *)a3;
@end

@implementation CNContainerAccountIdentifierDescription

- (void)ABValueForABSource:(void *)a3
{
  ABRecordGetAddressBook();
  if (!ABAddressBookGetAccountForSource())
  {
    return 0;
  }

  v3 = ABAccountCopyIdentifier();
  if (!v3)
  {
    return 0;
  }

  return CFAutorelease(v3);
}

@end