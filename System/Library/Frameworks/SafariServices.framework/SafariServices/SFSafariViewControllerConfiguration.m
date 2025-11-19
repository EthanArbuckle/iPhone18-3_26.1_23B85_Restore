@interface SFSafariViewControllerConfiguration
- (SFSafariViewControllerConfiguration)init;
- (SFSafariViewControllerConfiguration)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation SFSafariViewControllerConfiguration

- (SFSafariViewControllerConfiguration)init
{
  v6.receiver = self;
  v6.super_class = SFSafariViewControllerConfiguration;
  v2 = [(SFSafariViewControllerConfiguration *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->_barCollapsingEnabled = 1;
    v2->_jitEnabled = 1;
    v2->_redirectNotificationBehavior = dyld_program_sdk_at_least();
    v4 = v3;
  }

  return v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  objc_storeStrong((v5 + 48), self->_activityButton);
  *(v5 + 13) = self->_barCollapsingEnabled;
  *(v5 + 12) = self->_entersReaderIfAvailable;
  *(v5 + 8) = self->_ephemeral;
  *(v5 + 10) = self->_jitEnabled;
  *(v5 + 9) = self->_performingAccountSecurityUpgrade;
  objc_storeStrong((v5 + 24), self->_personaUniqueIdentifier);
  *(v5 + 16) = self->_redirectNotificationBehavior;
  *(v5 + 11) = self->_isBeingUsedForCellularServiceBootstrap;
  v6 = [(UIEventAttribution *)self->_eventAttribution copyWithZone:a3];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  *(v5 + 32) = self->_storageModeForAuthenticationSession;
  objc_storeStrong((v5 + 40), self->_networkAttributionApplicationBundleIdentifier);
  return v5;
}

- (SFSafariViewControllerConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v18.receiver = self;
  v18.super_class = SFSafariViewControllerConfiguration;
  v5 = [(SFSafariViewControllerConfiguration *)&v18 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"customActivityButton"];
    activityButton = v5->_activityButton;
    v5->_activityButton = v6;

    v5->_barCollapsingEnabled = [v4 decodeBoolForKey:@"barCollapsingEnabled"];
    v5->_entersReaderIfAvailable = [v4 decodeBoolForKey:@"entersReaderIfAvailable"];
    v5->_ephemeral = [v4 decodeBoolForKey:@"isEphemeral"];
    v5->_jitEnabled = [v4 decodeBoolForKey:@"jitEnabled"];
    v5->_performingAccountSecurityUpgrade = [v4 decodeBoolForKey:@"performingAccountSecurityUpgrade"];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueIdentifier"];
    personaUniqueIdentifier = v5->_personaUniqueIdentifier;
    v5->_personaUniqueIdentifier = v8;

    v5->_redirectNotificationBehavior = [v4 decodeIntegerForKey:@"redirectNotificationBehavior"];
    v5->_isBeingUsedForCellularServiceBootstrap = [v4 decodeBoolForKey:@"isBeingUsedForCellularServiceBootstrap"];
    v10 = objc_alloc(MEMORY[0x1E69DC9F0]);
    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"eventAttribution"];
    v12 = [v10 initWithUISClickAttribution:v11];
    eventAttribution = v5->_eventAttribution;
    v5->_eventAttribution = v12;

    v5->_storageModeForAuthenticationSession = [v4 decodeIntegerForKey:@"storageModeForAuthenticationSession"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"networkAttributionApplicationBundleIdentifier"];
    networkAttributionApplicationBundleIdentifier = v5->_networkAttributionApplicationBundleIdentifier;
    v5->_networkAttributionApplicationBundleIdentifier = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  activityButton = self->_activityButton;
  v6 = a3;
  [v6 encodeObject:activityButton forKey:@"customActivityButton"];
  [v6 encodeBool:self->_barCollapsingEnabled forKey:@"barCollapsingEnabled"];
  [v6 encodeBool:self->_entersReaderIfAvailable forKey:@"entersReaderIfAvailable"];
  [v6 encodeBool:self->_ephemeral forKey:@"isEphemeral"];
  [v6 encodeBool:self->_jitEnabled forKey:@"jitEnabled"];
  [v6 encodeBool:self->_performingAccountSecurityUpgrade forKey:@"performingAccountSecurityUpgrade"];
  [v6 encodeObject:self->_personaUniqueIdentifier forKey:@"personaUniqueIdentifier"];
  [v6 encodeInteger:self->_redirectNotificationBehavior forKey:@"redirectNotificationBehavior"];
  [v6 encodeBool:self->_isBeingUsedForCellularServiceBootstrap forKey:@"isBeingUsedForCellularServiceBootstrap"];
  v5 = [(UIEventAttribution *)self->_eventAttribution toUISClickAttribution];
  [v6 encodeObject:v5 forKey:@"eventAttribution"];

  [v6 encodeInteger:self->_storageModeForAuthenticationSession forKey:@"storageModeForAuthenticationSession"];
  [v6 encodeObject:self->_networkAttributionApplicationBundleIdentifier forKey:@"networkAttributionApplicationBundleIdentifier"];
}

@end