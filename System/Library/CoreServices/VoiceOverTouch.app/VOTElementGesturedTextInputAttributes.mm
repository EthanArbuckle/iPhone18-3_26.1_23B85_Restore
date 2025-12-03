@interface VOTElementGesturedTextInputAttributes
- (VOTElementGesturedTextInputAttributes)initWithAttributes:(id)attributes;
- (id)_descriptionForBool:(BOOL)bool;
- (id)_descriptionForCharacterSets:(unint64_t)sets;
- (id)description;
@end

@implementation VOTElementGesturedTextInputAttributes

- (VOTElementGesturedTextInputAttributes)initWithAttributes:(id)attributes
{
  attributesCopy = attributes;
  v30.receiver = self;
  v30.super_class = VOTElementGesturedTextInputAttributes;
  v5 = [(VOTElementGesturedTextInputAttributes *)&v30 init];
  if (v5)
  {
    v6 = [attributesCopy objectForKey:AXVoiceOverHandwritingAttributePreferredCharacterSet];
    v7 = v6;
    if (v6)
    {
      unsignedIntegerValue = [v6 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue = 1;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setPreferredCharacterSet:unsignedIntegerValue];
    v9 = [attributesCopy objectForKey:AXVoiceOverHandwritingAttributeAllowedCharacterSets];
    v10 = v9;
    if (v9)
    {
      unsignedIntegerValue2 = [v9 unsignedIntegerValue];
    }

    else
    {
      unsignedIntegerValue2 = 15;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setAllowedCharacterSets:unsignedIntegerValue2];
    v12 = [attributesCopy objectForKey:AXVoiceOverHandwritingAttributeCanDeleteCharacter];
    v13 = v12;
    if (v12)
    {
      bOOLValue = [v12 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setCanDeleteCharacter:bOOLValue];
    v15 = [attributesCopy objectForKey:AXVoiceOverHandwritingAttributeShouldEchoCharacter];
    v16 = v15;
    if (v15)
    {
      bOOLValue2 = [v15 BOOLValue];
    }

    else
    {
      bOOLValue2 = 1;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setShouldEchoCharacter:bOOLValue2];
    v18 = [attributesCopy objectForKey:AXVoiceOverHandwritingAttributeShouldPlayKeyboardSecureClickSound];
    v19 = v18;
    if (v18)
    {
      bOOLValue3 = [v18 BOOLValue];
    }

    else
    {
      bOOLValue3 = 0;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setShouldPlayKeyboardSecureClickSound:bOOLValue3];
    v21 = [attributesCopy objectForKey:AXVoiceOverHandwritingAttributeAcceptsRawInput];
    v22 = v21;
    if (v21)
    {
      bOOLValue4 = [v21 BOOLValue];
    }

    else
    {
      bOOLValue4 = 0;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setAcceptsRawInput:bOOLValue4];
    v24 = [attributesCopy objectForKey:AXVoiceOverHandwritingAttributeAcceptsContractedBraille];
    v25 = v24;
    if (v24)
    {
      bOOLValue5 = [v24 BOOLValue];
    }

    else
    {
      bOOLValue5 = 0;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setAcceptsContractedBraille:bOOLValue5];
    v27 = [attributesCopy objectForKeyedSubscript:AXVoiceOverHandwritingAttributeLanguage];
    [(VOTElementGesturedTextInputAttributes *)v5 setLanguage:v27];

    v28 = [attributesCopy objectForKeyedSubscript:@"AXIsActiveResponder"];
    -[VOTElementGesturedTextInputAttributes setIsActiveResponder:](v5, "setIsActiveResponder:", [v28 BOOLValue]);
  }

  return v5;
}

- (id)_descriptionForCharacterSets:(unint64_t)sets
{
  v4 = +[NSMutableString string];
  v5 = v4;
  if (sets == 15)
  {
    [v4 appendString:@"all"];
    goto LABEL_8;
  }

  if (sets)
  {
    [v4 appendStringWithComma:@"lowercase"];
    if ((sets & 2) == 0)
    {
LABEL_5:
      if ((sets & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((sets & 2) == 0)
  {
    goto LABEL_5;
  }

  [v5 appendStringWithComma:@"uppercase"];
  if ((sets & 4) == 0)
  {
LABEL_6:
    if ((sets & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  [v5 appendStringWithComma:@"numbers"];
  if ((sets & 8) != 0)
  {
LABEL_7:
    [v5 appendStringWithComma:@"punctuation"];
  }

LABEL_8:

  return v5;
}

- (id)_descriptionForBool:(BOOL)bool
{
  if (bool)
  {
    return @"YES";
  }

  else
  {
    return @"NO";
  }
}

- (id)description
{
  v14.receiver = self;
  v14.super_class = VOTElementGesturedTextInputAttributes;
  v3 = [(VOTElementGesturedTextInputAttributes *)&v14 description];
  v4 = [(VOTElementGesturedTextInputAttributes *)self _descriptionForCharacterSets:[(VOTElementGesturedTextInputAttributes *)self preferredCharacterSet]];
  v5 = [(VOTElementGesturedTextInputAttributes *)self _descriptionForCharacterSets:[(VOTElementGesturedTextInputAttributes *)self allowedCharacterSets]];
  v6 = [(VOTElementGesturedTextInputAttributes *)self _descriptionForBool:[(VOTElementGesturedTextInputAttributes *)self canDeleteCharacter]];
  v7 = [(VOTElementGesturedTextInputAttributes *)self _descriptionForBool:[(VOTElementGesturedTextInputAttributes *)self shouldEchoCharacter]];
  v8 = [(VOTElementGesturedTextInputAttributes *)self _descriptionForBool:[(VOTElementGesturedTextInputAttributes *)self shouldPlayKeyboardSecureClickSound]];
  v9 = [(VOTElementGesturedTextInputAttributes *)self _descriptionForBool:[(VOTElementGesturedTextInputAttributes *)self acceptsRawInput]];
  v10 = [(VOTElementGesturedTextInputAttributes *)self _descriptionForBool:[(VOTElementGesturedTextInputAttributes *)self acceptsContractedBraille]];
  language = [(VOTElementGesturedTextInputAttributes *)self language];
  v12 = [v3 stringByAppendingFormat:@"- preferred character set %@, allowed character sets %@, can delete character %@, should echo character %@, should play secure click %@, accepts raw input %@, accepts contracted braille %@, language %@", v4, v5, v6, v7, v8, v9, v10, language];

  return v12;
}

@end