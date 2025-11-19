@interface _SFPerSitePreferenceNotifyingListController
- (_SFPerSitePreferenceNotifyingListController)init;
- (void)_didUpdatePerSitePreferenceNotificationReceived:(id)a3;
- (void)dealloc;
@end

@implementation _SFPerSitePreferenceNotifyingListController

- (_SFPerSitePreferenceNotifyingListController)init
{
  v7.receiver = self;
  v7.super_class = _SFPerSitePreferenceNotifyingListController;
  v2 = [(_SFPerSitePreferenceNotifyingListController *)&v7 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v3 addObserver:v2 selector:sel__didUpdatePerSitePreferenceNotificationReceived_ name:*MEMORY[0x1E69B1F60] object:0 suspensionBehavior:3];

    v4 = [MEMORY[0x1E696ABB0] defaultCenter];
    [v4 addObserver:v2 selector:sel__didUpdatePerSitePreferenceRemotely_ name:*MEMORY[0x1E69C9590] object:0 suspensionBehavior:3];

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  v3 = [MEMORY[0x1E696ABB0] defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFPerSitePreferenceNotifyingListController;
  [(_SFPerSitePreferenceNotifyingListController *)&v4 dealloc];
}

- (void)_didUpdatePerSitePreferenceNotificationReceived:(id)a3
{
  if ([a3 _sf_perSitePreferenceNotificationWasSentFromAnotherProcess])
  {

    [(_SFPerSitePreferenceNotifyingListController *)self perSitePreferenceValueDidChange];
  }
}

@end