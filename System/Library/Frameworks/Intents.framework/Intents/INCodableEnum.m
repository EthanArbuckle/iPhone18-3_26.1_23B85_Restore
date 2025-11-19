@interface INCodableEnum
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableEnum)initWithCoder:(id)a3;
- (INCodableEnum)initWithName:(id)a3 displayName:(id)a4 displayNameID:(id)a5 enumNamespace:(id)a6 type:(int64_t)a7 values:(id)a8 localizationTable:(id)a9;
- (NSString)localizedDisplayName;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)localizedDisplayNameWithLocalizer:(id)a3;
- (id)valueForIndex:(unint64_t)a3;
- (id)valuesByIndexForValues:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableEnum

- (unint64_t)hash
{
  v3 = [(INCodableEnum *)self enumNamespace];
  v4 = [v3 hash];
  v5 = [(INCodableEnum *)self name];
  v6 = [v5 hash] ^ v4;
  v7 = [(INCodableEnum *)self displayName];
  v8 = [v7 hash];
  v9 = [(INCodableEnum *)self displayNameID];
  v10 = v6 ^ v8 ^ [v9 hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnum type](self, "type")}];
  v12 = [v11 hash];
  v13 = [(INCodableEnum *)self values];
  v14 = v10 ^ [v13 hash];
  v15 = [(INCodableEnum *)self _localizationTable];
  v16 = v14 ^ [v15 hash];

  return v16 ^ v12;
}

