@interface TransitInstructionLayoutItem
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLayoutItem:(id)a3;
- (MKMultiPartAttributedString)bestFittingMultiPartString;
- (TransitInstructionLayoutItem)initWithStrings:(id)a3 font:(id)a4 width:(double)a5 extraTextAttributes:(id)a6;
- (id)_calculateBestFittingString;
- (id)description;
- (void)setCombineStrings:(BOOL)a3;
- (void)setWidth:(double)a3;
@end

@implementation TransitInstructionLayoutItem

- (id)description
{
  v3 = objc_opt_class();
  [(TransitInstructionLayoutItem *)self width];
  v5 = v4;
  v6 = [(TransitInstructionLayoutItem *)self strings];
  v7 = [NSString stringWithFormat:@"<%@ %p - w=%.2f strings=%@>", v3, self, v5, v6];

  return v7;
}

- (id)_calculateBestFittingString
{
  v3 = [(TransitInstructionLayoutItem *)self strings];
  v4 = [v3 count];

  if (!v4)
  {
    v8 = 0;
    goto LABEL_30;
  }

  extraTextAttributes = self->_extraTextAttributes;
  if (extraTextAttributes)
  {
    v6 = [(NSDictionary *)extraTextAttributes mutableCopy];
    v7 = [(TransitInstructionLayoutItem *)self font];
    [v6 setObject:v7 forKeyedSubscript:NSFontAttributeName];
  }

  else
  {
    v51 = NSFontAttributeName;
    v7 = [(TransitInstructionLayoutItem *)self font];
    v52 = v7;
    v6 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
  }

  if ([(TransitInstructionLayoutItem *)self shouldCombineStrings])
  {
    v9 = [NSMutableArray alloc];
    v10 = [(TransitInstructionLayoutItem *)self strings];
    v11 = [v9 initWithCapacity:{objc_msgSend(v10, "count")}];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v12 = [(TransitInstructionLayoutItem *)self strings];
    v13 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
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
            objc_enumerationMutation(v12);
          }

          v17 = [[MKServerFormattedString alloc] initWithComposedString:*(*(&v45 + 1) + 8 * i)];
          v18 = [v17 multiPartAttributedStringWithAttributes:v6];
          v19 = [v18 attributedString];
          [v11 addObject:v19];
        }

        v14 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v14);
    }

    v20 = [NSAttributedString alloc];
    v21 = +[NSBundle mainBundle];
    v22 = [v21 localizedStringForKey:@"separator [transit layout]" value:@"localized string not found" table:0];
    v23 = [v20 initWithString:v22];
    v8 = [MKMultiPartAttributedString multiPartAttributedStringWithComponents:v11 repeatedSeparator:v23];

LABEL_15:
LABEL_16:

    goto LABEL_29;
  }

  [(TransitInstructionLayoutItem *)self width];
  if (v24 <= 0.0)
  {
    v34 = [MKServerFormattedString alloc];
    v35 = [(TransitInstructionLayoutItem *)self strings];
    v36 = [v35 lastObject];
    v11 = [v34 initWithComposedString:v36];

    v8 = [v11 multiPartAttributedStringWithAttributes:v6];
  }

  else
  {
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v11 = [(TransitInstructionLayoutItem *)self strings];
    v40 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
          objc_enumerationMutation(v11);
        }

        v21 = [[MKServerFormattedString alloc] initWithComposedString:*(*(&v41 + 1) + 8 * v26)];
        v8 = [v21 multiPartAttributedStringWithAttributes:v6];
        v22 = [v8 attributedString];
        [v22 size];
        v29 = v28;
        [(TransitInstructionLayoutItem *)self width];
        if (v29 <= v30)
        {
          goto LABEL_15;
        }

        v31 = [(TransitInstructionLayoutItem *)self strings];
        v32 = [v31 count];

        if (v27 == v32)
        {
          goto LABEL_16;
        }

        ++v26;
        ++v27;
        if (v40 == v26)
        {
          v33 = [v11 countByEnumeratingWithState:&v41 objects:v49 count:16];
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
    v4 = [(TransitInstructionLayoutItem *)self _calculateBestFittingString];
    v5 = self->_bestFittingMultiPartString;
    self->_bestFittingMultiPartString = v4;

    bestFittingMultiPartString = self->_bestFittingMultiPartString;
  }

  return bestFittingMultiPartString;
}

