@interface AXMActiveSoundOutputAction
- (AXMActiveSoundOutputAction)initWithSoundID:(id)d;
- (AXMActiveSoundOutputAction)initWithURL:(id)l;
@end

@implementation AXMActiveSoundOutputAction

- (AXMActiveSoundOutputAction)initWithURL:(id)l
{
  lCopy = l;
  v5 = objc_alloc_init(AXMActiveSoundOutputActionHandle);
  v6 = [(AXMSoundOutputAction *)self _initWithURL:lCopy handle:v5];

  return v6;
}

- (AXMActiveSoundOutputAction)initWithSoundID:(id)d
{
  dCopy = d;
  v5 = objc_alloc_init(AXMActiveSoundOutputActionHandle);
  v6 = [(AXMSoundOutputAction *)self _initWithSoundID:dCopy handle:v5];

  return v6;
}

@end