@interface AXNumericDataAxisDescriptor
- (AXNumericDataAxisDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle lowerBound:(double)lowerbound upperBound:(double)upperBound gridlinePositions:(NSArray *)gridlinePositions valueDescriptionProvider:(void *)valueDescriptionProvider;
- (AXNumericDataAxisDescriptor)initWithDictionary:(id)dictionary;
- (AXNumericDataAxisDescriptor)initWithTitle:(NSString *)title lowerBound:(double)lowerbound upperBound:(double)upperBound gridlinePositions:(NSArray *)gridlinePositions valueDescriptionProvider:(void *)valueDescriptionProvider;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)_commonInitWithLowerBound:(double)bound upperBound:(double)upperBound gridlinePositions:(id)positions valueDescriptionProvider:(id)provider;
- (void)setTitle:(id)title;
@end

@implementation AXNumericDataAxisDescriptor

- (AXNumericDataAxisDescriptor)initWithTitle:(NSString *)title lowerBound:(double)lowerbound upperBound:(double)upperBound gridlinePositions:(NSArray *)gridlinePositions valueDescriptionProvider:(void *)valueDescriptionProvider
{
  v12 = title;
  v13 = gridlinePositions;
  v14 = valueDescriptionProvider;
  v19.receiver = self;
  v19.super_class = AXNumericDataAxisDescriptor;
  v15 = [(AXNumericDataAxisDescriptor *)&v19 init];
  v16 = v15;
  if (v15)
  {
    if (v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = &stru_1F29D6BC8;
    }

    [(AXNumericDataAxisDescriptor *)v15 setTitle:v17];
    [(AXNumericDataAxisDescriptor *)v16 _commonInitWithLowerBound:v13 upperBound:v14 gridlinePositions:lowerbound valueDescriptionProvider:upperBound];
  }

  return v16;
}

- (AXNumericDataAxisDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle lowerBound:(double)lowerbound upperBound:(double)upperBound gridlinePositions:(NSArray *)gridlinePositions valueDescriptionProvider:(void *)valueDescriptionProvider
{
  v12 = attributedTitle;
  v13 = gridlinePositions;
  v14 = valueDescriptionProvider;
  v19.receiver = self;
  v19.super_class = AXNumericDataAxisDescriptor;
  v15 = [(AXNumericDataAxisDescriptor *)&v19 init];
  if (v15)
  {
    if (v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:&stru_1F29D6BC8];
    }

    v17 = v15->_attributedTitle;
    v15->_attributedTitle = v16;

    [(AXNumericDataAxisDescriptor *)v15 _commonInitWithLowerBound:v13 upperBound:v14 gridlinePositions:lowerbound valueDescriptionProvider:upperBound];
  }

  return v15;
}

- (void)_commonInitWithLowerBound:(double)bound upperBound:(double)upperBound gridlinePositions:(id)positions valueDescriptionProvider:(id)provider
{
  self->_lowerBound = bound;
  self->_upperBound = upperBound;
  objc_storeStrong(&self->_gridlinePositions, positions);
  positionsCopy = positions;
  providerCopy = provider;
  v10 = [providerCopy copy];

  valueDescriptionProvider = self->_valueDescriptionProvider;
  self->_valueDescriptionProvider = v10;
}

