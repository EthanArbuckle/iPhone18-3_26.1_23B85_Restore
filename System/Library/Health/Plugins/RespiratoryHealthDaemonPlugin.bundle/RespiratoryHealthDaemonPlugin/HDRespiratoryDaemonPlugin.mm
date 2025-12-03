@interface HDRespiratoryDaemonPlugin
- (id)extensionForProfile:(id)profile;
- (id)taskServerClasses;
- (void)handleDatabaseObliteration;
@end

@implementation HDRespiratoryDaemonPlugin

- (id)extensionForProfile:(id)profile
{
  profileCopy = profile;
  if ([profileCopy profileType] == 1)
  {
    v4 = [objc_alloc(MEMORY[0x29EDC6508]) initWithProfile:profileCopy];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)handleDatabaseObliteration
{
  v5[1] = *MEMORY[0x29EDCA608];
  v2 = MEMORY[0x29EDB8E78];
  v5[0] = *MEMORY[0x29EDBA988];
  v3 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];
  [v2 hk_deleteDomainsNamed:v3];

  v4 = *MEMORY[0x29EDCA608];
}

- (id)taskServerClasses
{
  v5[1] = *MEMORY[0x29EDCA608];
  v5[0] = objc_opt_class();
  v2 = [MEMORY[0x29EDB8D80] arrayWithObjects:v5 count:1];
  v3 = *MEMORY[0x29EDCA608];

  return v2;
}

@end