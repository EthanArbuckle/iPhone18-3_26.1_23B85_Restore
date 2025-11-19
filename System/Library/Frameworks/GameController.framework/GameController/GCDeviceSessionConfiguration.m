@interface GCDeviceSessionConfiguration
+ (void)initialize;
- (GCDeviceSessionConfiguration)init;
- (GCDeviceSessionConfiguration)initWithClientIdentifier:(id)a3 reserved:(unint64_t)a4;
- (GCDeviceSessionConfiguration)initWithCoder:(id)a3;
- (GCDeviceSessionConfiguration)initWithConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation GCDeviceSessionConfiguration

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {

    LoadGameControllerUIFramework(1);
  }
}

- (GCDeviceSessionConfiguration)init
{
  v7.receiver = self;
  v7.super_class = GCDeviceSessionConfiguration;
  v2 = [(GCDeviceSessionConfiguration *)&v7 init];
  v3 = [MEMORY[0x1E696AAE8] mainBundle];
  v4 = [v3 infoDictionary];
  v5 = [v4 objectForKey:@"GCSupportedGameControllers"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_storeStrong(&v2->_supportedGameControllers, v5);
  }

  v2->_coalesceRemotes = 1;

  return v2;
}

- (GCDeviceSessionConfiguration)initWithConfiguration:(id)a3
{
  v9.receiver = self;
  v9.super_class = GCDeviceSessionConfiguration;
  v3 = a3;
  v4 = [(GCDeviceSessionConfiguration *)&v9 init];
  v5 = [v3[1] copy];
  clientIdentifier = v4->_clientIdentifier;
  v4->_clientIdentifier = v5;

  -[GCDeviceSessionConfiguration setCoalesceRemotes:](v4, "setCoalesceRemotes:", [v3 coalesceRemotes]);
  -[GCDeviceSessionConfiguration setNonUI:](v4, "setNonUI:", [v3 isNonUI]);
  -[GCDeviceSessionConfiguration setDisableShareGestures:](v4, "setDisableShareGestures:", [v3 disableShareGestures]);
  -[GCDeviceSessionConfiguration setMonitorControllerEventsInBackground:](v4, "setMonitorControllerEventsInBackground:", [v3 monitorControllerEventsInBackground]);
  -[GCDeviceSessionConfiguration setBypassUIKit:](v4, "setBypassUIKit:", [v3 bypassUIKit]);
  -[GCDeviceSessionConfiguration setIgnoresUIAlertAssertions:](v4, "setIgnoresUIAlertAssertions:", [v3 ignoresUIAlertAssertions]);
  -[GCDeviceSessionConfiguration setSpatialGamepadSupported:](v4, "setSpatialGamepadSupported:", [v3 spatialGamepadSupported]);
  v7 = [v3 spatialGamepadProductCategoryIncludesChirality];

  [(GCDeviceSessionConfiguration *)v4 setSpatialGamepadProductCategoryIncludesChirality:v7];
  return v4;
}

- (GCDeviceSessionConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(GCDeviceSessionConfiguration *)self init];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"ClientIdentifier"];
  clientIdentifier = v5->_clientIdentifier;
  v5->_clientIdentifier = v6;

  v5->_coalesceRemotes = [v4 decodeBoolForKey:@"CoalesceRemotes"];
  v5->_nonUI = [v4 decodeBoolForKey:@"IsNonUI"];
  v5->_monitorControllerEventsInBackground = [v4 decodeBoolForKey:@"MonitorControllerEventsInBackground"];
  v5->_bypassUIKit = [v4 decodeBoolForKey:@"BypassUIKit"];
  v5->_ignoresUIAlertAssertions = [v4 decodeBoolForKey:@"IgnoresUIAlertAssertions"];
  v5->_disableShareGestures = [v4 decodeBoolForKey:@"DisableShareGestures"];
  v5->_spatialGamepadSupported = [v4 decodeBoolForKey:@"SpatialGamepadSupported"];
  v8 = [v4 decodeBoolForKey:@"SpatialGamepadProductCategoryIncludesChirality"];

  v5->_spatialGamepadProductCategoryIncludesChirality = v8;
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  clientIdentifier = self->_clientIdentifier;
  v5 = a3;
  [v5 encodeObject:clientIdentifier forKey:@"ClientIdentifier"];
  [v5 encodeBool:self->_coalesceRemotes forKey:@"CoalesceRemotes"];
  [v5 encodeBool:self->_nonUI forKey:@"IsNonUI"];
  [v5 encodeBool:self->_monitorControllerEventsInBackground forKey:@"MonitorControllerEventsInBackground"];
  [v5 encodeBool:self->_bypassUIKit forKey:@"BypassUIKit"];
  [v5 encodeBool:self->_ignoresUIAlertAssertions forKey:@"IgnoresUIAlertAssertions"];
  [v5 encodeBool:self->_disableShareGestures forKey:@"DisableShareGestures"];
  [v5 encodeBool:self->_spatialGamepadSupported forKey:@"SpatialGamepadSupported"];
  [v5 encodeBool:self->_spatialGamepadProductCategoryIncludesChirality forKey:@"SpatialGamepadProductCategoryIncludesChirality"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [GCDeviceSessionConfiguration alloc];

  return [(GCDeviceSessionConfiguration *)v4 initWithConfiguration:self];
}

- (GCDeviceSessionConfiguration)initWithClientIdentifier:(id)a3 reserved:(unint64_t)a4
{
  v6 = a3;
  v7 = [(GCDeviceSessionConfiguration *)self init];
  if (a4)
  {
    v12 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"*** Unsupported!" userInfo:0];
    objc_exception_throw(v12);
  }

  v8 = v7;
  v9 = [v6 copy];
  clientIdentifier = v8->_clientIdentifier;
  v8->_clientIdentifier = v9;

  if ([v6 isEqualToString:GCDeviceSessionClientNIS])
  {
    goto LABEL_3;
  }

  if ([v6 isEqualToString:GCDeviceSessionClientRealitySimulation])
  {
    [(GCDeviceSessionConfiguration *)v8 setNonUI:1];
    [(GCDeviceSessionConfiguration *)v8 setBypassUIKit:1];
LABEL_10:
    [(GCDeviceSessionConfiguration *)v8 setDisableShareGestures:1];
    [(GCDeviceSessionConfiguration *)v8 setSpatialGamepadSupported:1];
    goto LABEL_11;
  }

  if ([v6 isEqualToString:GCDeviceSessionClientSituationalAwareness])
  {
LABEL_3:
    [(GCDeviceSessionConfiguration *)v8 setNonUI:1];
    [(GCDeviceSessionConfiguration *)v8 setBypassUIKit:1];
    [(GCDeviceSessionConfiguration *)v8 setDisableShareGestures:1];
    [(GCDeviceSessionConfiguration *)v8 setSpatialGamepadSupported:1];
    [(GCDeviceSessionConfiguration *)v8 setSpatialGamepadProductCategoryIncludesChirality:1];
    goto LABEL_11;
  }

  if ([v6 isEqualToString:GCDeviceSessionClientARAccessoryTrackingNotifications] || objc_msgSend(v6, "isEqualToString:", GCDeviceSessionClientMatted))
  {
    [(GCDeviceSessionConfiguration *)v8 setNonUI:1];
    goto LABEL_10;
  }

LABEL_11:

  return v8;
}

@end