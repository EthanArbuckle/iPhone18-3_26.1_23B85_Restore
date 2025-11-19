@interface MigrationRequestTask
- (void)main;
@end

@implementation MigrationRequestTask

- (void)main
{
  if (self)
  {
    options = self->super._options;
  }

  else
  {
    options = 0;
  }

  v8 = options;
  v4 = sub_1002DE264();
  v6 = [(ASDRequestOptions *)v8 migrationType];
  if (self)
  {
    Property = objc_getProperty(self, v5, 64, 1);
    sub_1002DEB64(v4, v6, Property);

    self->super.super._success = 1;
  }

  else
  {
    sub_1002DEB64(v4, v6, 0);
  }
}

@end