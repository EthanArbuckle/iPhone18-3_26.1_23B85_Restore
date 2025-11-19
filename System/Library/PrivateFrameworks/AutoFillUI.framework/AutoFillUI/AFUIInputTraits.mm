@interface AFUIInputTraits
+ (id)_traitsWithObject:(id)a3;
+ (id)_traitsWithRTITraits:(id)a3;
+ (id)_traitsWithTITraits:(id)a3;
+ (id)_traitsWithUITraits:(id)a3;
+ (id)traitsByAdoptingTraits:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation AFUIInputTraits

+ (id)_traitsWithTITraits:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(a1);
  v6 = v5[2];
  v5[2] = v4;

  return v5;
}

+ (id)_traitsWithRTITraits:(id)a3
{
  v4 = [a3 textInputTraits];
  v5 = [a1 _traitsWithTITraits:v4];

  return v5;
}

+ (id)_traitsWithUITraits:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:v4];
    v6 = [a1 _traitsWithTITraits:v5];
    [v6 setDisplaySecureTextUsingPlainText:{objc_msgSend(v4, "displaySecureTextUsingPlainText")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_traitsWithObject:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E69D96E0]);
  if (objc_opt_respondsToSelector())
  {
    [v5 setAutocorrectionType:{objc_msgSend(v4, "autocorrectionType")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setKeyboardType:{objc_msgSend(v4, "keyboardType")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setReturnKeyType:{objc_msgSend(v4, "returnKeyType")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setSecureTextEntry:{objc_msgSend(v4, "isSecureTextEntry")}];
  }

  _AFUISecureTextFieldClass();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSecureTextEntry:1];
  }

  if (objc_opt_respondsToSelector())
  {
    v6 = [v4 textContentType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setTextContentType:v6];
    }
  }

  v7 = [a1 _traitsWithTITraits:v5];
  if (objc_opt_respondsToSelector())
  {
    [v7 setDisplaySecureTextUsingPlainText:{objc_msgSend(v4, "displaySecureTextUsingPlainText")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 setDisplaySecureTextUsingPlainText:{objc_msgSend(v4, "_bulletCharacter") == 1}];
  }

  return v7;
}

+ (id)traitsByAdoptingTraits:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 copy];
  }

  else
  {
    v5 = 0;
  }

  if (!_AFUITraitsClass())
  {
    goto LABEL_16;
  }

  if ([v4 conformsToProtocol:&unk_1F4EC2808])
  {
    v6 = [v4 extendedTextInputTraits];
LABEL_13:
    v7 = v6;

    v4 = v7;
    goto LABEL_14;
  }

  if ([v4 conformsToProtocol:&unk_1F4EC2E18])
  {
    if (objc_opt_respondsToSelector())
    {
      v6 = [v4 extendedTraitsDelegate];
      goto LABEL_13;
    }

LABEL_12:
    v6 = [v4 textInputTraits];
    goto LABEL_13;
  }

  if ([v4 conformsToProtocol:&unk_1F4EC31E8] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_14:
  _AFUITraitsClass();
  if (objc_opt_isKindOfClass())
  {
    v8 = [a1 _traitsWithUITraits:v4];

    v5 = v8;
  }

LABEL_16:
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [a1 _traitsWithRTITraits:v4];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [a1 _traitsWithTITraits:v4];
      }

      else
      {
        [a1 _traitsWithObject:v4];
      }
      v9 = ;
    }

    v5 = v9;
  }

  if ([v5 isSecureTextEntry] && (objc_msgSend(v5, "displaySecureTextUsingPlainText") & 1) == 0)
  {
    [v5[2] setAutocorrectionType:1];
  }

  if ([v5 keyboardType] == 10)
  {
    [v5[2] setReturnKeyType:1];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(TITextInputTraits *)self->_traits copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 8) = self->_displaySecureTextUsingPlainText;
  return v4;
}

@end