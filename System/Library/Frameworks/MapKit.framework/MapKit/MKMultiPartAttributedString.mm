@interface MKMultiPartAttributedString
+ (id)_mapkit_multiPartAttributedStringForComposedStrings:(id)strings defaultAttributes:(id)attributes repeatedSeparator:(id)separator;
+ (id)_mapkit_multiPartAttributedStringForServerFormattedString:(id)string defaultAttributes:(id)attributes;
+ (id)_mapkit_multiPartAttributedStringForServerFormattedStrings:(id)strings defaultAttributes:(id)attributes repeatedSeparator:(id)separator;
+ (id)multiPartAttributedStringWithComponents:(id)components repeatedSeparator:(id)separator;
+ (id)multiPartAttributedStringWithString:(id)string;
- (BOOL)isEqual:(id)equal;
- (MKMultiPartAttributedString)initWithComponents:(id)components separators:(id)separators;
- (NSAttributedString)attributedString;
- (id)copyWithZone:(_NSZone *)zone;
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
    components = [(MKMultiPartAttributedString *)self components];
    v6 = [components count];

    if (v6)
    {
      v7 = 0;
      do
      {
        components2 = [(MKMultiPartAttributedString *)self components];
        v9 = [components2 objectAtIndexedSubscript:v7];

        if ([v9 length])
        {
          [v4 appendAttributedString:v9];
          v10 = v7 + 1;
          components3 = [(MKMultiPartAttributedString *)self components];
          v12 = [components3 count];

          if (v7 + 1 < v12)
          {
            separators = [(MKMultiPartAttributedString *)self separators];
            if (v7 >= [separators count])
            {
              v15 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F15B23C0];
            }

            else
            {
              separators2 = [(MKMultiPartAttributedString *)self separators];
              v15 = [separators2 objectAtIndexedSubscript:v7];
            }

            [v4 appendAttributedString:v15];
          }
        }

        else
        {
          v10 = v7 + 1;
        }

        components4 = [(MKMultiPartAttributedString *)self components];
        v17 = [components4 count];

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
    components = [(MKMultiPartAttributedString *)self components];
    v4 = [components debugDescription];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  components = [(MKMultiPartAttributedString *)self components];
  separators = [(MKMultiPartAttributedString *)self separators];
  v7 = [v3 stringWithFormat:@"<%@:%p\nparts=%@\nseparators =%@\n>", v4, self, components, separators];

  return v7;
}

- (unint64_t)hash
{
  components = [(MKMultiPartAttributedString *)self components];
  v4 = [components hash];
  separators = [(MKMultiPartAttributedString *)self separators];
  v6 = [separators hash];

  return v6 ^ v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    v10 = 0;
    goto LABEL_17;
  }

  components = [(MKMultiPartAttributedString *)self components];
  if (components || ([equalCopy components], (v15 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    components2 = [(MKMultiPartAttributedString *)self components];
    components3 = [equalCopy components];
    if (([components2 isEqual:components3] & 1) == 0)
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

  separators = [(MKMultiPartAttributedString *)self separators];
  if (!separators)
  {
    separators2 = [equalCopy separators];
    if (!separators2)
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

  separators3 = [(MKMultiPartAttributedString *)self separators];
  separators4 = [equalCopy separators];
  v10 = [separators3 isEqual:separators4];

  if (!separators)
  {
    goto LABEL_19;
  }

  if (v9)
  {
LABEL_13:
  }

LABEL_14:
  if (!components)
  {
  }

LABEL_17:
  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  components = self->_components;
  separators = self->_separators;

  return [v4 initWithComponents:components separators:separators];
}

- (MKMultiPartAttributedString)initWithComponents:(id)components separators:(id)separators
{
  componentsCopy = components;
  separatorsCopy = separators;
  v14.receiver = self;
  v14.super_class = MKMultiPartAttributedString;
  v8 = [(MKMultiPartAttributedString *)&v14 init];
  if (v8)
  {
    v9 = [separatorsCopy copy];
    separators = v8->_separators;
    v8->_separators = v9;

    v11 = [componentsCopy copy];
    components = v8->_components;
    v8->_components = v11;
  }

  return v8;
}

+ (id)multiPartAttributedStringWithString:(id)string
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (string)
  {
    stringCopy = string;
    v5 = [self alloc];
    v6 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:stringCopy];

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

+ (id)multiPartAttributedStringWithComponents:(id)components repeatedSeparator:(id)separator
{
  componentsCopy = components;
  separatorCopy = separator;
  array = [MEMORY[0x1E695DF70] array];
  if ([componentsCopy count] >= 2)
  {
    v9 = 1;
    do
    {
      [array addObject:separatorCopy];
      ++v9;
    }

    while (v9 < [componentsCopy count]);
  }

  v10 = [[self alloc] initWithComponents:componentsCopy separators:array];

  return v10;
}

+ (id)_mapkit_multiPartAttributedStringForComposedStrings:(id)strings defaultAttributes:(id)attributes repeatedSeparator:(id)separator
{
  stringsCopy = strings;
  attributesCopy = attributes;
  separatorCopy = separator;
  if ([stringsCopy count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v19 = MEMORY[0x1E69E9820];
    v20 = 3221225472;
    v21 = __149__MKMultiPartAttributedString_TransitFormattedStringExtras___mapkit_multiPartAttributedStringForComposedStrings_defaultAttributes_repeatedSeparator___block_invoke;
    v22 = &unk_1E76CD088;
    v12 = v11;
    v23 = v12;
    v24 = separatorCopy;
    v25 = attributesCopy;
    v13 = v10;
    v26 = v13;
    [stringsCopy enumerateObjectsUsingBlock:&v19];
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

+ (id)_mapkit_multiPartAttributedStringForServerFormattedStrings:(id)strings defaultAttributes:(id)attributes repeatedSeparator:(id)separator
{
  stringsCopy = strings;
  attributesCopy = attributes;
  separatorCopy = separator;
  if ([stringsCopy count])
  {
    v11 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(stringsCopy, "count")}];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __156__MKMultiPartAttributedString_TransitFormattedStringExtras___mapkit_multiPartAttributedStringForServerFormattedStrings_defaultAttributes_repeatedSeparator___block_invoke;
    v20[3] = &unk_1E76CD060;
    v13 = v12;
    v21 = v13;
    v22 = separatorCopy;
    selfCopy = self;
    v23 = attributesCopy;
    v14 = v11;
    v24 = v14;
    [stringsCopy enumerateObjectsUsingBlock:v20];
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

+ (id)_mapkit_multiPartAttributedStringForServerFormattedString:(id)string defaultAttributes:(id)attributes
{
  stringCopy = string;
  if (string)
  {
    attributesCopy = attributes;
    v6 = stringCopy;
    v7 = [[MKServerFormattedStringParameters alloc] initWithInstructionsDistanceDetailLevel:0 variableOverrides:0];
    v8 = [[MKServerFormattedString alloc] initWithGeoServerString:v6 parameters:v7];

    stringCopy = [(MKServerFormattedString *)v8 multiPartAttributedStringWithAttributes:attributesCopy];
  }

  return stringCopy;
}

@end