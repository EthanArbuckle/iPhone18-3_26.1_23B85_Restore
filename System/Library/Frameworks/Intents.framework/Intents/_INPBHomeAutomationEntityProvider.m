@interface _INPBHomeAutomationEntityProvider
- (BOOL)isEqual:(id)a3;
- (_INPBHomeAutomationEntityProvider)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAccessoryNames:(id)a3;
- (void)addIntentFromEntities:(id)a3;
- (void)addRoomNames:(id)a3;
- (void)addServiceGroups:(id)a3;
- (void)addServiceNames:(id)a3;
- (void)addZoneNames:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setAccessoryNames:(id)a3;
- (void)setIntentFromEntities:(id)a3;
- (void)setRoomNames:(id)a3;
- (void)setServiceGroups:(id)a3;
- (void)setServiceNames:(id)a3;
- (void)setZoneNames:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBHomeAutomationEntityProvider

- (id)dictionaryRepresentation
{
  v90 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_accessoryNames count])
  {
    v4 = [MEMORY[0x1E695DF70] array];
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

          v10 = [*(*(&v80 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:v10];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v80 objects:v89 count:16];
      }

      while (v7);
    }

    [v3 setObject:v4 forKeyedSubscript:@"accessoryNames"];
  }

  v11 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
  v12 = [v11 dictionaryRepresentation];
  [v3 setObject:v12 forKeyedSubscript:@"destinationDeviceId"];

  v13 = [(_INPBHomeAutomationEntityProvider *)self homeName];
  v14 = [v13 dictionaryRepresentation];
  [v3 setObject:v14 forKeyedSubscript:@"homeName"];

  v15 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
  v16 = [v15 dictionaryRepresentation];
  [v3 setObject:v16 forKeyedSubscript:@"intentDeviceQuantifier"];

  v17 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
  v18 = [v17 dictionaryRepresentation];
  [v3 setObject:v18 forKeyedSubscript:@"intentDeviceType"];

  if ([(NSArray *)self->_intentFromEntities count])
  {
    v19 = [MEMORY[0x1E695DF70] array];
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

          v25 = [*(*(&v76 + 1) + 8 * j) dictionaryRepresentation];
          [v19 addObject:v25];
        }

        v22 = [(NSArray *)v20 countByEnumeratingWithState:&v76 objects:v88 count:16];
      }

      while (v22);
    }

    [v3 setObject:v19 forKeyedSubscript:@"intentFromEntities"];
  }

  v26 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
  v27 = [v26 dictionaryRepresentation];
  [v3 setObject:v27 forKeyedSubscript:@"intentPlaceHint"];

  v28 = [(_INPBHomeAutomationEntityProvider *)self intentReference];
  v29 = [v28 dictionaryRepresentation];
  [v3 setObject:v29 forKeyedSubscript:@"intentReference"];

  if ([(NSArray *)self->_roomNames count])
  {
    v30 = [MEMORY[0x1E695DF70] array];
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

          v36 = [*(*(&v72 + 1) + 8 * k) dictionaryRepresentation];
          [v30 addObject:v36];
        }

        v33 = [(NSArray *)v31 countByEnumeratingWithState:&v72 objects:v87 count:16];
      }

      while (v33);
    }

    [v3 setObject:v30 forKeyedSubscript:@"roomNames"];
  }

  if ([(NSArray *)self->_serviceGroups count])
  {
    v37 = [MEMORY[0x1E695DF70] array];
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

          v43 = [*(*(&v68 + 1) + 8 * m) dictionaryRepresentation];
          [v37 addObject:v43];
        }

        v40 = [(NSArray *)v38 countByEnumeratingWithState:&v68 objects:v86 count:16];
      }

      while (v40);
    }

    [v3 setObject:v37 forKeyedSubscript:@"serviceGroups"];
  }

  if ([(NSArray *)self->_serviceNames count])
  {
    v44 = [MEMORY[0x1E695DF70] array];
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

          v50 = [*(*(&v64 + 1) + 8 * n) dictionaryRepresentation];
          [v44 addObject:v50];
        }

        v47 = [(NSArray *)v45 countByEnumeratingWithState:&v64 objects:v85 count:16];
      }

      while (v47);
    }

    [v3 setObject:v44 forKeyedSubscript:@"serviceNames"];
  }

  if ([(NSArray *)self->_zoneNames count])
  {
    v51 = [MEMORY[0x1E695DF70] array];
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

          v57 = [*(*(&v60 + 1) + 8 * ii) dictionaryRepresentation];
          [v51 addObject:v57];
        }

        v54 = [(NSArray *)v52 countByEnumeratingWithState:&v60 objects:v84 count:16];
      }

      while (v54);
    }

    [v3 setObject:v51 forKeyedSubscript:@"zoneNames"];
  }

  v58 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_62;
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self accessoryNames];
  v6 = [v4 accessoryNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v7 = [(_INPBHomeAutomationEntityProvider *)self accessoryNames];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBHomeAutomationEntityProvider *)self accessoryNames];
    v10 = [v4 accessoryNames];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
  v6 = [v4 destinationDeviceId];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v12 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
    v15 = [v4 destinationDeviceId];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self homeName];
  v6 = [v4 homeName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v17 = [(_INPBHomeAutomationEntityProvider *)self homeName];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBHomeAutomationEntityProvider *)self homeName];
    v20 = [v4 homeName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
  v6 = [v4 intentDeviceQuantifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v22 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
    v25 = [v4 intentDeviceQuantifier];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
  v6 = [v4 intentDeviceType];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v27 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
    v30 = [v4 intentDeviceType];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self intentFromEntities];
  v6 = [v4 intentFromEntities];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v32 = [(_INPBHomeAutomationEntityProvider *)self intentFromEntities];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBHomeAutomationEntityProvider *)self intentFromEntities];
    v35 = [v4 intentFromEntities];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
  v6 = [v4 intentPlaceHint];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v37 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
    v40 = [v4 intentPlaceHint];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self intentReference];
  v6 = [v4 intentReference];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v42 = [(_INPBHomeAutomationEntityProvider *)self intentReference];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBHomeAutomationEntityProvider *)self intentReference];
    v45 = [v4 intentReference];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self roomNames];
  v6 = [v4 roomNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v47 = [(_INPBHomeAutomationEntityProvider *)self roomNames];
  if (v47)
  {
    v48 = v47;
    v49 = [(_INPBHomeAutomationEntityProvider *)self roomNames];
    v50 = [v4 roomNames];
    v51 = [v49 isEqual:v50];

    if (!v51)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self serviceGroups];
  v6 = [v4 serviceGroups];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v52 = [(_INPBHomeAutomationEntityProvider *)self serviceGroups];
  if (v52)
  {
    v53 = v52;
    v54 = [(_INPBHomeAutomationEntityProvider *)self serviceGroups];
    v55 = [v4 serviceGroups];
    v56 = [v54 isEqual:v55];

    if (!v56)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self serviceNames];
  v6 = [v4 serviceNames];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_61;
  }

  v57 = [(_INPBHomeAutomationEntityProvider *)self serviceNames];
  if (v57)
  {
    v58 = v57;
    v59 = [(_INPBHomeAutomationEntityProvider *)self serviceNames];
    v60 = [v4 serviceNames];
    v61 = [v59 isEqual:v60];

    if (!v61)
    {
      goto LABEL_62;
    }
  }

  else
  {
  }

  v5 = [(_INPBHomeAutomationEntityProvider *)self zoneNames];
  v6 = [v4 zoneNames];
  if ((v5 != 0) != (v6 == 0))
  {
    v62 = [(_INPBHomeAutomationEntityProvider *)self zoneNames];
    if (!v62)
    {

LABEL_65:
      v67 = 1;
      goto LABEL_63;
    }

    v63 = v62;
    v64 = [(_INPBHomeAutomationEntityProvider *)self zoneNames];
    v65 = [v4 zoneNames];
    v66 = [v64 isEqual:v65];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBHomeAutomationEntityProvider allocWithZone:](_INPBHomeAutomationEntityProvider init];
  v6 = [(NSArray *)self->_accessoryNames copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setAccessoryNames:v6];

  v7 = [(_INPBString *)self->_destinationDeviceId copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setDestinationDeviceId:v7];

  v8 = [(_INPBString *)self->_homeName copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setHomeName:v8];

  v9 = [(_INPBString *)self->_intentDeviceQuantifier copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentDeviceQuantifier:v9];

  v10 = [(_INPBString *)self->_intentDeviceType copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentDeviceType:v10];

  v11 = [(NSArray *)self->_intentFromEntities copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentFromEntities:v11];

  v12 = [(_INPBString *)self->_intentPlaceHint copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentPlaceHint:v12];

  v13 = [(_INPBString *)self->_intentReference copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setIntentReference:v13];

  v14 = [(NSArray *)self->_roomNames copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setRoomNames:v14];

  v15 = [(NSArray *)self->_serviceGroups copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setServiceGroups:v15];

  v16 = [(NSArray *)self->_serviceNames copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setServiceNames:v16];

  v17 = [(NSArray *)self->_zoneNames copyWithZone:a3];
  [(_INPBHomeAutomationEntityProvider *)v5 setZoneNames:v17];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBHomeAutomationEntityProvider *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBHomeAutomationEntityProvider)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBHomeAutomationEntityProvider *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v84 = *MEMORY[0x1E69E9840];
  v4 = a3;
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

  v11 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];

  if (v11)
  {
    v12 = [(_INPBHomeAutomationEntityProvider *)self destinationDeviceId];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBHomeAutomationEntityProvider *)self homeName];

  if (v13)
  {
    v14 = [(_INPBHomeAutomationEntityProvider *)self homeName];
    PBDataWriterWriteSubmessage();
  }

  v15 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];

  if (v15)
  {
    v16 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceQuantifier];
    PBDataWriterWriteSubmessage();
  }

  v17 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];

  if (v17)
  {
    v18 = [(_INPBHomeAutomationEntityProvider *)self intentDeviceType];
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

  v25 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];

  if (v25)
  {
    v26 = [(_INPBHomeAutomationEntityProvider *)self intentPlaceHint];
    PBDataWriterWriteSubmessage();
  }

  v27 = [(_INPBHomeAutomationEntityProvider *)self intentReference];

  if (v27)
  {
    v28 = [(_INPBHomeAutomationEntityProvider *)self intentReference];
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

- (void)addZoneNames:(id)a3
{
  v4 = a3;
  zoneNames = self->_zoneNames;
  v8 = v4;
  if (!zoneNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_zoneNames;
    self->_zoneNames = v6;

    v4 = v8;
    zoneNames = self->_zoneNames;
  }

  [(NSArray *)zoneNames addObject:v4];
}

- (void)setZoneNames:(id)a3
{
  v4 = [a3 mutableCopy];
  zoneNames = self->_zoneNames;
  self->_zoneNames = v4;

  MEMORY[0x1EEE66BB8](v4, zoneNames);
}

- (void)addServiceNames:(id)a3
{
  v4 = a3;
  serviceNames = self->_serviceNames;
  v8 = v4;
  if (!serviceNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_serviceNames;
    self->_serviceNames = v6;

    v4 = v8;
    serviceNames = self->_serviceNames;
  }

  [(NSArray *)serviceNames addObject:v4];
}

- (void)setServiceNames:(id)a3
{
  v4 = [a3 mutableCopy];
  serviceNames = self->_serviceNames;
  self->_serviceNames = v4;

  MEMORY[0x1EEE66BB8](v4, serviceNames);
}

- (void)addServiceGroups:(id)a3
{
  v4 = a3;
  serviceGroups = self->_serviceGroups;
  v8 = v4;
  if (!serviceGroups)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_serviceGroups;
    self->_serviceGroups = v6;

    v4 = v8;
    serviceGroups = self->_serviceGroups;
  }

  [(NSArray *)serviceGroups addObject:v4];
}

