@interface _BSTransactionDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation _BSTransactionDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"auditHistoryEnabled"];
  [BSAbstractDefaultDomain _bindProperty:"_bindProperty:withDefaultKey:toDefaultValue:options:" withDefaultKey:? toDefaultValue:? options:?];
}

@end