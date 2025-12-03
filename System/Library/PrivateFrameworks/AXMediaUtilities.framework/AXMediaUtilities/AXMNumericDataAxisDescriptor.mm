@interface AXMNumericDataAxisDescriptor
- (AXMNumericDataAxisDescriptor)initWithAttributedTitle:(id)title lowerBound:(double)bound upperBound:(double)upperBound gridlinePositions:(id)positions valueDescriptionProvider:(id)provider;
- (AXMNumericDataAxisDescriptor)initWithDictionary:(id)dictionary;
- (AXMNumericDataAxisDescriptor)initWithTitle:(id)title lowerBound:(double)bound upperBound:(double)upperBound gridlinePositions:(id)positions valueDescriptionProvider:(id)provider;
- (NSString)description;
- (NSString)title;
- (double)normalizedAxisValueForValue:(double)value;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)_commonInitWithLowerBound:(double)bound upperBound:(double)upperBound gridlinePositions:(id)positions valueDescriptionProvider:(id)provider;
- (void)setTitle:(id)title;
@end

@implementation AXMNumericDataAxisDescriptor

- (AXMNumericDataAxisDescriptor)initWithTitle:(id)title lowerBound:(double)bound upperBound:(double)upperBound gridlinePositions:(id)positions valueDescriptionProvider:(id)provider
{
  titleCopy = title;
  positionsCopy = positions;
  providerCopy = provider;
  v18.receiver = self;
  v18.super_class = AXMNumericDataAxisDescriptor;
  v15 = [(AXMNumericDataAxisDescriptor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(AXMNumericDataAxisDescriptor *)v15 setTitle:titleCopy];
    [(AXMNumericDataAxisDescriptor *)v16 _commonInitWithLowerBound:positionsCopy upperBound:providerCopy gridlinePositions:bound valueDescriptionProvider:upperBound];
  }

  return v16;
}

- (AXMNumericDataAxisDescriptor)initWithAttributedTitle:(id)title lowerBound:(double)bound upperBound:(double)upperBound gridlinePositions:(id)positions valueDescriptionProvider:(id)provider
{
  titleCopy = title;
  positionsCopy = positions;
  providerCopy = provider;
  v19.receiver = self;
  v19.super_class = AXMNumericDataAxisDescriptor;
  v16 = [(AXMNumericDataAxisDescriptor *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_attributedTitle, title);
    [(AXMNumericDataAxisDescriptor *)v17 _commonInitWithLowerBound:positionsCopy upperBound:providerCopy gridlinePositions:bound valueDescriptionProvider:upperBound];
  }

  return v17;
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

- (AXMNumericDataAxisDescriptor)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
  v6 = objc_opt_new();
  if (v5)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = v5;
    }

    else
    {
      v7 = [objc_alloc(MEMORY[0x1E696AAB0]) initWithString:v5];
    }

    v8 = v7;

    v6 = v8;
  }

  v9 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartNumericAxisScaleTypeKey"];
  integerValue = [v9 integerValue];

  v11 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartNumericAxisLowerBoundKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartNumericAxisUpperBoundKey"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [dictionaryCopy objectForKeyedSubscript:@"kAXMChartNumericAxisGridlinePositionsKey"];

  v18 = [(AXMNumericDataAxisDescriptor *)self initWithAttributedTitle:v6 lowerBound:v17 upperBound:&__block_literal_global_26 gridlinePositions:v13 valueDescriptionProvider:v16];
  [(AXMNumericDataAxisDescriptor *)v18 setScaleType:integerValue];

  return v18;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  title = [(AXMNumericDataAxisDescriptor *)self title];
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v7 = v6;
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v9 = v8;
  gridlinePositions = [(AXMNumericDataAxisDescriptor *)self gridlinePositions];
  valueDescriptionProvider = [(AXMNumericDataAxisDescriptor *)self valueDescriptionProvider];
  v12 = [valueDescriptionProvider copy];
  v13 = [v4 initWithTitle:title lowerBound:gridlinePositions upperBound:v12 gridlinePositions:v7 valueDescriptionProvider:v9];

  attributedTitle = [(AXMNumericDataAxisDescriptor *)self attributedTitle];
  v15 = [attributedTitle length];

  if (v15)
  {
    attributedTitle2 = [(AXMNumericDataAxisDescriptor *)self attributedTitle];
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
  attributedTitle = [(AXMNumericDataAxisDescriptor *)self attributedTitle];
  string = [attributedTitle string];

  return string;
}

- (double)normalizedAxisValueForValue:(double)value
{
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v6 = v5;
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v8 = v6 - v7;
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  return (value - v9) / v8;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  title = [(AXMNumericDataAxisDescriptor *)self title];
  [dictionary setObject:title forKeyedSubscript:@"kAXMChartAxisTitleKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMNumericDataAxisDescriptor scaleType](self, "scaleType")}];
  [dictionary setObject:v5 forKeyedSubscript:@"kAXMChartNumericAxisScaleTypeKey"];

  v6 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v7 = [v6 numberWithDouble:?];
  [dictionary setObject:v7 forKeyedSubscript:@"kAXMChartNumericAxisLowerBoundKey"];

  v8 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v9 = [v8 numberWithDouble:?];
  [dictionary setObject:v9 forKeyedSubscript:@"kAXMChartNumericAxisUpperBoundKey"];

  [dictionary setObject:@"numeric" forKeyedSubscript:@"kAXMChartAxisType"];

  return dictionary;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  title = [(AXMNumericDataAxisDescriptor *)self title];
  v6 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v9 = [v8 numberWithDouble:?];
  gridlinePositions = [(AXMNumericDataAxisDescriptor *)self gridlinePositions];
  v11 = [v3 stringWithFormat:@"<%@ %p title=%@ bounds=[%@, %@], gridlines=%@>", v4, self, title, v7, v9, gridlinePositions];

  return v11;
}

@end