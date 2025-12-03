@interface INCodableFileAttributeMetadata
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (INCodableFileAttributeMetadata)initWithCoder:(id)coder;
- (NSArray)UTIs;
- (id)__INCodableDescriptionCustomUTIsKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionCustomUTIsKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionCustomUTIsKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableFileAttributeMetadata

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataTypeKey = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return __INCodableFileAttributeMetadataTypeKey;
}

- (id)__INCodableDescriptionCustomUTIsKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataCustomUTIsKey = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return __INCodableFileAttributeMetadataCustomUTIsKey;
}

- (INCodableFileAttributeMetadata)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = INCodableFileAttributeMetadata;
  v5 = [(INCodableAttributeMetadata *)&v15 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"type"];
    type = v5->_type;
    v5->_type = v6;

    v8 = MEMORY[0x1E695DFD8];
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
    v12 = [coderCopy decodeObjectOfClasses:v11 forKey:@"customUTIs"];
    customUTIs = v5->_customUTIs;
    v5->_customUTIs = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableFileAttributeMetadata;
  coderCopy = coder;
  [(INCodableAttributeMetadata *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_type forKey:{@"type", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_customUTIs forKey:@"customUTIs"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableFileAttributeMetadata;
  v13 = 0;
  v6 = [(INCodableAttributeMetadata *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
  v7 = v13;
  v8 = v7;
  if (v7)
  {
    if (error)
    {
      v9 = v7;
      v10 = 0;
      *error = v8;
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
  type = [(INCodableFileAttributeMetadata *)self type];
  if ([type isEqualToString:@"PlainText"])
  {
    identifier = [*MEMORY[0x1E6982F40] identifier];
    v28[0] = identifier;
    v5 = MEMORY[0x1E695DEC8];
    v6 = v28;
LABEL_7:
    v7 = [v5 arrayWithObjects:v6 count:1];
LABEL_8:

    goto LABEL_9;
  }

  if ([type isEqualToString:@"RichText"])
  {
    identifier = [*MEMORY[0x1E6982F90] identifier];
    v27 = identifier;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v27;
    goto LABEL_7;
  }

  if ([type isEqualToString:@"Image"])
  {
    identifier = [*MEMORY[0x1E6982E30] identifier];
    v26 = identifier;
    v5 = MEMORY[0x1E695DEC8];
    v6 = &v26;
    goto LABEL_7;
  }

  if ([type isEqualToString:@"Custom"])
  {
    v20 = type;
    customUTIs = [(INCodableFileAttributeMetadata *)self customUTIs];
    v11 = objc_opt_new();
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    identifier = customUTIs;
    v12 = [identifier countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(identifier);
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

        v13 = [identifier countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    v7 = [v11 copy];
    type = v20;
    goto LABEL_8;
  }

  v7 = MEMORY[0x1E695E0F0];
LABEL_9:

  v8 = *MEMORY[0x1E69E9840];

  return v7;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v18[2] = *MEMORY[0x1E69E9840];
  v16.receiver = self;
  v16.super_class = INCodableFileAttributeMetadata;
  v4 = [(INCodableAttributeMetadata *)&v16 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionTypeKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v17[0] = __INCodableDescriptionTypeKey;
  type = [(INCodableFileAttributeMetadata *)self type];
  null = type;
  if (!type)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v18[0] = null;
  __INCodableDescriptionCustomUTIsKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionCustomUTIsKey];
  v17[1] = __INCodableDescriptionCustomUTIsKey;
  customUTIs = [(INCodableFileAttributeMetadata *)self customUTIs];
  null2 = customUTIs;
  if (!customUTIs)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v18[1] = null2;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v12 = [v4 if_dictionaryByAddingEntriesFromDictionary:v11];

  if (!customUTIs)
  {
  }

  if (!type)
  {
  }

  if_dictionaryWithNonEmptyValues = [v12 if_dictionaryWithNonEmptyValues];

  v14 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v15.receiver = self;
  v15.super_class = INCodableFileAttributeMetadata;
  [(INCodableAttributeMetadata *)&v15 updateWithDictionary:dictionaryCopy];
  __INCodableDescriptionTypeKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionTypeKey];
  v6 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionTypeKey];

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

  __INCodableDescriptionCustomUTIsKey = [(INCodableFileAttributeMetadata *)self __INCodableDescriptionCustomUTIsKey];
  v11 = [dictionaryCopy objectForKeyedSubscript:__INCodableDescriptionCustomUTIsKey];

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

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v17.receiver = self;
  v17.super_class = &OBJC_METACLASS___INCodableFileAttributeMetadata;
  v18 = 0;
  v7 = objc_msgSendSuper2(&v17, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v18);
  v8 = v18;
  v9 = v8;
  if (v8)
  {
    if (error)
    {
      v10 = v8;
      v11 = 0;
      *error = v9;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v12 = [representationCopy intents_stringForKey:@"type"];
    v13 = v7[5];
    v7[5] = v12;

    v14 = [representationCopy intents_safeObjectForKey:@"customUTIs" ofType:objc_opt_class()];
    v15 = v7[6];
    v7[6] = v14;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataTypeKey = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return __INCodableFileAttributeMetadataTypeKey;
}

- (id)__INTypeCodableDescriptionCustomUTIsKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataCustomUTIsKey = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return __INCodableFileAttributeMetadataCustomUTIsKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataTypeKey = [objc_opt_class() __INCodableFileAttributeMetadataTypeKey];

  return __INCodableFileAttributeMetadataTypeKey;
}

- (id)__INIntentResponseCodableDescriptionCustomUTIsKey
{
  _codableDescription = [(INCodableAttributeMetadata *)self _codableDescription];
  __INCodableFileAttributeMetadataCustomUTIsKey = [objc_opt_class() __INCodableFileAttributeMetadataCustomUTIsKey];

  return __INCodableFileAttributeMetadataCustomUTIsKey;
}

@end