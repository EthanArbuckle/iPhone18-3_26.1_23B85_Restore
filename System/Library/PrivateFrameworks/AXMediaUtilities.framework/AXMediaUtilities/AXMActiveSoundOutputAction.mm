@interface AXMActiveSoundOutputAction
- (AXMActiveSoundOutputAction)initWithSoundID:(id)a3;
- (AXMActiveSoundOutputAction)initWithURL:(id)a3;
@end

@implementation AXMActiveSoundOutputAction

- (AXMActiveSoundOutputAction)initWithURL:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AXMActiveSoundOutputActionHandle);
  v6 = [(AXMSoundOutputAction *)self _initWithURL:v4 handle:v5];

  return v6;
}

- (AXMActiveSoundOutputAction)initWithSoundID:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(AXMActiveSoundOutputActionHandle);
  v6 = [(AXMSoundOutputAction *)self _initWithSoundID:v4 handle:v5];

  return v6;
}

@end