- (void)setServiceGroups:(id)a3
{
  v4 = [a3 mutableCopy];
  serviceGroups = self->_serviceGroups;
  self->_serviceGroups = v4;

  MEMORY[0x1EEE66BB8](v4, serviceGroups);
}

- (void)addRoomNames:(id)a3
{
  v4 = a3;
  roomNames = self->_roomNames;
  v8 = v4;
  if (!roomNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_roomNames;
    self->_roomNames = v6;

    v4 = v8;
    roomNames = self->_roomNames;
  }

  [(NSArray *)roomNames addObject:v4];
}

- (void)setRoomNames:(id)a3
{
  v4 = [a3 mutableCopy];
  roomNames = self->_roomNames;
  self->_roomNames = v4;

  MEMORY[0x1EEE66BB8](v4, roomNames);
}

- (void)addIntentFromEntities:(id)a3
{
  v4 = a3;
  intentFromEntities = self->_intentFromEntities;
  v8 = v4;
  if (!intentFromEntities)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentFromEntities;
    self->_intentFromEntities = v6;

    v4 = v8;
    intentFromEntities = self->_intentFromEntities;
  }

  [(NSArray *)intentFromEntities addObject:v4];
}

- (void)setIntentFromEntities:(id)a3
{
  v4 = [a3 mutableCopy];
  intentFromEntities = self->_intentFromEntities;
  self->_intentFromEntities = v4;

  MEMORY[0x1EEE66BB8](v4, intentFromEntities);
}

- (void)addAccessoryNames:(id)a3
{
  v4 = a3;
  accessoryNames = self->_accessoryNames;
  v8 = v4;
  if (!accessoryNames)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_accessoryNames;
    self->_accessoryNames = v6;

    v4 = v8;
    accessoryNames = self->_accessoryNames;
  }

  [(NSArray *)accessoryNames addObject:v4];
}

- (void)setAccessoryNames:(id)a3
{
  v4 = [a3 mutableCopy];
  accessoryNames = self->_accessoryNames;
  self->_accessoryNames = v4;

  MEMORY[0x1EEE66BB8](v4, accessoryNames);
}

@end