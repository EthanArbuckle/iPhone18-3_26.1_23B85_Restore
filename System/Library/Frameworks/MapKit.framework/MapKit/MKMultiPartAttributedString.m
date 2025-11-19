@interface MKMultiPartAttributedString
+ (id)_mapkit_multiPartAttributedStringForComposedStrings:(id)a3 defaultAttributes:(id)a4 repeatedSeparator:(id)a5;
+ (id)_mapkit_multiPartAttributedStringForServerFormattedString:(id)a3 defaultAttributes:(id)a4;
+ (id)_mapkit_multiPartAttributedStringForServerFormattedStrings:(id)a3 defaultAttributes:(id)a4 repeatedSeparator:(id)a5;
+ (id)multiPartAttributedStringWithComponents:(id)a3 repeatedSeparator:(id)a4;
+ (id)multiPartAttributedStringWithString:(id)a3;
- (BOOL)isEqual:(id)a3;
- (MKMultiPartAttributedString)initWithComponents:(id)a3 separators:(id)a4;
- (NSAttributedString)attributedString;
- (id)copyWithZone:(_NSZone *)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation MKMultiPartAttributedString

- (NSAttributedString)attributedString
{
  attributedString = self->_attributedString;
  if (!attributedString)
  {
    v4 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v5 = [(MKMultiPartAttributedString *)self components];
    v6 = [v5 count];

    if (v6)
    {
      v7 = 0;
      do
      {
        v8 = [(MKMultiPartAttributedString *)self components];
        v9 = [v8 objectAtIndexedSubscript:v7];

        if ([v9 length])
        {
          [v4 appendAttributedString:v9];
          v10 = v7 + 1;
          v11 = [(MKMultiPartAttributedString *)self components];
          v12 = [v11 count];

          if (v7 + 1 < v12)
          {
            v13 = [(MKMultiPartAttributedString *)self separators];
            if (v7 >= [v13 count])
            {
              v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F15B23C0];
            }

            else
            {
              v14 = [(MKMultiPartAttributedString *)self separators];
              v15 = [v14 objectAtIndexedSubscript:v7];
            }

            [v4 appendAttributedString:v15];
          }
        }

        else
        {
          v10 = v7 + 1;
        }

        v16 = [(MKMultiPartAttributedString *)self components];
        v17 = [v16 count];

        v7 = v10;
      }

      while (v10 < v17);
    }

    v18 = [v4 copy];
    v19 = self->_attributedString;
    self->_attributedString = v18;

    attributedString = self->_attributedString;
  }

  return attributedString;
}

- (id)debugDescription
{
  attributedString = self->_attributedString;
  if (attributedString)
  {
    v4 = [(NSAttributedString *)attributedString debugDescription];
  }

  else
  {
    v5 = [(MKMultiPartAttributedString *)self components];
    v4 = [v5 debugDescription];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(MKMultiPartAttributedString *)self components];
  v6 = [(MKMultiPartAttributedString *)self separators];
  v7 = [v3 stringWithFormat:@"<%@:%p\nparts=%@\nseparators =%@\n>", v4, self, v5, v6];

  return v7;
}

- (unint64_t)hash
{
  v3 = [(MKMultiPartAttributedString *)self components];
  v4 = [v3 hash];
  v5 = [(MKMultiPartAttributedString *)self separators];
  v6 = [v5 hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)a3
{
  v7 = a3;
  if (![v7 isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    goto LABEL_17;
  }

  v8 = [(MKMultiPartAttributedString *)self components];
  if (v8 || ([v7 components], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = [(MKMultiPartAttributedString *)self components];
    v4 = [v7 components];
    if (([v3 isEqual:v4] & 1) == 0)
    {

      v10 = 0;
      goto LABEL_14;
    }

    v9 = 1;
  }

  else
  {
    v15 = 0;
    v9 = 0;
  }

  v11 = [(MKMultiPartAttributedString *)self separators];
  if (!v11)
  {
    v5 = [v7 separators];
    if (!v5)
    {
      v10 = 1;
LABEL_19:

      if ((v9 & 1) == 0)
      {
        goto LABEL_14;
      }

      goto LABEL_13;
    }
  }

  v12 = [(MKMultiPartAttributedString *)self separators];
  v13 = [v7 separators];
  v10 = [v12 isEqual:v13];

  if (!v11)
  {
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_13:
  }

LABEL_14:
  if (!v8)
  {
  }

LABEL_17:
  return v10;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  components = self->_components;
  separators = self->_separators;

  return [v4 initWithComponents:components separators:separators];
}

- (MKMultiPartAttributedString)initWithComponents:(id)a3 separators:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = MKMultiPartAttributedString;
  v8 = [(MKMultiPartAttributedString *)&v14 init];
  if (v8)
  {
    v9 = [v7 copy];
    separators = v8->_separators;
    v8->_separators = v9;

    v11 = [v6 copy];
    components = v8->_components;
    v8->_components = v11;
  }

  return v8;
}

+ (id)multiPartAttributedStringWithString:(id)a3
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v4 = a3;
    v5 = [a1 alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v4];

    v10[0] = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v8 = [v5 initWithComponents:v7 separators:MEMORY[0x1E695E0F0]];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)multiPartAttributedStringWithComponents:(id)a3 repeatedSeparator:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x1E695DF70] array];
  if ([v6 count] >= 2)
  {
    v9 = 1;
    do
    {
      [v8 addObject:v7];
      ++v9;
    }

    while (v9 < [v6 count]);
  }

  v10 = [[a1 alloc] initWithComponents:v6 separators:v8];

  return v10;
}