- (INCodableEnum)initWithCoder:(id)a3
{
  v4 = a3;
  v32.receiver = self;
  v32.super_class = INCodableEnum;
  v5 = [(INCodableEnum *)&v32 init];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [v4 decodeObjectOfClasses:v10 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v11;

    v13 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayNameID"];
    displayNameID = v5->_displayNameID;
    v5->_displayNameID = v13;

    v15 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"enumNamespace"];
    enumNamespace = v5->_enumNamespace;
    v5->_enumNamespace = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [v4 decodeObjectOfClasses:v19 forKey:@"values"];
    values = v5->_values;
    v5->_values = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_localizationTable"];
    localizationTable = v5->_localizationTable;
    v5->_localizationTable = v22;

    v24 = [(INCodableEnum *)v5 values];
    v25 = [(INCodableEnum *)v5 valuesByIndexForValues:v24];
    valuesByIndex = v5->_valuesByIndex;
    v5->_valuesByIndex = v25;

    v27 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];

    if (v27)
    {
      v28 = objc_alloc_init(INCodableLocalizationTable);
      v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
      [(INCodableLocalizationTable *)v28 setTableName:v29];

      v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
      [(INCodableLocalizationTable *)v28 setBundleIdentifier:v30];

      [(INCodableEnum *)v5 _setLocalizationTable:v28];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  [v4 encodeInteger:-[INCodableEnum type](self forKey:{"type"), @"type"}];
  v5 = [(INCodableEnum *)self name];
  [v4 encodeObject:v5 forKey:@"name"];

  v6 = [(INCodableEnum *)self displayName];
  [v4 encodeObject:v6 forKey:@"displayName"];

  v7 = [(INCodableEnum *)self displayNameID];
  [v4 encodeObject:v7 forKey:@"displayNameID"];

  v8 = [(INCodableEnum *)self enumNamespace];
  [v4 encodeObject:v8 forKey:@"enumNamespace"];

  v9 = [(INCodableEnum *)self values];
  [v4 encodeObject:v9 forKey:@"values"];

  v10 = [(INCodableEnum *)self _localizationTable];
  [v4 encodeObject:v10 forKey:@"_localizationTable"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = MEMORY[0x1E695DF90];
  v7 = a3;
  v8 = [v6 dictionary];
  [v8 intents_setIntegerIfNonZero:-[INCodableEnum type](self forKey:{"type"), @"type"}];
  v9 = [(INCodableEnum *)self name];
  [v8 intents_setPlistSafeObject:v9 forKey:@"name"];

  v10 = [(INCodableEnum *)self displayName];
  v11 = [v10 intents_encodeForPlistRepresentationWithParameters:v7];
  [v8 intents_setPlistSafeObject:v11 forKey:@"displayName"];

  v12 = [(INCodableEnum *)self displayNameID];
  [v8 intents_setPlistSafeObject:v12 forKey:@"displayNameID"];

  v13 = [(INCodableEnum *)self enumNamespace];
  [v8 intents_setPlistSafeObject:v13 forKey:@"enumNamespace"];

  v14 = [(INCodableEnum *)self values];
  v21 = 0;
  [v8 intents_setArrayOfWidgetPlistRepresentable:v14 forKey:@"values" parameters:v7 error:&v21];

  v15 = v21;
  if (v15)
  {
    if (a4)
    {
LABEL_3:
      v16 = v15;
      v17 = 0;
      *a4 = v15;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v18 = [(INCodableEnum *)self _localizationTable];
  v20 = 0;
  [v8 intents_setWidgetPlistRepresentable:v18 forKey:@"_localizationTable" error:&v20];
  v15 = v20;

  if (v15)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    goto LABEL_8;
  }

  v17 = v8;
LABEL_8:

  return v17;
}

- (id)valuesByIndexForValues:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v10, "index", v14)}];
        [v4 setObject:v10 forKey:v11];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = MEMORY[0x1E695DF70];
  v6 = [(INCodableEnum *)self values];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(v6, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v8 = [(INCodableEnum *)self values];
  v9 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v37;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v37 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:v4];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v10);
  }

  v35 = [objc_opt_class() __NameKey];
  v40[0] = v35;
  v14 = [(INCodableEnum *)self name];
  v15 = v14;
  if (!v14)
  {
    v14 = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v15;
  v31 = v14;
  v41[0] = v14;
  v33 = [objc_opt_class() __DisplayNameKey];
  v40[1] = v33;
  v16 = [(INCodableEnum *)self localizedDisplayNameWithLocalizer:v4];
  v17 = v16;
  if (!v16)
  {
    v16 = [MEMORY[0x1E695DFB0] null];
  }

  v30 = v16;
  v41[1] = v16;
  v32 = [objc_opt_class() __DisplayNameIDKey];
  v40[2] = v32;
  v18 = [(INCodableEnum *)self displayNameID];
  v19 = v18;
  if (!v18)
  {
    v19 = [MEMORY[0x1E695DFB0] null];
  }

  v41[2] = v19;
  v20 = [objc_opt_class() __TypeKey];
  v40[3] = v20;
  v21 = [(INCodableEnum *)self type];
  v22 = @"State";
  if (v21 != 1)
  {
    v22 = 0;
  }

  if (v21 == 2)
  {
    v22 = @"Options";
  }

  v23 = v22;
  v24 = v23;
  if (!v23)
  {
    v24 = [MEMORY[0x1E695DFB0] null];
  }

  v41[3] = v24;
  v25 = [objc_opt_class() __ValuesKey];
  v40[4] = v25;
  v41[4] = v7;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:5];

  if (!v23)
  {
  }

  if (!v18)
  {
  }

  if (!v17)
  {
  }

  if (!v34)
  {
  }

  v27 = [v26 if_dictionaryWithNonEmptyValues];

  v28 = *MEMORY[0x1E69E9840];

  return v27;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnum *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)a3
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [objc_opt_class() __NameKey];
  v6 = [v4 objectForKey:v5];
  name = self->_name;
  self->_name = v6;

  v8 = [objc_opt_class() __DisplayNameKey];
  v9 = [v4 objectForKey:v8];
  displayName = self->_displayName;
  self->_displayName = v9;

  v11 = [objc_opt_class() __DisplayNameIDKey];
  v12 = [v4 objectForKey:v11];
  displayNameID = self->_displayNameID;
  self->_displayNameID = v12;

  v36 = self;
  v14 = [objc_opt_class() __TypeKey];
  v15 = [v4 objectForKey:v14];
  if ([v15 isEqualToString:@"State"])
  {
    v16 = 1;
  }

  else
  {
    v17 = [v15 isEqualToString:@"Options"];
    v16 = 2;
    if (!v17)
    {
      v16 = 0;
    }
  }

  self->_type = v16;

  v18 = [objc_opt_class() __ValuesKey];
  v35 = v4;
  v19 = [v4 objectForKey:v18];

  v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v19, "count")}];
  v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v22 = v19;
  v23 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v38;
    do
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v38 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v37 + 1) + 8 * i);
        v28 = objc_alloc_init(INCodableEnumValue);
        [(INCodableEnumValue *)v28 _setCodableEnum:v36];
        [(INCodableEnumValue *)v28 updateWithDictionary:v27];
        v29 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnumValue index](v28, "index")}];
        [v21 setObject:v28 forKeyedSubscript:v29];

        [v20 addObject:v28];
      }

      v24 = [v22 countByEnumeratingWithState:&v37 objects:v41 count:16];
    }

    while (v24);
  }

  v30 = [v21 copy];
  valuesByIndex = v36->_valuesByIndex;
  v36->_valuesByIndex = v30;

  v32 = [v20 copy];
  values = v36->_values;
  v36->_values = v32;

  v34 = *MEMORY[0x1E69E9840];
}

