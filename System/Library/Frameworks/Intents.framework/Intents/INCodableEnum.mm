@interface INCodableEnum
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableEnum)initWithCoder:(id)coder;
- (INCodableEnum)initWithName:(id)name displayName:(id)displayName displayNameID:(id)d enumNamespace:(id)namespace type:(int64_t)type values:(id)values localizationTable:(id)table;
- (NSString)localizedDisplayName;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)localizedDisplayNameWithLocalizer:(id)localizer;
- (id)valueForIndex:(unint64_t)index;
- (id)valuesByIndexForValues:(id)values;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableEnum

- (unint64_t)hash
{
  enumNamespace = [(INCodableEnum *)self enumNamespace];
  v4 = [enumNamespace hash];
  name = [(INCodableEnum *)self name];
  v6 = [name hash] ^ v4;
  displayName = [(INCodableEnum *)self displayName];
  v8 = [displayName hash];
  displayNameID = [(INCodableEnum *)self displayNameID];
  v10 = v6 ^ v8 ^ [displayNameID hash];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[INCodableEnum type](self, "type")}];
  v12 = [v11 hash];
  values = [(INCodableEnum *)self values];
  v14 = v10 ^ [values hash];
  _localizationTable = [(INCodableEnum *)self _localizationTable];
  v16 = v14 ^ [_localizationTable hash];

  return v16 ^ v12;
}

