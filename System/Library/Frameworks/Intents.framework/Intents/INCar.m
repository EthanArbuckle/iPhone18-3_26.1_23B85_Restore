@interface INCar
+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5;
- (BOOL)isEqual:(id)a3;
- (INCar)initWithCarIdentifier:(NSString *)carIdentifier displayName:(NSString *)displayName year:(NSString *)year make:(NSString *)make model:(NSString *)model color:(CGColorRef)color headUnit:(INCarHeadUnit *)headUnit supportedChargingConnectors:(NSArray *)supportedChargingConnectors;
- (INCar)initWithCarIdentifier:(id)a3 displayName:(id)a4 year:(id)a5 make:(id)a6 model:(id)a7 color:(CGColor *)a8 headUnit:(id)a9 supportedChargingConnectors:(id)a10 powerPerConnectors:(id)a11;
- (INCar)initWithCoder:(id)a3;
- (NSMeasurement)maximumPowerForChargingConnectorType:(INCarChargingConnectorType)chargingConnectorType;
- (id)_colorDictionaryRepresentation;
- (id)_dictionaryRepresentation;
- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4;
- (id)descriptionAtIndent:(unint64_t)a3;
- (unint64_t)hash;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setMaximumPower:(NSMeasurement *)power forChargingConnectorType:(INCarChargingConnectorType)chargingConnectorType;
@end

@implementation INCar

- (id)_colorDictionaryRepresentation
{
  color = self->_color;
  if (color)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v3 = getCGColorGetComponentsSymbolLoc_ptr_136722;
    v16 = getCGColorGetComponentsSymbolLoc_ptr_136722;
    if (!getCGColorGetComponentsSymbolLoc_ptr_136722)
    {
      v4 = CoreGraphicsLibrary_136724();
      v14[3] = dlsym(v4, "CGColorGetComponents");
      getCGColorGetComponentsSymbolLoc_ptr_136722 = v14[3];
      v3 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (!v3)
    {
      dlerror();
      v12 = abort_report_np();
      _Block_object_dispose(&v13, 8);
      _Unwind_Resume(v12);
    }

    v5 = v3(color);
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:*v5];
    [v6 addObject:v7];

    v8 = [MEMORY[0x1E696AD98] numberWithDouble:v5[1]];
    [v6 addObject:v8];

    v9 = [MEMORY[0x1E696AD98] numberWithDouble:v5[2]];
    [v6 addObject:v9];

    v10 = [MEMORY[0x1E696AD98] numberWithDouble:v5[3]];
    [v6 addObject:v10];
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  return v6;
}

- (NSMeasurement)maximumPowerForChargingConnectorType:(INCarChargingConnectorType)chargingConnectorType
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = chargingConnectorType;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(INCar *)self powerPerConnectors];
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 chargingConnector];
        v11 = [v10 isEqualToString:v4];

        if (v11)
        {
          v6 = [v9 maximumPower];
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v12 = *MEMORY[0x1E69E9840];

  return v6;
}

- (void)setMaximumPower:(NSMeasurement *)power forChargingConnectorType:(INCarChargingConnectorType)chargingConnectorType
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = power;
  v7 = chargingConnectorType;
  v8 = [[INCarChargingConnectorPower alloc] initWithChargingConnector:v7 maximumPower:v6];
  [(INCar *)self mutableArrayValueForKey:@"powerPerConnectors"];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = v21 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        v15 = [v14 chargingConnector];
        v16 = [v15 isEqualToString:v7];

        if (v16)
        {
          [v9 removeObject:v14];
          goto LABEL_11;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  [v9 addObject:v8];
  v17 = *MEMORY[0x1E69E9840];
}

