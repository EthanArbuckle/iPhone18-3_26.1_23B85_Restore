@interface _INPBCar
- (BOOL)isEqual:(id)a3;
- (_INPBCar)initWithCoder:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addPowerPerConnector:(id)a3;
- (void)addSupportedChargingConnectors:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)setCarIdentifier:(id)a3;
- (void)setDisplayName:(id)a3;
- (void)setMake:(id)a3;
- (void)setModel:(id)a3;
- (void)setPowerPerConnectors:(id)a3;
- (void)setSupportedChargingConnectors:(id)a3;
- (void)setYear:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _INPBCar

- (id)dictionaryRepresentation
{
  v34 = *MEMORY[0x1E69E9840];
  v3 = [MEMORY[0x1E695DF90] dictionary];
  if (self->_carIdentifier)
  {
    v4 = [(_INPBCar *)self carIdentifier];
    v5 = [v4 copy];
    [v3 setObject:v5 forKeyedSubscript:@"carIdentifier"];
  }

  v6 = [(_INPBCar *)self color];
  v7 = [v6 dictionaryRepresentation];
  [v3 setObject:v7 forKeyedSubscript:@"color"];

  if (self->_displayName)
  {
    v8 = [(_INPBCar *)self displayName];
    v9 = [v8 copy];
    [v3 setObject:v9 forKeyedSubscript:@"displayName"];
  }

  v10 = [(_INPBCar *)self headUnit];
  v11 = [v10 dictionaryRepresentation];
  [v3 setObject:v11 forKeyedSubscript:@"headUnit"];

  if (self->_make)
  {
    v12 = [(_INPBCar *)self make];
    v13 = [v12 copy];
    [v3 setObject:v13 forKeyedSubscript:@"make"];
  }

  if (self->_model)
  {
    v14 = [(_INPBCar *)self model];
    v15 = [v14 copy];
    [v3 setObject:v15 forKeyedSubscript:@"model"];
  }

  if ([(NSArray *)self->_powerPerConnectors count])
  {
    v16 = [MEMORY[0x1E695DF70] array];
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

          v22 = [*(*(&v29 + 1) + 8 * i) dictionaryRepresentation];
          [v16 addObject:v22];
        }

        v19 = [(NSArray *)v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      }

      while (v19);
    }

    [v3 setObject:v16 forKeyedSubscript:@"powerPerConnector"];
  }

  if (self->_supportedChargingConnectors)
  {
    v23 = [(_INPBCar *)self supportedChargingConnectors];
    v24 = [v23 copy];
    [v3 setObject:v24 forKeyedSubscript:@"supportedChargingConnectors"];
  }

  if (self->_year)
  {
    v25 = [(_INPBCar *)self year];
    v26 = [v25 copy];
    [v3 setObject:v26 forKeyedSubscript:@"year"];
  }

  v27 = *MEMORY[0x1E69E9840];

  return v3;
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (![v4 isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_47;
  }

  v5 = [(_INPBCar *)self carIdentifier];
  v6 = [v4 carIdentifier];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v7 = [(_INPBCar *)self carIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = [(_INPBCar *)self carIdentifier];
    v10 = [v4 carIdentifier];
    v11 = [v9 isEqual:v10];

    if (!v11)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self color];
  v6 = [v4 color];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v12 = [(_INPBCar *)self color];
  if (v12)
  {
    v13 = v12;
    v14 = [(_INPBCar *)self color];
    v15 = [v4 color];
    v16 = [v14 isEqual:v15];

    if (!v16)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self displayName];
  v6 = [v4 displayName];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v17 = [(_INPBCar *)self displayName];
  if (v17)
  {
    v18 = v17;
    v19 = [(_INPBCar *)self displayName];
    v20 = [v4 displayName];
    v21 = [v19 isEqual:v20];

    if (!v21)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self headUnit];
  v6 = [v4 headUnit];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v22 = [(_INPBCar *)self headUnit];
  if (v22)
  {
    v23 = v22;
    v24 = [(_INPBCar *)self headUnit];
    v25 = [v4 headUnit];
    v26 = [v24 isEqual:v25];

    if (!v26)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self make];
  v6 = [v4 make];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v27 = [(_INPBCar *)self make];
  if (v27)
  {
    v28 = v27;
    v29 = [(_INPBCar *)self make];
    v30 = [v4 make];
    v31 = [v29 isEqual:v30];

    if (!v31)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self model];
  v6 = [v4 model];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v32 = [(_INPBCar *)self model];
  if (v32)
  {
    v33 = v32;
    v34 = [(_INPBCar *)self model];
    v35 = [v4 model];
    v36 = [v34 isEqual:v35];

    if (!v36)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self powerPerConnectors];
  v6 = [v4 powerPerConnectors];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v37 = [(_INPBCar *)self powerPerConnectors];
  if (v37)
  {
    v38 = v37;
    v39 = [(_INPBCar *)self powerPerConnectors];
    v40 = [v4 powerPerConnectors];
    v41 = [v39 isEqual:v40];

    if (!v41)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self supportedChargingConnectors];
  v6 = [v4 supportedChargingConnectors];
  if ((v5 != 0) == (v6 == 0))
  {
    goto LABEL_46;
  }

  v42 = [(_INPBCar *)self supportedChargingConnectors];
  if (v42)
  {
    v43 = v42;
    v44 = [(_INPBCar *)self supportedChargingConnectors];
    v45 = [v4 supportedChargingConnectors];
    v46 = [v44 isEqual:v45];

    if (!v46)
    {
      goto LABEL_47;
    }
  }

  else
  {
  }

  v5 = [(_INPBCar *)self year];
  v6 = [v4 year];
  if ((v5 != 0) != (v6 == 0))
  {
    v47 = [(_INPBCar *)self year];
    if (!v47)
    {

LABEL_50:
      v52 = 1;
      goto LABEL_48;
    }

    v48 = v47;
    v49 = [(_INPBCar *)self year];
    v50 = [v4 year];
    v51 = [v49 isEqual:v50];

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

- (id)copyWithZone:(_NSZone *)a3
{
  v5 = [+[_INPBCar allocWithZone:](_INPBCar init];
  v6 = [(NSString *)self->_carIdentifier copyWithZone:a3];
  [(_INPBCar *)v5 setCarIdentifier:v6];

  v7 = [(_INPBColor *)self->_color copyWithZone:a3];
  [(_INPBCar *)v5 setColor:v7];

  v8 = [(NSString *)self->_displayName copyWithZone:a3];
  [(_INPBCar *)v5 setDisplayName:v8];

  v9 = [(_INPBCarHeadUnit *)self->_headUnit copyWithZone:a3];
  [(_INPBCar *)v5 setHeadUnit:v9];

  v10 = [(NSString *)self->_make copyWithZone:a3];
  [(_INPBCar *)v5 setMake:v10];

  v11 = [(NSString *)self->_model copyWithZone:a3];
  [(_INPBCar *)v5 setModel:v11];

  v12 = [(NSArray *)self->_powerPerConnectors copyWithZone:a3];
  [(_INPBCar *)v5 setPowerPerConnectors:v12];

  v13 = [(NSArray *)self->_supportedChargingConnectors copyWithZone:a3];
  [(_INPBCar *)v5 setSupportedChargingConnectors:v13];

  v14 = [(NSString *)self->_year copyWithZone:a3];
  [(_INPBCar *)v5 setYear:v14];

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6 = [(_INPBCar *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [v4 if_encodeBytesNoCopy:v6 forKey:v5];
}

- (_INPBCar)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = NSStringFromSelector(sel_bytes);
  v6 = [v4 if_decodeBytesNoCopyForKey:v5];

  if (v6 || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [v4 decodeObjectOfClass:v7 forKey:v8], v6 = objc_claimAutoreleasedReturnValue(), v8, v6))
  {
    self = [(_INPBCar *)self initWithData:v6];

    v6 = self;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(_INPBCar *)self carIdentifier];

  if (v5)
  {
    carIdentifier = self->_carIdentifier;
    PBDataWriterWriteStringField();
  }

  v7 = [(_INPBCar *)self color];

  if (v7)
  {
    v8 = [(_INPBCar *)self color];
    PBDataWriterWriteSubmessage();
  }

  v9 = [(_INPBCar *)self displayName];

  if (v9)
  {
    displayName = self->_displayName;
    PBDataWriterWriteStringField();
  }

  v11 = [(_INPBCar *)self headUnit];

  if (v11)
  {
    v12 = [(_INPBCar *)self headUnit];
    PBDataWriterWriteSubmessage();
  }

  v13 = [(_INPBCar *)self make];

  if (v13)
  {
    make = self->_make;
    PBDataWriterWriteStringField();
  }

  v15 = [(_INPBCar *)self model];

  if (v15)
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

  v29 = [(_INPBCar *)self year];

  if (v29)
  {
    year = self->_year;
    PBDataWriterWriteStringField();
  }

  v31 = *MEMORY[0x1E69E9840];
}

- (void)setYear:(id)a3
{
  v4 = [a3 copy];
  year = self->_year;
  self->_year = v4;

  MEMORY[0x1EEE66BB8](v4, year);
}

- (void)addSupportedChargingConnectors:(id)a3
{
  v4 = a3;
  supportedChargingConnectors = self->_supportedChargingConnectors;
  v8 = v4;
  if (!supportedChargingConnectors)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_supportedChargingConnectors;
    self->_supportedChargingConnectors = v6;

    v4 = v8;
    supportedChargingConnectors = self->_supportedChargingConnectors;
  }

  [(NSArray *)supportedChargingConnectors addObject:v4];
}

- (void)setSupportedChargingConnectors:(id)a3
{
  v4 = [a3 mutableCopy];
  supportedChargingConnectors = self->_supportedChargingConnectors;
  self->_supportedChargingConnectors = v4;

  MEMORY[0x1EEE66BB8](v4, supportedChargingConnectors);
}

- (void)addPowerPerConnector:(id)a3
{
  v4 = a3;
  powerPerConnectors = self->_powerPerConnectors;
  v8 = v4;
  if (!powerPerConnectors)
  {
    v6 = [MEMORY[0x1E695DF70] array];
    v7 = self->_powerPerConnectors;
    self->_powerPerConnectors = v6;

    v4 = v8;
    powerPerConnectors = self->_powerPerConnectors;
  }

  [(NSArray *)powerPerConnectors addObject:v4];
}

- (void)setPowerPerConnectors:(id)a3
{
  v4 = [a3 mutableCopy];
  powerPerConnectors = self->_powerPerConnectors;
  self->_powerPerConnectors = v4;

  MEMORY[0x1EEE66BB8](v4, powerPerConnectors);
}

- (void)setModel:(id)a3
{
  v4 = [a3 copy];
  model = self->_model;
  self->_model = v4;

  MEMORY[0x1EEE66BB8](v4, model);
}

- (void)setMake:(id)a3
{
  v4 = [a3 copy];
  make = self->_make;
  self->_make = v4;

  MEMORY[0x1EEE66BB8](v4, make);
}

- (void)setDisplayName:(id)a3
{
  v4 = [a3 copy];
  displayName = self->_displayName;
  self->_displayName = v4;

  MEMORY[0x1EEE66BB8](v4, displayName);
}

- (void)setCarIdentifier:(id)a3
{
  v4 = [a3 copy];
  carIdentifier = self->_carIdentifier;
  self->_carIdentifier = v4;

  MEMORY[0x1EEE66BB8](v4, carIdentifier);
}

@end