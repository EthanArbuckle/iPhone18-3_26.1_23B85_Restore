@interface INHomeAutomationEntityProvider
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INHomeAutomationEntityProvider)initWithCoder:(id)a3;
- (INHomeAutomationEntityProvider)initWithRoomNames:(id)a3 homeName:(id)a4 zoneNames:(id)a5 accessoryNames:(id)a6 serviceNames:(id)a7 serviceGroups:(id)a8 intentFromEntities:(id)a9 intentDeviceQuantifier:(id)a10 destinationDeviceId:(id)a11 intentDeviceType:(id)a12 intentPlaceHint:(id)a13 intentReference:(id)a14;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation INHomeAutomationEntityProvider

- (id)_dictionaryRepresentation
{
  v40[12] = *MEMORY[0x1E69E9840];
  roomNames = self->_roomNames;
  v3 = roomNames;
  v39[0] = @"roomNames";
  if (!roomNames)
  {
    v3 = [MEMORY[0x1E695DFB0] null];
  }

  v40[0] = v3;
  v39[1] = @"homeName";
  homeName = self->_homeName;
  v36 = homeName;
  if (!homeName)
  {
    homeName = [MEMORY[0x1E695DFB0] null];
  }

  v40[1] = homeName;
  v39[2] = @"zoneNames";
  zoneNames = self->_zoneNames;
  v34 = zoneNames;
  if (!zoneNames)
  {
    zoneNames = [MEMORY[0x1E695DFB0] null];
  }

  v40[2] = zoneNames;
  v39[3] = @"accessoryNames";
  accessoryNames = self->_accessoryNames;
  v33 = accessoryNames;
  if (!accessoryNames)
  {
    accessoryNames = [MEMORY[0x1E695DFB0] null];
  }

  v40[3] = accessoryNames;
  v39[4] = @"serviceNames";
  serviceNames = self->_serviceNames;
  v32 = serviceNames;
  if (!serviceNames)
  {
    serviceNames = [MEMORY[0x1E695DFB0] null];
  }

  v40[4] = serviceNames;
  v39[5] = @"serviceGroups";
  serviceGroups = self->_serviceGroups;
  v31 = serviceGroups;
  if (!serviceGroups)
  {
    serviceGroups = [MEMORY[0x1E695DFB0] null];
  }

  v40[5] = serviceGroups;
  v39[6] = @"intentFromEntities";
  intentFromEntities = self->_intentFromEntities;
  v10 = intentFromEntities;
  if (!intentFromEntities)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = v10;
  v40[6] = v10;
  v39[7] = @"intentDeviceQuantifier";
  intentDeviceQuantifier = self->_intentDeviceQuantifier;
  v12 = intentDeviceQuantifier;
  if (!intentDeviceQuantifier)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = v3;
  v25 = v12;
  v40[7] = v12;
  v39[8] = @"destinationDeviceId";
  destinationDeviceId = self->_destinationDeviceId;
  v14 = destinationDeviceId;
  if (!destinationDeviceId)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = serviceGroups;
  v28 = serviceNames;
  v29 = accessoryNames;
  v35 = homeName;
  v24 = v14;
  v40[8] = v14;
  v39[9] = @"intentDeviceType";
  intentDeviceType = self->_intentDeviceType;
  v16 = intentDeviceType;
  if (!intentDeviceType)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = zoneNames;
  v40[9] = v16;
  v39[10] = @"intentPlaceHint";
  intentPlaceHint = self->_intentPlaceHint;
  v19 = intentPlaceHint;
  if (!intentPlaceHint)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v40[10] = v19;
  v39[11] = @"intentReference";
  intentReference = self->_intentReference;
  v21 = intentReference;
  if (!intentReference)
  {
    v21 = [MEMORY[0x1E695DFB0] null];
  }

  v40[11] = v21;
  v30 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:12];
  if (intentReference)
  {
    if (intentPlaceHint)
    {
      goto LABEL_27;
    }

LABEL_48:

    if (intentDeviceType)
    {
      goto LABEL_28;
    }

    goto LABEL_49;
  }

  if (!intentPlaceHint)
  {
    goto LABEL_48;
  }

LABEL_27:
  if (intentDeviceType)
  {
    goto LABEL_28;
  }

LABEL_49:

