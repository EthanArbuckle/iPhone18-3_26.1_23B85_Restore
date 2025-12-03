@interface SAHAEntity(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAEntity(HMLogging)

- (id)hm_shortDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7DB8];
  entityType = [self entityType];
  appendToShortDescription(string, v3, entityType);

  v5 = *MEMORY[0x1E69C7DD8];
  name = [self name];
  appendToShortDescription(string, v5, name);

  identifier = [self identifier];
  appendToShortDescription(string, 0, identifier);

  v8 = *MEMORY[0x1E69C7DD0];
  home = [self home];
  appendToShortDescription(string, v8, home);

  v10 = *MEMORY[0x1E69C7DC8];
  homeIdentifier = [self homeIdentifier];
  appendToShortDescription(string, v10, homeIdentifier);

  v12 = *MEMORY[0x1E69C7DE8];
  room = [self room];
  appendToShortDescription(string, v12, room);

  v14 = *MEMORY[0x1E69C7DE0];
  roomIdentifier = [self roomIdentifier];
  appendToShortDescription(string, v14, roomIdentifier);

  v16 = *MEMORY[0x1E69C7E30];
  v17 = [self zone];
  appendToShortDescription(string, v16, v17);

  v18 = *MEMORY[0x1E69C7E28];
  zoneIdentifiers = [self zoneIdentifiers];
  appendToShortDescription(string, v18, zoneIdentifiers);

  v20 = *MEMORY[0x1E69C7E00];
  serviceGroup = [self serviceGroup];
  appendToShortDescription(string, v20, serviceGroup);

  v22 = *MEMORY[0x1E69C7DF8];
  serviceGroupIdentifiers = [self serviceGroupIdentifiers];
  appendToShortDescription(string, v22, serviceGroupIdentifiers);

  v24 = *MEMORY[0x1E69C7DA0];
  accessory = [self accessory];
  appendToShortDescription(string, v24, accessory);

  v26 = *MEMORY[0x1E69C7D98];
  accessoryIdentifier = [self accessoryIdentifier];
  appendToShortDescription(string, v26, accessoryIdentifier);

  v28 = *MEMORY[0x1E69C7E10];
  serviceType = [self serviceType];
  appendToShortDescription(string, v28, serviceType);

  v30 = *MEMORY[0x1E69C7E08];
  serviceSubType = [self serviceSubType];
  appendToShortDescription(string, v30, serviceSubType);

  v32 = *MEMORY[0x1E69C7DC0];
  hashedRouteUID = [self hashedRouteUID];
  appendToShortDescription(string, v32, hashedRouteUID);

  v34 = *MEMORY[0x1E69C7DA8];
  attributes = [self attributes];
  appendToShortDescription(string, v34, attributes);

  v36 = *MEMORY[0x1E69C7E20];
  targetAttributes = [self targetAttributes];
  appendToShortDescription(string, v36, targetAttributes);

  v38 = *MEMORY[0x1E69C7DB0];
  currentDevice = [self currentDevice];
  appendToShortDescription(string, v38, currentDevice);

  v40 = *MEMORY[0x1E69C7DF0];
  sceneType = [self sceneType];
  appendToShortDescription(string, v40, sceneType);

  v42 = *MEMORY[0x1E69C7E18];
  status = [self status];
  appendToShortDescription(string, v42, status);

  return string;
}

@end