@interface _MKMultiPartLabelMetrics
- (BOOL)_shiftLocationOfStrings:(id)strings startingAtIndex:(unint64_t)index shiftValue:(int64_t)value;
- (BOOL)replaceSeparatorAtIndex:(unint64_t)index withString:(id)string;
- (_MKMultiPartLabelMetrics)initWithMultiPartString:(id)string;
- (void)reset;
@end

@implementation _MKMultiPartLabelMetrics

- (void)reset
{
  v32 = *MEMORY[0x1E69E9840];
  [(_MKMultiPartLabelMetrics *)self setCurrentSeparatorIndex:0];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  separators = [(_MKMultiPartLabelMetrics *)self separators];
  v4 = [separators countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(separators);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        originalRange = [v8 originalRange];
        [v8 setRange:{originalRange, v10}];
      }

      v5 = [separators countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v5);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  components = [(_MKMultiPartLabelMetrics *)self components];
  v12 = [components countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v23;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v23 != v14)
        {
          objc_enumerationMutation(components);
        }

        v16 = *(*(&v22 + 1) + 8 * j);
        originalRange2 = [v16 originalRange];
        [v16 setRange:{originalRange2, v18}];
      }

      v13 = [components countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v13);
  }

  originalAttributedString = [(_MKMultiPartLabelMetrics *)self originalAttributedString];
  v20 = [originalAttributedString mutableCopy];
  attributedString = self->_attributedString;
  self->_attributedString = v20;
}

- (BOOL)_shiftLocationOfStrings:(id)strings startingAtIndex:(unint64_t)index shiftValue:(int64_t)value
{
  stringsCopy = strings;
  if ([stringsCopy count] <= index)
  {
LABEL_4:
    v11 = 1;
  }

  else
  {
    while (1)
    {
      v8 = [stringsCopy objectAtIndexedSubscript:index];
      v10 = [v8 range] + value;
      if (v10 < 0)
      {
        break;
      }

      [v8 setRange:{v10, v9}];

      if (++index >= [stringsCopy count])
      {
        goto LABEL_4;
      }
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)replaceSeparatorAtIndex:(unint64_t)index withString:(id)string
{
  stringCopy = string;
  separators = [(_MKMultiPartLabelMetrics *)self separators];
  v8 = [separators count];

  if (v8 <= index)
  {
    v30 = 0;
    v10 = stringCopy;
  }

  else
  {
    v9 = &stru_1F15B23C0;
    if (stringCopy)
    {
      v9 = stringCopy;
    }

    v10 = v9;

    separators2 = [(_MKMultiPartLabelMetrics *)self separators];
    v12 = [separators2 objectAtIndexedSubscript:index];

    attributedString = [(_MKMultiPartLabelMetrics *)self attributedString];
    string = [attributedString string];
    range = [v12 range];
    v17 = [string substringWithRange:{range, v16}];
    attributedString2 = [v12 attributedString];
    string2 = [attributedString2 string];
    v20 = [v17 isEqualToString:string2];

    if (v20 && (-[_MKMultiPartLabelMetrics attributedString](self, "attributedString"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v12 range], objc_msgSend(v21, "replaceCharactersInRange:withString:", v22, v23, v10), v21, objc_msgSend(v12, "setRange:", objc_msgSend(v12, "range"), -[__CFString length](v10, "length")), v24 = -[__CFString length](v10, "length"), objc_msgSend(v12, "attributedString"), v25 = objc_claimAutoreleasedReturnValue(), v26 = v24 - objc_msgSend(v25, "length"), v25, -[_MKMultiPartLabelMetrics separators](self, "separators"), v27 = objc_claimAutoreleasedReturnValue(), v28 = -[_MKMultiPartLabelMetrics _shiftLocationOfStrings:startingAtIndex:shiftValue:](self, "_shiftLocationOfStrings:startingAtIndex:shiftValue:", v27, index + 1, v26), v27, v28))
    {
      components = [(_MKMultiPartLabelMetrics *)self components];
      v30 = [(_MKMultiPartLabelMetrics *)self _shiftLocationOfStrings:components startingAtIndex:index + 1 shiftValue:v26];
    }

    else
    {
      v30 = 0;
    }
  }

  return v30;
}

- (_MKMultiPartLabelMetrics)initWithMultiPartString:(id)string
{
  v45 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v43.receiver = self;
  v43.super_class = _MKMultiPartLabelMetrics;
  v5 = [(_MKMultiPartLabelMetrics *)&v43 init];
  v6 = v5;
  if (v5)
  {
    v36 = v5;
    v7 = MEMORY[0x1E695DF70];
    components = [stringCopy components];
    v9 = [v7 arrayWithCapacity:{objc_msgSend(components, "count")}];

    v10 = MEMORY[0x1E695DF70];
    separators = [stringCopy separators];
    v37 = [v10 arrayWithCapacity:{objc_msgSend(separators, "count")}];

    v12 = objc_alloc_init(MEMORY[0x1E696AD40]);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    obj = [stringCopy components];
    v13 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (!v13)
    {
      goto LABEL_14;
    }

    v14 = v13;
    v15 = 0;
    v16 = *v40;
    while (1)
    {
      for (i = 0; i != v14; ++i)
      {
        v18 = v15;
        if (*v40 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v39 + 1) + 8 * i);
        v20 = -[_MKMultiPartStringComponent initWithAttributedString:range:]([_MKMultiPartStringComponent alloc], "initWithAttributedString:range:", v19, -[NSMutableAttributedString length](v12, "length"), [v19 length]);
        [v9 addObject:v20];

        [(NSMutableAttributedString *)v12 appendAttributedString:v19];
        ++v15;
        components2 = [stringCopy components];
        v22 = [components2 count];

        if (v18 + 1 < v22)
        {
          separators2 = [stringCopy separators];
          if (v18 < [separators2 count])
          {
            separators3 = [stringCopy separators];
            v25 = [separators3 objectAtIndexedSubscript:v18];

            if (!v25)
            {
              continue;
            }

            v26 = -[_MKMultiPartStringComponent initWithAttributedString:range:]([_MKMultiPartStringComponent alloc], "initWithAttributedString:range:", v25, -[NSMutableAttributedString length](v12, "length"), [v25 length]);
            [v37 addObject:v26];

            [(NSMutableAttributedString *)v12 appendAttributedString:v25];
            separators2 = v25;
          }
        }
      }

      v14 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      if (!v14)
      {
LABEL_14:

        v27 = [(NSMutableAttributedString *)v12 copy];
        v6 = v36;
        originalAttributedString = v36->_originalAttributedString;
        v36->_originalAttributedString = v27;

        attributedString = v36->_attributedString;
        v36->_attributedString = v12;
        v30 = v12;

        v31 = [v37 copy];
        separators = v36->_separators;
        v36->_separators = v31;

        v33 = [v9 copy];
        components = v36->_components;
        v36->_components = v33;

        break;
      }
    }
  }

  return v6;
}

@end