@interface _SFPerSitePreferenceNotifyingListController
- (_SFPerSitePreferenceNotifyingListController)init;
- (void)_didUpdatePerSitePreferenceNotificationReceived:(id)received;
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
    defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__didUpdatePerSitePreferenceNotificationReceived_ name:*MEMORY[0x1E69B1F60] object:0 suspensionBehavior:3];

    defaultCenter2 = [MEMORY[0x1E696ABB0] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__didUpdatePerSitePreferenceRemotely_ name:*MEMORY[0x1E69C9590] object:0 suspensionBehavior:3];

    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696ABB0] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = _SFPerSitePreferenceNotifyingListController;
  [(_SFPerSitePreferenceNotifyingListController *)&v4 dealloc];
}

- (void)_didUpdatePerSitePreferenceNotificationReceived:(id)received
{
  if ([received _sf_perSitePreferenceNotificationWasSentFromAnotherProcess])
  {

    [(_SFPerSitePreferenceNotifyingListController *)self perSitePreferenceValueDidChange];
  }
}

@end