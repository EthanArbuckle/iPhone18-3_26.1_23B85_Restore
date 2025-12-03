@interface SAHASearchCriteriaFilter(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHASearchCriteriaFilter(HMLogging)

- (id)hm_shortDescription
{
  string = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7E78];
  homeIdentifier = [self homeIdentifier];
  appendToShortDescription(string, v3, homeIdentifier);

  v5 = *MEMORY[0x1E69C7E80];
  homeName = [self homeName];
  appendToShortDescription(string, v5, homeName);

  v7 = *MEMORY[0x1E69C7ED0];
  zoneIdentifier = [self zoneIdentifier];
  appendToShortDescription(string, v7, zoneIdentifier);

  v9 = *MEMORY[0x1E69C7ED8];
  zoneName = [self zoneName];
  appendToShortDescription(string, v9, zoneName);

  v11 = *MEMORY[0x1E69C7E88];
  roomIdentifier = [self roomIdentifier];
  appendToShortDescription(string, v11, roomIdentifier);

  v13 = *MEMORY[0x1E69C7E90];
  roomName = [self roomName];
  appendToShortDescription(string, v13, roomName);

  v15 = *MEMORY[0x1E69C7EB0];
  serviceGroupIdentifier = [self serviceGroupIdentifier];
  appendToShortDescription(string, v15, serviceGroupIdentifier);

  v17 = *MEMORY[0x1E69C7E70];
  groupName = [self groupName];
  appendToShortDescription(string, v17, groupName);

  v19 = *MEMORY[0x1E69C7EA0];
  sceneName = [self sceneName];
  appendToShortDescription(string, v19, sceneName);

  v21 = *MEMORY[0x1E69C7E68];
  entityType = [self entityType];
  appendToShortDescription(string, v21, entityType);

  v23 = *MEMORY[0x1E69C7E50];
  accessoryIdentifier = [self accessoryIdentifier];
  appendToShortDescription(string, v23, accessoryIdentifier);

  v25 = *MEMORY[0x1E69C7E58];
  accessoryName = [self accessoryName];
  appendToShortDescription(string, v25, accessoryName);

  v27 = *MEMORY[0x1E69C7EC8];
  serviceType = [self serviceType];
  appendToShortDescription(string, v27, serviceType);

  v29 = *MEMORY[0x1E69C7EB8];
  serviceIdentifier = [self serviceIdentifier];
  appendToShortDescription(string, v29, serviceIdentifier);

  v31 = *MEMORY[0x1E69C7EC0];
  serviceName = [self serviceName];
  appendToShortDescription(string, v31, serviceName);

  v33 = *MEMORY[0x1E69C7E98];
  sceneIdentifier = [self sceneIdentifier];
  appendToShortDescription(string, v33, sceneIdentifier);

  v35 = *MEMORY[0x1E69C7EA8];
  sceneType = [self sceneType];
  appendToShortDescription(string, v35, sceneType);

  v37 = *MEMORY[0x1E69C7E60];
  attribute = [self attribute];
  appendToShortDescription(string, v37, attribute);

  [string appendString:@"  "];
  attribute2 = [self attribute];
  appendToShortDescription(string, v37, attribute2);

  return string;
}

@end