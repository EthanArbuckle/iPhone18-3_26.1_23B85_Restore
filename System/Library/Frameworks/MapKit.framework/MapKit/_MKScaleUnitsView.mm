@interface _MKScaleUnitsView
- (BOOL)canDisplaySegment:(unint64_t)segment;
- (NSString)zeroUnitsString;
- (_MKScaleUnitsView)init;
- (double)_widthForString:(id)string attributes:(id)attributes;
- (id)_legendStringForDistanceString:(id)string appendUnits:(BOOL)units index:(int)index;
- (id)_uncachedLegendStringsForDistanceString:(id)string;
- (void)_calculateLegend:(BOOL)legend;
- (void)setUnits:(id)units;
- (void)setUseLightText:(BOOL)text;
@end

@implementation _MKScaleUnitsView

- (_MKScaleUnitsView)init
{
  v16.receiver = self;
  v16.super_class = _MKScaleUnitsView;
  v2 = [(_MKScaleUnitsView *)&v16 init];
  if (v2)
  {
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [(_MKScaleUnitsView *)v2 setBackgroundColor:clearColor];

    v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
    strings = v2->_strings;
    v2->_strings = v4;

    v6 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:512 capacity:5];
    legendStringWidthCache = v2->_legendStringWidthCache;
    v2->_legendStringWidthCache = v6;

    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    legendStringForDistanceStringCache = v2->_legendStringForDistanceStringCache;
    v2->_legendStringForDistanceStringCache = v8;

    for (i = 0; i != 5; ++i)
    {
      v11 = v2->_strings;
      v12 = objc_alloc_init(_MKLegendString);
      [(NSMutableArray *)v11 addObject:v12];

      layer = [(_MKScaleUnitsView *)v2 layer];
      v14 = [(NSMutableArray *)v2->_strings objectAtIndexedSubscript:i];
      [layer addSublayer:v14];
    }

    [(_MKScaleUnitsView *)v2 setUseLightText:0];
    [(_MKScaleUnitsView *)v2 setClipsToBounds:0];
  }

  return v2;
}

- (NSString)zeroUnitsString
{
  zeroUnitsString = self->_zeroUnitsString;
  if (!zeroUnitsString)
  {
    v4 = [MEMORY[0x1E696ADA0] localizedStringFromNumber:&unk_1F16118D8 numberStyle:0];
    v5 = self->_zeroUnitsString;
    self->_zeroUnitsString = v4;

    zeroUnitsString = self->_zeroUnitsString;
  }

  return zeroUnitsString;
}

- (id)_legendStringForDistanceString:(id)string appendUnits:(BOOL)units index:(int)index
{
  unitsCopy = units;
  stringCopy = string;
  if (index && self->_unitsString)
  {
    v9 = [(NSMutableDictionary *)self->_legendStringForDistanceStringCache objectForKeyedSubscript:stringCopy];
    if (!v9)
    {
      v10 = [(_MKScaleUnitsView *)self _uncachedLegendStringsForDistanceString:stringCopy];
      [(NSMutableDictionary *)self->_legendStringForDistanceStringCache setObject:v10 forKeyedSubscript:stringCopy];
    }

    if (unitsCopy)
    {
      v11 = 3;
    }

    else
    {
      v11 = 0;
    }

    zeroUnitsString = [v9 objectAtIndexedSubscript:index + v11 - 1];
  }

  else
  {
    zeroUnitsString = [(_MKScaleUnitsView *)self zeroUnitsString];
  }

  return zeroUnitsString;
}

- (id)_uncachedLegendStringsForDistanceString:(id)string
{
  v21[6] = *MEMORY[0x1E69E9840];
  v4 = [(NSNumberFormatter *)self->_floatNumberFormatter numberFromString:string];
  [v4 floatValue];
  v6 = v5;

  floatNumberFormatter = self->_floatNumberFormatter;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:v6];
  v9 = [(NSNumberFormatter *)floatNumberFormatter stringFromNumber:v8];

  v10 = self->_floatNumberFormatter;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v6 + v6];
  v12 = [(NSNumberFormatter *)v10 stringFromNumber:v11];

  v13 = self->_floatNumberFormatter;
  v14 = [MEMORY[0x1E696AD98] numberWithDouble:v6 * 3.0];
  v15 = [(NSNumberFormatter *)v13 stringFromNumber:v14];

  v21[0] = v9;
  v21[1] = v12;
  v21[2] = v15;
  v16 = [v9 stringByAppendingString:self->_unitsString];
  v21[3] = v16;
  v17 = [v12 stringByAppendingString:self->_unitsString];
  v21[4] = v17;
  v18 = [v15 stringByAppendingString:self->_unitsString];
  v21[5] = v18;
  v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:6];

  return v19;
}