- (id)_dictionaryRepresentation
{
  v29[9] = *MEMORY[0x1E69E9840];
  carIdentifier = self->_carIdentifier;
  v27 = carIdentifier;
  v28[0] = @"carIdentifier";
  if (!carIdentifier)
  {
    carIdentifier = [MEMORY[0x1E695DFB0] null];
  }

  v24 = carIdentifier;
  v29[0] = carIdentifier;
  v28[1] = @"displayName";
  displayName = self->_displayName;
  v26 = displayName;
  if (!displayName)
  {
    displayName = [MEMORY[0x1E695DFB0] null];
  }

  v23 = displayName;
  v29[1] = displayName;
  v28[2] = @"year";
  year = self->_year;
  v25 = year;
  if (!year)
  {
    year = [MEMORY[0x1E695DFB0] null];
  }

  v22 = year;
  v29[2] = year;
  v28[3] = @"make";
  make = self->_make;
  v7 = make;
  if (!make)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v21 = v7;
  v29[3] = v7;
  v28[4] = @"model";
  model = self->_model;
  v9 = model;
  if (!model)
  {
    v9 = [MEMORY[0x1E695DFB0] null];
  }

  v29[4] = v9;
  v28[5] = @"color";
  v10 = [(INCar *)self _colorDictionaryRepresentation];
  v29[5] = v10;
  v28[6] = @"headUnit";
  headUnit = self->_headUnit;
  v12 = headUnit;
  if (!headUnit)
  {
    v12 = [MEMORY[0x1E695DFB0] null];
  }

  v29[6] = v12;
  v28[7] = @"supportedChargingConnectors";
  supportedChargingConnectors = self->_supportedChargingConnectors;
  v14 = supportedChargingConnectors;
  if (!supportedChargingConnectors)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v29[7] = v14;
  v28[8] = @"powerPerConnectors";
  powerPerConnectors = self->_powerPerConnectors;
  v16 = powerPerConnectors;
  if (!powerPerConnectors)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v29[8] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:9];
  if (powerPerConnectors)
  {
    if (supportedChargingConnectors)
    {
      goto LABEL_19;
    }

LABEL_32:

    if (headUnit)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  if (!supportedChargingConnectors)
  {
    goto LABEL_32;
  }

LABEL_19:
  if (headUnit)
  {
    goto LABEL_20;
  }

LABEL_33:

LABEL_20:
  if (model)
  {
    if (make)
    {
      goto LABEL_22;
    }
  }

  else
  {

    if (make)
    {
      goto LABEL_22;
    }
  }

LABEL_22:
  if (!v25)
  {
  }

  if (!v26)
  {
  }

  if (!v27)
  {
  }

  v18 = *MEMORY[0x1E69E9840];

  return v17;
}

- (id)descriptionAtIndent:(unint64_t)a3
{
  v5 = MEMORY[0x1E696AEC0];
  v11.receiver = self;
  v11.super_class = INCar;
  v6 = [(INCar *)&v11 description];
  v7 = [(INCar *)self _dictionaryRepresentation];
  v8 = [v7 descriptionAtIndent:a3];
  v9 = [v5 stringWithFormat:@"%@ %@", v6, v8];

  return v9;
}

- (id)_intents_encodeWithJSONEncoder:(id)a3 codableDescription:(id)a4
{
  v5 = MEMORY[0x1E695DF90];
  v6 = a3;
  v7 = [v5 dictionary];
  v8 = [v6 encodeObject:self->_carIdentifier];
  [v7 if_setObjectIfNonNil:v8 forKey:@"carIdentifier"];

  v9 = [v6 encodeObject:self->_displayName];
  [v7 if_setObjectIfNonNil:v9 forKey:@"displayName"];

  v10 = [v6 encodeObject:self->_year];
  [v7 if_setObjectIfNonNil:v10 forKey:@"year"];

  v11 = [v6 encodeObject:self->_make];
  [v7 if_setObjectIfNonNil:v11 forKey:@"make"];

  v12 = [v6 encodeObject:self->_model];
  [v7 if_setObjectIfNonNil:v12 forKey:@"model"];

  v13 = [(INCar *)self _colorDictionaryRepresentation];
  v14 = [v6 encodeObject:v13];
  [v7 if_setObjectIfNonNil:v14 forKey:@"color"];

  v15 = [v6 encodeObject:self->_headUnit];
  [v7 if_setObjectIfNonNil:v15 forKey:@"headUnit"];

  v16 = [v6 encodeObject:self->_supportedChargingConnectors];
  [v7 if_setObjectIfNonNil:v16 forKey:@"supportedChargingConnectors"];

  v17 = [v6 encodeObject:self->_powerPerConnectors];

  [v7 if_setObjectIfNonNil:v17 forKey:@"powerPerConnectors"];

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  carIdentifier = self->_carIdentifier;
  v6 = a3;
  [v6 encodeObject:carIdentifier forKey:@"carIdentifier"];
  [v6 encodeObject:self->_displayName forKey:@"displayName"];
  [v6 encodeObject:self->_year forKey:@"year"];
  [v6 encodeObject:self->_make forKey:@"make"];
  [v6 encodeObject:self->_model forKey:@"model"];
  v5 = [(INCar *)self _colorDictionaryRepresentation];
  [v6 encodeObject:v5 forKey:@"color"];

  [v6 encodeObject:self->_headUnit forKey:@"headUnit"];
  [v6 encodeObject:self->_supportedChargingConnectors forKey:@"supportedChargingConnectors"];
  [v6 encodeObject:self->_powerPerConnectors forKey:@"powerPerConnectors"];
}