- (INCodableEnum)initWithCoder:(id)coder
{
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = INCodableEnum;
  v5 = [(INCodableEnum *)&v32 init];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"name"];
    name = v5->_name;
    v5->_name = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = [v8 setWithObjects:{v9, objc_opt_class(), 0}];
    v11 = [coderCopy decodeObjectOfClasses:v10 forKey:@"displayName"];
    displayName = v5->_displayName;
    v5->_displayName = v11;

    v13 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayNameID"];
    displayNameID = v5->_displayNameID;
    v5->_displayNameID = v13;

    v15 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"enumNamespace"];
    enumNamespace = v5->_enumNamespace;
    v5->_enumNamespace = v15;

    v17 = MEMORY[0x1E695DFD8];
    v18 = objc_opt_class();
    v19 = [v17 setWithObjects:{v18, objc_opt_class(), 0}];
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"values"];
    values = v5->_values;
    v5->_values = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_localizationTable"];
    localizationTable = v5->_localizationTable;
    v5->_localizationTable = v22;

    values = [(INCodableEnum *)v5 values];
    v25 = [(INCodableEnum *)v5 valuesByIndexForValues:values];
    valuesByIndex = v5->_valuesByIndex;
    v5->_valuesByIndex = v25;

    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];

    if (v27)
    {
      v28 = objc_alloc_init(INCodableLocalizationTable);
      v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizationTable"];
      [(INCodableLocalizationTable *)v28 setTableName:v29];

      v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_bundleIdentifier"];
      [(INCodableLocalizationTable *)v28 setBundleIdentifier:v30];

      [(INCodableEnum *)v5 _setLocalizationTable:v28];
    }
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInteger:-[INCodableEnum type](self forKey:{"type"), @"type"}];
  name = [(INCodableEnum *)self name];
  [coderCopy encodeObject:name forKey:@"name"];

  displayName = [(INCodableEnum *)self displayName];
  [coderCopy encodeObject:displayName forKey:@"displayName"];

  displayNameID = [(INCodableEnum *)self displayNameID];
  [coderCopy encodeObject:displayNameID forKey:@"displayNameID"];

  enumNamespace = [(INCodableEnum *)self enumNamespace];
  [coderCopy encodeObject:enumNamespace forKey:@"enumNamespace"];

  values = [(INCodableEnum *)self values];
  [coderCopy encodeObject:values forKey:@"values"];

  _localizationTable = [(INCodableEnum *)self _localizationTable];
  [coderCopy encodeObject:_localizationTable forKey:@"_localizationTable"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v6 = MEMORY[0x1E695DF90];
  parametersCopy = parameters;
  dictionary = [v6 dictionary];
  [dictionary intents_setIntegerIfNonZero:-[INCodableEnum type](self forKey:{"type"), @"type"}];
  name = [(INCodableEnum *)self name];
  [dictionary intents_setPlistSafeObject:name forKey:@"name"];

  displayName = [(INCodableEnum *)self displayName];
  v11 = [displayName intents_encodeForPlistRepresentationWithParameters:parametersCopy];
  [dictionary intents_setPlistSafeObject:v11 forKey:@"displayName"];

  displayNameID = [(INCodableEnum *)self displayNameID];
  [dictionary intents_setPlistSafeObject:displayNameID forKey:@"displayNameID"];

  enumNamespace = [(INCodableEnum *)self enumNamespace];
  [dictionary intents_setPlistSafeObject:enumNamespace forKey:@"enumNamespace"];

  values = [(INCodableEnum *)self values];
  v21 = 0;
  [dictionary intents_setArrayOfWidgetPlistRepresentable:values forKey:@"values" parameters:parametersCopy error:&v21];

  v15 = v21;
  if (v15)
  {
    if (error)
    {
LABEL_3:
      v16 = v15;
      v17 = 0;
      *error = v15;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  _localizationTable = [(INCodableEnum *)self _localizationTable];
  v20 = 0;
  [dictionary intents_setWidgetPlistRepresentable:_localizationTable forKey:@"_localizationTable" error:&v20];
  v15 = v20;

  if (v15)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = 0;
    goto LABEL_8;
  }

  v17 = dictionary;
LABEL_8:

  return v17;
}

- (id)valuesByIndexForValues:(id)values
{
  v19 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = valuesCopy;
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

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v43 = *MEMORY[0x1E69E9840];
  localizerCopy = localizer;
  v5 = MEMORY[0x1E695DF70];
  values = [(INCodableEnum *)self values];
  v7 = [v5 arrayWithCapacity:{objc_msgSend(values, "count")}];

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  values2 = [(INCodableEnum *)self values];
  v9 = [values2 countByEnumeratingWithState:&v36 objects:v42 count:16];
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
          objc_enumerationMutation(values2);
        }

        v13 = [*(*(&v36 + 1) + 8 * i) dictionaryRepresentationWithLocalizer:localizerCopy];
        [v7 addObject:v13];
      }

      v10 = [values2 countByEnumeratingWithState:&v36 objects:v42 count:16];
    }

    while (v10);
  }

  __NameKey = [objc_opt_class() __NameKey];
  v40[0] = __NameKey;
  name = [(INCodableEnum *)self name];
  v15 = name;
  if (!name)
  {
    name = [MEMORY[0x1E695DFB0] null];
  }

  v34 = v15;
  v31 = name;
  v41[0] = name;
  __DisplayNameKey = [objc_opt_class() __DisplayNameKey];
  v40[1] = __DisplayNameKey;
  null = [(INCodableEnum *)self localizedDisplayNameWithLocalizer:localizerCopy];
  v17 = null;
  if (!null)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v30 = null;
  v41[1] = null;
  __DisplayNameIDKey = [objc_opt_class() __DisplayNameIDKey];
  v40[2] = __DisplayNameIDKey;
  displayNameID = [(INCodableEnum *)self displayNameID];
  null2 = displayNameID;
  if (!displayNameID)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v41[2] = null2;
  __TypeKey = [objc_opt_class() __TypeKey];
  v40[3] = __TypeKey;
  type = [(INCodableEnum *)self type];
  v22 = @"State";
  if (type != 1)
  {
    v22 = 0;
  }

  if (type == 2)
  {
    v22 = @"Options";
  }

  v23 = v22;
  null3 = v23;
  if (!v23)
  {
    null3 = [MEMORY[0x1E695DFB0] null];
  }

  v41[3] = null3;
  __ValuesKey = [objc_opt_class() __ValuesKey];
  v40[4] = __ValuesKey;
  v41[4] = v7;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v41 forKeys:v40 count:5];

  if (!v23)
  {
  }

  if (!displayNameID)
  {
  }

  if (!v17)
  {
  }

  if (!v34)
  {
  }

  if_dictionaryWithNonEmptyValues = [v26 if_dictionaryWithNonEmptyValues];

  v28 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (id)dictionaryRepresentation
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnum *)self dictionaryRepresentationWithLocalizer:v3];

  return v4;
}

