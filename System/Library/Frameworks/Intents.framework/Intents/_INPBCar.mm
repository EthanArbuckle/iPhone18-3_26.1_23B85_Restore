@interface _INPBCar
- (BOOL)isEqual:(id)equal;
- (_INPBCar)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPowerPerConnector:(id)connector;
- (void)addSupportedChargingConnectors:(id)connectors;
- (void)encodeWithCoder:(id)coder;
- (void)setCarIdentifier:(id)identifier;
- (void)setDisplayName:(id)name;
- (void)setMake:(id)make;
- (void)setModel:(id)model;
- (void)setPowerPerConnectors:(id)connectors;
- (void)setSupportedChargingConnectors:(id)connectors;
- (void)setYear:(id)year;
- (void)writeTo:(id)to;
@end

@implementation _INPBCar

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_carIdentifier)
  {
    carIdentifier = [(_INPBCar *)self carIdentifier];
    v5 = [carIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"carIdentifier"];
  }

  color = [(_INPBCar *)self color];
  dictionaryRepresentation = [color dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation forKeyedSubscript:@"color"];

  if (self->_displayName)
  {
    displayName = [(_INPBCar *)self displayName];
    v9 = [displayName copy];
    [dictionary setObject:v9 forKeyedSubscript:@"displayName"];
  }

  headUnit = [(_INPBCar *)self headUnit];
  dictionaryRepresentation2 = [headUnit dictionaryRepresentation];
  [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"headUnit"];

  if (self->_make)
  {
    make = [(_INPBCar *)self make];
    v13 = [make copy];
    [dictionary setObject:v13 forKeyedSubscript:@"make"];
  }

  if (self->_model)
  {
    model = [(_INPBCar *)self model];
    v15 = [model copy];
    [dictionary setObject:v15 forKeyedSubscript:@"model"];
  }

  if ([(NSArray *)self->_powerPerConnectors count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v17 = self->_powerPerConnectors;
    v18 = [(NSArray *)v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v30;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          dictionaryRepresentation3 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation3];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    [dictionary setObject:array forKeyedSubscript:@"powerPerConnector"];
  }

  if (self->_supportedChargingConnectors)
  {
    supportedChargingConnectors = [(_INPBCar *)self supportedChargingConnectors];
    v24 = [supportedChargingConnectors copy];
    [dictionary setObject:v24 forKeyedSubscript:@"supportedChargingConnectors"];
  }

  if (self->_year)
  {
    year = [(_INPBCar *)self year];
    v26 = [year copy];
    [dictionary setObject:v26 forKeyedSubscript:@"year"];
  }

  v27 = *MEMORY[0x1E69E9840];

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_carIdentifier hash];
  v4 = [(_INPBColor *)self->_color hash]^ v3;
  v5 = [(NSString *)self->_displayName hash];
  v6 = v4 ^ v5 ^ [(_INPBCarHeadUnit *)self->_headUnit hash];
  v7 = [(NSString *)self->_make hash];
  v8 = v7 ^ [(NSString *)self->_model hash];
  v9 = v6 ^ v8 ^ [(NSArray *)self->_powerPerConnectors hash];
  v10 = [(NSArray *)self->_supportedChargingConnectors hash];
  return v9 ^ v10 ^ [(NSString *)self->_year hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  carIdentifier = [(_INPBCar *)self carIdentifier];
  carIdentifier2 = [equalCopy carIdentifier];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  carIdentifier3 = [(_INPBCar *)self carIdentifier];
  if (carIdentifier3)
  {
    v8 = carIdentifier3;
    carIdentifier4 = [(_INPBCar *)self carIdentifier];
    carIdentifier5 = [equalCopy carIdentifier];
    v11 = [carIdentifier4 isEqual:carIdentifier5];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self color];
  carIdentifier2 = [equalCopy color];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  color = [(_INPBCar *)self color];
  if (color)
  {
    v13 = color;
    color2 = [(_INPBCar *)self color];
    color3 = [equalCopy color];
    v16 = [color2 isEqual:color3];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self displayName];
  carIdentifier2 = [equalCopy displayName];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  displayName = [(_INPBCar *)self displayName];
  if (displayName)
  {
    v18 = displayName;
    displayName2 = [(_INPBCar *)self displayName];
    displayName3 = [equalCopy displayName];
    v21 = [displayName2 isEqual:displayName3];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self headUnit];
  carIdentifier2 = [equalCopy headUnit];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  headUnit = [(_INPBCar *)self headUnit];
  if (headUnit)
  {
    v23 = headUnit;
    headUnit2 = [(_INPBCar *)self headUnit];
    headUnit3 = [equalCopy headUnit];
    v26 = [headUnit2 isEqual:headUnit3];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self make];
  carIdentifier2 = [equalCopy make];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  make = [(_INPBCar *)self make];
  if (make)
  {
    v28 = make;
    make2 = [(_INPBCar *)self make];
    make3 = [equalCopy make];
    v31 = [make2 isEqual:make3];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self model];
  carIdentifier2 = [equalCopy model];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  model = [(_INPBCar *)self model];
  if (model)
  {
    v33 = model;
    model2 = [(_INPBCar *)self model];
    model3 = [equalCopy model];
    v36 = [model2 isEqual:model3];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self powerPerConnectors];
  carIdentifier2 = [equalCopy powerPerConnectors];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  powerPerConnectors = [(_INPBCar *)self powerPerConnectors];
  if (powerPerConnectors)
  {
    v38 = powerPerConnectors;
    powerPerConnectors2 = [(_INPBCar *)self powerPerConnectors];
    powerPerConnectors3 = [equalCopy powerPerConnectors];
    v41 = [powerPerConnectors2 isEqual:powerPerConnectors3];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self supportedChargingConnectors];
  carIdentifier2 = [equalCopy supportedChargingConnectors];
  if ((carIdentifier != 0) == (carIdentifier2 == 0))
  {
    goto LABEL_46;
  }

  supportedChargingConnectors = [(_INPBCar *)self supportedChargingConnectors];
  if (supportedChargingConnectors)
  {
    v43 = supportedChargingConnectors;
    supportedChargingConnectors2 = [(_INPBCar *)self supportedChargingConnectors];
    supportedChargingConnectors3 = [equalCopy supportedChargingConnectors];
    v46 = [supportedChargingConnectors2 isEqual:supportedChargingConnectors3];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  carIdentifier = [(_INPBCar *)self year];
  carIdentifier2 = [equalCopy year];
  if ((carIdentifier != 0) != (carIdentifier2 == 0))
  {
    year = [(_INPBCar *)self year];
    if (!year)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = year;
    year2 = [(_INPBCar *)self year];
    year3 = [equalCopy year];
    v51 = [year2 isEqual:year3];

    if (v51)
    {
      goto LABEL_50;
    }
  }

  else
  {
LABEL_46:
  }

LABEL_47:
  v52 = 0;
LABEL_48:

  return v52;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBCar allocWithZone:](_INPBCar init];
  v6 = [(NSString *)self->_carIdentifier copyWithZone:zone];
  [(_INPBCar *)v5 setCarIdentifier:v6];

  v7 = [(_INPBColor *)self->_color copyWithZone:zone];
  [(_INPBCar *)v5 setColor:v7];

  v8 = [(NSString *)self->_displayName copyWithZone:zone];
  [(_INPBCar *)v5 setDisplayName:v8];

  v9 = [(_INPBCarHeadUnit *)self->_headUnit copyWithZone:zone];
  [(_INPBCar *)v5 setHeadUnit:v9];

  v10 = [(NSString *)self->_make copyWithZone:zone];
  [(_INPBCar *)v5 setMake:v10];

  v11 = [(NSString *)self->_model copyWithZone:zone];
  [(_INPBCar *)v5 setModel:v11];

  v12 = [(NSArray *)self->_powerPerConnectors copyWithZone:zone];
  [(_INPBCar *)v5 setPowerPerConnectors:v12];

  v13 = [(NSArray *)self->_supportedChargingConnectors copyWithZone:zone];
  [(_INPBCar *)v5 setSupportedChargingConnectors:v13];

  v14 = [(NSString *)self->_year copyWithZone:zone];
  [(_INPBCar *)v5 setYear:v14];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBCar *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBCar)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBCar *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v42 = *MEMORY[0x1E69E9840];
  toCopy = to;
  carIdentifier = [(_INPBCar *)self carIdentifier];

  if (carIdentifier)
  {
    carIdentifier = self->_carIdentifier;
    PBDataWriterWriteStringField();
  }

  color = [(_INPBCar *)self color];

  if (color)
  {
    color2 = [(_INPBCar *)self color];
    PBDataWriterWriteSubmessage();
  }

  displayName = [(_INPBCar *)self displayName];

  if (displayName)
  {
    displayName = self->_displayName;
    PBDataWriterWriteStringField();
  }

  headUnit = [(_INPBCar *)self headUnit];

  if (headUnit)
  {
    headUnit2 = [(_INPBCar *)self headUnit];
    PBDataWriterWriteSubmessage();
  }

  make = [(_INPBCar *)self make];

  if (make)
  {
    make = self->_make;
    PBDataWriterWriteStringField();
  }

  model = [(_INPBCar *)self model];

  if (model)
  {
    model = self->_model;
    PBDataWriterWriteStringField();
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v17 = self->_powerPerConnectors;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      v21 = 0;
      do
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v36 + 1) + 8 * v21);
        PBDataWriterWriteSubmessage();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v19);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v23 = self->_supportedChargingConnectors;
  v24 = [(NSArray *)v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v33;
    do
    {
      v27 = 0;
      do
      {
        if (*v33 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v32 + 1) + 8 * v27);
        PBDataWriterWriteStringField();
        ++v27;
      }

      while (v25 != v27);
      v25 = [(NSArray *)v23 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v25);
  }

  year = [(_INPBCar *)self year];

  if (year)
  {
    year = self->_year;
    PBDataWriterWriteStringField();
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)setYear:(id)year
{
  v4 = [year copy];
  year = self->_year;
  self->_year = v4;

  MEMORY[0x1EEE66BB8](v4, year);
}

