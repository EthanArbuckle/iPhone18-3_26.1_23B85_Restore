@interface SAHASearchCriteriaFilter(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHASearchCriteriaFilter(HMLogging)

- (id)hm_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7E78];
  v4 = [a1 homeIdentifier];
  appendToShortDescription(v2, v3, v4);

  v5 = *MEMORY[0x1E69C7E80];
  v6 = [a1 homeName];
  appendToShortDescription(v2, v5, v6);

  v7 = *MEMORY[0x1E69C7ED0];
  v8 = [a1 zoneIdentifier];
  appendToShortDescription(v2, v7, v8);

  v9 = *MEMORY[0x1E69C7ED8];
  v10 = [a1 zoneName];
  appendToShortDescription(v2, v9, v10);

  v11 = *MEMORY[0x1E69C7E88];
  v12 = [a1 roomIdentifier];
  appendToShortDescription(v2, v11, v12);

  v13 = *MEMORY[0x1E69C7E90];
  v14 = [a1 roomName];
  appendToShortDescription(v2, v13, v14);

  v15 = *MEMORY[0x1E69C7EB0];
  v16 = [a1 serviceGroupIdentifier];
  appendToShortDescription(v2, v15, v16);

  v17 = *MEMORY[0x1E69C7E70];
  v18 = [a1 groupName];
  appendToShortDescription(v2, v17, v18);

  v19 = *MEMORY[0x1E69C7EA0];
  v20 = [a1 sceneName];
  appendToShortDescription(v2, v19, v20);

  v21 = *MEMORY[0x1E69C7E68];
  v22 = [a1 entityType];
  appendToShortDescription(v2, v21, v22);

  v23 = *MEMORY[0x1E69C7E50];
  v24 = [a1 accessoryIdentifier];
  appendToShortDescription(v2, v23, v24);

  v25 = *MEMORY[0x1E69C7E58];
  v26 = [a1 accessoryName];
  appendToShortDescription(v2, v25, v26);

  v27 = *MEMORY[0x1E69C7EC8];
  v28 = [a1 serviceType];
  appendToShortDescription(v2, v27, v28);

  v29 = *MEMORY[0x1E69C7EB8];
  v30 = [a1 serviceIdentifier];
  appendToShortDescription(v2, v29, v30);

  v31 = *MEMORY[0x1E69C7EC0];
  v32 = [a1 serviceName];
  appendToShortDescription(v2, v31, v32);

  v33 = *MEMORY[0x1E69C7E98];
  v34 = [a1 sceneIdentifier];
  appendToShortDescription(v2, v33, v34);

  v35 = *MEMORY[0x1E69C7EA8];
  v36 = [a1 sceneType];
  appendToShortDescription(v2, v35, v36);

  v37 = *MEMORY[0x1E69C7E60];
  v38 = [a1 attribute];
  appendToShortDescription(v2, v37, v38);

  [v2 appendString:@"  "];
  v39 = [a1 attribute];
  appendToShortDescription(v2, v37, v39);

  return v2;
}

@end