- (void)updateWithDictionary:(id)dictionary
{
  v42 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  __NameKey = [objc_opt_class() __NameKey];
  v6 = [dictionaryCopy objectForKey:__NameKey];
  name = self->_name;
  self->_name = v6;

  __DisplayNameKey = [objc_opt_class() __DisplayNameKey];
  v9 = [dictionaryCopy objectForKey:__DisplayNameKey];
  displayName = self->_displayName;
  self->_displayName = v9;

  __DisplayNameIDKey = [objc_opt_class() __DisplayNameIDKey];
  v12 = [dictionaryCopy objectForKey:__DisplayNameIDKey];
  displayNameID = self->_displayNameID;
  self->_displayNameID = v12;

  selfCopy = self;
  __TypeKey = [objc_opt_class() __TypeKey];
  v15 = [dictionaryCopy objectForKey:__TypeKey];
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

  __ValuesKey = [objc_opt_class() __ValuesKey];
  v35 = dictionaryCopy;
  v19 = [dictionaryCopy objectForKey:__ValuesKey];

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
        [(INCodableEnumValue *)v28 _setCodableEnum:selfCopy];
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
  valuesByIndex = selfCopy->_valuesByIndex;
  selfCopy->_valuesByIndex = v30;

  v32 = [v20 copy];
  values = selfCopy->_values;
  selfCopy->_values = v32;

  v34 = *MEMORY[0x1E69E9840];
}

- (id)localizedDisplayNameWithLocalizer:(id)localizer
{
  localizerCopy = localizer;
  displayNameID = [(INCodableEnum *)self displayNameID];
  displayName = [(INCodableEnum *)self displayName];
  _localizationTable = [(INCodableEnum *)self _localizationTable];
  v8 = INLocalizedStringFromCodable(displayNameID, displayName, _localizationTable, localizerCopy, 0);

  return v8;
}

- (NSString)localizedDisplayName
{
  v3 = objc_opt_new();
  v4 = [(INCodableEnum *)self localizedDisplayNameWithLocalizer:v3];

  return v4;
}