- (void)setUseLightText:(BOOL)text
{
  textCopy = text;
  v48[2] = *MEMORY[0x1E69E9840];
  self->_useLightText = text;
  v5 = +[MKSystemController sharedInstance];
  isGlassEnabled = [v5 isGlassEnabled];

  v7 = MEMORY[0x1E69658A8];
  if (!isGlassEnabled)
  {
    v7 = MEMORY[0x1E69658A0];
  }

  v8 = *v7;
  v47[0] = *MEMORY[0x1E6965898];
  v9 = *MEMORY[0x1E69658E0];
  v46[0] = v8;
  v10 = *MEMORY[0x1E6965970];
  v45[0] = v9;
  v45[1] = v10;
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:*MEMORY[0x1E6965950]];
  v46[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v46 forKeys:v45 count:2];
  v48[0] = v12;
  v47[1] = *MEMORY[0x1E6965848];
  v13 = MEMORY[0x1E696AD98];
  [(_MKScaleUnitsView *)self fontSize];
  v14 = [v13 numberWithDouble:?];
  v48[1] = v14;
  v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v48 forKeys:v47 count:2];

  v16 = CTFontDescriptorCreateWithAttributes(v15);
  v17 = CTFontCreateWithFontDescriptor(v16, 0.0, 0);
  CFRelease(v16);
  v18 = *MEMORY[0x1E6965658];
  if (textCopy)
  {
    v44[0] = v17;
    v19 = *MEMORY[0x1E69659D8];
    v43[0] = v18;
    v43[1] = v19;
    whiteColor = [MEMORY[0x1E69DC888] whiteColor];
    v44[1] = [whiteColor CGColor];
    v43[2] = *MEMORY[0x1E6965A58];
    blackColor = [MEMORY[0x1E69DC888] blackColor];
    cGColor = [blackColor CGColor];
    v43[3] = *MEMORY[0x1E69DF508];
    v44[2] = cGColor;
    v44[3] = &unk_1F16118C0;
    v23 = MEMORY[0x1E695DF20];
    v24 = v44;
    v25 = v43;
  }

  else
  {
    v42[0] = v17;
    v26 = *MEMORY[0x1E69659D8];
    v41[0] = v18;
    v41[1] = v26;
    whiteColor = [MEMORY[0x1E69DC888] colorWithRed:0.282352954 green:0.270588249 blue:0.254901975 alpha:1.0];
    v42[1] = [whiteColor CGColor];
    v41[2] = *MEMORY[0x1E6965A58];
    blackColor = [MEMORY[0x1E69DC888] colorWithWhite:1.0 alpha:0.5];
    cGColor2 = [blackColor CGColor];
    v41[3] = *MEMORY[0x1E69DF508];
    v42[2] = cGColor2;
    v42[3] = &unk_1F16118C0;
    v23 = MEMORY[0x1E695DF20];
    v24 = v42;
    v25 = v41;
  }

  v28 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:4];
  legendAttributes = self->_legendAttributes;
  self->_legendAttributes = v28;

  CFRelease(v17);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v30 = self->_strings;
  v31 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v37;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v37 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v36 + 1) + 8 * i);
        [v35 setString:{0, v36}];
        [v35 setNeedsDisplay];
      }

      v32 = [(NSMutableArray *)v30 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v32);
  }

  [(_MKScaleUnitsView *)self setNeedsLayout];
  [(_MKScaleUnitsView *)self _calculateLegend:1];
}

- (BOOL)canDisplaySegment:(unint64_t)segment
{
  v3 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:segment + 1];
  string = [v3 string];
  v5 = string != 0;

  return v5;
}

