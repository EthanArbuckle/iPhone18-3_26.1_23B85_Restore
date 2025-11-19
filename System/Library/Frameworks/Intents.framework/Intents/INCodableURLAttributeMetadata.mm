@interface INCodableURLAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableURLAttributeMetadata)initWithCoder:(id)a3;
- (id)__INCodableDescriptionDefaultValueKey;
- (id)__INCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionDefaultValueKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INTypeCodableDescriptionDefaultValueKey;
- (id)__INTypeCodableDescriptionKey;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableURLAttributeMetadata

- (id)__INCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableURLAttributeMetadataDefaultValueKey];

  return v3;
}

- (INCodableURLAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = INCodableURLAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"defaultValue"];
    [(INCodableURLAttributeMetadata *)v5 setDefaultValue:v6];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableURLAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_defaultValue forKey:{@"defaultValue", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableURLAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:a3 error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (a4)
    {
      v9 = v7;
      v10 = 0;
      *a4 = v8;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    [v6 intents_setPlistSafeObject:self->_defaultValue forKey:@"defaultValue"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableURLAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v14 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableURLAttributeMetadata *)self __INCodableDescriptionDefaultValueKey];
  v15 = v5;
  v6 = [(INCodableURLAttributeMetadata *)self defaultValue];
  v7 = [v6 absoluteString];
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
  v9.receiver = self;
  v9.super_class = INCodableURLAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v9 updateWithDictionary:v4];
  v5 = [(INCodableURLAttributeMetadata *)self __INCodableDescriptionDefaultValueKey:v9.receiver];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v7 = [MEMORY[0x1E695DFF8] URLWithString:v6];
    v8 = 0;
  }

  else
  {

    v6 = 0;
    v7 = 0;
    v8 = 1;
  }

  objc_storeStrong(&self->_defaultValue, v7);
  if ((v8 & 1) == 0)
  {
  }
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v14.receiver = a1;
  v14.super_class = &OBJC_METACLASS___INCodableURLAttributeMetadata;
  v15 = 0;
  v7 = objc_msgSendSuper2(&v14, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v15);
  v8 = v15;
  v9 = v8;
  if (v8)
  {
    if (a4)
    {
      v10 = v8;
      v11 = 0;
      *a4 = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [v6 intents_urlForKey:@"defaultValue"];
    [v7 setDefaultValue:v12];

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableURLAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INTypeCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableURLAttributeMetadataKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionDefaultValueKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableURLAttributeMetadataDefaultValueKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableURLAttributeMetadataKey];

  return v3;
}

- (id)__INCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableURLAttributeMetadataKey];

  return v3;
}

@end