- (id)valueForIndex:(unint64_t)index
{
  valuesByIndex = self->_valuesByIndex;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index];
  v5 = [(NSDictionary *)valuesByIndex objectForKeyedSubscript:v4];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    type = [(INCodableEnum *)self type];
    if (type == [equalCopy type])
    {
      name = [(INCodableEnum *)self name];
      name2 = [equalCopy name];
      if (![name isEqualToString:name2])
      {
        v12 = 0;
        goto LABEL_26;
      }

      displayName = self->_displayName;
      if (displayName || ([equalCopy displayName], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        displayName = [(INCodableEnum *)self displayName];
        displayName2 = [equalCopy displayName];
        if (![displayName isEqualToString:displayName2])
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

      displayNameID = [(INCodableEnum *)self displayNameID];
      displayNameID2 = [equalCopy displayNameID];
      if ([displayNameID isEqualToString:displayNameID2])
      {
        v26 = v3;
        enumNamespace = [(INCodableEnum *)self enumNamespace];
        enumNamespace2 = [equalCopy enumNamespace];
        v25 = enumNamespace;
        if ([enumNamespace isEqualToString:enumNamespace2])
        {
          values = [(INCodableEnum *)self values];
          values2 = [equalCopy values];
          v23 = values;
          v18 = values;
          v19 = values2;
          if ([v18 isEqual:values2])
          {
            _localizationTable = [(INCodableEnum *)self _localizationTable];
            _localizationTable2 = [equalCopy _localizationTable];
            v12 = [_localizationTable isEqual:_localizationTable2];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [INCodableEnum allocWithZone:zone];
  name = [(INCodableEnum *)self name];
  displayName = [(INCodableEnum *)self displayName];
  displayNameID = [(INCodableEnum *)self displayNameID];
  enumNamespace = [(INCodableEnum *)self enumNamespace];
  type = [(INCodableEnum *)self type];
  values = [(INCodableEnum *)self values];
  _localizationTable = [(INCodableEnum *)self _localizationTable];
  v12 = [(INCodableEnum *)v4 initWithName:name displayName:displayName displayNameID:displayNameID enumNamespace:enumNamespace type:type values:values localizationTable:_localizationTable];

  return v12;
}

- (INCodableEnum)initWithName:(id)name displayName:(id)displayName displayNameID:(id)d enumNamespace:(id)namespace type:(int64_t)type values:(id)values localizationTable:(id)table
{
  nameCopy = name;
  displayNameCopy = displayName;
  dCopy = d;
  namespaceCopy = namespace;
  valuesCopy = values;
  tableCopy = table;
  v38.receiver = self;
  v38.super_class = INCodableEnum;
  v21 = [(INCodableEnum *)&v38 init];
  if (v21)
  {
    v22 = [nameCopy copy];
    name = v21->_name;
    v21->_name = v22;

    v24 = [displayNameCopy copy];
    displayName = v21->_displayName;
    v21->_displayName = v24;

    v26 = [dCopy copy];
    displayNameID = v21->_displayNameID;
    v21->_displayNameID = v26;

    v28 = [namespaceCopy copy];
    enumNamespace = v21->_enumNamespace;
    v21->_enumNamespace = v28;

    v21->_type = type;
    v30 = [valuesCopy copy];
    values = v21->_values;
    v21->_values = v30;

    values = [(INCodableEnum *)v21 values];
    v33 = [(INCodableEnum *)v21 valuesByIndexForValues:values];
    valuesByIndex = v21->_valuesByIndex;
    v21->_valuesByIndex = v33;

    v35 = [tableCopy copy];
    localizationTable = v21->_localizationTable;
    v21->_localizationTable = v35;
  }

  return v21;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v6 = objc_alloc_init(INCodableEnum);
  v6->_type = [representationCopy intents_intForKey:@"type"];
  v7 = [representationCopy intents_stringForKey:@"name"];
  name = v6->_name;
  v6->_name = v7;

  v9 = [representationCopy intents_stringForKey:@"displayName"];
  displayName = v6->_displayName;
  v6->_displayName = v9;

  v30 = 0;
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __61__INCodableEnum_makeFromWidgetPlistableRepresentation_error___block_invoke;
  v28[3] = &unk_1E7285B78;
  v11 = v6;
  v29 = v11;
  v12 = [INCodableEnumValue intents_arrayOfWidgetPlistRepresentableInDict:representationCopy key:@"values" error:&v30 resultTransformer:v28];
  v13 = v30;
  if (v13)
  {
    v14 = v13;
    if (error)
    {
LABEL_3:
      v15 = v14;
      v16 = 0;
      *error = v14;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  objc_storeStrong(&v11->_values, v12);
  v27 = 0;
  v17 = [INCodableLocalizationTable intents_widgetPlistRepresentableInDict:representationCopy key:@"_localizationTable" error:&v27];
  v14 = v27;
  localizationTable = v11->_localizationTable;
  v11->_localizationTable = v17;

  if (v14)
  {
    if (error)
    {
      goto LABEL_3;
    }

LABEL_6:
    v16 = 0;
    goto LABEL_8;
  }

  v19 = [representationCopy intents_stringForKey:@"displayNameID"];
  displayNameID = v11->_displayNameID;
  v11->_displayNameID = v19;

  v21 = [representationCopy intents_stringForKey:@"enumNamespace"];
  enumNamespace = v11->_enumNamespace;
  v11->_enumNamespace = v21;

  values = [(INCodableEnum *)v11 values];
  v24 = [(INCodableEnum *)v11 valuesByIndexForValues:values];
  valuesByIndex = v11->_valuesByIndex;
  v11->_valuesByIndex = v24;

  v16 = v11;
LABEL_8:

  return v16;
}

@end