- (void)addSupportedChargingConnectors:(id)connectors
{
  connectorsCopy = connectors;
  supportedChargingConnectors = self->_supportedChargingConnectors;
  v8 = connectorsCopy;
  if (!supportedChargingConnectors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedChargingConnectors;
    self->_supportedChargingConnectors = array;

    connectorsCopy = v8;
    supportedChargingConnectors = self->_supportedChargingConnectors;
  }

  [(NSArray *)supportedChargingConnectors addObject:connectorsCopy];
}

- (void)setSupportedChargingConnectors:(id)connectors
{
  v4 = [connectors mutableCopy];
  supportedChargingConnectors = self->_supportedChargingConnectors;
  self->_supportedChargingConnectors = v4;

  MEMORY[0x1EEE66BB8](v4, supportedChargingConnectors);
}

- (void)addPowerPerConnector:(id)connector
{
  connectorCopy = connector;
  powerPerConnectors = self->_powerPerConnectors;
  v8 = connectorCopy;
  if (!powerPerConnectors)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_powerPerConnectors;
    self->_powerPerConnectors = array;

    connectorCopy = v8;
    powerPerConnectors = self->_powerPerConnectors;
  }

  [(NSArray *)powerPerConnectors addObject:connectorCopy];
}

- (void)setPowerPerConnectors:(id)connectors
{
  v4 = [connectors mutableCopy];
  powerPerConnectors = self->_powerPerConnectors;
  self->_powerPerConnectors = v4;

  MEMORY[0x1EEE66BB8](v4, powerPerConnectors);
}

- (void)setModel:(id)model
{
  v4 = [model copy];
  model = self->_model;
  self->_model = v4;

  MEMORY[0x1EEE66BB8](v4, model);
}

- (void)setMake:(id)make
{
  v4 = [make copy];
  make = self->_make;
  self->_make = v4;

  MEMORY[0x1EEE66BB8](v4, make);
}

- (void)setDisplayName:(id)name
{
  v4 = [name copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8](v4, displayName);
}

- (void)setCarIdentifier:(id)identifier
{
  v4 = [identifier copy];
  carIdentifier = self->_carIdentifier;
  self->_carIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, carIdentifier);
}

@end