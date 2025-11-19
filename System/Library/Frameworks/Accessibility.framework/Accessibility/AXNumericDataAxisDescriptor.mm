@interface AXNumericDataAxisDescriptor
- (AXNumericDataAxisDescriptor)initWithAttributedTitle:(NSAttributedString *)attributedTitle lowerBound:(double)lowerbound upperBound:(double)upperBound gridlinePositions:(NSArray *)gridlinePositions valueDescriptionProvider:(void *)valueDescriptionProvider;
- (AXNumericDataAxisDescriptor)initWithDictionary:(id)a3;
- (AXNumericDataAxisDescriptor)initWithTitle:(NSString *)title lowerBound:(double)lowerbound upperBound:(double)upperBound gridlinePositions:(NSArray *)gridlinePositions valueDescriptionProvider:(void *)valueDescriptionProvider;
- (NSString)description;
- (NSString)title;
- (id)copyWithZone:(_NSZone *)a3;
- (id)dictionaryRepresentation;
- (void)_commonInitWithLowerBound:(double)a3 upperBound:(double)a4 gridlinePositions:(id)a5 valueDescriptionProvider:(id)a6;
- (void)setTitle:(id)a3;
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

- (AXNumericDataAxisDescriptor)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = getkAXMChartAxisTitleKey();
  v6 = [v4 objectForKeyedSubscript:v5];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = getkAXMChartAxisTitleKey();
    v8 = [v4 objectForKeyedSubscript:v7];
  }

  else
  {
    v9 = objc_alloc(MEMORY[0x1E696AAB0]);
    v7 = getkAXMChartAxisTitleKey();
    v10 = [v4 objectForKeyedSubscript:v7];
    v8 = [v9 initWithString:v10];
  }

  v11 = getkAXMChartNumericAxisScaleTypeKey();
  v12 = [v4 objectForKeyedSubscript:v11];
  v13 = [v12 integerValue];

  v14 = getkAXMChartNumericAxisLowerBoundKey();
  v15 = [v4 objectForKeyedSubscript:v14];
  [v15 doubleValue];
  v17 = v16;

  v18 = getkAXMChartNumericAxisUpperBoundKey();
  v19 = [v4 objectForKeyedSubscript:v18];
  [v19 doubleValue];
  v21 = v20;

  v22 = getkAXMChartNumericAxisGridlinePositionsKey();
  v23 = [v4 objectForKeyedSubscript:v22];

  v24 = [(AXNumericDataAxisDescriptor *)self initWithAttributedTitle:v8 lowerBound:v23 upperBound:&__block_literal_global_1 gridlinePositions:v17 valueDescriptionProvider:v21];
  [(AXNumericDataAxisDescriptor *)v24 setScaleType:v13];

  return v24;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());
  v5 = [(AXNumericDataAxisDescriptor *)self title];
  [(AXNumericDataAxisDescriptor *)self lowerBound];
  v7 = v6;
  [(AXNumericDataAxisDescriptor *)self upperBound];
  v9 = v8;
  v10 = [(AXNumericDataAxisDescriptor *)self gridlinePositions];
  v11 = [(AXNumericDataAxisDescriptor *)self valueDescriptionProvider];
  v12 = [v11 copy];
  v13 = [v4 initWithTitle:v5 lowerBound:v10 upperBound:v12 gridlinePositions:v7 valueDescriptionProvider:v9];

  v14 = [(AXNumericDataAxisDescriptor *)self attributedTitle];
  v15 = [v14 length];

  if (v15)
  {
    v16 = [(AXNumericDataAxisDescriptor *)self attributedTitle];
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
  v2 = [(AXNumericDataAxisDescriptor *)self attributedTitle];
  v3 = [v2 string];

  return v3;
}

- (id)dictionaryRepresentation
{
  v3 = [MEMORY[0x1E695DF90] dictionary];
  v4 = [(AXNumericDataAxisDescriptor *)self attributedTitle];
  v5 = getkAXMChartAxisTitleKey();
  [v3 setObject:v4 forKeyedSubscript:v5];

  v6 = [MEMORY[0x1E696AD98] numberWithInteger:{-[AXNumericDataAxisDescriptor scaleType](self, "scaleType")}];
  v7 = getkAXMChartNumericAxisScaleTypeKey();
  [v3 setObject:v6 forKeyedSubscript:v7];

  v8 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self lowerBound];
  v9 = [v8 numberWithDouble:?];
  v10 = getkAXMChartNumericAxisLowerBoundKey();
  [v3 setObject:v9 forKeyedSubscript:v10];

  v11 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self upperBound];
  v12 = [v11 numberWithDouble:?];
  v13 = getkAXMChartNumericAxisUpperBoundKey();
  [v3 setObject:v12 forKeyedSubscript:v13];

  v14 = getkAXMChartAxisTypeNumeric();
  v15 = getkAXMChartAxisTypeKey();
  [v3 setObject:v14 forKeyedSubscript:v15];

  v16 = [(AXNumericDataAxisDescriptor *)self gridlinePositions];
  v17 = getkAXMChartNumericAxisGridlinePositionsKey();
  [v3 setObject:v16 forKeyedSubscript:v17];

  return v3;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(AXNumericDataAxisDescriptor *)self title];
  v6 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self lowerBound];
  v7 = [v6 numberWithDouble:?];
  v8 = MEMORY[0x1E696AD98];
  [(AXNumericDataAxisDescriptor *)self upperBound];
  v9 = [v8 numberWithDouble:?];
  v10 = [(AXNumericDataAxisDescriptor *)self gridlinePositions];
  v11 = [v3 stringWithFormat:@"<%@ %p title=%@ bounds=[%@, %@], gridlines=%@>", v4, self, v5, v7, v9, v10];

  return v11;
}

@end