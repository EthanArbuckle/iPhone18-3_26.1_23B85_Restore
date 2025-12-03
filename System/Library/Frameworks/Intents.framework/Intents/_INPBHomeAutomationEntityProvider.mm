@interface _INPBHomeAutomationEntityProvider
- (BOOL)isEqual:(id)equal;
- (_INPBHomeAutomationEntityProvider)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAccessoryNames:(id)names;
- (void)addIntentFromEntities:(id)entities;
- (void)addRoomNames:(id)names;
- (void)addServiceGroups:(id)groups;
- (void)addServiceNames:(id)names;
- (void)addZoneNames:(id)names;
- (void)encodeWithCoder:(id)coder;
- (void)setAccessoryNames:(id)names;
- (void)setIntentFromEntities:(id)entities;
- (void)setRoomNames:(id)names;
- (void)setServiceGroups:(id)groups;
- (void)setServiceNames:(id)names;
- (void)setZoneNames:(id)names;
- (void)writeTo:(id)to;
@end

@implementation _INPBHomeAutomationEntityProvider

- (id)dictionaryRepresentation
{
  v90 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_accessoryNames count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v5 = self->_accessoryNames;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v80 objects:v89 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v81;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v81 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v80 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v80 objects:v89 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"accessoryNames"];
  }

  destinationDeviceId = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
  dictionaryRepresentation2 = [destinationDeviceId dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"destinationDeviceId"];

  homeName = [(_INPBHomeAutomationEntityProvider *)self homeName];
  dictionaryRepresentation3 = [homeName dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation3 forKeyedSubscript:@"homeName"];

  intentDeviceQuantifier = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
  dictionaryRepresentation4 = [intentDeviceQuantifier dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation4 forKeyedSubscript:@"intentDeviceQuantifier"];

  intentDeviceType = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
  dictionaryRepresentation5 = [intentDeviceType dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation5 forKeyedSubscript:@"intentDeviceType"];

  if ([(NSArray *)self->_intentFromEntities count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v76 = 0u;
    v77 = 0u;
    v78 = 0u;
    v79 = 0u;
    v20 = self->_intentFromEntities;
    v21 = [(NSArray *)v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v77;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v77 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation6 = [*(*(&v76 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation6];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v22);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"intentFromEntities"];
  }

  intentPlaceHint = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
  dictionaryRepresentation7 = [intentPlaceHint dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation7 forKeyedSubscript:@"intentPlaceHint"];

  intentReference = [(_INPBHomeAutomationEntityProvider *)self intentReference];
  dictionaryRepresentation8 = [intentReference dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation8 forKeyedSubscript:@"intentReference"];

  if ([(NSArray *)self->_roomNames count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v75 = 0u;
    v31 = self->_roomNames;
    v32 = [(NSArray *)v31 countByEnumeratingWithState:&v72 objects:v87 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v73;
      do
      {
        for (k = 0; k != v33; ++k)
        {
          if (*v73 != v34)
          {
            objc_enumerationMutation(v31);
          }

          dictionaryRepresentation9 = [*(*(&v72 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation9];
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v33);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"roomNames"];
  }

  if ([(NSArray *)self->_serviceGroups count])
  {
    array4 = [MEMORY[0x1E695DF70] array];
    v68 = 0u;
    v69 = 0u;
    v70 = 0u;
    v71 = 0u;
    v38 = self->_serviceGroups;
    v39 = [(NSArray *)v38 countByEnumeratingWithState:&v68 objects:v86 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v69;
      do
      {
        for (m = 0; m != v40; ++m)
        {
          if (*v69 != v41)
          {
            objc_enumerationMutation(v38);
          }

          dictionaryRepresentation10 = [*(*(&v68 + 1) + 8 * m) dictionaryRepresentation];
          [array4 addObject:dictionaryRepresentation10];
        }

        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v68 objects:v86 count:16];
      }

      while (v40);
    }

    [dictionary setObject:array4 forKeyedSubscript:@"serviceGroups"];
  }

  if ([(NSArray *)self->_serviceNames count])
  {
    array5 = [MEMORY[0x1E695DF70] array];
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v45 = self->_serviceNames;
    v46 = [(NSArray *)v45 countByEnumeratingWithState:&v64 objects:v85 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v65;
      do
      {
        for (n = 0; n != v47; ++n)
        {
          if (*v65 != v48)
          {
            objc_enumerationMutation(v45);
          }

          dictionaryRepresentation11 = [*(*(&v64 + 1) + 8 * n) dictionaryRepresentation];
          [array5 addObject:dictionaryRepresentation11];
        }

        v47 = [(NSArray *)v45 countByEnumeratingWithState:&v64 objects:v85 count:16];
      }

      while (v47);
    }

    [dictionary setObject:array5 forKeyedSubscript:@"serviceNames"];
  }

  if ([(NSArray *)self->_zoneNames count])
  {
    array6 = [MEMORY[0x1E695DF70] array];
    v60 = 0u;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v52 = self->_zoneNames;
    v53 = [(NSArray *)v52 countByEnumeratingWithState:&v60 objects:v84 count:16];
    if (v53)
    {
      v54 = v53;
      v55 = *v61;
      do
      {
        for (ii = 0; ii != v54; ++ii)
        {
          if (*v61 != v55)
          {
            objc_enumerationMutation(v52);
          }

          dictionaryRepresentation12 = [*(*(&v60 + 1) + 8 * ii) dictionaryRepresentation];
          [array6 addObject:dictionaryRepresentation12];
        }

        v54 = [(NSArray *)v52 countByEnumeratingWithState:&v60 objects:v84 count:16];
      }

      while (v54);
    }

    [dictionary setObject:array6 forKeyedSubscript:@"zoneNames"];
  }

  v58 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_accessoryNames hash];
  v4 = [(_INPBString *)self->_destinationDeviceId hash]^ v3;
  v5 = [(_INPBString *)self->_homeName hash];
  v6 = v4 ^ v5 ^ [(_INPBString *)self->_intentDeviceQuantifier hash];
  v7 = [(_INPBString *)self->_intentDeviceType hash];
  v8 = v7 ^ [(NSArray *)self->_intentFromEntities hash];
  v9 = v6 ^ v8 ^ [(_INPBString *)self->_intentPlaceHint hash];
  v10 = [(_INPBString *)self->_intentReference hash];
  v11 = v10 ^ [(NSArray *)self->_roomNames hash];
  v12 = v11 ^ [(NSArray *)self->_serviceGroups hash];
  v13 = v9 ^ v12 ^ [(NSArray *)self->_serviceNames hash];
  return v13 ^ [(NSArray *)self->_zoneNames hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self accessoryNames];
  accessoryNames2 = [equalCopy accessoryNames];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  accessoryNames3 = [(_INPBHomeAutomationEntityProvider *)self accessoryNames];
  if (accessoryNames3)
  {
    v8 = accessoryNames3;
    accessoryNames4 = [(_INPBHomeAutomationEntityProvider *)self accessoryNames];
    accessoryNames5 = [equalCopy accessoryNames];
    v11 = [accessoryNames4 isEqual:accessoryNames5];

    if (!v11)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
  accessoryNames2 = [equalCopy destinationDeviceId];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  destinationDeviceId = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
  if (destinationDeviceId)
  {
    v13 = destinationDeviceId;
    destinationDeviceId2 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
    destinationDeviceId3 = [equalCopy destinationDeviceId];
    v16 = [destinationDeviceId2 isEqual:destinationDeviceId3];

    if (!v16)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self homeName];
  accessoryNames2 = [equalCopy homeName];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  homeName = [(_INPBHomeAutomationEntityProvider *)self homeName];
  if (homeName)
  {
    v18 = homeName;
    homeName2 = [(_INPBHomeAutomationEntityProvider *)self homeName];
    homeName3 = [equalCopy homeName];
    v21 = [homeName2 isEqual:homeName3];

    if (!v21)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
  accessoryNames2 = [equalCopy intentDeviceQuantifier];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  intentDeviceQuantifier = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
  if (intentDeviceQuantifier)
  {
    v23 = intentDeviceQuantifier;
    intentDeviceQuantifier2 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
    intentDeviceQuantifier3 = [equalCopy intentDeviceQuantifier];
    v26 = [intentDeviceQuantifier2 isEqual:intentDeviceQuantifier3];

    if (!v26)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
  accessoryNames2 = [equalCopy intentDeviceType];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  intentDeviceType = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
  if (intentDeviceType)
  {
    v28 = intentDeviceType;
    intentDeviceType2 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
    intentDeviceType3 = [equalCopy intentDeviceType];
    v31 = [intentDeviceType2 isEqual:intentDeviceType3];

    if (!v31)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self intentFromEntities];
  accessoryNames2 = [equalCopy intentFromEntities];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  intentFromEntities = [(_INPBHomeAutomationEntityProvider *)self intentFromEntities];
  if (intentFromEntities)
  {
    v33 = intentFromEntities;
    intentFromEntities2 = [(_INPBHomeAutomationEntityProvider *)self intentFromEntities];
    intentFromEntities3 = [equalCopy intentFromEntities];
    v36 = [intentFromEntities2 isEqual:intentFromEntities3];

    if (!v36)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
  accessoryNames2 = [equalCopy intentPlaceHint];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  intentPlaceHint = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
  if (intentPlaceHint)
  {
    v38 = intentPlaceHint;
    intentPlaceHint2 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
    intentPlaceHint3 = [equalCopy intentPlaceHint];
    v41 = [intentPlaceHint2 isEqual:intentPlaceHint3];

    if (!v41)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self intentReference];
  accessoryNames2 = [equalCopy intentReference];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  intentReference = [(_INPBHomeAutomationEntityProvider *)self intentReference];
  if (intentReference)
  {
    v43 = intentReference;
    intentReference2 = [(_INPBHomeAutomationEntityProvider *)self intentReference];
    intentReference3 = [equalCopy intentReference];
    v46 = [intentReference2 isEqual:intentReference3];

    if (!v46)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self roomNames];
  accessoryNames2 = [equalCopy roomNames];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  roomNames = [(_INPBHomeAutomationEntityProvider *)self roomNames];
  if (roomNames)
  {
    v48 = roomNames;
    roomNames2 = [(_INPBHomeAutomationEntityProvider *)self roomNames];
    roomNames3 = [equalCopy roomNames];
    v51 = [roomNames2 isEqual:roomNames3];

    if (!v51)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self serviceGroups];
  accessoryNames2 = [equalCopy serviceGroups];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  serviceGroups = [(_INPBHomeAutomationEntityProvider *)self serviceGroups];
  if (serviceGroups)
  {
    v53 = serviceGroups;
    serviceGroups2 = [(_INPBHomeAutomationEntityProvider *)self serviceGroups];
    serviceGroups3 = [equalCopy serviceGroups];
    v56 = [serviceGroups2 isEqual:serviceGroups3];

    if (!v56)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self serviceNames];
  accessoryNames2 = [equalCopy serviceNames];
  if ((accessoryNames != 0) == (accessoryNames2 == 0))
  {
    goto LABEL_61;
  }

  serviceNames = [(_INPBHomeAutomationEntityProvider *)self serviceNames];
  if (serviceNames)
  {
    v58 = serviceNames;
    serviceNames2 = [(_INPBHomeAutomationEntityProvider *)self serviceNames];
    serviceNames3 = [equalCopy serviceNames];
    v61 = [serviceNames2 isEqual:serviceNames3];

    if (!v61)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  accessoryNames = [(_INPBHomeAutomationEntityProvider *)self zoneNames];
  accessoryNames2 = [equalCopy zoneNames];
  if ((accessoryNames != 0) != (accessoryNames2 == 0))
  {
    zoneNames = [(_INPBHomeAutomationEntityProvider *)self zoneNames];
    if (!zoneNames)
    {

LABEL_65:
      v67 = 1;
      goto LABEL_63;
    }

    v63 = zoneNames;
    zoneNames2 = [(_INPBHomeAutomationEntityProvider *)self zoneNames];
    zoneNames3 = [equalCopy zoneNames];
    v66 = [zoneNames2 isEqual:zoneNames3];

    if (v66)
    {
      goto LABEL_65;
    }
  }

  else
  {
LABEL_61:
  }

LABEL_62:
  v67 = 0;
LABEL_63:

  return v67;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBHomeAutomationEntityProvider allocWithZone:](_INPBHomeAutomationEntityProvider init];
  v6 = [(NSArray *)self->_accessoryNames copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setAccessoryNames:v6];

  v7 = [(_INPBString *)self->_destinationDeviceId copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setDestinationDeviceId:v7];

  v8 = [(_INPBString *)self->_homeName copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setHomeName:v8];

  v9 = [(_INPBString *)self->_intentDeviceQuantifier copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentDeviceQuantifier:v9];

  v10 = [(_INPBString *)self->_intentDeviceType copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentDeviceType:v10];

  v11 = [(NSArray *)self->_intentFromEntities copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentFromEntities:v11];

  v12 = [(_INPBString *)self->_intentPlaceHint copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentPlaceHint:v12];

  v13 = [(_INPBString *)self->_intentReference copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentReference:v13];

  v14 = [(NSArray *)self->_roomNames copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setRoomNames:v14];

  v15 = [(NSArray *)self->_serviceGroups copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setServiceGroups:v15];

  v16 = [(NSArray *)self->_serviceNames copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setServiceNames:v16];

  v17 = [(NSArray *)self->_zoneNames copyWithZone:zone];
  [(_INPBHomeAutomationEntityProvider *)v5 setZoneNames:v17];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBHomeAutomationEntityProvider *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBHomeAutomationEntityProvider)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBHomeAutomationEntityProvider *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v84 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v5 = self->_accessoryNames;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v74 objects:v83 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v75;
    do
    {
      v9 = 0;
      do
      {
        if (*v75 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v74 + 1) + 8 * v9);
        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v74 objects:v83 count:16];
    }

    while (v7);
  }

  destinationDeviceId = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];

  if (destinationDeviceId)
  {
    destinationDeviceId2 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
    PBDataWriterWriteSubmessage();
  }

  homeName = [(_INPBHomeAutomationEntityProvider *)self homeName];

  if (homeName)
  {
    homeName2 = [(_INPBHomeAutomationEntityProvider *)self homeName];
    PBDataWriterWriteSubmessage();
  }

  intentDeviceQuantifier = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];

  if (intentDeviceQuantifier)
  {
    intentDeviceQuantifier2 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
    PBDataWriterWriteSubmessage();
  }

  intentDeviceType = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];

  if (intentDeviceType)
  {
    intentDeviceType2 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
    PBDataWriterWriteSubmessage();
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v19 = self->_intentFromEntities;
  v20 = [(NSArray *)v19 countByEnumeratingWithState:&v70 objects:v82 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v71;
    do
    {
      v23 = 0;
      do
      {
        if (*v71 != v22)
        {
          objc_enumerationMutation(v19);
        }

        v24 = *(*(&v70 + 1) + 8 * v23);
        PBDataWriterWriteSubmessage();
        ++v23;
      }

      while (v21 != v23);
      v21 = [(NSArray *)v19 countByEnumeratingWithState:&v70 objects:v82 count:16];
    }

    while (v21);
  }

  intentPlaceHint = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];

  if (intentPlaceHint)
  {
    intentPlaceHint2 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
    PBDataWriterWriteSubmessage();
  }

  intentReference = [(_INPBHomeAutomationEntityProvider *)self intentReference];

  if (intentReference)
  {
    intentReference2 = [(_INPBHomeAutomationEntityProvider *)self intentReference];
    PBDataWriterWriteSubmessage();
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v29 = self->_roomNames;
  v30 = [(NSArray *)v29 countByEnumeratingWithState:&v66 objects:v81 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v67;
    do
    {
      v33 = 0;
      do
      {
        if (*v67 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v66 + 1) + 8 * v33);
        PBDataWriterWriteSubmessage();
        ++v33;
      }

      while (v31 != v33);
      v31 = [(NSArray *)v29 countByEnumeratingWithState:&v66 objects:v81 count:16];
    }

    while (v31);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v35 = self->_serviceGroups;
  v36 = [(NSArray *)v35 countByEnumeratingWithState:&v62 objects:v80 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v63;
    do
    {
      v39 = 0;
      do
      {
        if (*v63 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v62 + 1) + 8 * v39);
        PBDataWriterWriteSubmessage();
        ++v39;
      }

      while (v37 != v39);
      v37 = [(NSArray *)v35 countByEnumeratingWithState:&v62 objects:v80 count:16];
    }

    while (v37);
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v41 = self->_serviceNames;
  v42 = [(NSArray *)v41 countByEnumeratingWithState:&v58 objects:v79 count:16];
  if (v42)
  {
    v43 = v42;
    v44 = *v59;
    do
    {
      v45 = 0;
      do
      {
        if (*v59 != v44)
        {
          objc_enumerationMutation(v41);
        }

        v46 = *(*(&v58 + 1) + 8 * v45);
        PBDataWriterWriteSubmessage();
        ++v45;
      }

      while (v43 != v45);
      v43 = [(NSArray *)v41 countByEnumeratingWithState:&v58 objects:v79 count:16];
    }

    while (v43);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v47 = self->_zoneNames;
  v48 = [(NSArray *)v47 countByEnumeratingWithState:&v54 objects:v78 count:16];
  if (v48)
  {
    v49 = v48;
    v50 = *v55;
    do
    {
      v51 = 0;
      do
      {
        if (*v55 != v50)
        {
          objc_enumerationMutation(v47);
        }

        v52 = *(*(&v54 + 1) + 8 * v51);
        PBDataWriterWriteSubmessage();
        ++v51;
      }

      while (v49 != v51);
      v49 = [(NSArray *)v47 countByEnumeratingWithState:&v54 objects:v78 count:16];
    }

    while (v49);
  }

  v53 = *MEMORY[0x1E69E9840];
}

- (void)addZoneNames:(id)names
{
  namesCopy = names;
  zoneNames = self->_zoneNames;
  v8 = namesCopy;
  if (!zoneNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_zoneNames;
    self->_zoneNames = array;

    namesCopy = v8;
    zoneNames = self->_zoneNames;
  }

  [(NSArray *)zoneNames addObject:namesCopy];
}

- (void)setZoneNames:(id)names
{
  v4 = [names mutableCopy];
  zoneNames = self->_zoneNames;
  self->_zoneNames = v4;

  MEMORY[0x1EEE66BB8](v4, zoneNames);
}

- (void)addServiceNames:(id)names
{
  namesCopy = names;
  serviceNames = self->_serviceNames;
  v8 = namesCopy;
  if (!serviceNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_serviceNames;
    self->_serviceNames = array;

    namesCopy = v8;
    serviceNames = self->_serviceNames;
  }

  [(NSArray *)serviceNames addObject:namesCopy];
}

- (void)setServiceNames:(id)names
{
  v4 = [names mutableCopy];
  serviceNames = self->_serviceNames;
  self->_serviceNames = v4;

  MEMORY[0x1EEE66BB8](v4, serviceNames);
}

- (void)addServiceGroups:(id)groups
{
  groupsCopy = groups;
  serviceGroups = self->_serviceGroups;
  v8 = groupsCopy;
  if (!serviceGroups)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_serviceGroups;
    self->_serviceGroups = array;

    groupsCopy = v8;
    serviceGroups = self->_serviceGroups;
  }

  [(NSArray *)serviceGroups addObject:groupsCopy];
}

- (void)setServiceGroups:(id)groups
{
  v4 = [groups mutableCopy];
  serviceGroups = self->_serviceGroups;
  self->_serviceGroups = v4;

  MEMORY[0x1EEE66BB8](v4, serviceGroups);
}

- (void)addRoomNames:(id)names
{
  namesCopy = names;
  roomNames = self->_roomNames;
  v8 = namesCopy;
  if (!roomNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_roomNames;
    self->_roomNames = array;

    namesCopy = v8;
    roomNames = self->_roomNames;
  }

  [(NSArray *)roomNames addObject:namesCopy];
}

- (void)setRoomNames:(id)names
{
  v4 = [names mutableCopy];
  roomNames = self->_roomNames;
  self->_roomNames = v4;

  MEMORY[0x1EEE66BB8](v4, roomNames);
}

- (void)addIntentFromEntities:(id)entities
{
  entitiesCopy = entities;
  intentFromEntities = self->_intentFromEntities;
  v8 = entitiesCopy;
  if (!intentFromEntities)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentFromEntities;
    self->_intentFromEntities = array;

    entitiesCopy = v8;
    intentFromEntities = self->_intentFromEntities;
  }

  [(NSArray *)intentFromEntities addObject:entitiesCopy];
}

- (void)setIntentFromEntities:(id)entities
{
  v4 = [entities mutableCopy];
  intentFromEntities = self->_intentFromEntities;
  self->_intentFromEntities = v4;

  MEMORY[0x1EEE66BB8](v4, intentFromEntities);
}

- (void)addAccessoryNames:(id)names
{
  namesCopy = names;
  accessoryNames = self->_accessoryNames;
  v8 = namesCopy;
  if (!accessoryNames)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_accessoryNames;
    self->_accessoryNames = array;

    namesCopy = v8;
    accessoryNames = self->_accessoryNames;
  }

  [(NSArray *)accessoryNames addObject:namesCopy];
}

- (void)setAccessoryNames:(id)names
{
  v4 = [names mutableCopy];
  accessoryNames = self->_accessoryNames;
  self->_accessoryNames = v4;

  MEMORY[0x1EEE66BB8](v4, accessoryNames);
}

@end