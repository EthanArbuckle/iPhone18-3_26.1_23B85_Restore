@interface AKAuthorizationBiometricImage
+ (id)biometricImage;
@end

@implementation AKAuthorizationBiometricImage

+ (id)biometricImage
{
  v3 = [MEMORY[0x277CF0218] currentDevice];
  v4 = [v3 isFaceIDCapable];
  MEMORY[0x277D82BD8](v3);
  v5 = [MEMORY[0x277CF0218] currentDevice];
  v6 = [v5 usesTouchID];
  MEMORY[0x277D82BD8](v5);
  if (v4)
  {
    v7 = [MEMORY[0x277D755B8] ak_imageNamed:*MEMORY[0x277CF00D8]];
  }

  else if (v6)
  {
    v7 = [MEMORY[0x277D755B8] ak_imageNamed:*MEMORY[0x277CF00E8]];
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] ak_imageNamed:*MEMORY[0x277CF00E0]];
  }

  return v7;
}

@end