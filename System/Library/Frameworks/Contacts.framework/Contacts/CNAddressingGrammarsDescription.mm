@interface CNAddressingGrammarsDescription
- (BOOL)applyCNValue:(id)value toArray:(id)array identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label;
- (BOOL)isEqualForContact:(id)contact other:(id)other;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value;
- (void)decodeUsingCoder:(id)coder contact:(id)contact;
@end

@implementation CNAddressingGrammarsDescription

- (BOOL)isEqualForContact:(id)contact other:(id)other
{
  contactCopy = contact;
  otherCopy = other;
  addressingGrammars = [contactCopy addressingGrammars];
  if (!addressingGrammars)
  {
    addressingGrammars2 = [otherCopy addressingGrammars];
    if (!addressingGrammars2)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  addressingGrammars3 = [contactCopy addressingGrammars];
  addressingGrammars4 = [otherCopy addressingGrammars];
  v11 = [addressingGrammars3 isEqual:addressingGrammars4];

  if (!addressingGrammars)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)coder contact:(id)contact
{
  v15 = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  contactCopy = contact;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [coderCopy decodeObjectOfClasses:v7 forKey:{@"_addressingGrammars", v12, v13}];
  v10 = [v9 copy];
  v11 = contactCopy[18];
  contactCopy[18] = v10;
}

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)bytes length:(unint64_t)length
{
  if (bytes)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:bytes length:length encoding:4];
    v5 = [MEMORY[0x1E69966D8] decryptAddressingGrammarString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)applyCNValue:(id)value toArray:(id)array identifier:(id)identifier legacyIdentifier:(int)legacyIdentifier label:(id)label
{
  if (!value)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = CNAddressingGrammarsDescription;
  return [(CNMultiValuePropertyDescription *)&v8 applyCNValue:value toArray:array identifier:identifier legacyIdentifier:*&legacyIdentifier label:label];
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)value
{
  if (value)
  {
    v5 = CFGetTypeID(value);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [MEMORY[0x1E69966D8] decryptAddressingGrammarString:value];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  v4 = valueCopy;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = [MEMORY[0x1E69966D8] encryptAddressingGrammarAsString:v6];

  return v7;
}

@end