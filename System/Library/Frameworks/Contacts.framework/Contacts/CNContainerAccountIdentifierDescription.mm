@interface CNContainerAccountIdentifierDescription
- (void)ABValueForABSource:(void *)source;
@end

@implementation CNContainerAccountIdentifierDescription

- (void)ABValueForABSource:(void *)source
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