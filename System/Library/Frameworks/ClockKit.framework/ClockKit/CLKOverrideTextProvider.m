@interface CLKOverrideTextProvider
+ (id)_dashTrackingTextProviderWithDashes:(id)a3 tracking:(double)a4 weight:(double)a5;
+ (id)textProviderWithText:(id)a3 overrideBlock:(id)a4;
- (BOOL)isEqual:(id)a3;
- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (unint64_t)hash;
@end

@implementation CLKOverrideTextProvider

- (id)_sessionAttributedTextForIndex:(unint64_t)a3 withStyle:(id)a4
{
  v6 = a4;
  overrideBlock = self->_overrideBlock;
  if (overrideBlock)
  {
    v8 = overrideBlock[2](overrideBlock, self->_text, a3, v6);
  }

  else
  {
    v8 = 0;
  }

  v9 = [v8 _attributedStringWithOtherAttributesFromStyle:v6];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = CLKOverrideTextProvider;
  if ([(CLKTextProvider *)&v9 isEqual:v4]&& (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
  {
    v5 = [(CLKOverrideTextProvider *)self text];
    v6 = [v4 text];
    v7 = [v5 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v7.receiver = self;
  v7.super_class = CLKOverrideTextProvider;
  v3 = [(CLKTextProvider *)&v7 hash];
  v4 = [(CLKOverrideTextProvider *)self text];
  v5 = [v4 hash];

  return v3 + v5;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v8.receiver = self;
  v8.super_class = CLKOverrideTextProvider;
  v4 = [(CLKTextProvider *)&v8 copyWithZone:a3];
  if (v4 != self)
  {
    v5 = [(CLKOverrideTextProvider *)self text];
    [(CLKOverrideTextProvider *)v4 setText:v5];

    v6 = [(CLKOverrideTextProvider *)self overrideBlock];
    [(CLKOverrideTextProvider *)v4 setOverrideBlock:v6];
  }

  return v4;
}

+ (id)textProviderWithText:(id)a3 overrideBlock:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [objc_alloc(objc_opt_class()) initPrivate];
  [v7 setOverrideBlock:v5];

  [v7 setText:v6];

  return v7;
}

+ (id)_dashTrackingTextProviderWithDashes:(id)a3 tracking:(double)a4 weight:(double)a5
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__CLKOverrideTextProvider__dashTrackingTextProviderWithDashes_tracking_weight___block_invoke;
  v7[3] = &__block_descriptor_48_e66___NSAttributedString_32__0__NSString_8Q16__CLKTextProviderStyle_24l;
  *&v7[4] = a5;
  *&v7[5] = a4;
  v5 = [CLKOverrideTextProvider textProviderWithText:a3 overrideBlock:v7];

  return v5;
}

id __79__CLKOverrideTextProvider__dashTrackingTextProviderWithDashes_tracking_weight___block_invoke(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v29[1] = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = 0;
  if (a2 && !a3)
  {
    v9 = a2;
    v10 = [v7 font];
    v11 = [v10 CLKFontWithAlternativePunctuation];

    if (*(a1 + 32) != 1.79769313e308)
    {
      v12 = [v7 font];
      [v12 pointSize];
      v13 = [CLKFont systemFontOfSize:"systemFontOfSize:weight:" weight:?];

      v14 = [v13 fontDescriptor];
      v15 = *MEMORY[0x277D74378];
      v16 = [v14 objectForKey:*MEMORY[0x277D74378]];
      v17 = [v11 fontDescriptor];
      v28 = v15;
      v29[0] = v16;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
      v19 = [v17 fontDescriptorByAddingAttributes:v18];

      v20 = [CLKFont fontWithDescriptor:v19 size:0.0];

      v11 = v20;
    }

    v8 = [objc_alloc(MEMORY[0x277CCAB48]) initWithString:v9];
    v21 = [v9 length];

    v22 = *(a1 + 40);
    v23 = [v7 font];
    v24 = CLKKernValueForDesignSpecTrackingValue(v23, v22);

    v25 = *MEMORY[0x277D740D0];
    v26 = [MEMORY[0x277CCABB0] numberWithDouble:v24];
    [v8 addAttribute:v25 value:v26 range:{0, v21}];

    [v8 addAttribute:*MEMORY[0x277D740A8] value:v11 range:{0, v21}];
  }

  return v8;
}

@end