- (void)setCombineStrings:(BOOL)a3
{
  if (self->_combineStrings != a3)
  {
    self->_combineStrings = a3;
    bestFittingMultiPartString = self->_bestFittingMultiPartString;
    self->_bestFittingMultiPartString = 0;
  }
}

- (void)setWidth:(double)a3
{
  if (self->_width != a3)
  {
    self->_width = a3;
    bestFittingMultiPartString = self->_bestFittingMultiPartString;
    self->_bestFittingMultiPartString = 0;
  }
}

- (BOOL)isEqualToLayoutItem:(id)a3
{
  v8 = a3;
  [(TransitInstructionLayoutItem *)self width];
  v10 = v9;
  [v8 width];
  if (v10 != v11)
  {
    v14 = 0;
    goto LABEL_32;
  }

  v12 = [(TransitInstructionLayoutItem *)self strings];
  if (!v12)
  {
    v5 = [v8 strings];
    if (!v5)
    {
      v13 = 0;
      goto LABEL_9;
    }
  }

  v3 = [(TransitInstructionLayoutItem *)self strings];
  v4 = [v8 strings];
  if ([v3 isEqual:v4])
  {
    v13 = 1;
LABEL_9:
    v15 = [(TransitInstructionLayoutItem *)self font];
    if (v15 || ([v8 font], (v26 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v16 = [(TransitInstructionLayoutItem *)self font];
      v6 = [v8 font];
      if (![v16 isEqual:v6])
      {
        v14 = 0;
LABEL_24:

        goto LABEL_25;
      }

      v25 = v16;
      v29 = 1;
    }

    else
    {
      v26 = 0;
      v29 = 0;
    }

    v17 = [(TransitInstructionLayoutItem *)self extraTextAttributes];
    if (v17 || ([v8 extraTextAttributes], (v23 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      v27 = v3;
      v28 = v5;
      v18 = v13;
      v19 = [(TransitInstructionLayoutItem *)self extraTextAttributes];
      v20 = [v8 extraTextAttributes];
      v14 = [v19 isEqualToDictionary:v20];

      if (v17)
      {

        v13 = v18;
        if (v29)
        {
          v3 = v27;
          v5 = v28;
          v16 = v25;
          goto LABEL_24;
        }

        v3 = v27;
        v5 = v28;
LABEL_25:
        if (!v15)
        {
        }

        if (v13)
        {
        }

        goto LABEL_29;
      }

      v13 = v18;
      v3 = v27;
      v5 = v28;
      v21 = v24;
    }

    else
    {
      v21 = 0;
      v14 = 1;
    }

    v16 = v25;
    if (v29)
    {
      goto LABEL_24;
    }

    goto LABEL_25;
  }

  v14 = 0;
LABEL_29:
  if (!v12)
  {
  }

LABEL_32:
  return v14;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(TransitInstructionLayoutItem *)self isEqualToLayoutItem:v4];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (TransitInstructionLayoutItem)initWithStrings:(id)a3 font:(id)a4 width:(double)a5 extraTextAttributes:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v22.receiver = self;
  v22.super_class = TransitInstructionLayoutItem;
  v13 = [(TransitInstructionLayoutItem *)&v22 init];
  if (v13)
  {
    v14 = [v10 copy];
    strings = v13->_strings;
    v13->_strings = v14;

    v16 = [v11 copy];
    font = v13->_font;
    v13->_font = v16;

    v13->_width = fmax(a5, 0.0);
    v18 = [v12 copy];
    extraTextAttributes = v13->_extraTextAttributes;
    v13->_extraTextAttributes = v18;

    v20 = v13;
  }

  return v13;
}

@end