@interface CNAddressingGrammarsDescription
- (BOOL)applyCNValue:(id)a3 toArray:(id)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7;
- (BOOL)isEqualForContact:(id)a3 other:(id)a4;
- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3;
- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4;
- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3;
- (void)decodeUsingCoder:(id)a3 contact:(id)a4;
@end

@implementation CNAddressingGrammarsDescription

- (BOOL)isEqualForContact:(id)a3 other:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 addressingGrammars];
  if (!v8)
  {
    v4 = [v7 addressingGrammars];
    if (!v4)
    {
      v11 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  v9 = [v6 addressingGrammars];
  v10 = [v7 addressingGrammars];
  v11 = [v9 isEqual:v10];

  if (!v8)
  {
    goto LABEL_6;
  }

LABEL_7:

  return v11;
}

- (void)decodeUsingCoder:(id)a3 contact:(id)a4
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v7 = [MEMORY[0x1E695DFD8] setWithObjects:&v12 count:3];
  for (i = 16; i != -8; i -= 8)
  {
  }

  v9 = [v5 decodeObjectOfClasses:v7 forKey:{@"_addressingGrammars", v12, v13}];
  v10 = [v9 copy];
  v11 = v6[18];
  v6[18] = v10;
}

- (id)CNLabeledValueValueFromABMultiValueValueBytes:(char *)a3 length:(unint64_t)a4
{
  if (a3)
  {
    v4 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:a3 length:a4 encoding:4];
    v5 = [MEMORY[0x1E69966D8] decryptAddressingGrammarString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)applyCNValue:(id)a3 toArray:(id)a4 identifier:(id)a5 legacyIdentifier:(int)a6 label:(id)a7
{
  if (!a3)
  {
    return 0;
  }

  v8.receiver = self;
  v8.super_class = CNAddressingGrammarsDescription;
  return [(CNMultiValuePropertyDescription *)&v8 applyCNValue:a3 toArray:a4 identifier:a5 legacyIdentifier:*&a6 label:a7];
}

- (id)CNLabeledValueValueFromABMultiValueValue:(void *)a3
{
  if (a3)
  {
    v5 = CFGetTypeID(a3);
    if (v5 == CFStringGetTypeID())
    {
      v6 = [MEMORY[0x1E69966D8] decryptAddressingGrammarString:a3];
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

- (void)ABMultiValueValueFromCNLabeledValueValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
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