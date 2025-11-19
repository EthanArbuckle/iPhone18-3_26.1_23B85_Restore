@interface INCodableAttributePromptDialog
+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4;
- (BOOL)isEqual:(id)a3;
- (INCodableAttributePromptDialog)initWithCoder:(id)a3;
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
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentationWithLocalizer:(id)a3;
- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
- (void)updateWithDictionary:(id)a3;
@end

@implementation INCodableAttributePromptDialog

- (id)__INCodableDescriptionFormatStringKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogFormatStringKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringIDKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogFormatStringIDKey];

  return v3;
}

- (id)__INCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogTypeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringLanguageCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogFormatStringLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryLanguageCodeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogFormatStringDictionaryLanguageCodeKey];

  return v3;
}

- (id)__INCodableDescriptionFormatStringDictionaryKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogFormatStringDictionaryKey];

  return v3;
}

- (INCodableAttributePromptDialog)initWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = INCodableAttributePromptDialog;
  v5 = [(INCodableAttributeDialog *)&v7 initWithCoder:v4];
  if (v5)
  {
    v5->_type = [v4 decodeIntegerForKey:@"type"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v5.receiver = self;
  v5.super_class = INCodableAttributePromptDialog;
  v4 = a3;
  [(INCodableAttributeDialog *)&v5 encodeWithCoder:v4];
  [v4 encodeInteger:-[INCodableAttributePromptDialog type](self forKey:{"type", v5.receiver, v5.super_class), @"type"}];
}

- (id)widgetPlistableRepresentationWithParameters:(id)a3 error:(id *)a4
{
  v12.receiver = self;
  v12.super_class = INCodableAttributePromptDialog;
  v13 = 0;
  v6 = [(INCodableAttributeDialog *)&v12 widgetPlistableRepresentationWithParameters:a3 error:&v13];
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
    [v6 intents_setIntegerIfNonZero:-[INCodableAttributePromptDialog type](self forKey:{"type"), @"type"}];
    v10 = [v6 copy];
  }

  return v10;
}

- (id)dictionaryRepresentationWithLocalizer:(id)a3
{
  v16[1] = *MEMORY[0x1E69E9840];
  v14.receiver = self;
  v14.super_class = INCodableAttributePromptDialog;
  v4 = [(INCodableAttributeDialog *)&v14 dictionaryRepresentationWithLocalizer:a3];
  v5 = [(INCodableAttributePromptDialog *)self __INCodableDescriptionTypeKey];
  v15 = v5;
  v6 = [(INCodableAttributePromptDialog *)self type];
  if (v6 - 1 > 5)
  {
    v7 = @"Primary";
  }

  else
  {
    v7 = off_1E7285DD8[v6 - 1];
  }

  v8 = v7;
  v16[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v10 = [v4 if_dictionaryByAddingEntriesFromDictionary:v9];

  v11 = [v10 if_dictionaryWithNonEmptyValues];

  v12 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)updateWithDictionary:(id)a3
{
  v11.receiver = self;
  v11.super_class = INCodableAttributePromptDialog;
  v4 = a3;
  [(INCodableAttributeDialog *)&v11 updateWithDictionary:v4];
  v5 = [(INCodableAttributePromptDialog *)self __INCodableDescriptionTypeKey:v11.receiver];
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

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (v8.receiver = self, v8.super_class = INCodableAttributePromptDialog, -[INCodableAttributeDialog isEqual:](&v8, sel_isEqual_, v4)))
  {
    v5 = [(INCodableAttributePromptDialog *)self type];
    v6 = v5 == [v4 type];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v6.receiver = self;
  v6.super_class = INCodableAttributePromptDialog;
  v4 = [(INCodableAttributeDialog *)&v6 copyWithZone:a3];
  [v4 setType:{-[INCodableAttributePromptDialog type](self, "type")}];
  return v4;
}

+ (id)makeFromWidgetPlistableRepresentation:(id)a3 error:(id *)a4
{
  v6 = a3;
  v13.receiver = a1;
  v13.super_class = &OBJC_METACLASS___INCodableAttributePromptDialog;
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
    v7[5] = [v6 intents_intForKey:@"type"];
    v11 = v7;
  }

  return v11;
}

- (id)__INTypeCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogTypeKey];

  return v3;
}

- (id)__INTypeCodableDescriptionKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionTypeKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogTypeKey];

  return v3;
}

- (id)__INIntentResponseCodableDescriptionKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogKey];

  return v3;
}

- (id)__INCodableDescriptionKey
{
  v2 = [(INCodableAttributeDialog *)self _codableDescription];
  v3 = [objc_opt_class() __INCodableAttributePromptDialogKey];

  return v3;
}

@end