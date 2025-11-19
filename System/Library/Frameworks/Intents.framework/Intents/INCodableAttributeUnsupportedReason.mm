@interface INCodableAttributeUnsupportedReason
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableAttributeUnsupportedReason)initWithCoder:(id)a3;
- (NSString)predicateFormat;
- (id)__INCodableDescriptionCodeKey;
- (id)__INCodableDescriptionFormatStringDictionaryKey;
- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey;
- (id)__INCodableDescriptionFormatStringIDKey;
- (id)__INCodableDescriptionFormatStringKey;
- (id)__INCodableDescriptionFormatStringLanguageCodeKey;
- (id)__INCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionCodeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INTypeCodableDescriptionCodeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableAttributeUnsupportedReason

- (id)__INCodableDescriptionFormatStringKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringIDKey];

  return v3;
}

- (id)__INCodableDescriptionCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonCodeKey];

  return v3;
}

- (INCodableAttributeUnsupportedReason)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = INCodableAttributeUnsupportedReason;
  v5 = [(INCodableAttributeDialog *)&v9 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"code"];
    code = v5->_code;
    v5->_code = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = INCodableAttributeUnsupportedReason;
  v4 = a3;
  [(INCodableAttributeDialog *)&v6 encodeWithCoder:v4];
  v5 = [(INCodableAttributeUnsupportedReason *)self code:v6.receiver];
  [v4 encodeObject:v5 forKey:@"code"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v13.receiver = self;
  v13.super_class = INCodableAttributeUnsupportedReason;
  v14 = 0;
  v6 = [(INCodableAttributeDialog *)&v13 widgetPlistableRepresentationWithParameters:a3 error:&v14];
  v7 = v14;
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
    v11 = [(INCodableAttributeUnsupportedReason *)self code];
    [v6 intents_setPlistSafeObject:v11 forKey:@"code"];

    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = INCodableAttributeUnsupportedReason;
  v4 = [(INCodableAttributeDialog *)&v12 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableAttributeUnsupportedReason *)self __INCodableDescriptionCodeKey];
  v13 = v5;
  v6 = [(INCodableAttributeUnsupportedReason *)self code];
  v14[0] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = [v4 if_dictionaryByAddingEntriesFromDictionary:v7];

  v9 = [v8 if_dictionaryWithNonEmptyValues];

  v10 = *MEMORY[0x1E69E9840];

  return v9;
}

- (void)updateWithDictionary:(id)a3
{
  v8.receiver = self;
  v8.super_class = INCodableAttributeUnsupportedReason;
  v4 = a3;
  [(INCodableAttributeDialog *)&v8 updateWithDictionary:v4];
  v5 = [(INCodableAttributeUnsupportedReason *)self __INCodableDescriptionCodeKey:v8.receiver];
  v6 = [v4 objectForKeyedSubscript:v5];

  code = self->_code;
  self->_code = v6;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v9.receiver = self, v9.super_class = INCodableAttributeUnsupportedReason, -[INCodableAttributeDialog isEqual:](&v9, sel_isEqual_, v4)))
  {
    v5 = [(INCodableAttributeUnsupportedReason *)self code];
    v6 = [v4 code];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = INCodableAttributeUnsupportedReason;
  v3 = [(INCodableAttributeDialog *)&v7 hash];
  v4 = [(INCodableAttributeUnsupportedReason *)self code];
  v5 = [v4 hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v7.receiver = self;
  v7.super_class = INCodableAttributeUnsupportedReason;
  v4 = [(INCodableAttributeDialog *)&v7 copyWithZone:a3];
  v5 = [(INCodableAttributeUnsupportedReason *)self code];
  [v4 setCode:v5];

  return v4;
}

- (NSString)predicateFormat
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = +[INSchema _supportedTypesDictionary];
  v4 = [(INCodableAttributeDialog *)self _codableAttribute];
  v5 = [v4 _typeString];
  v6 = [v3 objectForKeyedSubscript:v5];

  if (v6)
  {
    v7 = [v6 objectForKeyedSubscript:@"UnsupportedReasons"];
    if (v7)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v8 = v7;
      }

      else
      {
        v8 = 0;
      }
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v26 = v6;
      v27 = v3;
      v14 = *v29;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v29 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v28 + 1) + 8 * i);
          v17 = [v16 objectForKeyedSubscript:{@"Code", v26, v27, v28}];
          if (v17)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = v17;
            }

            else
            {
              v18 = 0;
            }
          }

          else
          {
            v18 = 0;
          }

          v19 = v18;

          v20 = [(INCodableAttributeUnsupportedReason *)self code];
          v21 = [v19 isEqualToString:v20];

          if (v21)
          {
            v22 = [v16 objectForKeyedSubscript:@"Predicate"];
            if (v22)
            {
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v23 = v22;
              }

              else
              {
                v23 = 0;
              }
            }

            else
            {
              v23 = 0;
            }

            v6 = v26;
            v3 = v27;
            v9 = v23;

            goto LABEL_29;
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v28 objects:v32 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }

      v9 = 0;
      v6 = v26;
      v3 = v27;
    }

    else
    {
      v9 = 0;
    }

LABEL_29:
  }

  else
  {
    v9 = 0;
  }

  v24 = *MEMORY[0x1E69E9840];

  return v9;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v15.receiver = a1;
  v15.super_class = &OBJC_METACLASS___INCodableAttributeUnsupportedReason;
  v16 = 0;
  v7 = objc_msgSendSuper2(&v15, sel_makeFromWidgetPlistableRepresentation_error_, v6, &v16);
  v8 = v16;
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
    v12 = [v6 intents_stringForKey:@"code"];
    v13 = v7[5];
    v7[5] = v12;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonCodeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonCodeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonKey];

  return v3;
}

- (id)__INCodableDescriptionKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringDictionaryLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringDictionaryKey];

  return v3;
}

@end