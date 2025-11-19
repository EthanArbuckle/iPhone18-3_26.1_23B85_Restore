@interface INCodablePlacemarkAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodablePlacemarkAttributeMetadata)initWithCoder:(id)a3;
- (id)__INCodableDescriptionKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodablePlacemarkAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodablePlacemarkAttributeMetadataTypeKey];

  return v3;
}

- (INCodablePlacemarkAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = INCodablePlacemarkAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v7 initWithCoder:v4];
  if (v5)
  {
    -[INCodablePlacemarkAttributeMetadata setType:](v5, "setType:", [v4 decodeIntegerForKey:@"type"]);
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodablePlacemarkAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodablePlacemarkAttributeMetadata;
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
    [v6 intents_setIntegerIfNonZero:self->_type forKey:@"type"];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v17[1] = *MEMORY[0x1E69E9840];
  v15.receiver = self;
  v15.super_class = INCodablePlacemarkAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v15 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodablePlacemarkAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v16 = v5;
  v6 = [(INCodablePlacemarkAttributeMetadata *)self type];
  v7 = @"Name";
  if (v6 == 1)
  {
    v7 = @"Address";
  }

  if (v6 == 2)
  {
    v7 = @"City";
  }

  v17[0] = v7;
  v8 = MEMORY[0x1E695DF20];
  v9 = v7;
  v10 = [v8 dictionaryWithObjects:v17 forKeys:&v16 count:1];

  v11 = [v4 if_dictionaryByAddingEntriesFromDictionary:v10];

  v12 = [v11 if_dictionaryWithNonEmptyValues];

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (void)updateWithDictionary:(id)a3
{
  v10.receiver = self;
  v10.super_class = INCodablePlacemarkAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v10 updateWithDictionary:v4];
  v5 = [(INCodablePlacemarkAttributeMetadata *)self __INCodableDescriptionTypeKey:v10.receiver];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  v9 = INCodablePlacemarkAttributeMetadataTypeWithString(v8);
  self->_type = v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___INCodablePlacemarkAttributeMetadata;
  v14 = 0;
  v7 = objc_msgSendSuper2(&v13, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v14);
  v8 = v14;
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
    [v7 setType:{objc_msgSend(v6, "intents_intForKey:", @"type"}];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodablePlacemarkAttributeMetadataTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodablePlacemarkAttributeMetadataKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodablePlacemarkAttributeMetadataTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodablePlacemarkAttributeMetadataKey];

  return v3;
}

- (id)__INCodableDescriptionKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodablePlacemarkAttributeMetadataKey];

  return v3;
}

@end