- (INCar)initWithCoder:(id)a3
{
  v54[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E695DFD8];
  v4 = a3;
  v5 = objc_opt_class();
  v6 = [v3 setWithObjects:{v5, objc_opt_class(), 0}];
  v51 = [v4 decodeObjectOfClasses:v6 forKey:@"carIdentifier"];

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
  v50 = [v4 decodeObjectOfClasses:v9 forKey:@"displayName"];

  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = [v10 setWithObjects:{v11, objc_opt_class(), 0}];
  v49 = [v4 decodeObjectOfClasses:v12 forKey:@"year"];

  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  v15 = [v13 setWithObjects:{v14, objc_opt_class(), 0}];
  v48 = [v4 decodeObjectOfClasses:v15 forKey:@"make"];

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = [v4 decodeObjectOfClasses:v18 forKey:@"model"];

  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = [v20 setWithObjects:{v21, objc_opt_class(), 0}];
  v23 = [v4 decodeObjectOfClasses:v22 forKey:@"color"];

  v24 = [v23 objectAtIndexedSubscript:0];
  [v24 doubleValue];
  v26 = v25;
  v27 = [v23 objectAtIndexedSubscript:1];
  [v27 doubleValue];
  v29 = v28;
  v30 = [v23 objectAtIndexedSubscript:2];
  [v30 doubleValue];
  v32 = v31;
  v33 = [v23 objectAtIndexedSubscript:3];
  [v33 doubleValue];
  SRGB = soft_CGColorCreateSRGB(v26, v29, v32, v34);

  v35 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"headUnit"];
  v36 = MEMORY[0x1E695DFD8];
  v54[0] = objc_opt_class();
  v54[1] = objc_opt_class();
  v54[2] = objc_opt_class();
  v37 = [MEMORY[0x1E695DEC8] arrayWithObjects:v54 count:3];
  v38 = [v36 setWithArray:v37];
  v39 = [v4 decodeObjectOfClasses:v38 forKey:@"supportedChargingConnectors"];

  v40 = MEMORY[0x1E695DFD8];
  v53[0] = objc_opt_class();
  v53[1] = objc_opt_class();
  v41 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:2];
  v42 = [v40 setWithArray:v41];
  v43 = [v4 decodeObjectOfClasses:v42 forKey:@"powerPerConnectors"];

  v44 = [(INCar *)self initWithCarIdentifier:v51 displayName:v50 year:v49 make:v48 model:v19 color:SRGB headUnit:v35 supportedChargingConnectors:v39 powerPerConnectors:v43];
  v45 = *MEMORY[0x1E69E9840];
  return v44;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v11 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      carIdentifier = self->_carIdentifier;
      v11 = 0;
      if (carIdentifier == v5->_carIdentifier || [(NSString *)carIdentifier isEqual:?])
      {
        displayName = self->_displayName;
        if (displayName == v5->_displayName || [(NSString *)displayName isEqual:?])
        {
          year = self->_year;
          if (year == v5->_year || [(NSString *)year isEqual:?])
          {
            make = self->_make;
            if (make == v5->_make || [(NSString *)make isEqual:?])
            {
              model = self->_model;
              if ((model == v5->_model || [(NSString *)model isEqual:?]) && self->_color == v5->_color)
              {
                headUnit = self->_headUnit;
                if (headUnit == v5->_headUnit || [(INCarHeadUnit *)headUnit isEqual:?])
                {
                  supportedChargingConnectors = self->_supportedChargingConnectors;
                  if (supportedChargingConnectors == v5->_supportedChargingConnectors || [(NSArray *)supportedChargingConnectors isEqual:?])
                  {
                    powerPerConnectors = self->_powerPerConnectors;
                    if (powerPerConnectors == v5->_powerPerConnectors || [(NSArray *)powerPerConnectors isEqual:?])
                    {
                      v11 = 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v11 = 0;
    }
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_carIdentifier hash];
  v4 = [(NSString *)self->_displayName hash]^ v3;
  v5 = [(NSString *)self->_year hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_make hash];
  v7 = [(NSString *)self->_model hash];
  v8 = [(INCar *)self _colorDictionaryRepresentation];
  v9 = v7 ^ [v8 hash];
  v10 = v6 ^ v9 ^ [(INCarHeadUnit *)self->_headUnit hash];
  v11 = [(NSArray *)self->_supportedChargingConnectors hash];
  v12 = v11 ^ [(NSArray *)self->_powerPerConnectors hash];

  return v10 ^ v12;
}

- (void)dealloc
{
  CGColorRelease(self->_color);
  v3.receiver = self;
  v3.super_class = INCar;
  [(INCar *)&v3 dealloc];
}

- (INCar)initWithCarIdentifier:(id)a3 displayName:(id)a4 year:(id)a5 make:(id)a6 model:(id)a7 color:(CGColor *)a8 headUnit:(id)a9 supportedChargingConnectors:(id)a10 powerPerConnectors:(id)a11
{
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a9;
  v23 = a10;
  v24 = a11;
  v43.receiver = self;
  v43.super_class = INCar;
  v25 = [(INCar *)&v43 init];
  if (v25)
  {
    v26 = [v17 copy];
    carIdentifier = v25->_carIdentifier;
    v25->_carIdentifier = v26;

    v28 = [v18 copy];
    displayName = v25->_displayName;
    v25->_displayName = v28;

    v30 = [v19 copy];
    year = v25->_year;
    v25->_year = v30;

    v32 = [v20 copy];
    make = v25->_make;
    v25->_make = v32;

    v34 = [v21 copy];
    model = v25->_model;
    v25->_model = v34;

    v25->_color = CGColorRetain(a8);
    v36 = [v22 copy];
    headUnit = v25->_headUnit;
    v25->_headUnit = v36;

    v38 = [v23 copy];
    supportedChargingConnectors = v25->_supportedChargingConnectors;
    v25->_supportedChargingConnectors = v38;

    v40 = [v24 copy];
    powerPerConnectors = v25->_powerPerConnectors;
    v25->_powerPerConnectors = v40;
  }

  return v25;
}

- (INCar)initWithCarIdentifier:(NSString *)carIdentifier displayName:(NSString *)displayName year:(NSString *)year make:(NSString *)make model:(NSString *)model color:(CGColorRef)color headUnit:(INCarHeadUnit *)headUnit supportedChargingConnectors:(NSArray *)supportedChargingConnectors
{
  v16 = carIdentifier;
  v17 = displayName;
  v18 = year;
  v19 = make;
  v20 = model;
  v21 = headUnit;
  v22 = supportedChargingConnectors;
  v39.receiver = self;
  v39.super_class = INCar;
  v23 = [(INCar *)&v39 init];
  if (v23)
  {
    v24 = [(NSString *)v16 copy];
    v25 = v23->_carIdentifier;
    v23->_carIdentifier = v24;

    v26 = [(NSString *)v17 copy];
    v27 = v23->_displayName;
    v23->_displayName = v26;

    v28 = [(NSString *)v18 copy];
    v29 = v23->_year;
    v23->_year = v28;

    v30 = [(NSString *)v19 copy];
    v31 = v23->_make;
    v23->_make = v30;

    v32 = [(NSString *)v20 copy];
    v33 = v23->_model;
    v23->_model = v32;

    v23->_color = CGColorRetain(color);
    v34 = [(INCarHeadUnit *)v21 copy];
    v35 = v23->_headUnit;
    v23->_headUnit = v34;

    v36 = [(NSArray *)v22 copy];
    v37 = v23->_supportedChargingConnectors;
    v23->_supportedChargingConnectors = v36;
  }

  return v23;
}

+ (id)_intents_decodeWithJSONDecoder:(id)a3 codableDescription:(id)a4 from:(id)a5
{
  v7 = a3;
  v8 = a5;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v30 = [v8 objectForKeyedSubscript:@"carIdentifier"];
    v9 = [v8 objectForKeyedSubscript:@"displayName"];
    v35 = [v8 objectForKeyedSubscript:@"year"];
    v34 = [v8 objectForKeyedSubscript:@"make"];
    v33 = [v8 objectForKeyedSubscript:@"model"];
    v32 = [v8 objectForKeyedSubscript:@"color"];
    v10 = [v32 objectAtIndexedSubscript:0];
    [v10 doubleValue];
    v12 = v11;
    v13 = [v32 objectAtIndexedSubscript:1];
    [v13 doubleValue];
    v15 = v14;
    v16 = [v32 objectAtIndexedSubscript:2];
    [v16 doubleValue];
    v18 = v17;
    v19 = [v32 objectAtIndexedSubscript:3];
    [v19 doubleValue];
    SRGB = soft_CGColorCreateSRGB(v12, v15, v18, v20);

    v21 = objc_opt_class();
    v22 = [v8 objectForKeyedSubscript:@"headUnit"];
    v23 = [v7 decodeObjectOfClass:v21 from:v22];

    v24 = [v8 objectForKeyedSubscript:@"supportedChargingConnectors"];
    v25 = objc_opt_class();
    v26 = [v8 objectForKeyedSubscript:@"powerPerConnectors"];
    v27 = [v7 decodeObjectsOfClass:v25 from:v26];

    v28 = [[a1 alloc] initWithCarIdentifier:v30 displayName:v9 year:v35 make:v34 model:v33 color:SRGB headUnit:v23 supportedChargingConnectors:v24 powerPerConnectors:v27];
  }

  else
  {
    v28 = 0;
  }

  return v28;
}

@end