- (id)localizedDisplayNameWithLocalizer:(id)a3
{
  v4 = a3;
  v5 = [(INCodableEnum *)self displayNameID];
  v6 = [(INCodableEnum *)self displayName];
  v7 = [(INCodableEnum *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(v5, v6, v7, v4, 0);

  return v8;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnum *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)valueForIndex:(unint64_t)a3
{
  valuesByIndex = self->_valuesByIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
  v5 = [(NSDictionary *)valuesByIndex objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if ([v7 isMemberOfClass:objc_opt_class()])
  {
    v8 = [(INCodableEnum *)self type];
    if (v8 == [v7 type])
    {
      v9 = [(INCodableEnum *)self name];
      v10 = [v7 name];
      if (![v9 isEqualToString:v10])
      {
        v12 = 0;
        goto LABEL_26;
      }

      displayName = self->_displayName;
      if (displayName || ([v7 displayName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v4 = [(INCodableEnum *)self displayName];
        v5 = [v7 displayName];
        if (![v4 isEqualToString:v5])
        {
          v12 = 0;
          goto LABEL_23;
        }

        v27 = 1;
      }

      else
      {
        v27 = 0;
      }

      v13 = [(INCodableEnum *)self displayNameID];
      v14 = [v7 displayNameID];
      if ([v13 isEqualToString:v14])
      {
        v26 = v3;
        v15 = [(INCodableEnum *)self enumNamespace];
        v24 = [v7 enumNamespace];
        v25 = v15;
        if ([v15 isEqualToString:v24])
        {
          v16 = [(INCodableEnum *)self values];
          v17 = [v7 values];
          v23 = v16;
          v18 = v16;
          v19 = v17;
          if ([v18 isEqual:v17])
          {
            v22 = [(INCodableEnum *)self _localizationTable];
            v21 = [v7 _localizationTable];
            v12 = [v22 isEqual:v21];
          }

          else
          {
            v12 = 0;
          }
        }

        else
        {
          v12 = 0;
        }

        if ((v27 & 1) == 0)
        {
          v3 = v26;
          if (displayName)
          {
            goto LABEL_26;
          }

          goto LABEL_25;
        }

        v3 = v26;
      }

      else
      {

        v12 = 0;
        if (!v27)
        {
LABEL_24:
          if (!displayName)
          {
LABEL_25:
          }

LABEL_26:

          goto LABEL_27;
        }
      }

LABEL_23:

      goto LABEL_24;
    }
  }

  v12 = 0;
LABEL_27:

  return v12;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [INCodableEnum allocWithZone:a3];
  v5 = [(INCodableEnum *)self name];
  v6 = [(INCodableEnum *)self displayName];
  v7 = [(INCodableEnum *)self displayNameID];
  v8 = [(INCodableEnum *)self enumNamespace];
  v9 = [(INCodableEnum *)self type];
  v10 = [(INCodableEnum *)self values];
  v11 = [(INCodableEnum *)self _localizationTable];
  v12 = [(INCodableEnum *)v4 initWithName:v5 displayName:v6 displayNameID:v7 enumNamespace:v8 type:v9 values:v10 localizationTable:v11];

  return v12;
}

- (INCodableEnum)initWithName:(id)a3 displayName:(id)a4 displayNameID:(id)a5 enumNamespace:(id)a6 type:(int64_t)a7 values:(id)a8 localizationTable:(id)a9
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v19 = a8;
  v20 = a9;
  v38.receiver = self;
  v38.super_class = INCodableEnum;
  v21 = [(INCodableEnum *)&v38 init];
  if (v21)
  {
    v22 = [v15 copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [v16 copy];
    displayName = v21->_displayName;
    v21->_displayName = v24;

    v26 = [v17 copy];
    displayNameID = v21->_displayNameID;
    v21->_displayNameID = v26;

    v28 = [v18 copy];
    enumNamespace = v21->_enumNamespace;
    v21->_enumNamespace = v28;

    v21->_type = a7;
    v30 = [v19 copy];
    values = v21->_values;
    v21->_values = v30;

    v32 = [(INCodableEnum *)v21 values];
    v33 = [(INCodableEnum *)v21 valuesByIndexForValues:v32];
    valuesByIndex = v21->_valuesByIndex;
    v21->_valuesByIndex = v33;

    v35 = [v20 copy];
    localizationTable = v21->_localizationTable;
    v21->_localizationTable = v35;
  }

  return v21;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = objc_alloc_init(INCodableEnum);
  v6->_type = [v5 intents_intForKey:@"type"];
  v7 = [v5 intents_stringForKey:@"name"];
  name = v6->_name;
  v6->_name = v7;

  v9 = [v5 intents_stringForKey:@"displayName"];
  displayName = v6->_displayName;
  v6->_displayName = v9;

  v30 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __61__INCodableEnum_makeFromWidgetPlistableRepresentation_error___block_invoke;
  v28[3] = &unk_1E7285B78;
  v11 = v6;
  v29 = v11;
  v12 = [INCodableEnumValue intents_arrayOfWidgetPlistRepresentableInDict:v5 key:@"values" error:&v30 resultTransformer:v28];
  v13 = v30;
  if (v13)
  {
    v14 = v13;
    if (a4)
    {
LABEL_3:
      v15 = v14;
      v16 = 0;
      *a4 = v14;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  objc_storeStrong(&v11->_values, v12);
  v27 = 0;
  v17 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:v5 key:@"_localizationTable" error:&v27];
  v14 = v27;
  localizationTable = v11->_localizationTable;
  v11->_localizationTable = v17;

  if (v14)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_8;
  }

  v19 = [v5 intents_stringForKey:@"displayNameID"];
  displayNameID = v11->_displayNameID;
  v11->_displayNameID = v19;

  v21 = [v5 intents_stringForKey:@"enumNamespace"];
  enumNamespace = v11->_enumNamespace;
  v11->_enumNamespace = v21;

  v23 = [(INCodableEnum *)v11 values];
  v24 = [(INCodableEnum *)v11 valuesByIndexForValues:v23];
  valuesByIndex = v11->_valuesByIndex;
  v11->_valuesByIndex = v24;

  v16 = v11;
LABEL_8:

  return v16;
}

@end