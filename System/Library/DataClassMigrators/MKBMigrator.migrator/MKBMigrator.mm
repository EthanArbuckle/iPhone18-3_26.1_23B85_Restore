@interface MKBMigrator
- (BOOL)performMigration;
@end

@implementation MKBMigrator

- (BOOL)performMigration
{
  bzero(__str, 0x400uLL);
  bzero(__s, 0x400uLL);
  v12 = time(0);
  v2 = ctime(&v12);
  snprintf(__str, 0x400uLL, "%s/tmp/.mkb_marker", "/private/var");
  v3 = open_dprotected_np(__str, 1793, 1, 0, 384);
  if (v3 == -1)
  {
    v8 = __error();
    v9 = strerror(*v8);
    NSLog(@"aks: failed to create aks marker (%s)", v9);
  }

  else
  {
    v4 = v3;
    snprintf(__s, 0x400uLL, "Done: %s\n", v2);
    v5 = strlen(__s);
    if (write(v4, __s, v5 + 1) == -1)
    {
      v6 = __error();
      v7 = strerror(*v6);
      NSLog(@"aks: failed to write aks marker (%s)", v7);
    }

    close(v4);
  }

  v10 = MKBKeyBagMigrateFS();
  if (v10)
  {
    NSLog(@"aks: error during migration of %s %i", "/private/var", v10);
  }

  return 1;
}

@end