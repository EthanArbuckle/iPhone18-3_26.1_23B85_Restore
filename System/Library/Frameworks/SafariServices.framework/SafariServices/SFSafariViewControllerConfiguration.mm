@interface SFSafariViewControllerConfiguration
- (SFSafariViewControllerConfiguration)init;
- (SFSafariViewControllerConfiguration)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
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

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  objc_storeStrong((v5 + 48), self->_activityButton);
  *(v5 + 13) = self->_barCollapsingEnabled;
  *(v5 + 12) = self->_entersReaderIfAvailable;
  *(v5 + 8) = self->_ephemeral;
  *(v5 + 10) = self->_jitEnabled;
  *(v5 + 9) = self->_performingAccountSecurityUpgrade;
  objc_storeStrong((v5 + 24), self->_personaUniqueIdentifier);
  *(v5 + 16) = self->_redirectNotificationBehavior;
  *(v5 + 11) = self->_isBeingUsedForCellularServiceBootstrap;
  v6 = [(UIEventAttribution *)self->_eventAttribution copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  *(v5 + 32) = self->_storageModeForAuthenticationSession;
  objc_storeStrong((v5 + 40), self->_networkAttributionApplicationBundleIdentifier);
  return v5;
}

- (SFSafariViewControllerConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v18.receiver = self;
  v18.super_class = SFSafariViewControllerConfiguration;
  v5 = [(SFSafariViewControllerConfiguration *)&v18 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"customActivityButton"];
    activityButton = v5->_activityButton;
    v5->_activityButton = v6;

    v5->_barCollapsingEnabled = [coderCopy decodeBoolForKey:@"barCollapsingEnabled"];
    v5->_entersReaderIfAvailable = [coderCopy decodeBoolForKey:@"entersReaderIfAvailable"];
    v5->_ephemeral = [coderCopy decodeBoolForKey:@"isEphemeral"];
    v5->_jitEnabled = [coderCopy decodeBoolForKey:@"jitEnabled"];
    v5->_performingAccountSecurityUpgrade = [coderCopy decodeBoolForKey:@"performingAccountSecurityUpgrade"];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"personaUniqueIdentifier"];
    personaUniqueIdentifier = v5->_personaUniqueIdentifier;
    v5->_personaUniqueIdentifier = v8;

    v5->_redirectNotificationBehavior = [coderCopy decodeIntegerForKey:@"redirectNotificationBehavior"];
    v5->_isBeingUsedForCellularServiceBootstrap = [coderCopy decodeBoolForKey:@"isBeingUsedForCellularServiceBootstrap"];
    v10 = objc_alloc(MEMORY[0x1E69DC9F0]);
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"eventAttribution"];
    v12 = [v10 initWithUISClickAttribution:v11];
    eventAttribution = v5->_eventAttribution;
    v5->_eventAttribution = v12;

    v5->_storageModeForAuthenticationSession = [coderCopy decodeIntegerForKey:@"storageModeForAuthenticationSession"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"networkAttributionApplicationBundleIdentifier"];
    networkAttributionApplicationBundleIdentifier = v5->_networkAttributionApplicationBundleIdentifier;
    v5->_networkAttributionApplicationBundleIdentifier = v14;

    v16 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  activityButton = self->_activityButton;
  coderCopy = coder;
  [coderCopy encodeObject:activityButton forKey:@"customActivityButton"];
  [coderCopy encodeBool:self->_barCollapsingEnabled forKey:@"barCollapsingEnabled"];
  [coderCopy encodeBool:self->_entersReaderIfAvailable forKey:@"entersReaderIfAvailable"];
  [coderCopy encodeBool:self->_ephemeral forKey:@"isEphemeral"];
  [coderCopy encodeBool:self->_jitEnabled forKey:@"jitEnabled"];
  [coderCopy encodeBool:self->_performingAccountSecurityUpgrade forKey:@"performingAccountSecurityUpgrade"];
  [coderCopy encodeObject:self->_personaUniqueIdentifier forKey:@"personaUniqueIdentifier"];
  [coderCopy encodeInteger:self->_redirectNotificationBehavior forKey:@"redirectNotificationBehavior"];
  [coderCopy encodeBool:self->_isBeingUsedForCellularServiceBootstrap forKey:@"isBeingUsedForCellularServiceBootstrap"];
  toUISClickAttribution = [(UIEventAttribution *)self->_eventAttribution toUISClickAttribution];
  [coderCopy encodeObject:toUISClickAttribution forKey:@"eventAttribution"];

  [coderCopy encodeInteger:self->_storageModeForAuthenticationSession forKey:@"storageModeForAuthenticationSession"];
  [coderCopy encodeObject:self->_networkAttributionApplicationBundleIdentifier forKey:@"networkAttributionApplicationBundleIdentifier"];
}

@end