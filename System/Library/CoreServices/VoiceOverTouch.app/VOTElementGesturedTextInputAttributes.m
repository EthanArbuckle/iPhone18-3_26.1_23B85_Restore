@interface VOTElementGesturedTextInputAttributes
- (VOTElementGesturedTextInputAttributes)initWithAttributes:(id)a3;
- (id)_descriptionForBool:(BOOL)a3;
- (id)_descriptionForCharacterSets:(unint64_t)a3;
- (id)description;
@end

@implementation VOTElementGesturedTextInputAttributes

- (VOTElementGesturedTextInputAttributes)initWithAttributes:(id)a3
{
  v4 = a3;
  v30.receiver = self;
  v30.super_class = VOTElementGesturedTextInputAttributes;
  v5 = [(VOTElementGesturedTextInputAttributes *)&v30 init];
  if (v5)
  {
    v6 = [v4 objectForKey:AXVoiceOverHandwritingAttributePreferredCharacterSet];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 unsignedIntegerValue];
    }

    else
    {
      v8 = 1;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setPreferredCharacterSet:v8];
    v9 = [v4 objectForKey:AXVoiceOverHandwritingAttributeAllowedCharacterSets];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 unsignedIntegerValue];
    }

    else
    {
      v11 = 15;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setAllowedCharacterSets:v11];
    v12 = [v4 objectForKey:AXVoiceOverHandwritingAttributeCanDeleteCharacter];
    v13 = v12;
    if (v12)
    {
      v14 = [v12 BOOLValue];
    }

    else
    {
      v14 = 1;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setCanDeleteCharacter:v14];
    v15 = [v4 objectForKey:AXVoiceOverHandwritingAttributeShouldEchoCharacter];
    v16 = v15;
    if (v15)
    {
      v17 = [v15 BOOLValue];
    }

    else
    {
      v17 = 1;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setShouldEchoCharacter:v17];
    v18 = [v4 objectForKey:AXVoiceOverHandwritingAttributeShouldPlayKeyboardSecureClickSound];
    v19 = v18;
    if (v18)
    {
      v20 = [v18 BOOLValue];
    }

    else
    {
      v20 = 0;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setShouldPlayKeyboardSecureClickSound:v20];
    v21 = [v4 objectForKey:AXVoiceOverHandwritingAttributeAcceptsRawInput];
    v22 = v21;
    if (v21)
    {
      v23 = [v21 BOOLValue];
    }

    else
    {
      v23 = 0;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setAcceptsRawInput:v23];
    v24 = [v4 objectForKey:AXVoiceOverHandwritingAttributeAcceptsContractedBraille];
    v25 = v24;
    if (v24)
    {
      v26 = [v24 BOOLValue];
    }

    else
    {
      v26 = 0;
    }

    [(VOTElementGesturedTextInputAttributes *)v5 setAcceptsContractedBraille:v26];
    v27 = [v4 objectForKeyedSubscript:AXVoiceOverHandwritingAttributeLanguage];
    [(VOTElementGesturedTextInputAttributes *)v5 setLanguage:v27];

    v28 = [v4 objectForKeyedSubscript:@"AXIsActiveResponder"];
    -[VOTElementGesturedTextInputAttributes setIsActiveResponder:](v5, "setIsActiveResponder:", [v28 BOOLValue]);
  }

  return v5;
}

- (id)_descriptionForCharacterSets:(unint64_t)a3
{
  v4 = +[NSMutableString string];
  v5 = v4;
  if (a3 == 15)
  {
    [v4 appendString:@"all"];
    goto LABEL_8;
  }

  if (a3)
  {
    [v4 appendStringWithComma:@"lowercase"];
    if ((a3 & 2) == 0)
    {
LABEL_5:
      if ((a3 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_13;
    }
  }

  else if ((a3 & 2) == 0)
  {
    goto LABEL_5;
  }

  [v5 appendStringWithComma:@"uppercase"];
  if ((a3 & 4) == 0)
  {
LABEL_6:
    if ((a3 & 8) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_13:
  [v5 appendStringWithComma:@"numbers"];
  if ((a3 & 8) != 0)
  {
LABEL_7:
    [v5 appendStringWithComma:@"punctuation"];
  }

LABEL_8:

  return v5;
}

- (id)_descriptionForBool:(BOOL)a3
{
  if (a3)
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
  v11 = [(VOTElementGesturedTextInputAttributes *)self language];
  v12 = [v3 stringByAppendingFormat:@"- preferred character set %@, allowed character sets %@, can delete character %@, should echo character %@, should play secure click %@, accepts raw input %@, accepts contracted braille %@, language %@", v4, v5, v6, v7, v8, v9, v10, v11];

  return v12;
}

@end