@interface AXMNumericDataAxisDescriptor
- (AXMNumericDataAxisDescriptor)initWithAttributedTitle:(id)a3 lowerBound:(double)a4 upperBound:(double)a5 gridlinePositions:(id)a6 valueDescriptionProvider:(id)a7;
- (AXMNumericDataAxisDescriptor)initWithDictionary:(id)a3;
- (AXMNumericDataAxisDescriptor)initWithTitle:(id)a3 lowerBound:(double)a4 upperBound:(double)a5 gridlinePositions:(id)a6 valueDescriptionProvider:(id)a7;
- (NSString)description;
- (NSString)title;
- (double)normalizedAxisValueForValue:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)_commonInitWithLowerBound:(double)a3 upperBound:(double)a4 gridlinePositions:(id)a5 valueDescriptionProvider:(id)a6;
- (void)setTitle:(id)a3;
@end

@implementation AXMNumericDataAxisDescriptor

- (AXMNumericDataAxisDescriptor)initWithTitle:(id)a3 lowerBound:(double)a4 upperBound:(double)a5 gridlinePositions:(id)a6 valueDescriptionProvider:(id)a7
{
  v12 = a3;
  v13 = a6;
  v14 = a7;
  v18.receiver = self;
  v18.super_class = AXMNumericDataAxisDescriptor;
  v15 = [(AXMNumericDataAxisDescriptor *)&v18 init];
  v16 = v15;
  if (v15)
  {
    [(AXMNumericDataAxisDescriptor *)v15 setTitle:v12];
    [(AXMNumericDataAxisDescriptor *)v16 _commonInitWithLowerBound:v13 upperBound:v14 gridlinePositions:a4 valueDescriptionProvider:a5];
  }

  return v16;
}

- (AXMNumericDataAxisDescriptor)initWithAttributedTitle:(id)a3 lowerBound:(double)a4 upperBound:(double)a5 gridlinePositions:(id)a6 valueDescriptionProvider:(id)a7
{
  v13 = a3;
  v14 = a6;
  v15 = a7;
  v19.receiver = self;
  v19.super_class = AXMNumericDataAxisDescriptor;
  v16 = [(AXMNumericDataAxisDescriptor *)&v19 init];
  v17 = v16;
  if (v16)
  {
    objc_storeStrong(&v16->_attributedTitle, a3);
    [(AXMNumericDataAxisDescriptor *)v17 _commonInitWithLowerBound:v14 upperBound:v15 gridlinePositions:a4 valueDescriptionProvider:a5];
  }

  return v17;
}

- (void)_commonInitWithLowerBound:(double)a3 upperBound:(double)a4 gridlinePositions:(id)a5 valueDescriptionProvider:(id)a6
{
  self->_lowerBound = a3;
  self->_upperBound = a4;
  objc_storeStrong(&self->_gridlinePositions, a5);
  v12 = a5;
  v9 = a6;
  v10 = [v9 copy];

  valueDescriptionProvider = self->_valueDescriptionProvider;
  self->_valueDescriptionProvider = v10;
}

- (AXMNumericDataAxisDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:@"kAXMChartAxisTitleKey"];
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

  v9 = [v4 objectForKeyedSubscript:@"kAXMChartNumericAxisScaleTypeKey"];
  v10 = [v9 integerValue];

  v11 = [v4 objectForKeyedSubscript:@"kAXMChartNumericAxisLowerBoundKey"];
  [v11 doubleValue];
  v13 = v12;

  v14 = [v4 objectForKeyedSubscript:@"kAXMChartNumericAxisUpperBoundKey"];
  [v14 doubleValue];
  v16 = v15;

  v17 = [v4 objectForKeyedSubscript:@"kAXMChartNumericAxisGridlinePositionsKey"];

  v18 = [(AXMNumericDataAxisDescriptor *)self initWithAttributedTitle:v6 lowerBound:v17 upperBound:&__block_literal_global_26 gridlinePositions:v13 valueDescriptionProvider:v16];
  [(AXMNumericDataAxisDescriptor *)v18 setScaleType:v10];

  return v18;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(AXMNumericDataAxisDescriptor *)self title];
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v7 = v6;
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v9 = v8;
  v10 = [(AXMNumericDataAxisDescriptor *)self gridlinePositions];
  v11 = [(AXMNumericDataAxisDescriptor *)self valueDescriptionProvider];
  v12 = [v11 copy];
  v13 = [v4 initWithTitle:v5 lowerBound:v10 upperBound:v12 gridlinePositions:v7 valueDescriptionProvider:v9];

  v14 = [(AXMNumericDataAxisDescriptor *)self attributedTitle];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(AXMNumericDataAxisDescriptor *)self attributedTitle];
    v17 = [v16 copy];
    [v13 setAttributedTitle:v17];
  }

  return v13;
}

- (void)setTitle:(id)a3
{
  v4 = MEMORY[0x1E696AAB0];
  v5 = a3;
  v6 = [[v4 alloc] initWithString:v5];

  attributedTitle = self->_attributedTitle;
  self->_attributedTitle = v6;
}

- (NSString)title
{
  v2 = [(AXMNumericDataAxisDescriptor *)self attributedTitle];
  v3 = [v2 string];

  return v3;
}

- (double)normalizedAxisValueForValue:(double)a3
{
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v6 = v5;
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v8 = v6 - v7;
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  return (a3 - v9) / v8;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXMNumericDataAxisDescriptor *)self title];
  [v3 setObject:v4 forKeyedSubscript:@"kAXMChartAxisTitleKey"];

  v5 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXMNumericDataAxisDescriptor scaleType](self, "scaleType")}];
  [v3 setObject:v5 forKeyedSubscript:@"kAXMChartNumericAxisScaleTypeKey"];

  v6 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v7 = [v6 numberWithDouble:?];
  [v3 setObject:v7 forKeyedSubscript:@"kAXMChartNumericAxisLowerBoundKey"];

  v8 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v9 = [v8 numberWithDouble:?];
  [v3 setObject:v9 forKeyedSubscript:@"kAXMChartNumericAxisUpperBoundKey"];

  [v3 setObject:@"numeric" forKeyedSubscript:@"kAXMChartAxisType"];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXMNumericDataAxisDescriptor *)self title];
  v6 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self lowerBound];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(AXMNumericDataAxisDescriptor *)self upperBound];
  v9 = [v8 numberWithDouble:?];
  v10 = [(AXMNumericDataAxisDescriptor *)self gridlinePositions];
  v11 = [v3 stringWithFormat:@"<%@ %p title=%@ bounds=[%@, %@], gridlines=%@>", v4, self, v5, v7, v9, v10];

  return v11;
}

@end