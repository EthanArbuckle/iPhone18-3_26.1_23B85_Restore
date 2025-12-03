@interface INHomeAutomationEntityProvider
+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from;
- (BOOL)isEqual:(id)equal;
- (INHomeAutomationEntityProvider)initWithCoder:(id)coder;
- (INHomeAutomationEntityProvider)initWithRoomNames:(id)names homeName:(id)name zoneNames:(id)zoneNames accessoryNames:(id)accessoryNames serviceNames:(id)serviceNames serviceGroups:(id)groups intentFromEntities:(id)entities intentDeviceQuantifier:(id)self0 destinationDeviceId:(id)self1 intentDeviceType:(id)self2 intentPlaceHint:(id)self3 intentReference:(id)self4;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description;
- (id)descriptionAtIndent:(unint64_t)indent;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation INHomeAutomationEntityProvider

- (id)_dictionaryRepresentation
{
  v40[12] = *MEMORY[0x1E69E9840];
  roomNames = self->_roomNames;
  null = roomNames;
  v39[0] = @"roomNames";
  if (!roomNames)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v40[0] = null;
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
  null2 = intentFromEntities;
  if (!intentFromEntities)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v26 = null2;
  v40[6] = null2;
  v39[7] = @"intentDeviceQuantifier";
  intentDeviceQuantifier = self->_intentDeviceQuantifier;
  null3 = intentDeviceQuantifier;
  if (!intentDeviceQuantifier)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v37 = null;
  v25 = null3;
  v40[7] = null3;
  v39[8] = @"destinationDeviceId";
  destinationDeviceId = self->_destinationDeviceId;
  null4 = destinationDeviceId;
  if (!destinationDeviceId)
  {
    null4 = [MEMORY[0x1E695DFB0] null];
  }

  v27 = serviceGroups;
  v28 = serviceNames;
  v29 = accessoryNames;
  v35 = homeName;
  v24 = null4;
  v40[8] = null4;
  v39[9] = @"intentDeviceType";
  intentDeviceType = self->_intentDeviceType;
  null5 = intentDeviceType;
  if (!intentDeviceType)
  {
    null5 = [MEMORY[0x1E695DFB0] null];
  }

  v17 = zoneNames;
  v40[9] = null5;
  v39[10] = @"intentPlaceHint";
  intentPlaceHint = self->_intentPlaceHint;
  null6 = intentPlaceHint;
  if (!intentPlaceHint)
  {
    null6 = [MEMORY[0x1E695DFB0] null];
  }

  v40[10] = null6;
  v39[11] = @"intentReference";
  intentReference = self->_intentReference;
  null7 = intentReference;
  if (!intentReference)
  {
    null7 = [MEMORY[0x1E695DFB0] null];
  }

  v40[11] = null7;
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

- (id)descriptionAtIndent:(unint64_t)indent
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INHomeAutomationEntityProvider;
  v6 = [(INHomeAutomationEntityProvider *)&v11 description];
  _dictionaryRepresentation = [(INHomeAutomationEntityProvider *)self _dictionaryRepresentation];
  v8 = [_dictionaryRepresentation descriptionAtIndent:indent];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)encoder codableDescription:(id)description
{
  v5 = MEMORY[0x1E695DF90];
  encoderCopy = encoder;
  dictionary = [v5 dictionary];
  v8 = [encoderCopy encodeObject:self->_roomNames];
  [dictionary if_setObjectIfNonNil:v8 forKey:@"roomNames"];

  v9 = [encoderCopy encodeObject:self->_homeName];
  [dictionary if_setObjectIfNonNil:v9 forKey:@"homeName"];

  v10 = [encoderCopy encodeObject:self->_zoneNames];
  [dictionary if_setObjectIfNonNil:v10 forKey:@"zoneNames"];

  v11 = [encoderCopy encodeObject:self->_accessoryNames];
  [dictionary if_setObjectIfNonNil:v11 forKey:@"accessoryNames"];

  v12 = [encoderCopy encodeObject:self->_serviceNames];
  [dictionary if_setObjectIfNonNil:v12 forKey:@"serviceNames"];

  v13 = [encoderCopy encodeObject:self->_serviceGroups];
  [dictionary if_setObjectIfNonNil:v13 forKey:@"serviceGroups"];

  v14 = [encoderCopy encodeObject:self->_intentFromEntities];
  [dictionary if_setObjectIfNonNil:v14 forKey:@"intentFromEntities"];

  v15 = [encoderCopy encodeObject:self->_intentDeviceQuantifier];
  [dictionary if_setObjectIfNonNil:v15 forKey:@"intentDeviceQuantifier"];

  v16 = [encoderCopy encodeObject:self->_destinationDeviceId];
  [dictionary if_setObjectIfNonNil:v16 forKey:@"destinationDeviceId"];

  v17 = [encoderCopy encodeObject:self->_intentDeviceType];
  [dictionary if_setObjectIfNonNil:v17 forKey:@"intentDeviceType"];

  v18 = [encoderCopy encodeObject:self->_intentPlaceHint];
  [dictionary if_setObjectIfNonNil:v18 forKey:@"intentPlaceHint"];

  v19 = [encoderCopy encodeObject:self->_intentReference];

  [dictionary if_setObjectIfNonNil:v19 forKey:@"intentReference"];

  return dictionary;
}

