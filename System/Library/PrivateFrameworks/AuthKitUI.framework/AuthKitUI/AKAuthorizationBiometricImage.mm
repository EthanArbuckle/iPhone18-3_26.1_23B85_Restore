@interface AKAuthorizationBiometricImage
+ (id)biometricImage;
@end

@implementation AKAuthorizationBiometricImage

+ (id)biometricImage
{
  currentDevice = [MEMORY[0x277CF0218] currentDevice];
  isFaceIDCapable = [currentDevice isFaceIDCapable];
  MEMORY[0x277D82BD8](currentDevice);
  currentDevice2 = [MEMORY[0x277CF0218] currentDevice];
  usesTouchID = [currentDevice2 usesTouchID];
  MEMORY[0x277D82BD8](currentDevice2);
  if (isFaceIDCapable)
  {
    v7 = [MEMORY[0x277D755B8] ak_imageNamed:*MEMORY[0x277CF00D8]];
  }

  else if (usesTouchID)
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