@interface INCodableEnumAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableEnumAttributeMetadata)initWithCoder:(id)a3;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionKey;
- (id)defaultValueForIntentDefaultValueProvider;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableEnumAttributeMetadata

- (id)__INCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeMetadataDefaultValueKey];

  return v3;
}

- (INCodableEnumAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INCodableEnumAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    defaultValue = v5->_defaultValue;
    v5->_defaultValue = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableEnumAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_defaultValue forKey:{@"defaultValue", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = self;
  v15.super_class = INCodableEnumAttributeMetadata;
  v16 = 0;
  v7 = [(INCodableAttributeMetadata *)&v15 widgetPlistableRepresentationWithParameters:v6 error:&v16];
  v8 = v16;
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *a4 = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  defaultValue = self->_defaultValue;
  v14 = 0;
  [v7 intents_setWidgetPlistRepresentable:defaultValue forKey:@"defaultValue" parameters:v6 error:&v14];
  v9 = v14;
  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = [v7 copy];
LABEL_8:

  return v11;
}

- (id)defaultValueForIntentDefaultValueProvider
{
  v2 = MEMORY[0x1E696AD98];
  v3 = [(INCodableEnumAttributeMetadata *)self defaultValue];
  v4 = [v2 numberWithInteger:{objc_msgSend(v3, "index")}];

  return v4;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableEnumAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v14 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableEnumAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v15 = v5;
  v6 = [(INCodableEnumAttributeMetadata *)self defaultValue];
  v7 = [v6 name];
  v8 = v7;
  if (!v7)
  {
    v8 = [MEMORY[0x1E695DFB0] null];
  }

  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v4 if_dictionaryByAddingEntriesFromDictionary:v9];

  if (!v7)
  {
  }

  v11 = [v10 if_dictionaryWithNonEmptyValues];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)updateWithDictionary:(id)a3
{
  v14.receiver = self;
  v14.super_class = INCodableEnumAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v14 updateWithDictionary:v4];
  v5 = [(INCodableAttributeMetadata *)self codableAttribute:v14.receiver];
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  v8 = [(INCodableEnumAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v9 = [v4 objectForKeyedSubscript:v8];

  if (v9)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v11 = v10;

  v12 = [v7 valueWithName:v11];

  defaultValue = self->_defaultValue;
  self->_defaultValue = v12;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v16.receiver = a1;
  v16.super_class = &OBJC_METACLASS___INCodableEnumAttributeMetadata;
  v17 = 0;
  v7 = objc_msgSendSuper2(&v16, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v17);
  v8 = v17;
  if (v8)
  {
    v9 = v8;
    if (a4)
    {
LABEL_3:
      v10 = v9;
      v11 = 0;
      *a4 = v9;
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v15 = 0;
  v12 = [INCodableEnumValue intents_widgetPlistRepresentableInDict:v6 key:@"defaultValue" error:&v15];
  v9 = v15;
  v13 = v7[5];
  v7[5] = v12;

  if (v9)
  {
    if (a4)
    {
      goto LABEL_3;
    }

LABEL_6:
    v11 = 0;
    goto LABEL_8;
  }

  v11 = v7;
LABEL_8:

  return v11;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeMetadataKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeMetadataKey];

  return v3;
}

- (id)__INCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableEnumAttributeMetadataKey];

  return v3;
}

@end