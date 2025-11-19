@interface INCodableFileAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (INCodableFileAttributeMetadata)initWithCoder:(id)a3;
- (NSArray)UTIs;
- (id)__INCodableDescriptionCustomUTIsKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionCustomUTIsKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionCustomUTIsKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableFileAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return v3;
}

- (id)__INCodableDescriptionCustomUTIsKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return v3;
}

- (INCodableFileAttributeMetadata)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INCodableFileAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v15 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"customUTIs"];
    customUTIs = v5->_customUTIs;
    v5->_customUTIs = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableFileAttributeMetadata;
  v4 = a3;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:v4];
  [v4 encodeObject:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [v4 encodeObject:self->_customUTIs forKey:@"customUTIs"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableFileAttributeMetadata;
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
    [v6 intents_setPlistSafeObject:self->_type forKey:@"type"];
    [v6 intents_setPlistSafeObject:self->_customUTIs forKey:@"customUTIs"];
    v10 = [v6 copy];
  }

  return v10;
}

- (NSArray)UTIs
{
  v28[1] = *MEMORY[0x1E69E9840];
  v3 = [(INCodableFileAttributeMetadata *)self type];
  if ([v3 isEqualToString:@"PlainText"])
  {
    v4 = [*MEMORY[0x1E6982F40] identifier];
    v28[0] = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v28;
LABEL_7:
    v7 = [v5 arrayWithObjects:v6 count:1];
LABEL_8:

    goto LABEL_9;
  }

  if ([v3 isEqualToString:@"RichText"])
  {
    v4 = [*MEMORY[0x1E6982F90] identifier];
    v27 = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v27;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"Image"])
  {
    v4 = [*MEMORY[0x1E6982E30] identifier];
    v26 = v4;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v26;
    goto LABEL_7;
  }

  if ([v3 isEqualToString:@"Custom"])
  {
    v20 = v3;
    v10 = [(INCodableFileAttributeMetadata *)self customUTIs];
    v11 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v4 = v10;
    v12 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v4);
          }

          v16 = *(*(&v21 + 1) + 8 * i);
          if (v16)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v17 = v16;
            }

            else
            {
              v17 = 0;
            }
          }

          else
          {
            v17 = 0;
          }

          v18 = v17;

          v19 = [v18 objectForKey:@"UTI"];

          if (v19)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              [v11 addObject:v19];
            }
          }
        }

        v13 = [v4 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v7 = [v11 copy];
    v3 = v20;
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_9:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = INCodableFileAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v16 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v17[0] = v5;
  v6 = [(INCodableFileAttributeMetadata *)self type];
  v7 = v6;
  if (!v6)
  {
    v7 = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = v7;
  v8 = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionCustomUTIsKey];
  v17[1] = v8;
  v9 = [(INCodableFileAttributeMetadata *)self customUTIs];
  v10 = v9;
  if (!v9)
  {
    v10 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [v4 if_dictionaryByAddingEntriesFromDictionary:v11];

  if (!v9)
  {
  }

  if (!v6)
  {
  }

  v13 = [v12 if_dictionaryWithNonEmptyValues];

  v14 = *MEMORY[0x1E69E9840];

  return v13;
}

- (void)updateWithDictionary:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = INCodableFileAttributeMetadata;
  [(INCodableAttributeMetadata *)&v15 updateWithDictionary:v4];
  v5 = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionTypeKey];
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

  type = self->_type;
  self->_type = v8;

  v10 = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionCustomUTIsKey];
  v11 = [v4 objectForKeyedSubscript:v10];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
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

  v13 = v12;

  customUTIs = self->_customUTIs;
  self->_customUTIs = v13;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v17.receiver = a1;
  v17.super_class = &OBJC_METACLASS___INCodableFileAttributeMetadata;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v18);
  v8 = v18;
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
    v12 = [v6 intents_stringForKey:@"type"];
    v13 = v7[5];
    v7[5] = v12;

    v14 = [v6 intents_safeObjectForKey:@"customUTIs" ofType:objc_opt_class()];
    v15 = v7[6];
    v7[6] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionCustomUTIsKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionCustomUTIsKey
{
  v2 = [(INCodableAttributeMetadata *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return v3;
}

@end