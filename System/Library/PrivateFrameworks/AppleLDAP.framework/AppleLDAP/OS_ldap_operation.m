@interface OS_ldap_operation
- (void)dealloc;
@end

@implementation OS_ldap_operation

- (void)dealloc
{
  ldap_operation_dispose(self);
  v3.receiver = self;
  v3.super_class = OS_ldap_operation;
  [(OS_ldap_operation *)&v3 dealloc];
}

@end