- (void)_calculateLegend:(BOOL)legend
{
  [(_MKScaleUnitsView *)self bounds];
  v43 = v5;
  rect = v4;
  v7 = v6;
  v9 = v8;
  [(_MKScaleUnitsView *)self legendMarginLeft];
  v11 = v10;
  segmentLengthInPixels = self->_segmentLengthInPixels;
  [(_MKScaleUnitsView *)self effectiveUserInterfaceLayoutDirection];
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v13;
    v15 = 0.0;
    if (v13 && v13 != 3)
    {
      v16 = [(_MKScaleUnitsView *)self _legendStringForDistanceString:self->_legendBaseString appendUnits:0 index:(v13 + 1)];
      [(_MKScaleUnitsView *)self _widthForString:v16 attributes:self->_legendAttributes];
      v15 = self->_justUnitsWidth + v17 * 0.5;
    }

    v48.origin.y = v43;
    v18 = segmentLengthInPixels + v11;
    v48.origin.x = rect;
    v48.size.width = v7;
    v48.size.height = v9;
    v20 = segmentLengthInPixels + v11 + v15 > CGRectGetMaxX(v48) || v14 == 3;
    v21 = [(_MKScaleUnitsView *)self _legendStringForDistanceString:self->_legendBaseString appendUnits:0 index:v14];
    [(_MKScaleUnitsView *)self _widthForString:v21 attributes:self->_legendAttributes];
    if (v20)
    {
      v22 = [(_MKScaleUnitsView *)self _legendStringForDistanceString:self->_legendBaseString appendUnits:1 index:v14];
      [(_MKScaleUnitsView *)self _widthForString:v22 attributes:self->_legendAttributes];
      rect_8 = v22;
    }

    else
    {
      rect_8 = 0;
      v22 = v21;
    }

    v23 = [(NSMutableArray *)self->_strings objectAtIndexedSubscript:v14, 448];

    v24 = v22;
    string = [v23 string];
    v25String = [string string];
    v27 = [v25String isEqual:v24];

    if ((v27 & 1) == 0)
    {
      v28 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v24 attributes:self->_legendAttributes];
      [v23 setString:v28];

      [v23 opacity];
      if (*&v29 != 1.0)
      {
        LODWORD(v29) = 1.0;
        [v23 setOpacity:v29];
      }

      [v23 sizeToFit];
      [v23 setNeedsDisplay];
    }

    [v23 frame];
    v31 = v30;
    v33 = v32;
    if (self->_RTL)
    {
      UIRoundToViewScale();
      v35 = v34;
      v49.origin.y = v43;
      v49.origin.x = rect;
      v49.size.width = v7;
      v49.size.height = v9;
      v36 = CGRectGetMaxX(v49) - (v31 + v35);
    }

    else
    {
      UIRoundToViewScale();
      v36 = v37;
    }

    [(_MKScaleUnitsView *)self bounds];
    CGRectGetMaxY(v50);
    [v23 baselineDistanceFromBottom];
    UIRoundToViewScale();
    v39 = v38;
    [v23 frame];
    v52.origin.x = v36;
    v52.origin.y = v39;
    v52.size.width = v31;
    v52.size.height = v33;
    if (!CGRectEqualToRect(v51, v52))
    {
      [v23 setFrame:{v36, v39, v31, v33}];
    }

    v13 = v14 + 1;
    v11 = v18;
    v12 = v23;
  }

  while (!v20);
  if (v14 > 3)
  {
    v40 = v23;
  }

  else
  {
    do
    {
      rect_8a = [*(&self->super.super.super.isa + v41) objectAtIndexedSubscript:v13];

      [rect_8a setString:0];
      [rect_8a setOpacity:0.0];
      v40 = rect_8a;
      ++v13;
      v23 = rect_8a;
    }

    while (v13 != 5);
  }
}

- (void)setUnits:(id)units
{
  unitsCopy = units;
  v4 = [unitsCopy objectAtIndexedSubscript:1];
  unpaddedUnitsString = [(_MKScaleUnitsView *)self unpaddedUnitsString];
  v6 = [v4 isEqualToString:unpaddedUnitsString];

  if ((v6 & 1) == 0)
  {
    v7 = [unitsCopy objectAtIndexedSubscript:1];
    v8 = [@" " stringByAppendingString:v7];
    [(_MKScaleUnitsView *)self setUnitsString:v8];

    v9 = [unitsCopy objectAtIndexedSubscript:1];
    [(_MKScaleUnitsView *)self setUnpaddedUnitsString:v9];

    [(_MKScaleUnitsView *)self _widthForString:self->_unitsString attributes:self->_legendAttributes];
    self->_justUnitsWidth = v10;
    [(NSMutableDictionary *)self->_legendStringForDistanceStringCache removeAllObjects];
  }

  v11 = [unitsCopy objectAtIndexedSubscript:0];
  legendBaseString = [(_MKScaleUnitsView *)self legendBaseString];
  v13 = [v11 isEqualToString:legendBaseString];

  if ((v13 & 1) == 0)
  {
    v14 = [unitsCopy objectAtIndexedSubscript:0];
    [(_MKScaleUnitsView *)self setLegendBaseString:v14];
  }

  [(_MKScaleUnitsView *)self _calculateLegend:v13 ^ 1u];
  [(_MKScaleUnitsView *)self setNeedsLayout];
  [(_MKScaleUnitsView *)self setNeedsDisplay];
}

- (double)_widthForString:(id)string attributes:(id)attributes
{
  stringCopy = string;
  attributesCopy = attributes;
  if (stringCopy)
  {
    v8 = [(NSMapTable *)self->_legendStringWidthCache objectForKey:stringCopy];
    v9 = v8;
    if (v8)
    {
      [v8 doubleValue];
      v11 = v10;
    }

    else
    {
      [stringCopy sizeWithAttributes:attributesCopy];
      v11 = v12;
      legendStringWidthCache = self->_legendStringWidthCache;
      v14 = [MEMORY[0x1E696AD98] numberWithDouble:?];
      [(NSMapTable *)legendStringWidthCache setObject:v14 forKey:stringCopy];
    }
  }

  else
  {
    v11 = 0.0;
  }

  return v11;
}

@end