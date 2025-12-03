@interface INCodableAttributePromptDialog
+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error;
- (BOOL)isEqual:(id)equal;
- (INCodableAttributePromptDialog)initWithCoder:(id)coder;
- (id)__INCodableDescriptionFormatStringDictionaryKey;
- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey;
- (id)__INCodableDescriptionFormatStringIDKey;
- (id)__INCodableDescriptionFormatStringKey;
- (id)__INCodableDescriptionFormatStringLanguageCodeKey;
- (id)__INCodableDescriptionKey;
- (id)__INCodableDescriptionTypeKey;
- (id)__INIntentResponseCodableDescriptionKey;
- (id)__INIntentResponseCodableDescriptionTypeKey;
- (id)__INTypeCodableDescriptionKey;
- (id)__INTypeCodableDescriptionTypeKey;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentationWithLocalizer:(id)localizer;
- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
- (void)updateWithDictionary:(id)dictionary;
@end

@implementation INCodableAttributePromptDialog

- (id)__INCodableDescriptionFormatStringKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogFormatStringKey = [objc_opt_class() __INCodableAttributePromptDialogFormatStringKey];

  return __INCodableAttributePromptDialogFormatStringKey;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogFormatStringIDKey = [objc_opt_class() __INCodableAttributePromptDialogFormatStringIDKey];

  return __INCodableAttributePromptDialogFormatStringIDKey;
}

- (id)__INCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogTypeKey = [objc_opt_class() __INCodableAttributePromptDialogTypeKey];

  return __INCodableAttributePromptDialogTypeKey;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogFormatStringLanguageCodeKey = [objc_opt_class() __INCodableAttributePromptDialogFormatStringLanguageCodeKey];

  return __INCodableAttributePromptDialogFormatStringLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogFormatStringDictionaryLanguageCodeKey = [objc_opt_class() __INCodableAttributePromptDialogFormatStringDictionaryLanguageCodeKey];

  return __INCodableAttributePromptDialogFormatStringDictionaryLanguageCodeKey;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogFormatStringDictionaryKey = [objc_opt_class() __INCodableAttributePromptDialogFormatStringDictionaryKey];

  return __INCodableAttributePromptDialogFormatStringDictionaryKey;
}

- (INCodableAttributePromptDialog)initWithCoder:(id)coder
{
  coderCopy = coder;
  v7.receiver = self;
  v7.super_class = INCodableAttributePromptDialog;
  v5 = [(INCodableAttributeDialog *)&v7 initWithCoder:coderCopy];
  if (v5)
  {
    v5->_type = [coderCopy decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = INCodableAttributePromptDialog;
  coderCopy = coder;
  [(INCodableAttributeDialog *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeInteger:-[INCodableAttributePromptDialog type](self forKey:{"type", v5.receiver, v5.super_class), @"type"}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)parameters error:(id *)error
{
  v12.receiver = self;
  v12.super_class = INCodableAttributePromptDialog;
  v13 = 0;
  v6 = [(INCodableAttributeDialog *)&v12 widgetPlistableRepresentationWithParameters:parameters error:&v13];
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
    [v6 intents_setIntegerIfNonZero:-[INCodableAttributePromptDialog type](self forKey:{"type"), @"type"}];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)localizer
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableAttributePromptDialog;
  v4 = [(INCodableAttributeDialog *)&v14 dictionaryRepresentationWithLocalizer:localizer];
  __INCodableDescriptionTypeKey = [(INCodableAttributePromptDialog *)self __INCodableDescriptionTypeKey];
  v15 = __INCodableDescriptionTypeKey;
  type = [(INCodableAttributePromptDialog *)self type];
  if (type - 1 > 5)
  {
    v7 = @"Primary";
  }

  else
  {
    v7 = off_1E7285DD8[type - 1];
  }

  v8 = v7;
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v4 if_dictionaryByAddingEntriesFromDictionary:v9];

  if_dictionaryWithNonEmptyValues = [v10 if_dictionaryWithNonEmptyValues];

  v12 = *MEMORY[0x1E69E9840];

  return if_dictionaryWithNonEmptyValues;
}

- (void)updateWithDictionary:(id)dictionary
{
  v11.receiver = self;
  v11.super_class = INCodableAttributePromptDialog;
  dictionaryCopy = dictionary;
  [(INCodableAttributeDialog *)&v11 updateWithDictionary:dictionaryCopy];
  v5 = [(INCodableAttributePromptDialog *)self __INCodableDescriptionTypeKey:v11.receiver];
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];

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

  v9 = v8;
  if ([v9 isEqualToString:@"Primary"])
  {
    v10 = 0;
  }

  else if ([v9 isEqualToString:@"Concise"])
  {
    v10 = 1;
  }

  else if ([v9 isEqualToString:@"DisambiguationIntroduction"])
  {
    v10 = 2;
  }

  else if ([v9 isEqualToString:@"SubsequentIntroduction"])
  {
    v10 = 3;
  }

  else if ([v9 isEqualToString:@"DisambiguationSelection"])
  {
    v10 = 4;
  }

  else if ([v9 isEqualToString:@"Confirmation"])
  {
    v10 = 5;
  }

  else if ([v9 isEqualToString:@"Configuration"])
  {
    v10 = 6;
  }

  else
  {
    v10 = 0;
  }

  self->_type = v10;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (v8.receiver = self, v8.super_class = INCodableAttributePromptDialog, -[INCodableAttributeDialog isEqual:](&v8, sel_isEqual_, equalCopy)))
  {
    type = [(INCodableAttributePromptDialog *)self type];
    v6 = type == [equalCopy type];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)hash
{
  v5.receiver = self;
  v5.super_class = INCodableAttributePromptDialog;
  v3 = [(INCodableAttributeDialog *)&v5 hash];
  return [(INCodableAttributePromptDialog *)self type]^ v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v6.receiver = self;
  v6.super_class = INCodableAttributePromptDialog;
  v4 = [(INCodableAttributeDialog *)&v6 copyWithZone:zone];
  [v4 setType:{-[INCodableAttributePromptDialog type](self, "type")}];
  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)representation error:(id *)error
{
  representationCopy = representation;
  v13.receiver = self;
  v13.super_class = &OBJC_METACLASS___INCodableAttributePromptDialog;
  v14 = 0;
  v7 = objc_msgSendSuper2(&v13, sel_makeFromWidgetPlistableRepresentation_error_, representationCopy, &v14);
  v8 = v14;
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
    v7[5] = [representationCopy intents_intForKey:@"type"];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogTypeKey = [objc_opt_class() __INCodableAttributePromptDialogTypeKey];

  return __INCodableAttributePromptDialogTypeKey;
}

- (id)__INTypeCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogKey = [objc_opt_class() __INCodableAttributePromptDialogKey];

  return __INCodableAttributePromptDialogKey;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogTypeKey = [objc_opt_class() __INCodableAttributePromptDialogTypeKey];

  return __INCodableAttributePromptDialogTypeKey;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogKey = [objc_opt_class() __INCodableAttributePromptDialogKey];

  return __INCodableAttributePromptDialogKey;
}

- (id)__INCodableDescriptionKey
{
  _codableDescription = [(INCodableAttributeDialog *)self _codableDescription];
  __INCodableAttributePromptDialogKey = [objc_opt_class() __INCodableAttributePromptDialogKey];

  return __INCodableAttributePromptDialogKey;
}

@end