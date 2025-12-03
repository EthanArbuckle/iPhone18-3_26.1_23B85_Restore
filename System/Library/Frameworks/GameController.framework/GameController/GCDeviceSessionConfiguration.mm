@interface GCDeviceSessionConfiguration
+ (void)initialize;
- (GCDeviceSessionConfiguration)init;
- (GCDeviceSessionConfiguration)initWithClientIdentifier:(id)identifier reserved:(unint64_t)reserved;
- (GCDeviceSessionConfiguration)initWithCoder:(id)coder;
- (GCDeviceSessionConfiguration)initWithConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (void)encodeWithCoder:(id)coder;
@end

@implementation GCDeviceSessionConfiguration

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    LoadGameControllerUIFramework(1);
  }
}

- (GCDeviceSessionConfiguration)init
{
  v7.receiver = self;
  v7.super_class = GCDeviceSessionConfiguration;
  v2 = [(GCDeviceSessionConfiguration *)&v7 init];
  mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
  infoDictionary = [mainBundle infoDictionary];
  v5 = [infoDictionary objectForKey:@"GCSupportedGameControllers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v2->_supportedGameControllers, v5);
  }

  v2->_coalesceRemotes = 1;

  return v2;
}

- (GCDeviceSessionConfiguration)initWithConfiguration:(id)configuration
{
  v9.receiver = self;
  v9.super_class = GCDeviceSessionConfiguration;
  configurationCopy = configuration;
  v4 = [(GCDeviceSessionConfiguration *)&v9 init];
  v5 = [configurationCopy[1] copy];
  clientIdentifier = v4->_clientIdentifier;
  v4->_clientIdentifier = v5;

  -[GCDeviceSessionConfiguration setCoalesceRemotes:](v4, "setCoalesceRemotes:", [configurationCopy coalesceRemotes]);
  -[GCDeviceSessionConfiguration setNonUI:](v4, "setNonUI:", [configurationCopy isNonUI]);
  -[GCDeviceSessionConfiguration setDisableShareGestures:](v4, "setDisableShareGestures:", [configurationCopy disableShareGestures]);
  -[GCDeviceSessionConfiguration setMonitorControllerEventsInBackground:](v4, "setMonitorControllerEventsInBackground:", [configurationCopy monitorControllerEventsInBackground]);
  -[GCDeviceSessionConfiguration setBypassUIKit:](v4, "setBypassUIKit:", [configurationCopy bypassUIKit]);
  -[GCDeviceSessionConfiguration setIgnoresUIAlertAssertions:](v4, "setIgnoresUIAlertAssertions:", [configurationCopy ignoresUIAlertAssertions]);
  -[GCDeviceSessionConfiguration setSpatialGamepadSupported:](v4, "setSpatialGamepadSupported:", [configurationCopy spatialGamepadSupported]);
  spatialGamepadProductCategoryIncludesChirality = [configurationCopy spatialGamepadProductCategoryIncludesChirality];

  [(GCDeviceSessionConfiguration *)v4 setSpatialGamepadProductCategoryIncludesChirality:spatialGamepadProductCategoryIncludesChirality];
  return v4;
}

- (GCDeviceSessionConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(GCDeviceSessionConfiguration *)self init];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"ClientIdentifier"];
  clientIdentifier = v5->_clientIdentifier;
  v5->_clientIdentifier = v6;

  v5->_coalesceRemotes = [coderCopy decodeBoolForKey:@"CoalesceRemotes"];
  v5->_nonUI = [coderCopy decodeBoolForKey:@"IsNonUI"];
  v5->_monitorControllerEventsInBackground = [coderCopy decodeBoolForKey:@"MonitorControllerEventsInBackground"];
  v5->_bypassUIKit = [coderCopy decodeBoolForKey:@"BypassUIKit"];
  v5->_ignoresUIAlertAssertions = [coderCopy decodeBoolForKey:@"IgnoresUIAlertAssertions"];
  v5->_disableShareGestures = [coderCopy decodeBoolForKey:@"DisableShareGestures"];
  v5->_spatialGamepadSupported = [coderCopy decodeBoolForKey:@"SpatialGamepadSupported"];
  v8 = [coderCopy decodeBoolForKey:@"SpatialGamepadProductCategoryIncludesChirality"];

  v5->_spatialGamepadProductCategoryIncludesChirality = v8;
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  clientIdentifier = self->_clientIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:clientIdentifier forKey:@"ClientIdentifier"];
  [coderCopy encodeBool:self->_coalesceRemotes forKey:@"CoalesceRemotes"];
  [coderCopy encodeBool:self->_nonUI forKey:@"IsNonUI"];
  [coderCopy encodeBool:self->_monitorControllerEventsInBackground forKey:@"MonitorControllerEventsInBackground"];
  [coderCopy encodeBool:self->_bypassUIKit forKey:@"BypassUIKit"];
  [coderCopy encodeBool:self->_ignoresUIAlertAssertions forKey:@"IgnoresUIAlertAssertions"];
  [coderCopy encodeBool:self->_disableShareGestures forKey:@"DisableShareGestures"];
  [coderCopy encodeBool:self->_spatialGamepadSupported forKey:@"SpatialGamepadSupported"];
  [coderCopy encodeBool:self->_spatialGamepadProductCategoryIncludesChirality forKey:@"SpatialGamepadProductCategoryIncludesChirality"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [GCDeviceSessionConfiguration alloc];

  return [(GCDeviceSessionConfiguration *)v4 initWithConfiguration:self];
}

- (GCDeviceSessionConfiguration)initWithClientIdentifier:(id)identifier reserved:(unint64_t)reserved
{
  identifierCopy = identifier;
  v7 = [(GCDeviceSessionConfiguration *)self init];
  if (reserved)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** Unsupported!" userInfo:0];
    objc_exception_throw(v12);
  }

  v8 = v7;
  v9 = [identifierCopy copy];
  clientIdentifier = v8->_clientIdentifier;
  v8->_clientIdentifier = v9;

  if ([identifierCopy isEqualToString:GCDeviceSessionClientNIS])
  {
    goto LABEL_3;
  }

  if ([identifierCopy isEqualToString:GCDeviceSessionClientRealitySimulation])
  {
    [(GCDeviceSessionConfiguration *)v8 setNonUI:1];
    [(GCDeviceSessionConfiguration *)v8 setBypassUIKit:1];
LABEL_10:
    [(GCDeviceSessionConfiguration *)v8 setDisableShareGestures:1];
    [(GCDeviceSessionConfiguration *)v8 setSpatialGamepadSupported:1];
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:GCDeviceSessionClientSituationalAwareness])
  {
LABEL_3:
    [(GCDeviceSessionConfiguration *)v8 setNonUI:1];
    [(GCDeviceSessionConfiguration *)v8 setBypassUIKit:1];
    [(GCDeviceSessionConfiguration *)v8 setDisableShareGestures:1];
    [(GCDeviceSessionConfiguration *)v8 setSpatialGamepadSupported:1];
    [(GCDeviceSessionConfiguration *)v8 setSpatialGamepadProductCategoryIncludesChirality:1];
    goto LABEL_11;
  }

  if ([identifierCopy isEqualToString:GCDeviceSessionClientARAccessoryTrackingNotifications] || objc_msgSend(identifierCopy, "isEqualToString:", GCDeviceSessionClientMatted))
  {
    [(GCDeviceSessionConfiguration *)v8 setNonUI:1];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

@end