- (AXNumericDataAxisDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = getkAXMChartAxisTitleKey();
  v6 = [dictionaryCopy objectForKeyedSubscript:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = getkAXMChartAxisTitleKey();
    v8 = [dictionaryCopy objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = getkAXMChartAxisTitleKey();
    v10 = [dictionaryCopy objectForKeyedSubscript:v7];
    v8 = [v9 initWithString:v10];
  }

  v11 = getkAXMChartNumericAxisScaleTypeKey();
  v12 = [dictionaryCopy objectForKeyedSubscript:v11];
  integerValue = [v12 integerValue];

  v14 = getkAXMChartNumericAxisLowerBoundKey();
  v15 = [dictionaryCopy objectForKeyedSubscript:v14];
  [v15 doubleValue];
  v17 = v16;

  v18 = getkAXMChartNumericAxisUpperBoundKey();
  v19 = [dictionaryCopy objectForKeyedSubscript:v18];
  [v19 doubleValue];
  v21 = v20;

  v22 = getkAXMChartNumericAxisGridlinePositionsKey();
  v23 = [dictionaryCopy objectForKeyedSubscript:v22];

  v24 = [(AXNumericDataAxisDescriptor *)self initWithAttributedTitle:v8 lowerBound:v23 upperBound:&__block_literal_global_1 gridlinePositions:v17 valueDescriptionProvider:v21];
  [(AXNumericDataAxisDescriptor *)v24 setScaleType:integerValue];

  return v24;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  title = [(AXNumericDataAxisDescriptor *)self title];
  [(AXNumericDataAxisDescriptor *)self lowerBound];
  v7 = v6;
  [(AXNumericDataAxisDescriptor *)self upperBound];
  v9 = v8;
  gridlinePositions = [(AXNumericDataAxisDescriptor *)self gridlinePositions];
  valueDescriptionProvider = [(AXNumericDataAxisDescriptor *)self valueDescriptionProvider];
  v12 = [valueDescriptionProvider copy];
  v13 = [v4 initWithTitle:title lowerBound:gridlinePositions upperBound:v12 gridlinePositions:v7 valueDescriptionProvider:v9];

  attributedTitle = [(AXNumericDataAxisDescriptor *)self attributedTitle];
  v15 = [attributedTitle length];

  if (v15)
  {
    attributedTitle2 = [(AXNumericDataAxisDescriptor *)self attributedTitle];
    v17 = [attributedTitle2 copy];
    [v13 setAttributedTitle:v17];
  }

  return v13;
}

- (void)setTitle:(id)title
{
  v4 = MEMORY[0x1E696AAB0];
  titleCopy = title;
  v6 = [[v4 alloc] initWithString:titleCopy];

  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v6;
}

- (NSString)title
{
  attributedTitle = [(AXNumericDataAxisDescriptor *)self attributedTitle];
  string = [attributedTitle string];

  return string;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  attributedTitle = [(AXNumericDataAxisDescriptor *)self attributedTitle];
  v5 = getkAXMChartAxisTitleKey();
  [dictionary setObject:attributedTitle forKeyedSubscript:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXNumericDataAxisDescriptor scaleType](self, "scaleType")}];
  v7 = getkAXMChartNumericAxisScaleTypeKey();
  [dictionary setObject:v6 forKeyedSubscript:v7];

  v8 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self lowerBound];
  v9 = [v8 numberWithDouble:?];
  v10 = getkAXMChartNumericAxisLowerBoundKey();
  [dictionary setObject:v9 forKeyedSubscript:v10];

  v11 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self upperBound];
  v12 = [v11 numberWithDouble:?];
  v13 = getkAXMChartNumericAxisUpperBoundKey();
  [dictionary setObject:v12 forKeyedSubscript:v13];

  v14 = getkAXMChartAxisTypeNumeric();
  v15 = getkAXMChartAxisTypeKey();
  [dictionary setObject:v14 forKeyedSubscript:v15];

  gridlinePositions = [(AXNumericDataAxisDescriptor *)self gridlinePositions];
  v17 = getkAXMChartNumericAxisGridlinePositionsKey();
  [dictionary setObject:gridlinePositions forKeyedSubscript:v17];

  return dictionary;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(AXNumericDataAxisDescriptor *)self title];
  v6 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self lowerBound];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self upperBound];
  v9 = [v8 numberWithDouble:?];
  gridlinePositions = [(AXNumericDataAxisDescriptor *)self gridlinePositions];
  v11 = [v3 stringWithFormat:@"<%@ %p title=%@ bounds=[%@, %@], gridlines=%@>", v4, self, title, v7, v9, gridlinePositions];

  return v11;
}

@end