LABEL_28:
  if (!destinationDeviceId)
  {
  }

  if (intentDeviceQuantifier)
  {
    if (intentFromEntities)
    {
      goto LABEL_32;
    }
  }

  else
  {

    if (intentFromEntities)
    {
      goto LABEL_32;
    }
  }

LABEL_32:
  if (!v31)
  {
  }

  if (!v32)
  {
  }

  if (!v33)
  {
  }

  if (!v34)
  {
  }

  if (!v36)
  {
  }

  if (!roomNames)
  {
  }

  v22 = *MEMORY[0x1E69E9840];

  return v30;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeAutomationEntityProvider;
  v6 = [(INHomeAutomationEntityProvider *)&v11 description];
  v7 = [(INHomeAutomationEntityProvider *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_roomNames];
  [v7 if_setObjectIfNonNil:v8 forKey:@"roomNames"];

  v9 = [v6 encodeObject:self->_homeName];
  [v7 if_setObjectIfNonNil:v9 forKey:@"homeName"];

  v10 = [v6 encodeObject:self->_zoneNames];
  [v7 if_setObjectIfNonNil:v10 forKey:@"zoneNames"];

  v11 = [v6 encodeObject:self->_accessoryNames];
  [v7 if_setObjectIfNonNil:v11 forKey:@"accessoryNames"];

  v12 = [v6 encodeObject:self->_serviceNames];
  [v7 if_setObjectIfNonNil:v12 forKey:@"serviceNames"];

  v13 = [v6 encodeObject:self->_serviceGroups];
  [v7 if_setObjectIfNonNil:v13 forKey:@"serviceGroups"];

  v14 = [v6 encodeObject:self->_intentFromEntities];
  [v7 if_setObjectIfNonNil:v14 forKey:@"intentFromEntities"];

  v15 = [v6 encodeObject:self->_intentDeviceQuantifier];
  [v7 if_setObjectIfNonNil:v15 forKey:@"intentDeviceQuantifier"];

  v16 = [v6 encodeObject:self->_destinationDeviceId];
  [v7 if_setObjectIfNonNil:v16 forKey:@"destinationDeviceId"];

  v17 = [v6 encodeObject:self->_intentDeviceType];
  [v7 if_setObjectIfNonNil:v17 forKey:@"intentDeviceType"];

  v18 = [v6 encodeObject:self->_intentPlaceHint];
  [v7 if_setObjectIfNonNil:v18 forKey:@"intentPlaceHint"];

  v19 = [v6 encodeObject:self->_intentReference];

  [v7 if_setObjectIfNonNil:v19 forKey:@"intentReference"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  roomNames = self->_roomNames;
  v5 = a3;
  [v5 encodeObject:roomNames forKey:@"roomNames"];
  [v5 encodeObject:self->_homeName forKey:@"homeName"];
  [v5 encodeObject:self->_zoneNames forKey:@"zoneNames"];
  [v5 encodeObject:self->_accessoryNames forKey:@"accessoryNames"];
  [v5 encodeObject:self->_serviceNames forKey:@"serviceNames"];
  [v5 encodeObject:self->_serviceGroups forKey:@"serviceGroups"];
  [v5 encodeObject:self->_intentFromEntities forKey:@"intentFromEntities"];
  [v5 encodeObject:self->_intentDeviceQuantifier forKey:@"intentDeviceQuantifier"];
  [v5 encodeObject:self->_destinationDeviceId forKey:@"destinationDeviceId"];
  [v5 encodeObject:self->_intentDeviceType forKey:@"intentDeviceType"];
  [v5 encodeObject:self->_intentPlaceHint forKey:@"intentPlaceHint"];
  [v5 encodeObject:self->_intentReference forKey:@"intentReference"];
}

- (INHomeAutomationEntityProvider)initWithCoder:(id)a3
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v6 = [v3 setWithArray:v5];
  v7 = [v4 decodeObjectOfClasses:v6 forKey:@"roomNames"];

  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"homeName"];
  v9 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v11 = [v9 setWithArray:v10];
  v37 = [v4 decodeObjectOfClasses:v11 forKey:@"zoneNames"];

  v12 = MEMORY[0x1E695DFD8];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v14 = [v12 setWithArray:v13];
  v36 = [v4 decodeObjectOfClasses:v14 forKey:@"accessoryNames"];

  v15 = MEMORY[0x1E695DFD8];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [v4 decodeObjectOfClasses:v17 forKey:@"serviceNames"];

  v19 = MEMORY[0x1E695DFD8];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v21 = [v19 setWithArray:v20];
  v35 = [v4 decodeObjectOfClasses:v21 forKey:@"serviceGroups"];

  v22 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v24 = [v22 setWithArray:v23];
  v32 = [v4 decodeObjectOfClasses:v24 forKey:@"intentFromEntities"];

  v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentDeviceQuantifier"];
  v25 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"destinationDeviceId"];
  v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentDeviceType"];
  v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentPlaceHint"];
  v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"intentReference"];

  v34 = [(INHomeAutomationEntityProvider *)self initWithRoomNames:v7 homeName:v8 zoneNames:v37 accessoryNames:v36 serviceNames:v18 serviceGroups:v35 intentFromEntities:v32 intentDeviceQuantifier:v31 destinationDeviceId:v25 intentDeviceType:v26 intentPlaceHint:v27 intentReference:v28];
  v29 = *MEMORY[0x1E69E9840];
  return v34;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      roomNames = self->_roomNames;
      if (roomNames != v5->_roomNames && ![(NSArray *)roomNames isEqual:?])
      {
        goto LABEL_30;
      }

      homeName = self->_homeName;
      if (homeName != v5->_homeName && ![(NSString *)homeName isEqual:?])
      {
        goto LABEL_30;
      }

      zoneNames = self->_zoneNames;
      if (zoneNames != v5->_zoneNames && ![(NSArray *)zoneNames isEqual:?])
      {
        goto LABEL_30;
      }

      accessoryNames = self->_accessoryNames;
      if (accessoryNames != v5->_accessoryNames && ![(NSArray *)accessoryNames isEqual:?])
      {
        goto LABEL_30;
      }

      serviceNames = self->_serviceNames;
      if (serviceNames != v5->_serviceNames && ![(NSArray *)serviceNames isEqual:?])
      {
        goto LABEL_30;
      }

      if (((serviceGroups = self->_serviceGroups, serviceGroups == v5->_serviceGroups) || [(NSArray *)serviceGroups isEqual:?]) && ((intentFromEntities = self->_intentFromEntities, intentFromEntities == v5->_intentFromEntities) || [(NSArray *)intentFromEntities isEqual:?]) && ((intentDeviceQuantifier = self->_intentDeviceQuantifier, intentDeviceQuantifier == v5->_intentDeviceQuantifier) || [(NSString *)intentDeviceQuantifier isEqual:?]) && ((destinationDeviceId = self->_destinationDeviceId, destinationDeviceId == v5->_destinationDeviceId) || [(NSString *)destinationDeviceId isEqual:?]) && ((intentDeviceType = self->_intentDeviceType, intentDeviceType == v5->_intentDeviceType) || [(NSString *)intentDeviceType isEqual:?]) && ((intentPlaceHint = self->_intentPlaceHint, intentPlaceHint == v5->_intentPlaceHint) || [(NSString *)intentPlaceHint isEqual:?]) && ((intentReference = self->_intentReference, intentReference == v5->_intentReference) || [(NSString *)intentReference isEqual:?]))
      {
        v18 = 1;
      }

      else
      {
LABEL_30:
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }
  }

  return v18;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_roomNames hash];
  v4 = [(NSString *)self->_homeName hash]^ v3;
  v5 = [(NSArray *)self->_zoneNames hash];
  v6 = v4 ^ v5 ^ [(NSArray *)self->_accessoryNames hash];
  v7 = [(NSArray *)self->_serviceNames hash];
  v8 = v7 ^ [(NSArray *)self->_serviceGroups hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_intentFromEntities hash];
  v10 = [(NSString *)self->_intentDeviceQuantifier hash];
  v11 = v10 ^ [(NSString *)self->_destinationDeviceId hash];
  v12 = v11 ^ [(NSString *)self->_intentDeviceType hash];
  v13 = v9 ^ v12 ^ [(NSString *)self->_intentPlaceHint hash];
  return v13 ^ [(NSString *)self->_intentReference hash];
}

