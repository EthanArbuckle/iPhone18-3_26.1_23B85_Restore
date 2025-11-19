@interface SAHAEntity(HMLogging)
- (id)hm_shortDescription;
@end

@implementation SAHAEntity(HMLogging)

- (id)hm_shortDescription
{
  v2 = [MEMORY[0x1E696AD60] string];
  v3 = *MEMORY[0x1E69C7DB8];
  v4 = [a1 entityType];
  appendToShortDescription(v2, v3, v4);

  v5 = *MEMORY[0x1E69C7DD8];
  v6 = [a1 name];
  appendToShortDescription(v2, v5, v6);

  v7 = [a1 identifier];
  appendToShortDescription(v2, 0, v7);

  v8 = *MEMORY[0x1E69C7DD0];
  v9 = [a1 home];
  appendToShortDescription(v2, v8, v9);

  v10 = *MEMORY[0x1E69C7DC8];
  v11 = [a1 homeIdentifier];
  appendToShortDescription(v2, v10, v11);

  v12 = *MEMORY[0x1E69C7DE8];
  v13 = [a1 room];
  appendToShortDescription(v2, v12, v13);

  v14 = *MEMORY[0x1E69C7DE0];
  v15 = [a1 roomIdentifier];
  appendToShortDescription(v2, v14, v15);

  v16 = *MEMORY[0x1E69C7E30];
  v17 = [a1 zone];
  appendToShortDescription(v2, v16, v17);

  v18 = *MEMORY[0x1E69C7E28];
  v19 = [a1 zoneIdentifiers];
  appendToShortDescription(v2, v18, v19);

  v20 = *MEMORY[0x1E69C7E00];
  v21 = [a1 serviceGroup];
  appendToShortDescription(v2, v20, v21);

  v22 = *MEMORY[0x1E69C7DF8];
  v23 = [a1 serviceGroupIdentifiers];
  appendToShortDescription(v2, v22, v23);

  v24 = *MEMORY[0x1E69C7DA0];
  v25 = [a1 accessory];
  appendToShortDescription(v2, v24, v25);

  v26 = *MEMORY[0x1E69C7D98];
  v27 = [a1 accessoryIdentifier];
  appendToShortDescription(v2, v26, v27);

  v28 = *MEMORY[0x1E69C7E10];
  v29 = [a1 serviceType];
  appendToShortDescription(v2, v28, v29);

  v30 = *MEMORY[0x1E69C7E08];
  v31 = [a1 serviceSubType];
  appendToShortDescription(v2, v30, v31);

  v32 = *MEMORY[0x1E69C7DC0];
  v33 = [a1 hashedRouteUID];
  appendToShortDescription(v2, v32, v33);

  v34 = *MEMORY[0x1E69C7DA8];
  v35 = [a1 attributes];
  appendToShortDescription(v2, v34, v35);

  v36 = *MEMORY[0x1E69C7E20];
  v37 = [a1 targetAttributes];
  appendToShortDescription(v2, v36, v37);

  v38 = *MEMORY[0x1E69C7DB0];
  v39 = [a1 currentDevice];
  appendToShortDescription(v2, v38, v39);

  v40 = *MEMORY[0x1E69C7DF0];
  v41 = [a1 sceneType];
  appendToShortDescription(v2, v40, v41);

  v42 = *MEMORY[0x1E69C7E18];
  v43 = [a1 status];
  appendToShortDescription(v2, v42, v43);

  return v2;
}

@end