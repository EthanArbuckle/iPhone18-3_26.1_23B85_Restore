@interface BKSIAPDefaults
- (void)_bindAndRegisterDefaults;
@end

@implementation BKSIAPDefaults

- (void)_bindAndRegisterDefaults
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoTVOutSystem"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v3 withDefaultKey:@"System" toDefaultValue:0 options:1];

  v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoTVOutSignal"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v4 withDefaultKey:@"Signal" toDefaultValue:0 options:1];

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoTVOutReservedForIPodOut"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v5 withDefaultKey:@"iPodOut" toDefaultValue:0 options:1];

  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"videoTVOutReservedForRemoteUI"];
  [(BSAbstractDefaultDomain *)self _bindProperty:v6 withDefaultKey:@"RemoteUI" toDefaultValue:0 options:1];
}

@end