+ (id)_mapkit_multiPartAttributedStringForComposedStrings:(id)a3 defaultAttributes:(id)a4 repeatedSeparator:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  if ([v7 count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __149__MKMultiPartAttributedString_TransitFormattedStringExtras___mapkit_multiPartAttributedStringForComposedStrings_defaultAttributes_repeatedSeparator___block_invoke;
    v22 = &unk_1E76CD088;
    v12 = v11;
    v23 = v12;
    v24 = v9;
    v25 = v8;
    v13 = v10;
    v26 = v13;
    [v7 enumerateObjectsUsingBlock:&v19];
    if ([v13 count])
    {
      v14 = [MKMultiPartAttributedString alloc];
      v15 = [v13 copy];
      v16 = [v12 copy];
      v17 = [(MKMultiPartAttributedString *)v14 initWithComponents:v15 separators:v16];
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

void __149__MKMultiPartAttributedString_TransitFormattedStringExtras___mapkit_multiPartAttributedStringForComposedStrings_defaultAttributes_repeatedSeparator___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v12 = a2;
  if (a3)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  v5 = [[MKServerFormattedString alloc] initWithComposedString:v12];
  v6 = [(MKServerFormattedString *)v5 multiPartAttributedStringWithAttributes:*(a1 + 48)];
  v7 = v6;
  if (v6)
  {
    v8 = *(a1 + 56);
    v9 = [v6 components];
    [v8 addObjectsFromArray:v9];

    v10 = *(a1 + 32);
    v11 = [v7 separators];
    [v10 addObjectsFromArray:v11];
  }
}

+ (id)_mapkit_multiPartAttributedStringForServerFormattedStrings:(id)a3 defaultAttributes:(id)a4 repeatedSeparator:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v8, "count")}];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __156__MKMultiPartAttributedString_TransitFormattedStringExtras___mapkit_multiPartAttributedStringForServerFormattedStrings_defaultAttributes_repeatedSeparator___block_invoke;
    v20[3] = &unk_1E76CD060;
    v13 = v12;
    v21 = v13;
    v22 = v10;
    v25 = a1;
    v23 = v9;
    v14 = v11;
    v24 = v14;
    [v8 enumerateObjectsUsingBlock:v20];
    if ([v14 count])
    {
      v15 = [MKMultiPartAttributedString alloc];
      v16 = [v14 copy];
      v17 = [v13 copy];
      v18 = [(MKMultiPartAttributedString *)v15 initWithComponents:v16 separators:v17];
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

  return v18;
}

void __156__MKMultiPartAttributedString_TransitFormattedStringExtras___mapkit_multiPartAttributedStringForServerFormattedStrings_defaultAttributes_repeatedSeparator___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  if (a3)
  {
    [*(a1 + 32) addObject:*(a1 + 40)];
  }

  v5 = [*(a1 + 64) _mapkit_multiPartAttributedStringForServerFormattedString:v11 defaultAttributes:*(a1 + 48)];
  v6 = v5;
  if (v5)
  {
    v7 = *(a1 + 56);
    v8 = [v5 components];
    [v7 addObjectsFromArray:v8];

    v9 = *(a1 + 32);
    v10 = [v6 separators];
    [v9 addObjectsFromArray:v10];
  }
}

+ (id)_mapkit_multiPartAttributedStringForServerFormattedString:(id)a3 defaultAttributes:(id)a4
{
  v4 = a3;
  if (a3)
  {
    v5 = a4;
    v6 = v4;
    v7 = [[MKServerFormattedStringParameters alloc] initWithInstructionsDistanceDetailLevel:0 variableOverrides:0];
    v8 = [[MKServerFormattedString alloc] initWithGeoServerString:v6 parameters:v7];

    v4 = [(MKServerFormattedString *)v8 multiPartAttributedStringWithAttributes:v5];
  }

  return v4;
}

@end