- (void)encodeWithCoder:(id)coder
{
  roomNames = self->_roomNames;
  coderCopy = coder;
  [coderCopy encodeObject:roomNames forKey:@"roomNames"];
  [coderCopy encodeObject:self->_homeName forKey:@"homeName"];
  [coderCopy encodeObject:self->_zoneNames forKey:@"zoneNames"];
  [coderCopy encodeObject:self->_accessoryNames forKey:@"accessoryNames"];
  [coderCopy encodeObject:self->_serviceNames forKey:@"serviceNames"];
  [coderCopy encodeObject:self->_serviceGroups forKey:@"serviceGroups"];
  [coderCopy encodeObject:self->_intentFromEntities forKey:@"intentFromEntities"];
  [coderCopy encodeObject:self->_intentDeviceQuantifier forKey:@"intentDeviceQuantifier"];
  [coderCopy encodeObject:self->_destinationDeviceId forKey:@"destinationDeviceId"];
  [coderCopy encodeObject:self->_intentDeviceType forKey:@"intentDeviceType"];
  [coderCopy encodeObject:self->_intentPlaceHint forKey:@"intentPlaceHint"];
  [coderCopy encodeObject:self->_intentReference forKey:@"intentReference"];
}

- (INHomeAutomationEntityProvider)initWithCoder:(id)coder
{
  v43[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  coderCopy = coder;
  v43[0] = objc_opt_class();
  v43[1] = objc_opt_class();
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v43 count:2];
  v6 = [v3 setWithArray:v5];
  v7 = [coderCopy decodeObjectOfClasses:v6 forKey:@"roomNames"];

  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"homeName"];
  v9 = MEMORY[0x1E695DFD8];
  v42[0] = objc_opt_class();
  v42[1] = objc_opt_class();
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:2];
  v11 = [v9 setWithArray:v10];
  v37 = [coderCopy decodeObjectOfClasses:v11 forKey:@"zoneNames"];

  v12 = MEMORY[0x1E695DFD8];
  v41[0] = objc_opt_class();
  v41[1] = objc_opt_class();
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v41 count:2];
  v14 = [v12 setWithArray:v13];
  v36 = [coderCopy decodeObjectOfClasses:v14 forKey:@"accessoryNames"];

  v15 = MEMORY[0x1E695DFD8];
  v40[0] = objc_opt_class();
  v40[1] = objc_opt_class();
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];
  v17 = [v15 setWithArray:v16];
  v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"serviceNames"];

  v19 = MEMORY[0x1E695DFD8];
  v39[0] = objc_opt_class();
  v39[1] = objc_opt_class();
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:2];
  v21 = [v19 setWithArray:v20];
  v35 = [coderCopy decodeObjectOfClasses:v21 forKey:@"serviceGroups"];

  v22 = MEMORY[0x1E695DFD8];
  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v24 = [v22 setWithArray:v23];
  v32 = [coderCopy decodeObjectOfClasses:v24 forKey:@"intentFromEntities"];

  v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentDeviceQuantifier"];
  v25 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"destinationDeviceId"];
  v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentDeviceType"];
  v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentPlaceHint"];
  v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"intentReference"];

  v34 = [(INHomeAutomationEntityProvider *)self initWithRoomNames:v7 homeName:v8 zoneNames:v37 accessoryNames:v36 serviceNames:v18 serviceGroups:v35 intentFromEntities:v32 intentDeviceQuantifier:v31 destinationDeviceId:v25 intentDeviceType:v26 intentPlaceHint:v27 intentReference:v28];
  v29 = *MEMORY[0x1E69E9840];
  return v34;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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

