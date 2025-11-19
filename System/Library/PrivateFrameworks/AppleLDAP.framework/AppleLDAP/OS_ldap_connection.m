@interface OS_ldap_connection
- (void)dealloc;
@end

@implementation OS_ldap_connection

- (void)dealloc
{
  ldap_connection_dispose(&self->super.isa);
  v3.receiver = self;
  v3.super_class = OS_ldap_connection;
  [(OS_ldap_connection *)&v3 dealloc];
}

@end