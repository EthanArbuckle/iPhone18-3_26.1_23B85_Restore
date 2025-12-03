@interface INCodableAttributeUnsupportedReason
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableAttributeUnsupportedReason)initWithCoder:(id)coder;
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
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableAttributeUnsupportedReason

- (id)__INCodableDescriptionFormatStringKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonFormatStringKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringKey];

  return __INCodableAttributeUnsupportedReasonFormatStringKey;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonFormatStringIDKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringIDKey];

  return __INCodableAttributeUnsupportedReasonFormatStringIDKey;
}

- (id)__INCodableDescriptionCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonCodeKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonCodeKey];

  return __INCodableAttributeUnsupportedReasonCodeKey;
}

- (INCodableAttributeUnsupportedReason)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = INCodableAttributeUnsupportedReason;
  v5 = [(INCodableAttributeDialog *)&v9 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"code"];
    code = v5->_code;
    v5->_code = v6;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = INCodableAttributeUnsupportedReason;
  coderCopy = coder;
  [(INCodableAttributeDialog *)&v6 encodeWithCoder:coderCopy];
  v5 = [(INCodableAttributeUnsupportedReason *)self code:v6.receiver];
  [coderCopy encodeObject:v5 forKey:@"code"];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v13.receiver = self;
  v13.super_class = INCodableAttributeUnsupportedReason;
  v14 = 0;
  v6 = [(INCodableAttributeDialog *)&v13 widgetPlistableRepresentationWithParameters:parameters error:&v14];
  v7 = v14;
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
    code = [(INCodableAttributeUnsupportedReason *)self code];
    [v6 intents_setPlistSafeObject:code forKey:@"code"];

    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v14[1] = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = INCodableAttributeUnsupportedReason;
  v4 = [(INCodableAttributeDialog *)&v12 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionCodeKey = [(INCodableAttributeUnsupportedReason *)self __INCodableDescriptionCodeKey];
  v13 = __INCodableDescriptionCodeKey;
  code = [(INCodableAttributeUnsupportedReason *)self code];
  v14[0] = code;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  v8 = [v4 if_dictionaryByAddingEntriesFromDictionary:v7];

  if_dictionaryWithNonEmptyValues = [v8 if_dictionaryWithNonEmptyValues];

  v10 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v8.receiver = self;
  v8.super_class = INCodableAttributeUnsupportedReason;
  dictionaryCopy = dictionary;
  [(INCodableAttributeDialog *)&v8 updateWithDictionary:dictionaryCopy];
  v5 = [(INCodableAttributeUnsupportedReason *)self __INCodableDescriptionCodeKey:v8.receiver];
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

  code = self->_code;
  self->_code = v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v9.receiver = self, v9.super_class = INCodableAttributeUnsupportedReason, -[INCodableAttributeDialog isEqual:](&v9, sel_isEqual_, equalCopy)))
  {
    code = [(INCodableAttributeUnsupportedReason *)self code];
    code2 = [equalCopy code];
    v7 = [code isEqualToString:code2];
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
  code = [(INCodableAttributeUnsupportedReason *)self code];
  v5 = [code hash];

  return v5 ^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v7.receiver = self;
  v7.super_class = INCodableAttributeUnsupportedReason;
  v4 = [(INCodableAttributeDialog *)&v7 copyWithZone:zone];
  code = [(INCodableAttributeUnsupportedReason *)self code];
  [v4 setCode:code];

  return v4;
}

- (NSString)predicateFormat
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = +[INSchema _supportedTypesDictionary];
  _codableAttribute = [(INCodableAttributeDialog *)self _codableAttribute];
  _typeString = [_codableAttribute _typeString];
  v6 = [v3 objectForKeyedSubscript:_typeString];

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

          code = [(INCodableAttributeUnsupportedReason *)self code];
          v21 = [v19 isEqualToString:code];

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

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v15.receiver = self;
  v15.super_class = &OBJC_METACLASS___INCodableAttributeUnsupportedReason;
  v16 = 0;
  v7 = objc_msgSendSuper2(&v15, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v16);
  v8 = v16;
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
    v12 = [representationCopy intents_stringForKey:@"code"];
    v13 = v7[5];
    v7[5] = v12;

    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonCodeKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonCodeKey];

  return __INCodableAttributeUnsupportedReasonCodeKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonKey];

  return __INCodableAttributeUnsupportedReasonKey;
}

- (id)__INIntentResponseCodableDescriptionCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonCodeKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonCodeKey];

  return __INCodableAttributeUnsupportedReasonCodeKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonKey];

  return __INCodableAttributeUnsupportedReasonKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonKey];

  return __INCodableAttributeUnsupportedReasonKey;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonFormatStringLanguageCodeKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringLanguageCodeKey];

  return __INCodableAttributeUnsupportedReasonFormatStringLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonFormatStringDictionaryLanguageCodeKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringDictionaryLanguageCodeKey];

  return __INCodableAttributeUnsupportedReasonFormatStringDictionaryLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributeUnsupportedReasonFormatStringDictionaryKey = [objc_opt_class() __INCodableAttributeUnsupportedReasonFormatStringDictionaryKey];

  return __INCodableAttributeUnsupportedReasonFormatStringDictionaryKey;
}

@end