- (INHomeAutomationEntityProvider)initWithRoomNames:(id)a3 homeName:(id)a4 zoneNames:(id)a5 accessoryNames:(id)a6 serviceNames:(id)a7 serviceGroups:(id)a8 intentFromEntities:(id)a9 intentDeviceQuantifier:(id)a10 destinationDeviceId:(id)a11 intentDeviceType:(id)a12 intentPlaceHint:(id)a13 intentReference:(id)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v58 = a6;
  v57 = a7;
  v56 = a8;
  v22 = v20;
  v23 = a9;
  v24 = a10;
  v25 = a11;
  v26 = a12;
  v27 = a13;
  v28 = a14;
  v59.receiver = self;
  v59.super_class = INHomeAutomationEntityProvider;
  v29 = [(INHomeAutomationEntityProvider *)&v59 init];
  if (v29)
  {
    v30 = [v19 copy];
    roomNames = v29->_roomNames;
    v29->_roomNames = v30;

    v32 = [v22 copy];
    homeName = v29->_homeName;
    v29->_homeName = v32;

    v34 = [v21 copy];
    zoneNames = v29->_zoneNames;
    v29->_zoneNames = v34;

    v36 = [v58 copy];
    accessoryNames = v29->_accessoryNames;
    v29->_accessoryNames = v36;

    v38 = [v57 copy];
    serviceNames = v29->_serviceNames;
    v29->_serviceNames = v38;

    v40 = [v56 copy];
    serviceGroups = v29->_serviceGroups;
    v29->_serviceGroups = v40;

    v42 = [v23 copy];
    intentFromEntities = v29->_intentFromEntities;
    v29->_intentFromEntities = v42;

    v44 = [v24 copy];
    intentDeviceQuantifier = v29->_intentDeviceQuantifier;
    v29->_intentDeviceQuantifier = v44;

    v46 = [v25 copy];
    destinationDeviceId = v29->_destinationDeviceId;
    v29->_destinationDeviceId = v46;

    v48 = [v26 copy];
    intentDeviceType = v29->_intentDeviceType;
    v29->_intentDeviceType = v48;

    v50 = [v27 copy];
    intentPlaceHint = v29->_intentPlaceHint;
    v29->_intentPlaceHint = v50;

    v52 = [v28 copy];
    intentReference = v29->_intentReference;
    v29->_intentReference = v52;
  }

  return v29;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v43 = a1;
    v9 = objc_opt_class();
    v10 = [v8 objectForKeyedSubscript:@"roomNames"];
    v47 = [v7 decodeObjectsOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [v8 objectForKeyedSubscript:@"homeName"];
    v46 = [v7 decodeObjectOfClass:v11 from:v12];

    v13 = objc_opt_class();
    v14 = [v8 objectForKeyedSubscript:@"zoneNames"];
    v45 = [v7 decodeObjectsOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [v8 objectForKeyedSubscript:@"accessoryNames"];
    v44 = [v7 decodeObjectsOfClass:v15 from:v16];

    v17 = objc_opt_class();
    v18 = [v8 objectForKeyedSubscript:@"serviceNames"];
    v41 = [v7 decodeObjectsOfClass:v17 from:v18];

    v19 = objc_opt_class();
    v20 = [v8 objectForKeyedSubscript:@"serviceGroups"];
    v42 = [v7 decodeObjectsOfClass:v19 from:v20];

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"intentFromEntities"];
    v23 = [v7 decodeObjectsOfClass:v21 from:v22];

    v24 = objc_opt_class();
    v25 = [v8 objectForKeyedSubscript:@"intentDeviceQuantifier"];
    v40 = [v7 decodeObjectOfClass:v24 from:v25];

    v26 = objc_opt_class();
    v27 = [v8 objectForKeyedSubscript:@"destinationDeviceId"];
    v28 = [v7 decodeObjectOfClass:v26 from:v27];

    v29 = objc_opt_class();
    v30 = [v8 objectForKeyedSubscript:@"intentDeviceType"];
    v39 = [v7 decodeObjectOfClass:v29 from:v30];

    v31 = objc_opt_class();
    v32 = [v8 objectForKeyedSubscript:@"intentPlaceHint"];
    v33 = [v7 decodeObjectOfClass:v31 from:v32];

    v34 = objc_opt_class();
    v35 = [v8 objectForKeyedSubscript:@"intentReference"];
    v36 = [v7 decodeObjectOfClass:v34 from:v35];

    v37 = [[v43 alloc] initWithRoomNames:v47 homeName:v46 zoneNames:v45 accessoryNames:v44 serviceNames:v41 serviceGroups:v42 intentFromEntities:v23 intentDeviceQuantifier:v40 destinationDeviceId:v28 intentDeviceType:v39 intentPlaceHint:v33 intentReference:v36];
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

@end