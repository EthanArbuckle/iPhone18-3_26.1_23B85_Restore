@interface TransitInstructionLayoutItem
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToLayoutItem:(id)item;
- (MKMultiPartAttributedString)bestFittingMultiPartString;
- (TransitInstructionLayoutItem)initWithStrings:(id)strings font:(id)font width:(double)width extraTextAttributes:(id)attributes;
- (id)_calculateBestFittingString;
- (id)description;
- (void)setCombineStrings:(BOOL)strings;
- (void)setWidth:(double)width;
@end

@implementation TransitInstructionLayoutItem

- (id)description
{
  v3 = objc_opt_class();
  [(TransitInstructionLayoutItem *)self width];
  v5 = v4;
  strings = [(TransitInstructionLayoutItem *)self strings];
  v7 = [NSString stringWithFormat:@"<%@ %p - w=%.2f strings=%@>", v3, self, v5, strings];

  return v7;
}

- (id)_calculateBestFittingString
{
  strings = [(TransitInstructionLayoutItem *)self strings];
  v4 = [strings count];

  if (!v4)
  {
    v8 = 0;
    goto LABEL_30;
  }

  extraTextAttributes = self->_extraTextAttributes;
  if (extraTextAttributes)
  {
    v6 = [(NSDictionary *)extraTextAttributes mutableCopy];
    font = [(TransitInstructionLayoutItem *)self font];
    [v6 setObject:font forKeyedSubscript:NSFontAttributeName];
  }

  else
  {
    v51 = NSFontAttributeName;
    font = [(TransitInstructionLayoutItem *)self font];
    v52 = font;
    v6 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  }

  if ([(TransitInstructionLayoutItem *)self shouldCombineStrings])
  {
    v9 = [NSMutableArray alloc];
    strings2 = [(TransitInstructionLayoutItem *)self strings];
    strings5 = [v9 initWithCapacity:{objc_msgSend(strings2, "count")}];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    strings3 = [(TransitInstructionLayoutItem *)self strings];
    v13 = [strings3 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v46;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v46 != v15)
          {
            objc_enumerationMutation(strings3);
          }

          v17 = [[MKServerFormattedString alloc] initWithComposedString:*(*(&v45 + 1) + 8 * i)];
          v18 = [v17 multiPartAttributedStringWithAttributes:v6];
          attributedString = [v18 attributedString];
          [strings5 addObject:attributedString];
        }

        v14 = [strings3 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v14);
    }

    v20 = [NSAttributedString alloc];
    v21 = +[NSBundle mainBundle];
    attributedString2 = [v21 localizedStringForKey:@"separator [transit layout]" value:@"localized string not found" table:0];
    v23 = [v20 initWithString:attributedString2];
    v8 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:strings5 repeatedSeparator:v23];

LABEL_15:
LABEL_16:

    goto LABEL_29;
  }

  [(TransitInstructionLayoutItem *)self width];
  if (v24 <= 0.0)
  {
    v34 = [MKServerFormattedString alloc];
    strings4 = [(TransitInstructionLayoutItem *)self strings];
    lastObject = [strings4 lastObject];
    strings5 = [v34 initWithComposedString:lastObject];

    v8 = [strings5 multiPartAttributedStringWithAttributes:v6];
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    strings5 = [(TransitInstructionLayoutItem *)self strings];
    v40 = [strings5 countByEnumeratingWithState:&v41 objects:v49 count:16];
    if (v40)
    {
      v25 = 0;
      v39 = *v42;
LABEL_20:
      v26 = 0;
      v27 = v25 + 1;
      v38 = &v40[v25];
      while (1)
      {
        if (*v42 != v39)
        {
          objc_enumerationMutation(strings5);
        }

        v21 = [[MKServerFormattedString alloc] initWithComposedString:*(*(&v41 + 1) + 8 * v26)];
        v8 = [v21 multiPartAttributedStringWithAttributes:v6];
        attributedString2 = [v8 attributedString];
        [attributedString2 size];
        v29 = v28;
        [(TransitInstructionLayoutItem *)self width];
        if (v29 <= v30)
        {
          goto LABEL_15;
        }

        strings6 = [(TransitInstructionLayoutItem *)self strings];
        v32 = [strings6 count];

        if (v27 == v32)
        {
          goto LABEL_16;
        }

        ++v26;
        ++v27;
        if (v40 == v26)
        {
          v33 = [strings5 countByEnumeratingWithState:&v41 objects:v49 count:16];
          v25 = v38;
          v40 = v33;
          if (v33)
          {
            goto LABEL_20;
          }

          break;
        }
      }
    }

    v8 = 0;
  }

