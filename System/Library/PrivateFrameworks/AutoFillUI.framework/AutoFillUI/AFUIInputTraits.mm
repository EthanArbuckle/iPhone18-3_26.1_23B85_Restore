@interface AFUIInputTraits
+ (id)_traitsWithObject:(id)object;
+ (id)_traitsWithRTITraits:(id)traits;
+ (id)_traitsWithTITraits:(id)traits;
+ (id)_traitsWithUITraits:(id)traits;
+ (id)traitsByAdoptingTraits:(id)traits;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation AFUIInputTraits

+ (id)_traitsWithTITraits:(id)traits
{
  traitsCopy = traits;
  v5 = objc_alloc_init(self);
  v6 = v5[2];
  v5[2] = traitsCopy;

  return v5;
}

+ (id)_traitsWithRTITraits:(id)traits
{
  textInputTraits = [traits textInputTraits];
  v5 = [self _traitsWithTITraits:textInputTraits];

  return v5;
}

+ (id)_traitsWithUITraits:(id)traits
{
  traitsCopy = traits;
  objc_opt_class();
  if (objc_opt_respondsToSelector())
  {
    v5 = [MEMORY[0x1E69D96E0] traitsForUITextInputTraits:traitsCopy];
    v6 = [self _traitsWithTITraits:v5];
    [v6 setDisplaySecureTextUsingPlainText:{objc_msgSend(traitsCopy, "displaySecureTextUsingPlainText")}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_traitsWithObject:(id)object
{
  objectCopy = object;
  v5 = objc_alloc_init(MEMORY[0x1E69D96E0]);
  if (objc_opt_respondsToSelector())
  {
    [v5 setAutocorrectionType:{objc_msgSend(objectCopy, "autocorrectionType")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setKeyboardType:{objc_msgSend(objectCopy, "keyboardType")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setReturnKeyType:{objc_msgSend(objectCopy, "returnKeyType")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v5 setSecureTextEntry:{objc_msgSend(objectCopy, "isSecureTextEntry")}];
  }

  _AFUISecureTextFieldClass();
  if (objc_opt_isKindOfClass())
  {
    [v5 setSecureTextEntry:1];
  }

  if (objc_opt_respondsToSelector())
  {
    textContentType = [objectCopy textContentType];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [v5 setTextContentType:textContentType];
    }
  }

  v7 = [self _traitsWithTITraits:v5];
  if (objc_opt_respondsToSelector())
  {
    [v7 setDisplaySecureTextUsingPlainText:{objc_msgSend(objectCopy, "displaySecureTextUsingPlainText")}];
  }

  if (objc_opt_respondsToSelector())
  {
    [v7 setDisplaySecureTextUsingPlainText:{objc_msgSend(objectCopy, "_bulletCharacter") == 1}];
  }

  return v7;
}

+ (id)traitsByAdoptingTraits:(id)traits
{
  traitsCopy = traits;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [traitsCopy copy];
  }

  else
  {
    v5 = 0;
  }

  if (!_AFUITraitsClass())
  {
    goto LABEL_16;
  }

  if ([traitsCopy conformsToProtocol:&unk_1F4EC2808])
  {
    extendedTextInputTraits = [traitsCopy extendedTextInputTraits];
LABEL_13:
    v7 = extendedTextInputTraits;

    traitsCopy = v7;
    goto LABEL_14;
  }

  if ([traitsCopy conformsToProtocol:&unk_1F4EC2E18])
  {
    if (objc_opt_respondsToSelector())
    {
      extendedTextInputTraits = [traitsCopy extendedTraitsDelegate];
      goto LABEL_13;
    }

LABEL_12:
    extendedTextInputTraits = [traitsCopy textInputTraits];
    goto LABEL_13;
  }

  if ([traitsCopy conformsToProtocol:&unk_1F4EC31E8] && (objc_opt_respondsToSelector() & 1) != 0)
  {
    goto LABEL_12;
  }

LABEL_14:
  _AFUITraitsClass();
  if (objc_opt_isKindOfClass())
  {
    v8 = [self _traitsWithUITraits:traitsCopy];

    v5 = v8;
  }

LABEL_16:
  if (!v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [self _traitsWithRTITraits:traitsCopy];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [self _traitsWithTITraits:traitsCopy];
      }

      else
      {
        [self _traitsWithObject:traitsCopy];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5 = [(TITextInputTraits *)self->_traits copy];
  v6 = *(v4 + 16);
  *(v4 + 16) = v5;

  *(v4 + 8) = self->_displaySecureTextUsingPlainText;
  return v4;
}

@end