- (INHomeAutomationEntityProvider)initWithRoomNames:(id)names homeName:(id)name zoneNames:(id)zoneNames accessoryNames:(id)accessoryNames serviceNames:(id)serviceNames serviceGroups:(id)groups intentFromEntities:(id)entities intentDeviceQuantifier:(id)self0 destinationDeviceId:(id)self1 intentDeviceType:(id)self2 intentPlaceHint:(id)self3 intentReference:(id)self4
{
  namesCopy = names;
  nameCopy = name;
  zoneNamesCopy = zoneNames;
  accessoryNamesCopy = accessoryNames;
  serviceNamesCopy = serviceNames;
  groupsCopy = groups;
  v22 = nameCopy;
  entitiesCopy = entities;
  quantifierCopy = quantifier;
  idCopy = id;
  typeCopy = type;
  hintCopy = hint;
  referenceCopy = reference;
  v59.receiver = self;
  v59.super_class = INHomeAutomationEntityProvider;
  v29 = [(INHomeAutomationEntityProvider *)&v59 init];
  if (v29)
  {
    v30 = [namesCopy copy];
    roomNames = v29->_roomNames;
    v29->_roomNames = v30;

    v32 = [v22 copy];
    homeName = v29->_homeName;
    v29->_homeName = v32;

    v34 = [zoneNamesCopy copy];
    zoneNames = v29->_zoneNames;
    v29->_zoneNames = v34;

    v36 = [accessoryNamesCopy copy];
    accessoryNames = v29->_accessoryNames;
    v29->_accessoryNames = v36;

    v38 = [serviceNamesCopy copy];
    serviceNames = v29->_serviceNames;
    v29->_serviceNames = v38;

    v40 = [groupsCopy copy];
    serviceGroups = v29->_serviceGroups;
    v29->_serviceGroups = v40;

    v42 = [entitiesCopy copy];
    intentFromEntities = v29->_intentFromEntities;
    v29->_intentFromEntities = v42;

    v44 = [quantifierCopy copy];
    intentDeviceQuantifier = v29->_intentDeviceQuantifier;
    v29->_intentDeviceQuantifier = v44;

    v46 = [idCopy copy];
    destinationDeviceId = v29->_destinationDeviceId;
    v29->_destinationDeviceId = v46;

    v48 = [typeCopy copy];
    intentDeviceType = v29->_intentDeviceType;
    v29->_intentDeviceType = v48;

    v50 = [hintCopy copy];
    intentPlaceHint = v29->_intentPlaceHint;
    v29->_intentPlaceHint = v50;

    v52 = [referenceCopy copy];
    intentReference = v29->_intentReference;
    v29->_intentReference = v52;
  }

  return v29;
}

+ (id)_intents_decodeWithJSONDecoder:(id)decoder codableDescription:(id)description from:(id)from
{
  decoderCopy = decoder;
  fromCopy = from;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selfCopy = self;
    v9 = objc_opt_class();
    v10 = [fromCopy objectForKeyedSubscript:@"roomNames"];
    v47 = [decoderCopy decodeObjectsOfClass:v9 from:v10];

    v11 = objc_opt_class();
    v12 = [fromCopy objectForKeyedSubscript:@"homeName"];
    v46 = [decoderCopy decodeObjectOfClass:v11 from:v12];

    v13 = objc_opt_class();
    v14 = [fromCopy objectForKeyedSubscript:@"zoneNames"];
    v45 = [decoderCopy decodeObjectsOfClass:v13 from:v14];

    v15 = objc_opt_class();
    v16 = [fromCopy objectForKeyedSubscript:@"accessoryNames"];
    v44 = [decoderCopy decodeObjectsOfClass:v15 from:v16];

    v17 = objc_opt_class();
    v18 = [fromCopy objectForKeyedSubscript:@"serviceNames"];
    v41 = [decoderCopy decodeObjectsOfClass:v17 from:v18];

    v19 = objc_opt_class();
    v20 = [fromCopy objectForKeyedSubscript:@"serviceGroups"];
    v42 = [decoderCopy decodeObjectsOfClass:v19 from:v20];

    v21 = objc_opt_class();
    v22 = [fromCopy objectForKeyedSubscript:@"intentFromEntities"];
    v23 = [decoderCopy decodeObjectsOfClass:v21 from:v22];

    v24 = objc_opt_class();
    v25 = [fromCopy objectForKeyedSubscript:@"intentDeviceQuantifier"];
    v40 = [decoderCopy decodeObjectOfClass:v24 from:v25];

    v26 = objc_opt_class();
    v27 = [fromCopy objectForKeyedSubscript:@"destinationDeviceId"];
    v28 = [decoderCopy decodeObjectOfClass:v26 from:v27];

    v29 = objc_opt_class();
    v30 = [fromCopy objectForKeyedSubscript:@"intentDeviceType"];
    v39 = [decoderCopy decodeObjectOfClass:v29 from:v30];

    v31 = objc_opt_class();
    v32 = [fromCopy objectForKeyedSubscript:@"intentPlaceHint"];
    v33 = [decoderCopy decodeObjectOfClass:v31 from:v32];

    v34 = objc_opt_class();
    v35 = [fromCopy objectForKeyedSubscript:@"intentReference"];
    v36 = [decoderCopy decodeObjectOfClass:v34 from:v35];

    v37 = [[selfCopy alloc] initWithRoomNames:v47 homeName:v46 zoneNames:v45 accessoryNames:v44 serviceNames:v41 serviceGroups:v42 intentFromEntities:v23 intentDeviceQuantifier:v40 destinationDeviceId:v28 intentDeviceType:v39 intentPlaceHint:v33 intentReference:v36];
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

@end