LABEL_29:

LABEL_30:

  return v8;
}

- (MKMultiPartAttributedString)bestFittingMultiPartString
{
  bestFittingMultiPartString = self->_bestFittingMultiPartString;
  if (!bestFittingMultiPartString)
  {
    _calculateBestFittingString = [(TransitInstructionLayoutItem *)self _calculateBestFittingString];
    v5 = self->_bestFittingMultiPartString;
    self->_bestFittingMultiPartString = _calculateBestFittingString;

    bestFittingMultiPartString = self->_bestFittingMultiPartString;
  }

  return bestFittingMultiPartString;
}

- (void)setCombineStrings:(BOOL)strings
{
  if (self->_combineStrings != strings)
  {
    self->_combineStrings = strings;
    bestFittingMultiPartString = self->_bestFittingMultiPartString;
    self->_bestFittingMultiPartString = 0;
  }
}

- (void)setWidth:(double)width
{
  if (self->_width != width)
  {
    self->_width = width;
    bestFittingMultiPartString = self->_bestFittingMultiPartString;
    self->_bestFittingMultiPartString = 0;
  }
}

- (BOOL)isEqualToLayoutItem:(id)item
{
  itemCopy = item;
  [(TransitInstructionLayoutItem *)self width];
  v10 = v9;
  [itemCopy width];
  if (v10 != v11)
  {
    v14 = 0;
    goto LABEL_32;
  }

  strings = [(TransitInstructionLayoutItem *)self strings];
  if (!strings)
  {
    strings2 = [itemCopy strings];
    if (!strings2)
    {
      v13 = 0;
      goto LABEL_9;
    }
  }

  strings3 = [(TransitInstructionLayoutItem *)self strings];
  strings4 = [itemCopy strings];
  if ([strings3 isEqual:strings4])
  {
    v13 = 1;
LABEL_9:
    font = [(TransitInstructionLayoutItem *)self font];
    if (font || ([itemCopy font], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      font2 = [(TransitInstructionLayoutItem *)self font];
      font3 = [itemCopy font];
      if (![font2 isEqual:font3])
      {
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v25 = font2;
      v29 = 1;
    }

    else
    {
      v26 = 0;
      v29 = 0;
    }

    extraTextAttributes = [(TransitInstructionLayoutItem *)self extraTextAttributes];
    if (extraTextAttributes || ([itemCopy extraTextAttributes], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = strings3;
      v28 = strings2;
      v18 = v13;
      extraTextAttributes2 = [(TransitInstructionLayoutItem *)self extraTextAttributes];
      extraTextAttributes3 = [itemCopy extraTextAttributes];
      v14 = [extraTextAttributes2 isEqualToDictionary:extraTextAttributes3];

      if (extraTextAttributes)
      {

        v13 = v18;
        if (v29)
        {
          strings3 = v27;
          strings2 = v28;
          font2 = v25;
          goto LABEL_24;
        }

        strings3 = v27;
        strings2 = v28;
LABEL_25:
        if (!font)
        {
        }

        if (v13)
        {
        }

        goto LABEL_29;
      }

      v13 = v18;
      strings3 = v27;
      strings2 = v28;
      v21 = v24;
    }

    else
    {
      v21 = 0;
      v14 = 1;
    }

    font2 = v25;
    if (v29)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v14 = 0;
LABEL_29:
  if (!strings)
  {
  }

LABEL_32:
  return v14;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(TransitInstructionLayoutItem *)self isEqualToLayoutItem:equalCopy];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (TransitInstructionLayoutItem)initWithStrings:(id)strings font:(id)font width:(double)width extraTextAttributes:(id)attributes
{
  stringsCopy = strings;
  fontCopy = font;
  attributesCopy = attributes;
  v22.receiver = self;
  v22.super_class = TransitInstructionLayoutItem;
  v13 = [(TransitInstructionLayoutItem *)&v22 init];
  if (v13)
  {
    v14 = [stringsCopy copy];
    strings = v13->_strings;
    v13->_strings = v14;

    v16 = [fontCopy copy];
    font = v13->_font;
    v13->_font = v16;

    v13->_width = fmax(width, 0.0);
    v18 = [attributesCopy copy];
    extraTextAttributes = v13->_extraTextAttributes;
    v13->_extraTextAttributes = v18;

    v20 = v13;
  }

  return v13;
}

@end