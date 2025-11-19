@interface CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup
+ (void)_accessibilityPerformValidations:(id)a3;
- (CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup)initWithContext:(id)a3 validator:(id)a4;
@end

@implementation CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup

+ (void)_accessibilityPerformValidations:(id)a3
{
  v3 = a3;
  [v3 validateClass:@"CDPRemoteDeviceSecretValidator" hasInstanceMethod:@"supportedEscapeOfferMask" withFullSignature:{"Q", 0}];
  [v3 validateClass:@"CDPRemoteDeviceSecretValidator" hasInstanceMethod:@"initWithContext:validator:" withFullSignature:{"@", "@", 0}];
}

- (CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup)initWithContext:(id)a3 validator:(id)a4
{
  v13.receiver = self;
  v13.super_class = CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup;
  v4 = [(CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup *)&v13 initWithContext:a3 validator:a4];
  v5 = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x29EDCA5F8];
  v10[1] = 3221225472;
  v10[2] = __91__CDPRemoteDeviceSecretValidatorAccessibility__CoreCDPUI__Setup_initWithContext_validator___block_invoke;
  v10[3] = &unk_29F2F5C00;
  v11 = v4;
  v6 = v11;
  v12 = v6;
  dispatch_async(v5, v10);

  v7 = v12;
  v8 = v6;

  return v8;
}

@end