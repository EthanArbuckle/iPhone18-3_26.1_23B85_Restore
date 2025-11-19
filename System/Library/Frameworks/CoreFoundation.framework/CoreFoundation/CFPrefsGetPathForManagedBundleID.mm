@interface CFPrefsGetPathForManagedBundleID
@end

@implementation CFPrefsGetPathForManagedBundleID

CFURLRef ___CFPrefsGetPathForManagedBundleID_block_invoke_2()
{
  result = _CFPreferencesCopyManagedPreferencesContainerURL();
  _CFPrefsGetPathForManagedBundleID_containerizedContainingDirectoryURL = result;
  return result;
}

uint64_t ___CFPrefsGetPathForManagedBundleID_block_invoke_3()
{
  result = _CFPrefsCurrentProcessIsCFPrefsD();
  if (result)
  {
    result = CFCopyUserName();
    _CFPrefsGetPathForManagedBundleID_ourUserName = result;
  }

  return result;
}

@end