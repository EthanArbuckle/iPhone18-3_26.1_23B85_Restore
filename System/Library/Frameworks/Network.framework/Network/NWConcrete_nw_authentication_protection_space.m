@interface NWConcrete_nw_authentication_protection_space
- (void)dealloc;
@end

@implementation NWConcrete_nw_authentication_protection_space

- (void)dealloc
{
  realm = self->realm;
  if (realm)
  {
    free(realm);
    self->realm = 0;
  }

  v4.receiver = self;
  v4.super_class = NWConcrete_nw_authentication_protection_space;
  [(NWConcrete_nw_authentication_protection_space *)&v4 dealloc];
}

@end